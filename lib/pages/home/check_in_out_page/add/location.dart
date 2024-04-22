import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

class MyLocationMessage {
  bool isSuccess;
  String? message;

  MyLocationMessage({
    required this.isSuccess,
    this.message,
  });
}

class MyLocationModel {
  MyLocationMessage myLocationMessage;
  bool? isOnSite;
  String? latitude;
  String? longitude;
  String? address;

  MyLocationModel({
    required this.myLocationMessage,
    this.isOnSite,
    this.latitude,
    this.longitude,
    this.address,
  });
}

class MyLocation {
  Geolocator geolocator = Geolocator();

  Future<MyLocationMessage> _handlePermission() async {
    bool serviceEnabled;
    LocationPermission permission;
    MyLocationMessage res = MyLocationMessage(isSuccess: true);
    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      res = MyLocationMessage(
        isSuccess: false,
        message: "Location services are disabled. Please enable the services",
      );
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        res = MyLocationMessage(
          isSuccess: false,
          message: "Location permissions are denied",
        );
      }
    }
    if (permission == LocationPermission.deniedForever) {
      res = MyLocationMessage(
        isSuccess: false,
        message:
            "Location permissions are permanently denied, we cannot request permissions.",
      );
    }
    return res;
  }

  Future<MyLocationModel> _getLocation() async {
    final hasPermission = await _handlePermission();
    if (!hasPermission.isSuccess) {
      return MyLocationModel(myLocationMessage: hasPermission);
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
      forceAndroidLocationManager: true,
    );

    ServicesSuccess resToken =
        await GeneralSharedPreferences.getUserToken() as ServicesSuccess;

    // String token = '';
    double lat = position.latitude;
    double long = position.longitude;
    bool isOnSite = await checkIsOnSite(resToken.response["token"], lat, long);

    List<Placemark> placemarks = await placemarkFromCoordinates(
      lat,
      long,
      localeIdentifier: "id_ID",
    );

    return MyLocationModel(
      myLocationMessage: hasPermission,
      isOnSite: isOnSite,
      latitude: lat.toString(),
      longitude: long.toString(),
      address:
          "${placemarks[0].street}, ${placemarks[0].locality}, ${placemarks[0].subAdministrativeArea}, ${placemarks[0].administrativeArea}, ${placemarks[0].country}, ${placemarks[0].postalCode}",
    );
  }

  Future<bool> checkIsOnSite(String token, double lat, double long) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/presensi_absensi/distance_check?lat=$lat&long=$long");
    var response = await http.get(url,
        headers: GeneralServices.addToken2Headers(token: token));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['data']['on_scope'];
    } else {
      return false;
    }
  }

  Future<MyLocationModel> getLastLocation() async {
    final hasPermission = await _handlePermission();
    if (!hasPermission.isSuccess) {
      return MyLocationModel(myLocationMessage: hasPermission);
    }

    Position? position = await Geolocator.getLastKnownPosition(
      forceAndroidLocationManager: true,
    );

    if (position != null) {
      ServicesSuccess resToken =
          await GeneralSharedPreferences.getUserToken() as ServicesSuccess;

      double lat = position.latitude;
      double long = position.longitude;
      bool isOnSite =
          await checkIsOnSite(resToken.response["token"], lat, long);

      List<Placemark> placemarks = await placemarkFromCoordinates(
        lat,
        long,
        localeIdentifier: "id_ID",
      );

      return MyLocationModel(
        myLocationMessage: hasPermission,
        isOnSite: isOnSite,
        latitude: lat.toString(),
        longitude: long.toString(),
        address:
            "${placemarks[0].street}, ${placemarks[0].locality}, ${placemarks[0].subAdministrativeArea}, ${placemarks[0].administrativeArea}, ${placemarks[0].country}, ${placemarks[0].postalCode}",
      );
    }

    return MyLocationModel(
      myLocationMessage: hasPermission,
    );
  }

  Stream<MyLocationModel> getLocation({int timeInterval = 1}) async* {
    yield* Stream.periodic(Duration(seconds: timeInterval), (_) {
      return _getLocation();
    }).asyncMap((event) async => await event);
  }
}

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

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
  // Future<MyLocationMessage> _handlePermission() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //   MyLocationMessage res = MyLocationMessage(isSuccess: true);
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     res = MyLocationMessage(
  //       isSuccess: false,
  //       message: "Location services are disabled. Please enable the services",
  //     );
  //   }
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       res = MyLocationMessage(
  //         isSuccess: false,
  //         message: "Location permissions are denied",
  //       );
  //     }
  //   }
  //   if (permission == LocationPermission.deniedForever) {
  //     res = MyLocationMessage(
  //       isSuccess: false,
  //       message:
  //           "Location permissions are permanently denied, we cannot request permissions.",
  //     );
  //   }
  //   return res;
  // }

  _getLocation() async {
    final hasPermission = await _handlePermission();
    if (!hasPermission.isSuccess) {
      return MyLocationModel(myLocationMessage: hasPermission);
    }
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
      forceAndroidLocationManager: true,
    );
    List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
      localeIdentifier: "id_ID",
    );
    double distanceInMeters = Geolocator.distanceBetween(
      -7.3310819,
      112.7779805,
      position.latitude,
      position.longitude,
    );
    return MyLocationModel(
      myLocationMessage: hasPermission,
      isOnSite: distanceInMeters < 500.0,
      latitude: position.latitude.toString(),
      longitude: position.longitude.toString(),
      address:
          "${placemarks[0].street}, ${placemarks[0].locality}, ${placemarks[0].subAdministrativeArea}, ${placemarks[0].administrativeArea}, ${placemarks[0].country}, ${placemarks[0].postalCode}",
    );
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
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
        localeIdentifier: "id_ID",
      );
      double distanceInMeters = Geolocator.distanceBetween(
        -7.3310819,
        112.7779805,
        position.latitude,
        position.longitude,
      );
      return MyLocationModel(
        myLocationMessage: hasPermission,
        isOnSite: distanceInMeters < 500.0,
        latitude: position.latitude.toString(),
        longitude: position.longitude.toString(),
        address:
            "${placemarks[0].street}, ${placemarks[0].locality}, ${placemarks[0].subAdministrativeArea}, ${placemarks[0].administrativeArea}, ${placemarks[0].country}, ${placemarks[0].postalCode}",
      );
    }
    return MyLocationModel(
      myLocationMessage: hasPermission,
    );
  }

  Stream<MyLocationModel> getLocation({int timeInterval = 1}) async* {
    // var locationOptions = const LocationSettings(
    //   accuracy: LocationAccuracy.best,
    //   distanceFilter: 10,
    //   // timeLimit: Duration(seconds: 1),
    // );
    // MyLocationModel res = MyLocationModel(
    //   myLocationMessage: hasPermission,
    //   isOnSite: null,
    //   latitude: "-",
    //   longitude: "-",
    //   address: "-",
    // );

    yield* Stream.periodic(Duration(seconds: timeInterval), (_) {
      return _getLocation();
    }).asyncMap((event) async => await event);

    // Geolocator.getPositionStream(
    //   locationSettings: locationOptions,
    // ).listen((position) async {
    // }).onError((err) async {
    //   final hasPermission = await _handlePermission();
    //   res = MyLocationModel(
    //     myLocationMessage: hasPermission,
    //     isOnSite: null,
    //     latitude: "-",
    //     longitude: "-",
    //     address: "-",
    //   );
    // });

    // print(res);
    // yield res;
  }
}

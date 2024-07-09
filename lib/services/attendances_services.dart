import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:http/http.dart' as http;

class AttendancesServices {
  static Future<Object> getAttendanceState(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/presensi_absensi/status");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> addAttendanceIn(
      String token, imagePath, address, isOnsite, latitude, longitude, catatan) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/presensi_absensi/checkin");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.postMultiPart,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: {
        "address": address,
        "lat": latitude,
        "long": longitude,
        "catatan_in": catatan
      },
      imagePath: imagePath,
    );
  }

  static Future<Object> addAttendanceOut(
      String token, imagePath, address, isOnsite, latitude, longitude, catatan) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/presensi_absensi/checkout");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.postMultiPart,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: {
        "address": address,
        "lat": latitude,
        "long": longitude,
        "catatan_out": catatan
      },
      imagePath: imagePath,
    );
  }

  static Future<Object> getAttendancesHistory(
      String token, DateTime date) async {
    var lastDate = DateTime(date.year, date.month + 1, 0).day;
    var lastDateStr = lastDate.toString();
    var formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-$lastDateStr";
    print("Tanggal Terakhir bulan ini adalah tanggal $formattedDate");
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/presensi_absensi/get_absen?periode=${date.year}-${date.month.toString().padLeft(2, '0')}");
    // var url = Uri.parse(
    //     "${MyGeneralConst.API_URL}/operation/presensi_absensi?where=this.created_at between '${date.year}-${date.month.toString().padLeft(2, '0')}-01 00:00:00' and '$formattedDate 23:59:59'");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }
}

Future<bool> checkIsOnSite(String token, double lat, double long) async {
  var url = Uri.parse(
      "${MyGeneralConst.API_URL}/operation/presensi_absensi/distance_check?lat=$lat&long=$long");
  var response =
      await http.get(url, headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ));

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data['data']['on_scope'];
  } else {
    return false;
  }
}

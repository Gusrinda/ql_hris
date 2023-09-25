import 'dart:convert';

import 'package:ql_absensi_express_mobile/utils/const.dart';
import 'package:ql_absensi_express_mobile/utils/services.dart';

class AttendancesServices {
  static Future<Object> getAttendanceState(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/attendance/get-state");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> addAttendance(
      String token, imagePath, address, isOnSite, latitude, longitude) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/attendance/add");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.postMultiPart,
      headers: GeneralServices.addToken2Headers(token),
      body: {
        "inputAdress": address,
        "inputOnsite": isOnSite,
        "inputLatitude": latitude,
        "inputLongitude": longitude,
      },
      imagePath: imagePath,
    );
  }

  static Future<Object> getAttendancesHistory(
      String token, DateTime date) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/attendance/get-user-attendances?inputTahun=${date.year}&inputBulan=${date.month}");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }
}

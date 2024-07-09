import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class ReportsServices {
  static Future<Object> getReportState(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/report/get-state");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> addReport(
      String token, pastTask, nextTask, keterangan) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/report/add");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: json.encode({
        "inputPastTask": pastTask,
        "inputNextTask": nextTask,
        "inputKeterangan": keterangan,
      }),
    );
  }

  static Future<Object> getReportsHistory(String token, DateTime date) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/report/get-user-reports?inputTahun=${date.year}&inputBulan=${date.month}");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getLastReport(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/report/get-user-last-report");
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

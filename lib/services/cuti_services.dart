import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class CutiServices {
  static Future<Object> getListCuti(String token, DateTime date) async {
    var lastDate = DateTime(date.year, date.month + 1, 0).day;
    var lastDateStr = lastDate.toString();
    var formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-$lastDateStr";
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/t_cuti?date_from=${date.year}-${date.month}-1&date_to=$formattedDate");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> addCuti(String token, keterangan, int alasan,
      int tipeCuti, String dateFrom, String dateTo) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_cuti");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "alasan_id": alasan,
        "tipe_cuti_id": tipeCuti,
        "date_from": dateFrom,
        "date_to": dateTo,
        "keterangan": keterangan,
      }),
    );
  }

  static Future<Object> getAlasanCuti(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=alasanCuti");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getTipeCuti(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=tipeCuti");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }
}

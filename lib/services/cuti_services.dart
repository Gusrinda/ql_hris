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
        "${MyGeneralConst.API_URL}/operation/t_cuti?where=this.created_at between '${date.year}-${date.month.toString().padLeft(2, '0')}-01 00:00:00' and '$formattedDate 23:59:59'");
    // "${MyGeneralConst.API_URL}/operation/t_cuti?date_from=${date.year}-${date.month}-1&date_to=$formattedDate");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> addCuti(
      String token,
      int mCompID,
      int mDirID,
      int mKaryID,
      String keterangan,
      int? alasan,
      int tipeCuti,
      String dateFrom,
      String dateTo,
      String? timeFrom,
      String? timeTo) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_cuti");
    print("Ini yang dikirim saat POST Cuti :");
    print("alasan_id : ${alasan}");
    print("tipe_cuti_id : ${tipeCuti}");
    print("date_from : ${dateFrom}");
    print("date_to : ${dateTo}");
    print("keterangan : ${keterangan}");
    print("Ini mCompID : ${mCompID}");
    print("Ini mDirID : ${mDirID}");
    print("Ini mKaryID : ${mKaryID}");
    print("Ini timeFrom : ${timeFrom}");
    print("Ini timeTo : ${timeTo}");

    Object requestBody = {
      "m_comp_id": mCompID,
      "m_dir_id": mDirID,
      "m_kary_id": mKaryID,
      "alasan_id": alasan,
      "tipe_cuti_id": tipeCuti,
      "date_from": dateFrom,
      "date_to": dateTo,
      "time_from": timeFrom,
      "time_to": timeTo,
      "keterangan": keterangan,
    }..removeWhere(
        (key, value) => value == null || value == '' || value == -99);

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode(requestBody),
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

  static Future<Object> editCuti(
      String token,
      int cutiID,
      int mCompID,
      int mDirID,
      int mKaryID,
      String keterangan,
      int? alasan,
      int tipeCuti,
      String dateFrom,
      String dateTo,
      String? timeFrom,
      String? timeTo) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_cuti/$cutiID");
    print("Ini yang dikirim saat PUT Cuti :");
    print("alasan_id : ${alasan}");
    print("tipe_cuti_id : ${tipeCuti}");
    print("date_from : ${dateFrom}");
    print("date_to : ${dateTo}");
    print("keterangan : ${keterangan}");
    print("Ini mCompID : ${mCompID}");
    print("Ini mDirID : ${mDirID}");
    print("Ini mKaryID : ${mKaryID}");
    print("Ini timeFrom : ${timeFrom}");
    print("Ini timeTo : ${timeTo}");

    Object requestBody = {
      "m_comp_id": mCompID,
      "m_dir_id": mDirID,
      "m_kary_id": mKaryID,
      "alasan_id": alasan,
      "tipe_cuti_id": tipeCuti,
      "date_from": dateFrom,
      "date_to": dateTo,
      "time_from": timeFrom,
      "time_to": timeTo,
      "keterangan": keterangan,
    }..removeWhere(
        (key, value) => value == null || value == '' || value == -99);

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.put,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode(requestBody),
    );
  }
}

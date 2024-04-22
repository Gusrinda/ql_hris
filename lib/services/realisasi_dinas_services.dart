import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class RealisasiDinasServices {
  static Future<Object> getListDinasApprove(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/t_spd?paginate=1000&filter_status=APPROVED");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  // static Future<Object> getListRealisasiDinas(String token) async {
  //   var url =
  //       Uri.parse("${MyGeneralConst.API_URL}/operation/t_rpd?paginate=1000");
  //   return await GeneralServices.baseService(
  //     url: url,
  //     method: GeneralServicesMethod.get,
  //     headers: GeneralServices.addToken2Headers(token: token, isServiceNoMobile: true),
  //   );
  // }

  static Future<Object> getListRealisasiDinas(
      String token, DateTime date) async {
    var lastDate = DateTime(date.year, date.month + 1, 0).day;
    var lastDateStr = lastDate.toString();
    var formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-$lastDateStr";
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/t_rpd?where=this.created_at between '${date.year}-${date.month.toString().padLeft(2, '0')}-01 00:00:00' and '$formattedDate 23:59:59'");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> addRealisasiDinas(
    String token,
    int tSpdId,
    double totalBiayaSPD,
    double totalBiayaSelisih,
    String keterangan,
    List<Map<String, dynamic>> tRpdDetList,
  ) async {
    // Mendefinisikan URL untuk permintaan POST
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_rpd");

    // Melakukan permintaan POST menggunakan metode baseService
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: json.encode({
        "t_spd_id": tSpdId,
        "total_biaya_spd": totalBiayaSPD,
        "total_biaya_selisih": totalBiayaSelisih,
        "keterangan": keterangan,
        "t_rpd_det": tRpdDetList
      }),
    );
  }

  static Future<Object> editRealisasiDinas(
    String token,
    int rpdID,
    int tSpdId,
    double totalBiayaSPD,
    double totalBiayaSelisih,
    String keterangan,
    List<Map<String, dynamic>> tRpdDetList,
  ) async {
    // Mendefinisikan URL untuk permintaan POST
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_rpd/$rpdID");

    // Melakukan permintaan POST menggunakan metode baseService
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.put,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: json.encode({
        "t_spd_id": tSpdId,
        "total_biaya_spd": totalBiayaSPD,
        "total_biaya_selisih": totalBiayaSelisih,
        "keterangan": keterangan,
        "t_rpd_det": tRpdDetList
      }),
    );
  }

  static Future<Object> getDetailSPD(String token, int spdID) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_spd/${spdID}");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getDetailRealisasiDinas(String token, int id) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_rpd/$id");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token: token, isServiceNoMobile: true),
    );
  }

  static Future<Object> getTipe(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group='TIPE SPD'");
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

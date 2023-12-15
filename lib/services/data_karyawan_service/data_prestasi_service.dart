import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class DataPrestasiServices {
  static Future<Object> getListPrestasi(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/prestasi");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> deleteDataPrestasi(
      String token, String dataID) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/prestasi_delete");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.delete,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "id": dataID,
      }),
    );
  }

  static Future<Object> createDataPrestasi(
    String token,
    int compId,
    int dirId,
    String namaPres,
    String tahun,
    int tingkatPresId,
    // int desc,
  ) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/prestasi_create");
    print("Ini yang dikirim saat POST Pelatihan :");
    print("ini compId : ${compId}");
    print("ini dirId : ${dirId}");
    print("ini namaPres : ${namaPres}");
    print("ini tahun : ${tahun}");
    print("ini tingkatPresId: ${tingkatPresId}");
    // print("ini kotaId : ${desc}");

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "m_comp_id": compId,
        "m_dir_id": dirId,
        "nama_pres": namaPres,
        "tahun": tahun,
        "tingkat_pres_id": tingkatPresId,
        // "desc": desc,
      }),
    );
  }
}

import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class DataKeluargaServices {
  static Future<Object> getListKeluarga(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/keluarga");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> deleteDataKeluarga(String token, String dataID) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_kary/keluarga_delete");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.delete,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "id": dataID,
      }),
    );
  }

  static Future<Object> createDataKeluarga(
    String token,
    int compId,
    int dirId,
    int keluargaId,
    String nama,
    int pendTerakhirId,
    int jenisKelaminId,
    int pekerjaanId,
    int usia,
    String desc,
  ) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/keluarga_create");
    print("Ini yang dikirim saat POST Organisasi :");
    print("ini compId : ${compId}");
    print("ini dirId : ${dirId}");
    print("ini keluargaId : ${keluargaId}");
    print("ini nama : ${nama}");
    print("ini pendTerakhir: ${pendTerakhirId}");
    print("ini jenisKelamin : ${jenisKelaminId}");
    print("ini pekerjaanId : ${pekerjaanId}");
    print("ini usia : ${usia}");
    print("ini desc : ${desc}");

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "m_comp_id": compId,
        "m_dir_id": dirId,
        "keluarga_id": keluargaId,
        "nama": nama,
        "pend_terakhir_id": pendTerakhirId,
        "jk_id": jenisKelaminId,
        "pekerjaan_id": pekerjaanId,
        "usia": usia,
        "desc": desc,
      }),
    );
  }
}

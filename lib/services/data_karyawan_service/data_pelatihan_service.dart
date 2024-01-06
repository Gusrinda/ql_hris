import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class DataPelatihanServices {
  static Future<Object> getListPelatihan(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/pelatihan");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> deleteDataPelatihan(String token, String dataID) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_kary/pelatihan_delete");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.delete,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "id": dataID,
      }),
    );
  }

  static Future<Object> createDataPelatihan(
    String token,
    int compId,
    int dirId,
    String namaPel,
    String tahun,
    String namaLem,
    int kotaId,
  ) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_kary/pelatihan_create");
    print("Ini yang dikirim saat POST Pelatihan :");
    print("ini compId : ${compId}");
    print("ini dirId : ${dirId}");
    print("ini namaPel : ${namaPel}");
    print("ini tahun : ${tahun}");
    print("ini namaLem: ${namaLem}");
    print("ini kotaId : ${kotaId}");

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "m_comp_id": compId,
        "m_dir_id": dirId,
        "nama_pel": namaPel,
        "tahun": tahun,
        "nama_lem": namaLem,
        "kota_id": kotaId,
      }),
    );
  }

  static Future<Object> editDataPelatihan(
    String token,
    int compId,
    int dirId,
    int pelatihanId,
    String namaPel,
    int tahun,
    String namaLem,
    int kotaId,
  ) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_kary/pelatihan_update");

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.put,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "id": pelatihanId,
        "m_comp_id": compId,
        "m_dir_id": dirId,
        "nama_pel": namaPel,
        "tahun": tahun,
        "nama_lem": namaLem,
        "kota_id": kotaId,
      }),
    );
  }
}

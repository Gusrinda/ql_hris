import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class DataOrganisasiServices {
  static Future<Object> getListOrganisasi(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/organisasi");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> createDataOrganisasi(
    String token,
    int compId,
    int dirId,
    String nama,
    String tahun,
    int jenisOrgId,
    int kotaId,
    String posisi,
  ) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_kary/organisasi_create");
    print("Ini yang dikirim saat POST Organisasi :");
    print("ini compId : ${compId}");
    print("ini dirId : ${dirId}");
    print("ini nama : ${nama}");
    print("ini tahun : ${tahun}");
    print("ini jenisOrgId: ${jenisOrgId}");
    print("ini kotaId : ${kotaId}");
    print("ini posisi : ${posisi}");

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "m_comp_id": compId,
        "m_dir_id": dirId,
        "nama": nama,
        "tahun": tahun,
        "jenis_org_id": jenisOrgId,
        "kota_id": kotaId,
        "posisi": posisi,
      }),
    );
  }
}

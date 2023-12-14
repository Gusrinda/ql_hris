import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class DataBahasaServices {
  static Future<Object> getListBahasa(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/bahasa");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> createDataBahasa(
    String token,
    int compId,
    int dirId,
    String bhsDikuasai,
    int nilaiLisan,
    int nilaiTetulis,
  ) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_kary/bahasa_create");
    print("Ini yang dikirim saat POST Organisasi :");
    print("ini compId : ${compId}");
    print("ini dirId : ${dirId}");
    print("ini bhsDikuasai : ${bhsDikuasai}");
    print("ini nilaiLisan : ${nilaiLisan}");
    print("ini nilaiTetulis: ${nilaiTetulis}");

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "m_comp_id": compId,
        "m_dir_id": dirId,
        "bhs_dikuasai": bhsDikuasai,
        "nilai_lisan": nilaiLisan,
        "nilai_tertulis": nilaiTetulis,
      }),
    );
  }

  static Future<Object> deleteBahasa(
    String token,
    int bahasaId,
  ) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/bahasa_delete?$bahasaId");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.put,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "id": bahasaId,
      }),
    );
  }
}

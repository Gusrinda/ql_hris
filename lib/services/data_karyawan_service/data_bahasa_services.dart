import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class DataBahasaServices {
  static Future<Object> getListBahasa(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/bahasa");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> deleteDataBahasa(String token, String dataID) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/bahasa_delete");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.delete,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: json.encode({
        "id": dataID,
      }),
    );
  }

  static Future<Object> createDataBahasa(
    String token,
    int compId,
    int dirId,
    String bhsDikuasai,
    String nilaiLisan,
    String nilaiTetulis,
  ) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/bahasa_create");
    print("Ini yang dikirim saat POST Organisasi :");
    print("ini compId : ${compId}");
    print("ini dirId : ${dirId}");
    print("ini bhsDikuasai : ${bhsDikuasai}");
    print("ini nilaiLisan : ${nilaiLisan}");
    print("ini nilaiTetulis: ${nilaiTetulis}");

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: json.encode({
        "m_comp_id": compId,
        "m_dir_id": dirId,
        "bhs_dikuasai": bhsDikuasai,
        "level_lisan": nilaiLisan,
        "level_tertulis": nilaiTetulis,
      }),
    );
  }

  static Future<Object> editDataBahasa(
    String token,
    int compId,
    int dirId,
    int bahasaId,
    String bhsDikuasai,
    String nilaiLisan,
    String nilaiTetulis,
  ) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/bahasa_update");

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.put,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: json.encode({
        "m_comp_id": compId,
        "m_dir_id": dirId,
        "id": bahasaId,
        "bhs_dikuasai": bhsDikuasai,
        "level_lisan": nilaiLisan,
        "level_tertulis": nilaiTetulis,
      }),
    );
  }
}

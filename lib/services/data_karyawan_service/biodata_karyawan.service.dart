import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';

class BiodataKaryawanService {
  
  static Future<Object> getBiodataKaryawan(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/data_diri");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  static Future<Object> editDataProfile(
    String token,
    int userId,
    password,
    confirmPassword,
  ) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/data_diri_update");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.put,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
      body: jsonEncode(
        {
          "password": password,
          "password_confirm": confirmPassword,
        },
      ),
    );
  }
}

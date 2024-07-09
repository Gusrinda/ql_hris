import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class ProfileServices {
  static Future<Object> getDataProfilel(String token, int userId) async {
    // print("Token: ${token}");
    // print("Token: ${userId}");
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/default_users/$userId");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> editImageProfile(String token, int userId,
      {String? imagePath}) async {
    print("hasil id: ${userId}");
    print("hasil image: ${imagePath}");
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/default_users/update_foto_profil");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.putMultipart,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: {
        "id": userId,
      },
      imagePath: imagePath,
    );
  }


  static Future<Object> editDataProfile(
    String token,
    int userId,
    password,
    confirmPassword,
  ) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/default_users/reset_password");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.put,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: jsonEncode(
        {
          "password": password,
          "password_confirm": confirmPassword,
        },
      ),
    );
  }
}

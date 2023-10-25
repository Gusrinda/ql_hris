import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class AuthServices {
  static Future<Object> register(email, password, name) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/auth/register");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      body: json.encode({
        "inputEmail": email,
        "inputPassword": password,
        "inputName": name,
      }),
    );
  }

  static Future<Object> login(email, password) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/auth/login");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      body: json.encode(
        {
          "inputEmail": email,
          "inputPassword": password,
        },
      ),
    );
  }

  static Future<Object> forgotPassword(email) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/auth/forgot-password");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      body: json.encode(
        {
          "inputEmail": email,
        },
      ),
    );
  }

  static Future<Object> logout(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/auth/logout");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.delete,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> checkTokenAvailable(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/user/get-profile");
    // var url = Uri.https(MyGeneralConst.API_URL, "user/get-profile");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }
}

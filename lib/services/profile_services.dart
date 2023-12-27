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
      headers: GeneralServices.addToken2Headers(token),
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
      headers: GeneralServices.addToken2Headers(token),
      body: {
        "id": userId,
      },
      imagePath: imagePath,
    );
  }

  // static Future<Object> editImageProfile(
  //     String token, int userId, password,
  //     {String? imagePath}) async {
  //   var url =
  //       Uri.parse("${MyGeneralConst.API_URL}/operation/default_users/$userId");
  //   var body = {
  //     "password": password,
  //   };
  //   return await GeneralServices.baseService(
  //     url: url,
  //     method: imagePath != null
  //         ? GeneralServicesMethod.putMultipart
  //         : GeneralServicesMethod.put,
  //     headers: GeneralServices.addToken2Headers(token),
  //     body: imagePath == null ? json.encode(body) : body,
  //     imagePath: imagePath,
  //   );
  // }

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
      headers: GeneralServices.addToken2Headers(token),
      body: jsonEncode(
        {
          "password": password,
          "password_confirm": confirmPassword,
        },
      ),
    );
  }

  // static Future<Object> editProfile(
  //     String token, email, employeeID, name, phoneNumber,
  //     {String? imagePath}) async {
  //   var url = Uri.parse("${MyGeneralConst.API_URL}/user/edit-profile");
  //   var body = {
  //     "inputEmail": email,
  //     "inputEmployeeID": employeeID,
  //     "inputName": name,
  //     "inputPhoneNumber": phoneNumber,
  //   };
  //   return await GeneralServices.baseService(
  //     url: url,
  //     method: imagePath != null
  //         ? GeneralServicesMethod.postMultiPart
  //         : GeneralServicesMethod.post,
  //     headers: GeneralServices.addToken2Headers(token),
  //     body: imagePath == null ? json.encode(body) : body,
  //     imagePath: imagePath,
  //   );
  // }

  // static Future<Object> editProfilePassword(
  //     String token, oldPassword, newPassword) async {
  //   var url = Uri.parse("${MyGeneralConst.API_URL}/user/edit-password");
  //   // var url = Uri.https(MyGeneralConst.API_URL, "user/edit-password");
  //   return await GeneralServices.baseService(
  //     url: url,
  //     method: GeneralServicesMethod.post,
  //     headers: GeneralServices.addToken2Headers(token),
  //     body: json.encode(
  //       {
  //         "inputOldPassword": oldPassword,
  //         "inputNewPassword": newPassword,
  //       },
  //     ),
  //   );
  // }
}

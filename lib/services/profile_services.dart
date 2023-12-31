import 'dart:convert';

import 'package:ql_absensi_express_mobile/utils/const.dart';
import 'package:ql_absensi_express_mobile/utils/services.dart';

class ProfileServices {
  static Future<Object> getDataProfiel(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/user/get-profile");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> editProfile(
      String token, email, employeeID, name, phoneNumber,
      {String? imagePath}) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/user/edit-profile");
    var body = {
      "inputEmail": email,
      "inputEmployeeID": employeeID,
      "inputName": name,
      "inputPhoneNumber": phoneNumber,
    };
    return await GeneralServices.baseService(
      url: url,
      method: imagePath != null
          ? GeneralServicesMethod.postMultiPart
          : GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: imagePath == null ? json.encode(body) : body,
      imagePath: imagePath,
    );
  }

  static Future<Object> editProfilePassword(
      String token, oldPassword, newPassword) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/user/edit-password");
    // var url = Uri.https(MyGeneralConst.API_URL, "user/edit-password");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode(
        {
          "inputOldPassword": oldPassword,
          "inputNewPassword": newPassword,
        },
      ),
    );
  }
}

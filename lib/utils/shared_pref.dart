import 'dart:convert';

import 'package:sj_presensi_mobile/sentry/my_sentry.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GeneralSharedPreferences {
  static final Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  static Future<Object> saveUserToken(String token, int id) async {
    var pref = await _pref;
    return await pref
        .setString(
      MyGeneralConst.PREF_USER_TOKEN,
      json.encode(
        {"token": token, "id" : id},
      ),
    )
        .then(
      (value) => ServicesSuccess(
        code: MyGeneralConst.CODE_PROCESS_SUCCESS,
        response: "Save User Token success!",
      ),
      onError: (error) async {
        await MySentry.sendReport(error.toString(), "");
        return ServicesFailure(
          code: MyGeneralConst.CODE_UNKWON_ERROR,
          errorResponse: "Unknwon Error!",
        );
      },
    );
  }

  static Future<Object> getUserToken() async {
    var pref = await _pref;
    var data = pref.getString(MyGeneralConst.PREF_USER_TOKEN);
    if (data != null) {
      return ServicesSuccess(
        code: MyGeneralConst.CODE_PROCESS_SUCCESS,
        response: json.decode(data),
      );
    }
    return ServicesFailure(
      code: MyGeneralConst.CODE_BAD_REQUEST,
      errorResponse: "User Token not found!",
    );
  }

  static Future<Object> getUserId() async {
    var pref = await _pref;
    var data = pref.getString(MyGeneralConst.PREF_USER_TOKEN);
    if (data != null) {
      return ServicesSuccess(
        code: MyGeneralConst.CODE_PROCESS_SUCCESS,
        response: json.decode(data),
      );
    }
    return ServicesFailure(
      code: MyGeneralConst.CODE_BAD_REQUEST,
      errorResponse: "User Token not found!",
    );
  }

  static Future<Object> removeUserToken() async {
    var pref = await _pref;
    var data = await pref.remove(MyGeneralConst.PREF_USER_TOKEN);
    if (data) {
      return ServicesSuccess(
        code: MyGeneralConst.CODE_PROCESS_SUCCESS,
        response: "Remove User Token successfuly!",
      );
    } else {
      return ServicesFailure(
        code: MyGeneralConst.CODE_BAD_REQUEST,
        errorResponse: "Remove User Token Failed!",
      );
    }
  }
}

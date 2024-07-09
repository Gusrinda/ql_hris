import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class SentryServices {
  static Future<Object> addSentry(platform, exception, st) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/sentry/add");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      body: json.encode({
        "inputPlatform": platform,
        "inputException": exception,
        "inputStackTrace": st,
      }),
    );
  }
}

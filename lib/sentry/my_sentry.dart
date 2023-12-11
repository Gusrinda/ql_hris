import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/services/sentry_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'dart:io' show Platform;

class MySentry {
  static Future sendReport(exception, stackTrace) async {
    String platform = "IOS";
    if (Platform.isAndroid) {
      platform = "Android";
    }

    platform = "Sukses Jaya Absensi Express: $platform";
    var res = await SentryServices.addSentry(platform, exception, stackTrace);
    if (res is ServicesSuccess) {
      debugPrint(res.response["message"]);
    } else if (res is ServicesFailure) {
      debugPrint(res.errorResponse);
    }
  }
}

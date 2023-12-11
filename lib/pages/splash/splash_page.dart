import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class SplashPage extends StatefulWidget {
  static const routeName = 'SplashPage';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
          LoginPage.routeName, (Route<dynamic> route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColorsConst.whiteColor,
      body: Center(
        child: Image.asset(
          "assets/images/logo_SJ.png",
          width: size.width / 2,
        ),
      ),
    );
  }
}

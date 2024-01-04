import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacementNamed(LoginPage.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white
                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   end: Alignment.centerRight,
                //   colors: [
                //     MyColorsConst.primaryColor,
                //     MyColorsConst.whiteColor,
                //   ],
                // ),
                ),
          ),
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg_login.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo_SJ.png",
                    width: size.width / 4,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "My Success",
                    style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF273E8D)),
                  ),
                  SizedBox(height: 10.sp),
                  SizedBox(
                    width: 30.sp,
                    height: 30.sp,
                    child: const CircularProgressIndicator(
                        color: Color(0XFF273E8D)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

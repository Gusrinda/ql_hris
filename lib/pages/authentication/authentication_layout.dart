import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

enum AuthenticationLayoutState {
  login,
  // changePassword,
}

class AuthenticationLayout extends StatelessWidget {
  final Key formKey;
  final AuthenticationLayoutState layoutState;
  final List<Widget> contents;
  final AutovalidateMode? autovalidateMode;
  AuthenticationLayout({
    super.key,
    required this.formKey,
    required this.layoutState,
    required this.contents,
    this.autovalidateMode,
  });

  final layoutData = [
    {
      // "hideAppBar": true,
      "title": "Selamat Datang!",
      "subTitle": "Silahkan masukkan,\ndata login anda",
      // "paddingTop": 80.0,
      "image": "assets/images/city.png",
      "image2": "assets/images/logo_2.png",
      "imageBottom": "assets/images/loginBottomHRIS.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // appBar: layoutData[layoutState.index]["hideAppBar"] as bool
      //     ? null
      //     : AppBar(
      //         backgroundColor: MyColorsConst.whiteColor,
      //         elevation: 0,
      //         iconTheme: const IconThemeData(
      //           color: MyColorsConst.primaryColor,
      //         ),
      //       ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg_login.jpg', // Gantilah dengan path gambar yang sesuai
              fit: BoxFit.cover,
              width: size.width,
              height: size.height,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              padding: EdgeInsets.only(top: 80.sp),
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //   height: 180.sp,
                  //   child: Image.asset(
                  //     fit: BoxFit.fill,
                  //     width: MediaQuery.of(context).size.width,
                  //     layoutData[layoutState.index]["image"] as String,
                  //     // fit: BoxFit.fitWidth,
                  //   ),
                  // ),
                  // SizedBox(),
                  SizedBox(
                    height: 240.sp,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            // decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     borderRadius: BorderRadius.circular(6)),
                            child: Image.asset(
                              width: size.width * 1 / 2.5,
                              layoutData[layoutState.index]["image2"] as String,
                            ),
                          ),
                          SizedBox(height: 30.sp),
                          Text(
                            layoutData[layoutState.index]["title"] as String,
                            style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w800,
                              color: MyColorsConst.darkColor,
                            ),
                          ),
                          Text(
                            "#SJGWARRIOR",
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(height: 10.sp),
                          SizedBox(
                            width: size.width * 1 / 2,
                            child: Text(
                              layoutData[layoutState.index]["subTitle"]
                                  as String,
                              style: GoogleFonts.poppins(
                                  color: MyColorsConst.darkColor,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 1 / 2,
                    child: Form(
                      key: formKey,
                      autovalidateMode: autovalidateMode,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: contents,
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   alignment: Alignment.bottomCenter,
                  //   width: MediaQuery.of(context).size.width,
                  //   child: Image.asset(
                  //     layoutData[layoutState.index]["imageBottom"] as String,
                  //     fit: BoxFit.fitWidth,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

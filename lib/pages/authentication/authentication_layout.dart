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
      "subTitle": "Masukan data login anda",
      // "paddingTop": 80.0,
      "image": "assets/images/city.png",
      "image2": "assets/images/Logo_Success_Jaya.png",
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
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.centerRight,
              colors: [
                MyColorsConst.primaryColor,
                MyColorsConst.whiteColor,
              ],
            ),
          ),
          height: size.height.sp,
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
              SizedBox(),
              SizedBox(
                height: 200.sp,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Image.asset(
                          width: size.width * 1 / 3,
                          layoutData[layoutState.index]["image2"] as String,
                        ),
                      ),
                      SizedBox(height: 30.sp),
                      Text(
                        layoutData[layoutState.index]["title"] as String,
                        style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
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
                      Text(
                        layoutData[layoutState.index]["subTitle"] as String,
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade100,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 320.sp,
                child: Form(
                  key: formKey,
                  autovalidateMode: autovalidateMode,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
      ),
    );
  }
}

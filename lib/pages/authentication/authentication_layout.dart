import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

enum AuthenticationLayoutState {
  login,
  forgotPassword,
  changePassword,
  register
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
      "hideAppBar": true,
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
      resizeToAvoidBottomInset: false,
      appBar: layoutData[layoutState.index]["hideAppBar"] as bool
          ? null
          : AppBar(
              backgroundColor: MyColorsConst.whiteColor,
              elevation: 0,
              iconTheme: const IconThemeData(
                color: MyColorsConst.primaryColor, //change your color here
              ),
            ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 200,
              child: Image.asset(
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                layoutData[layoutState.index]["image"] as String,
                // fit: BoxFit.fitWidth,
              ),
            ),
            Image.asset(
              width: size.width * 1 / 2,
              layoutData[layoutState.index]["image2"] as String,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    layoutData[layoutState.index]["title"] as String,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    layoutData[layoutState.index]["subTitle"] as String,
                    style: const TextStyle(
                      color: MyColorsConst.lightDarkColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Form(
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
            Image.asset(
              width: MediaQuery.of(context).size.width,
              layoutData[layoutState.index]["imageBottom"] as String,
              // fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
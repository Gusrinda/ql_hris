import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

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
      "title": "Login",
      "subTitle": "Masuk ke Akun",
      "paddingTop": 80.0,
      "icon": "assets/icons/login.svg",
    },
    {
      "hideAppBar": false,
      "title": "Lupa Password",
      "subTitle": "",
      "paddingTop": 30.0,
      "icon": "assets/icons/lupa_password.svg",
    },
    {
      "hideAppBar": false,
      "title": "Ganti Password",
      "subTitle": "",
      "paddingTop": 30.0,
      "icon": "assets/icons/lupa_password.svg",
    },
    {
      "hideAppBar": true,
      "title": "Register",
      "subTitle": "Buat Akunmu",
      "paddingTop": 40.0,
      "icon": "assets/icons/register.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height:
                        layoutData[layoutState.index]["paddingTop"] as double),
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
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: size.height * 1 / 25),
                SvgPicture.asset(
                  width: size.width * 1.2 / 2,
                  layoutData[layoutState.index]["icon"] as String,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: size.height * 1 / 15),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

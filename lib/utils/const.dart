import 'package:flutter/material.dart';

class MyGeneralConst {
  static const _BASE_URL = "https://backend.qqltech.com:7010";
  // static const _BASE_URL = "http://192.168.1.9:8000";
  static const API_URL = "$_BASE_URL/api";
  static const PREF_USER_TOKEN = "PREF_USER_TOKEN";

  static const CODE_PROCESS_SUCCESS = 200;
  static const CODE_NULL_RESPONSE = 400;
  static const CODE_NO_INTERNET_CONECCTION = 401;
  static const CODE_INVALID_FORMAT = 402;
  static const CODE_UNKWON_ERROR = 403;
}

const MaterialColor themeAppColor = MaterialColor(
    0xff0068D4,
    <int, Color>{
      50: Color(0xff0068D4),
      100: Color(0xff0068D4),
      200: Color(0xff0068D4),
      300: Color(0xff0068D4),
      400: Color(0xff0068D4),
      500: Color(0xff0068D4),
      600: Color(0xff0068D4),
      700: Color(0xff0068D4),
      800: Color(0xff0068D4),
      900: Color(0xff0068D4),
    },
  );

class MyColorsConst {
  static const whiteColor = Colors.white;
  static const disableColor = Color.fromARGB(255, 180, 180, 180);
  static const greenColor = Color.fromARGB(255, 40, 185, 72);
  static const redColor = Color.fromARGB(255, 255, 46, 46);
  static const lightRedColor = Color.fromARGB(255, 255, 212, 212);
  static const yellowColor = Color.fromARGB(255, 255, 187, 0);

  static const shadowColor = Color.fromARGB(255, 209, 209, 209);
  static const lightDarkColor = Color(0xFFBDBDBD);
  static const semiDarkColor = Color.fromARGB(255, 104, 104, 104);
  static const darkColor = Color.fromARGB(255, 10, 10, 10);

  static const primaryColor = Color.fromARGB(255, 0, 104, 212);
  static const primaryLightColor = Color.fromARGB(255, 0, 125, 255);
  static const primaryLight2Color = Color.fromARGB(255, 226, 241, 255);
  static const primaryLight3Color = Color.fromARGB(255, 182, 220, 255);
}

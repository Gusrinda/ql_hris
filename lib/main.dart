import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sj_presensi_mobile/pages/splash/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/sentry/my_sentry.dart';

import 'utils/const.dart';
import 'utils/routes.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SJ Absensi Express',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        primaryColor: MyColorsConst.primaryColor,
        dividerColor: Colors.transparent,
        textTheme:
                    GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: SplashPage.routeName,
    );
  }
}

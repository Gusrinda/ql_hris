import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/login/login_page.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class ChangePassNotificationPage extends StatefulWidget {
  static const routeName = '/ChangePassNotificationPage';
  const ChangePassNotificationPage({super.key});

  @override
  State<ChangePassNotificationPage> createState() =>
      _ChangePassNotificationPageState();
}

class _ChangePassNotificationPageState
    extends State<ChangePassNotificationPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context)
          .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SvgPicture.asset(
              width: size.width * 1.2 / 2,
              "assets/icons/email_terkirim.svg",
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: size.height * 1 / 15),
            const Text(
              "Permintaan ubah password telah Terkirim. \nSilahkan cek email Anda",
              style: TextStyle(
                color: MyColorsConst.darkColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

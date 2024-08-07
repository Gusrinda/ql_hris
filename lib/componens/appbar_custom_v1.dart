import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

AppBar appBarCustomV1({
  required String title,
  double padLeft = 8,
  List<Widget>? actions,
}) {
  return AppBar(
    title: Padding(
      padding: EdgeInsets.only(left: padLeft),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          color: MyColorsConst.darkColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    elevation: 1,
    backgroundColor: MyColorsConst.whiteColor,
    iconTheme: const IconThemeData(
      color: MyColorsConst.primaryColor,
    ),
    actions: actions,
    centerTitle: true,
  );
}

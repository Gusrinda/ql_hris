import 'package:flutter/material.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

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
        style: const TextStyle(
          color: MyColorsConst.whiteColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    elevation: 0,
    backgroundColor: MyColorsConst.primaryColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(12),
      ),
    ),
    iconTheme: const IconThemeData(
      color: MyColorsConst.whiteColor,
    ),
    actions: actions,
  );
}

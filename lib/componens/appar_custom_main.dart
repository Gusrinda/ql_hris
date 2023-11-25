import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

AppBar appBarCustomMain({
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
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    // elevation: 1,
    backgroundColor: MyColorsConst.whiteColor,
    actions: actions,
    iconTheme: const IconThemeData(
      color: MyColorsConst.primaryColor,
    ),
    shadowColor: Colors.grey.withOpacity(0.2),
  );
}

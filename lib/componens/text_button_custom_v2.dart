import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/const.dart';

class TextButtonCustomV2 extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final double? width;
  final VoidCallback onPressed;
  const TextButtonCustomV2({
    Key? key,
    required this.text,
    this.width,
    required this.onPressed,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        decoration: const BoxDecoration(
          color: MyColorsConst.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: MyColorsConst.shadowColor,
              blurRadius: 2,
              offset: Offset(2, 2),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: Icon(
                    icon,
                    size: 30,
                    color: MyColorsConst.whiteColor,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                    color: color,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

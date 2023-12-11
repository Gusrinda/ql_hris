import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class TextButtonCustomV1 extends StatelessWidget {
  final String text;
  
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor, textColor;
  final double? textSize;
  final VoidCallback? onPressed;
  const TextButtonCustomV1({
    Key? key,
    required this.text,
    this.width,
    this.height,
    this.margin,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.textSize = 14,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: MyColorsConst.primaryColor,
          elevation: 0,
          backgroundColor:
              onPressed != null ? backgroundColor : MyColorsConst.disableColor,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
            side: BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: textSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

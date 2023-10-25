import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class TextButtonCustomV1 extends StatelessWidget {
  final String text;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor, textColor;
  final double? textSize;
  final VoidCallback? onPressed;
  const TextButtonCustomV1({
    Key? key,
    required this.text,
    this.width,
    this.margin,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.textSize = 16,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor:
              onPressed != null ? backgroundColor : MyColorsConst.disableColor,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
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

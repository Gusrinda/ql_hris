import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class TextFormCustomV3 extends StatelessWidget {
  final String titleText;
  final String hintText;
  final double? width, height;
  final EdgeInsetsGeometry? margin;
  final double? textSize;
  final bool? enable;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  TextFormCustomV3({
    Key? key,
    required this.titleText,
    required this.hintText,
    this.width,
    this.height,
    this.margin,
    this.textSize = 12,
    this.enable = true,
    this.validator,
    this.controller,
  }) : super(key: key);

  var border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: MyColorsConst.primaryColor,
      width: 1,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
  var errBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: MyColorsConst.redColor,
      width: 1,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: MyColorsConst.primaryColor,
            ),
          ),
          const SizedBox(height: 6),
          Container(
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
            child: TextFormField(
              controller: controller,
              enabled: enable,
              keyboardType: TextInputType.multiline,
              style: TextStyle(
                fontSize: textSize,
                color: enable!
                    ? MyColorsConst.darkColor
                    : MyColorsConst.disableColor,
              ),
              validator: validator,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: textSize,
                  color: MyColorsConst.lightDarkColor,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                // border: border,
                enabledBorder: border,
                focusedBorder: border,
                errorBorder: errBorder,
                focusedErrorBorder: errBorder,
                filled: true,
                fillColor: enable! ? Colors.transparent : Colors.black12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

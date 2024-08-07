import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class TextFormCustomV1 extends StatefulWidget {
  final String? titleText;
  final String hintText;
  final double? width, height;
  final EdgeInsetsGeometry? margin;
  final double? textSize;
  final TextInputType? keyboardType;
  final bool isPassword;
  final bool? enable;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const TextFormCustomV1({
    Key? key,
    this.titleText,
    this.width,
    this.height,
    this.margin,
    this.textSize = 12,
    this.keyboardType,
    this.isPassword = false,
    this.enable = true,
    this.validator,
    this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  State<TextFormCustomV1> createState() => _TextFormCustomV1State();
}

class _TextFormCustomV1State extends State<TextFormCustomV1> {
  bool _isPasswordShowed = false;

  @override
  void initState() {
    _isPasswordShowed = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      margin: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.titleText!,
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: MyColorsConst.darkColor,
            ),
          ),
          SizedBox(height: 6.sp),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Color(0xFFDDDDDD)),
              color: MyColorsConst.whiteColor,
            ),
            child: TextFormField(
              controller: widget.controller,
              enabled: widget.enable,
              keyboardType: widget.keyboardType,
              obscureText: _isPasswordShowed,
              style: GoogleFonts.poppins(
                fontSize: widget.textSize,
                color: widget.enable!
                    ? MyColorsConst.darkColor
                    : MyColorsConst.disableColor,
              ),
              validator: widget.validator,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: GoogleFonts.poppins(
                  fontSize: widget.textSize,
                  color: MyColorsConst.lightDarkColor,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
                isDense: true,
                suffixIcon: widget.isPassword && widget.enable!
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            _isPasswordShowed = !_isPasswordShowed;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.sp),
                          child: Icon(
                            _isPasswordShowed
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: MyColorsConst.lightDarkColor,
                            size: 24,
                          ),
                        ),
                      )
                    : null,
                suffixIconConstraints: widget.isPassword
                    ? const BoxConstraints(minWidth: 0, minHeight: 0)
                    : null,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12.sp, vertical: 15.sp),
                border: InputBorder.none,
                filled: true,
                fillColor: widget.enable! ? Colors.transparent : Colors.black12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

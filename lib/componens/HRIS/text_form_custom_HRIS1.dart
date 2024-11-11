import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class TextFormCustomHRIS1 extends StatefulWidget {
  final String? labelText;
  final double? width, height;
  final EdgeInsetsGeometry? margin;
  final double? textSize;
  final TextInputType? keyboardType;
  final bool isPassword;
  final bool? enable;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputAction textInputAction;
  const TextFormCustomHRIS1({
    Key? key,
    this.labelText,
    this.width,
    this.height,
    this.margin,
    this.textSize = 14,
    this.keyboardType,
    this.isPassword = false,
    this.enable = true,
    this.validator,
    this.controller,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  @override
  State<TextFormCustomHRIS1> createState() => _TextFormCustomHRIS1State();
}

class _TextFormCustomHRIS1State extends State<TextFormCustomHRIS1> {
  bool _isPasswordShowed = false;

  @override
  void initState() {
    _isPasswordShowed = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      // margin: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 7),
          TextFormField(
            controller: widget.controller,
            enabled: widget.enable,
            keyboardType: widget.keyboardType,
            obscureText: _isPasswordShowed,
            textInputAction: widget.textInputAction,
            style: GoogleFonts.poppins(
              fontSize: widget.textSize,
              fontWeight: FontWeight.w500,
              color: widget.enable!
                  ? MyColorsConst.darkColor
                  : MyColorsConst.disableColor,
            ),
            validator: widget.validator,
            decoration: InputDecoration(
              errorStyle: GoogleFonts.poppins(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: MyColorsConst.redColor,
              ),
              labelText: widget.labelText,
              labelStyle: GoogleFonts.poppins(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
              ),
              floatingLabelStyle: GoogleFonts.poppins(
                  fontSize: 13.sp, fontWeight: FontWeight.w600),
              // isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              suffixIcon: widget.isPassword && widget.enable!
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          _isPasswordShowed = !_isPasswordShowed;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Icon(
                          _isPasswordShowed
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: MyColorsConst.darkColor,
                          size: 24.sp,
                        ),
                      ),
                    )
                  : null,
              suffixIconConstraints: widget.isPassword
                  ? const BoxConstraints(minWidth: 0, minHeight: 0)
                  : null,
              border: InputBorder.none,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: MyColorsConst.darkColor,
                  width: 2,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: MyColorsConst.primaryColor,
                  width: 2,
                ),
              ),
              errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              filled: true,
              fillColor: widget.enable!
                  ? Colors.white.withOpacity(0.85)
                  : Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
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
    return Container(
      height: widget.height,
      width: widget.width,
      // margin: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          TextFormField(
            controller: widget.controller,
            enabled: widget.enable,
            keyboardType: widget.keyboardType,
            obscureText: _isPasswordShowed,
            style: TextStyle(
              fontSize: widget.textSize,
              color: widget.enable!
                  ? MyColorsConst.darkColor
                  : MyColorsConst.disableColor,
            ),
            validator: widget.validator,
            decoration: InputDecoration(
              labelText: widget.labelText,
              labelStyle: TextStyle(
                fontFamily: "Poppins",
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              floatingLabelStyle: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
              // isDense: true,
              contentPadding: EdgeInsets.zero,
              suffixIcon: widget.isPassword && widget.enable!
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          _isPasswordShowed = !_isPasswordShowed;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
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
              border: InputBorder.none,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: MyColorsConst.lightDarkColor,
                  width: 2,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: MyColorsConst.primaryColor,
                  width: 2,
                ),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              filled: true,
              fillColor: widget.enable! ? Colors.transparent : Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}

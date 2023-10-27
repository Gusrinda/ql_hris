import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class TextFormCustomV2 extends StatefulWidget {
  final String hintText;
  final Color color;
  final IconData icon;
  final double? width;
  final TextInputType? keyboardType;
  final bool? editable;
  bool changeSuffix;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Function(bool onEdit)? onPressed;
  TextFormCustomV2({
    super.key,
    required this.hintText,
    required this.color,
    required this.icon,
    this.width,
    this.keyboardType,
    this.editable = false,
    this.changeSuffix = false,
    this.validator,
    this.controller,
    this.onPressed,
  });

  @override
  State<TextFormCustomV2> createState() => _TextFormCustomV2State();
}

class _TextFormCustomV2State extends State<TextFormCustomV2> {
  bool localEnable = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Color(0xFFDDDDDD)),
        color: MyColorsConst.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: Center(
                child: Icon(
                  widget.icon,
                  size: 25,
                  color: MyColorsConst.primaryColor,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: TextFormField(
                controller: widget.controller,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: MyColorsConst.darkColor,
                  fontWeight: FontWeight.w400,
                ),
                enabled: localEnable,
                keyboardType: widget.keyboardType,
                validator: widget.validator,
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: MyColorsConst.lightDarkColor,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 13.5,
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  localEnable = !localEnable;
                });
                widget.onPressed!(localEnable);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: Icon(
                    widget.editable!
                        ? widget.changeSuffix
                            ? localEnable
                                ? Icons.save
                                : Icons.edit
                            : Icons.edit
                        : null,
                    size: 20,
                    color: MyColorsConst.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

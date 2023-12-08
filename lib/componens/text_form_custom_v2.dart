import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class TextFormCustomV2 extends StatefulWidget {
  final String labelText;
  final Color color;
  final IconData icon;
  final double? width;
  final TextInputType? keyboardType;
  final bool? editable;
  bool changeSuffix;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  // final Function(bool onEdit)? onPressed;
  TextFormCustomV2({
    super.key,
    required this.labelText,
    required this.color,
    required this.icon,
    this.width,
    this.keyboardType,
    this.editable = false,
    this.changeSuffix = false,
    this.validator,
    this.controller,
    // this.onPressed,
    this.onTap,
  });

  @override
  State<TextFormCustomV2> createState() => _TextFormCustomV2State();
}

class _TextFormCustomV2State extends State<TextFormCustomV2> {
  bool localEnable = false;

  @override
  Widget build(BuildContext context) {
    Color circleAvatarColor = widget.icon == Icons.logout_outlined
        ? MyColorsConst.redColor.withOpacity(0.1)
        : MyColorsConst.primaryColor.withOpacity(0.1);

    Color iconColor = widget.icon == Icons.logout_outlined
        ? MyColorsConst.redColor
        : MyColorsConst.primaryColor;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFDDDDDD),
            ),
          ),
          color: MyColorsConst.whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: circleAvatarColor,
                child: Icon(
                  widget.icon,
                  size: 20,
                  color: iconColor,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: TextFormField(
                  controller: widget.controller,
                  readOnly: true,
                  style: const TextStyle(
                    fontSize: 12,
                    color: MyColorsConst.darkColor,
                    fontWeight: FontWeight.w500,
                  ),
                  enabled: localEnable,
                  keyboardType: widget.keyboardType,
                  validator: widget.validator,
                  decoration: InputDecoration(
                    labelText: widget.labelText,
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      color: MyColorsConst.darkColor,
                      fontWeight: FontWeight.w500,
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
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                    color: MyColorsConst.primaryColor,
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

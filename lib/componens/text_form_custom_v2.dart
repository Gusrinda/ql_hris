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
                color: widget.color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: Center(
                child: Icon(
                  widget.icon,
                  size: 30,
                  color: MyColorsConst.whiteColor,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: TextFormField(
              controller: widget.controller,
              enabled: localEnable,
              keyboardType: widget.keyboardType,
              validator: widget.validator,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: const TextStyle(
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
                    size: 25,
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class FormTextLabel extends StatelessWidget {
  const FormTextLabel({
    Key? key,
    required this.label,
    this.labelColor,
    this.mandatory = false,
  }) : super(key: key);

  final String label;
  final Color? labelColor;
  final bool mandatory;

  @override
  Widget build(BuildContext context) {
    if (mandatory) {
      return Text.rich(
        TextSpan(
          text: label,
          children: const [
            TextSpan(text: '*', style: TextStyle(color: Colors.red)),
          ],
        ),
        style: TextStyle(
          fontSize: 12,
          color: labelColor ?? Theme.of(context).primaryColor,
        ),
      );
    }

    return Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: labelColor ?? Theme.of(context).primaryColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
          children: [
            TextSpan(
                text: '*',
                style: GoogleFonts.poppins(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 13.sp,
          color: labelColor ?? Theme.of(context).primaryColor,
        ),
      );
    }

    return Text(
      label,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 13.sp,
        color: labelColor ?? Theme.of(context).primaryColor,
      ),
    );
  }
}

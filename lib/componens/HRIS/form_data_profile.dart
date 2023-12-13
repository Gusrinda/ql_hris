import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/hero_widget.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class FormDropDownData extends StatelessWidget {
  const FormDropDownData({
    Key? key,
    this.enabled = true,
    this.input = "",
    this.onTap,
    required this.hintText,
    required this.labelForm,
    required this.labelTag,
    required this.formTag,
    required this.valueController,
    required this.idController,
    this.validator,
    this.errorTextStyle,
  }) : super(key: key);

  final bool enabled;
  final String input;
  final String labelForm;
  final String hintText;
  final String labelTag;
  final String formTag;
  final TextEditingController valueController;
  final TextEditingController idController;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final TextStyle? errorTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: labelTag,
          flightShuttleBuilder: flightShuttleBuilder,
          child: Row(
            children: [
              FormTextLabel(
                label: labelForm,
                labelColor: MyColorsConst.darkColor,
              ),
              SizedBox(width: 2.sp),
              Text(
                '*',
                style: GoogleFonts.poppins(color: Colors.red),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        Hero(
          tag: formTag,
          child: Material(
            color: Colors.transparent,
            child: Container(
              alignment: Alignment.center,
              // height: 56.sp,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),

              // ),
              child: TextFormField(
                readOnly: true,
                onTap: onTap,
                controller: valueController,
                style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: MyColorsConst.darkColor),
                validator: validator,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18.sp),
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1.5, color: MyColorsConst.formBorderColor),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1.5, color: MyColorsConst.formBorderColor),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1.5, color: MyColorsConst.primaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Color(0XFF0b00020)),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Color(0XFF0b00020)),
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: MyColorsConst.darkColor,
                    ),
                  ),
                  hintText: hintText,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: MyColorsConst.disableColor,
                      fontWeight: FontWeight.w500),
                  errorStyle: GoogleFonts.poppins(
                    fontSize: 10.sp,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.sp),
      ],
    );
  }
}

class FormCatatanData extends StatelessWidget {
  const FormCatatanData({
    Key? key,
    this.enabled = true,
    this.input = "",
    this.onTap,
    required this.controller,
    required this.validator,
    this.errorTextStyle,
    required this.labelForm,
    required this.labelTag,
    required this.formTag,
    required this.hintText,
    this.showRedStar = true,
  }) : super(key: key);

  final bool enabled;
  final String input;
  final String labelForm;
  final String labelTag;
  final String formTag;
  final String hintText;
  final VoidCallback? onTap;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final TextStyle? errorTextStyle;
  final bool showRedStar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: labelTag,
          child: Row(
            children: [
              FormTextLabel(
                label: labelForm,
                labelColor: MyColorsConst.darkColor,
              ),
              if (showRedStar) // Tampilkan bintang merah sesuai showRedStar
                SizedBox(width: 2.sp),
              if (showRedStar)
                Text(
                  '*',
                  style: GoogleFonts.poppins(color: Colors.red),
                ),
            ],
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        Hero(
          tag: formTag,
          flightShuttleBuilder: flightShuttleBuilder,
          child: Material(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: MyColorsConst.darkColor,
                        fontWeight: FontWeight.w500),
                    maxLines: 5,
                    readOnly: false,
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: MyColorsConst.disableColor,
                          fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: MyColorsConst.formBorderColor),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: MyColorsConst.formBorderColor),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: MyColorsConst.primaryColor),
                          borderRadius: BorderRadius.circular(10)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: Color(0XFF0b00020)),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: Color(0XFF0b00020)),
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.all(18.sp),
                      errorStyle: GoogleFonts.poppins(fontSize: 10.sp),
                    ),
                    onTap: onTap,
                    controller: controller,
                    textInputAction: TextInputAction.next,
                    validator: validator,
                  ),
                ),
                SizedBox(height: 20.sp),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FormInputData extends StatelessWidget {
  const FormInputData({
    Key? key,
    this.enabled = true,
    this.input = "",
    this.onTap,
    required this.controller,
    required this.validator,
    this.errorTextStyle,
    required this.labelForm,
    required this.labelTag,
    required this.formTag,
    required this.hintText,
    this.showRedStar = true,
  }) : super(key: key);

  final bool enabled;
  final String input;
  final String labelForm;
  final String labelTag;
  final String formTag;
  final String hintText;
  final VoidCallback? onTap;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final TextStyle? errorTextStyle;
  final bool showRedStar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: labelTag,
          child: Row(
            children: [
              FormTextLabel(
                label: labelForm,
                labelColor: MyColorsConst.darkColor,
              ),
              if (showRedStar) // Tampilkan bintang merah sesuai showRedStar
                SizedBox(width: 2.sp),
              if (showRedStar)
                Text(
                  '*',
                  style: GoogleFonts.poppins(color: Colors.red),
                ),
            ],
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        Hero(
          tag: formTag,
          flightShuttleBuilder: flightShuttleBuilder,
          child: Material(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: MyColorsConst.darkColor,
                        fontWeight: FontWeight.w500),
                    maxLines: 1,
                    readOnly: false,
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: MyColorsConst.disableColor,
                          fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: MyColorsConst.formBorderColor),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: MyColorsConst.formBorderColor),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: MyColorsConst.primaryColor),
                          borderRadius: BorderRadius.circular(10)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: Color(0XFF0b00020)),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: Color(0XFF0b00020)),
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.all(18.sp),
                      errorStyle: GoogleFonts.poppins(fontSize: 10.sp),
                    ),
                    onTap: onTap,
                    controller: controller,
                    textInputAction: TextInputAction.next,
                    validator: validator,
                  ),
                ),
                SizedBox(height: 20.sp),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FormUploadFile extends StatelessWidget {
  const FormUploadFile({
    Key? key,
    this.enabled = true,
    this.input = "",
    this.onTap,
    required this.controller,
    required this.validator,
    this.errorTextStyle,
    required this.labelForm,
    required this.labelTag,
    required this.formTag,
    required this.hintText,
    this.showRedStar = true,
  }) : super(key: key);

  final bool enabled;
  final String input;
  final String labelForm;
  final String labelTag;
  final String formTag;
  final String hintText;
  final VoidCallback? onTap;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final TextStyle? errorTextStyle;
  final bool showRedStar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: labelTag,
          child: Row(
            children: [
              FormTextLabel(
                label: labelForm,
                labelColor: MyColorsConst.darkColor,
              ),
              if (showRedStar) // Tampilkan bintang merah sesuai showRedStar
                SizedBox(width: 2),
              if (showRedStar)
                Text(
                  '*',
                  style: GoogleFonts.poppins(color: Colors.red),
                ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Hero(
          tag: formTag,
          flightShuttleBuilder: (BuildContext flightContext,
                  Animation<double> animation,
                  HeroFlightDirection flightDirection,
                  BuildContext fromHeroContext,
                  BuildContext toHeroContext) =>
              Material(child: toHeroContext.widget),
          child: Material(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: onTap, // Handle pemilihan gambar dari galeri
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: MyColorsConst.formBorderColor,
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              // Menampilkan nama file terpilih atau pesan kosong
                              controller.text.isNotEmpty
                                  ? controller.text
                                  : hintText,
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: controller.text.isNotEmpty
                                    ? MyColorsConst.darkColor
                                    : MyColorsConst.disableColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Icon(Icons.image),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FormTemplateSpd extends StatelessWidget {
  const FormTemplateSpd({
    Key? key,
    this.enabled = true,
    this.input = "",
    this.onTap,
    required this.hintText,
    required this.labelForm,
    required this.labelTag,
    required this.formTag,
    required this.valueController,
    required this.idController,
    this.validator,
    this.errorTextStyle,
  }) : super(key: key);

  final bool enabled;
  final String input;
  final String labelForm;
  final String hintText;
  final String labelTag;
  final String formTag;
  final TextEditingController valueController;
  final TextEditingController idController;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final TextStyle? errorTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: labelTag,
          flightShuttleBuilder: flightShuttleBuilder,
          child: Row(
            children: [
              FormTextLabel(
                label: labelForm,
                labelColor: MyColorsConst.darkColor,
              ),
              SizedBox(width: 2.sp),
              Text(
                '*',
                style: GoogleFonts.poppins(color: Colors.red),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        Hero(
          tag: formTag,
          flightShuttleBuilder: flightShuttleBuilder,
          child: Material(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    readOnly: true,
                    onTap: onTap,
                    controller: valueController,
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18.sp),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: MyColorsConst.formBorderColor),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: MyColorsConst.formBorderColor),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: MyColorsConst.primaryColor),
                          borderRadius: BorderRadius.circular(10)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: Color(0XFF0b00020)),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: Color(0XFF0b00020)),
                          borderRadius: BorderRadius.circular(10)),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(12.0.sp),
                        child: Icon(
                          Icons.search,
                          color: MyColorsConst.primaryColor,
                        ),
                      ),
                      hintText: hintText,
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: MyColorsConst.disableColor,
                          fontWeight: FontWeight.w500),
                      errorStyle: GoogleFonts.poppins(fontSize: 10.sp),
                    ),
                    validator: validator,
                  ),
                ),
                SizedBox(height: 20.sp),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

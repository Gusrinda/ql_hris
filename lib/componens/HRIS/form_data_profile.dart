import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/hero_widget.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class FormDropDownData extends StatelessWidget {
  const FormDropDownData({
    Key? key,
    this.enabled = true,
    this.showRedStar = true,
    this.input = "",
    this.onTap,
    required this.hintText,
    required this.labelForm,
    required this.labelTag,
    required this.formTag,
    required this.valueController,
    this.idController,
    this.validator,
    this.errorTextStyle,
  }) : super(key: key);

  final bool enabled;
  final bool showRedStar;
  final String input;
  final String labelForm;
  final String hintText;
  final String labelTag;
  final String formTag;
  final TextEditingController valueController;
  final TextEditingController? idController;
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
              if (showRedStar == true)
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
                      Icons.search_rounded,
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
  const FormInputData(
      {Key? key,
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
      this.inputType = TextInputType.text,
      this.onChanged})
      : super(key: key);

  final ValueChanged<String?>? onChanged;
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
  final TextInputType inputType;

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
                    color: !enabled
                        ? MyColorsConst.disableColor.withOpacity(0.2)
                        : Colors.white,
                  ),
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: MyColorsConst.darkColor,
                        fontWeight: FontWeight.w500),
                    maxLines: 1,
                    readOnly: !enabled,
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
                          borderSide: BorderSide(
                              width: 1.5,
                              color: enabled == true
                                  ? MyColorsConst.primaryColor
                                  : MyColorsConst.formBorderColor),
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
                    onChanged: onChanged,
                    onTap: onTap,
                    controller: controller,
                    textInputAction: TextInputAction.next,
                    validator: validator,
                    keyboardType: inputType,
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

class FormInputDataWithNote extends StatelessWidget {
  const FormInputDataWithNote({
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
    this.inputType = TextInputType.text,
    this.onChanged,
    this.noteTop,
    this.noteBottom,
  }) : super(key: key);

  final ValueChanged<String?>? onChanged;
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
  final TextInputType inputType;
  final String? noteTop;
  final String? noteBottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: labelTag,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              if (noteTop != null && noteTop != '') ...{
                SizedBox(height: 3.sp),
                Text(
                  noteTop!,
                  style: GoogleFonts.poppins(
                      color: MyColorsConst.primaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
              }
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
                    color: !enabled
                        ? MyColorsConst.disableColor.withOpacity(0.2)
                        : Colors.white,
                  ),
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: MyColorsConst.darkColor,
                        fontWeight: FontWeight.w500),
                    maxLines: 1,
                    readOnly: !enabled,
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
                          borderSide: BorderSide(
                              width: 1.5,
                              color: enabled == true
                                  ? MyColorsConst.primaryColor
                                  : MyColorsConst.formBorderColor),
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
                    onChanged: onChanged,
                    onTap: onTap,
                    controller: controller,
                    textInputAction: TextInputAction.next,
                    validator: validator,
                    keyboardType: inputType,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (noteBottom != null && noteBottom != '') ...{
          SizedBox(height: 5.sp),
          Text(
            noteBottom ?? "",
            style: GoogleFonts.poppins(
                color: MyColorsConst.lightDarkColor,
                fontSize: 11.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 20.sp),
        }
      ],
    );
  }
}

// class FormInputBiaya extends StatelessWidget {
//   const FormInputBiaya(
//       {Key? key,
//       this.enabled = true,
//       this.input = "",
//       this.onTap,
//       required this.controller,
//       required this.validator,
//       this.errorTextStyle,
//       required this.labelForm,
//       required this.labelTag,
//       required this.formTag,
//       required this.hintText,
//       this.showRedStar = true,
//       this.inputType = TextInputType.text,
//       this.onChanged})
//       : super(key: key);

//   final ValueChanged<String?>? onChanged;
//   final bool enabled;
//   final String input;
//   final String labelForm;
//   final String labelTag;
//   final String formTag;
//   final String hintText;
//   final VoidCallback? onTap;
//   final TextEditingController controller;
//   final String? Function(String?) validator;
//   final TextStyle? errorTextStyle;
//   final bool showRedStar;
//   final TextInputType inputType;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Hero(
//           tag: labelTag,
//           child: Row(
//             children: [
//               FormTextLabel(
//                 label: labelForm,
//                 labelColor: MyColorsConst.darkColor,
//               ),
//               if (showRedStar) // Tampilkan bintang merah sesuai showRedStar
//                 SizedBox(width: 2.sp),
//               if (showRedStar)
//                 Text(
//                   '*',
//                   style: GoogleFonts.poppins(color: Colors.red),
//                 ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 5.sp,
//         ),
//         Hero(
//           tag: formTag,
//           flightShuttleBuilder: flightShuttleBuilder,
//           child: Material(
//             color: Colors.transparent,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: !enabled
//                         ? MyColorsConst.disableColor.withOpacity(0.2)
//                         : Colors.white,
//                   ),
//                   child: TextFormField(
//                     style: GoogleFonts.poppins(
//                         fontSize: 13.sp,
//                         color: MyColorsConst.darkColor,
//                         fontWeight: FontWeight.w500),
//                     maxLines: 1,
//                     readOnly: !enabled,
//                     decoration: InputDecoration(
//                       hintText: hintText,
//                       hintStyle: GoogleFonts.poppins(
//                           fontSize: 13.sp,
//                           color: MyColorsConst.disableColor,
//                           fontWeight: FontWeight.w500),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                               width: 1.5, color: MyColorsConst.formBorderColor),
//                           borderRadius: BorderRadius.circular(10)),
//                       border: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                               width: 1.5, color: MyColorsConst.formBorderColor),
//                           borderRadius: BorderRadius.circular(10)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               width: 1.5,
//                               color: enabled == true
//                                   ? MyColorsConst.primaryColor
//                                   : MyColorsConst.formBorderColor),
//                           borderRadius: BorderRadius.circular(10)),
//                       focusedErrorBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                               width: 1.5, color: Color(0XFF0b00020)),
//                           borderRadius: BorderRadius.circular(10)),
//                       errorBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                               width: 1.5, color: Color(0XFF0b00020)),
//                           borderRadius: BorderRadius.circular(10)),
//                       contentPadding: EdgeInsets.all(18.sp),
//                       errorStyle: GoogleFonts.poppins(fontSize: 10.sp),
//                     ),
//                     onChanged: onChanged,
//                     onTap: onTap,
//                     controller: controller,
//                     textInputAction: TextInputAction.next,
//                     validator: validator,
//                     keyboardType: inputType,
//                     inputFormatters: [
//                       CurrencyTextInputFormatter(),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20.sp),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class CurrencyTextInputFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//     TextEditingValue oldValue,
//     TextEditingValue newValue,
//   ) {
//     if (newValue.selection.baseOffset == 0) {
//       return newValue;
//     }

//     double value = double.parse(newValue.text.replaceAll(',', ''));

//     final formattedValue = NumberFormat.currency(
//       locale: 'id_ID',
//       symbol: 'Rp ',
//     ).format(value / 100);

//     return newValue.copyWith(
//       text: formattedValue,
//       selection: TextSelection.collapsed(
//         offset: formattedValue.length - 1,
//       ),
//     );
//   }
// }

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

class FormDateData extends StatelessWidget {
  const FormDateData({
    Key? key,
    this.enabled = true,
    this.showRedStar = true,
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
  final bool showRedStar;
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
              if (showRedStar == true)
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
                      CupertinoIcons.calendar,
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
              // SizedBox(width: 2.sp),
              // Text(
              //   '*',
              //   style: GoogleFonts.poppins(color: Colors.red),
              // ),
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

class FormDropDownDataWithNote extends StatelessWidget {
  const FormDropDownDataWithNote({
    Key? key,
    this.enabled = true,
    this.showRedStar = true,
    this.input = "",
    this.onTap,
    required this.hintText,
    required this.labelForm,
    required this.labelTag,
    required this.formTag,
    required this.valueController,
    this.idController,
    this.validator,
    this.errorTextStyle,
    this.note,
  }) : super(key: key);

  final bool enabled;
  final bool showRedStar;
  final String input;
  final String labelForm;
  final String hintText;
  final String labelTag;
  final String formTag;
  final TextEditingController valueController;
  final TextEditingController? idController;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final TextStyle? errorTextStyle;
  final String? note;

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
                '(Opsional)',
                style: GoogleFonts.poppins(
                    color: MyColorsConst.lightDarkColor, fontSize: 9.sp),
              ),
              SizedBox(width: 2.sp),
              if (showRedStar == true)
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
                      Icons.search_rounded,
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
        SizedBox(height: 5.sp),
        Text(
          note ?? "",
          style: GoogleFonts.poppins(
              color: MyColorsConst.lightDarkColor,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 20.sp),
      ],
    );
  }
}

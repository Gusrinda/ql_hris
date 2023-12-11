// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';

// import '../../utils/const.dart';
// import '../HRIS/hero_widget.dart';

// class FormDropDown extends StatelessWidget {
//   const FormDropDown({
//     Key? key,
//     this.enabled = true,
//     this.input = "",
//     this.onTap,
//     required this.hintText,
//     required this.labelForm,
//     required this.labelTag,
//     required this.formTag,
//     required this.valueController,
//     required this.idController,
//     this.validator,
//     this.errorTextStyle,
//   }) : super(key: key);

//   final bool enabled;
//   final String input;
//   final String labelForm;
//   final String hintText;
//   final String labelTag;
//   final String formTag;
//   final TextEditingController valueController;
//   final TextEditingController idController;
//   final VoidCallback? onTap;
//   final String? Function(String?)? validator;
//   final TextStyle? errorTextStyle;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Hero(
//           tag: labelTag,
//           flightShuttleBuilder: flightShuttleBuilder,
//           child: FormTextLabel(
//             label: labelForm,
//             labelColor: MyColorsConst.darkColor,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Hero(
//           tag: formTag,
//           child: Material(
//             color: Colors.transparent,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(6),
//                 border: Border.all(color: Color(0xFFDDDDDD)),
//               ),
//               child: TextFormField(
//                 readOnly: true,
//                 onTap: onTap,
//                 controller: valueController, // Menggunakan valueController
//                 style: GoogleFonts.poppins(
//                   fontSize: 12,
//                 ),
//                 validator: validator,
//                 decoration: InputDecoration(
//                   contentPadding: EdgeInsets.all(12),
//                   border: InputBorder.none,
//                   suffixIcon: Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: Icon(
//                       Icons.keyboard_arrow_down,
//                       color: MyColorsConst.primaryColor,
//                     ),
//                   ),
//                   hintText: hintText,
//                   hintStyle: GoogleFonts.poppins(
//                     fontSize: 12,
//                     fontStyle: FontStyle.italic,
//                   ),
//                   errorStyle: errorTextStyle,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


// class FormCatatanCuti extends StatelessWidget {
//   const FormCatatanCuti({
//     Key? key,
//     this.enabled = true,
//     this.input = "",
//     this.onTap,
//     required this.controller,
//     required this.validator,
//     this.errorTextStyle,
//   }) : super(key: key);

//   final bool enabled;
//   final String input;
//   final VoidCallback? onTap;
//   final TextEditingController controller;
//   final String? Function(String?) validator;
//   final TextStyle? errorTextStyle;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         const Hero(
//           tag: 'Label-CatatanCuti',
//           flightShuttleBuilder: flightShuttleBuilder,
//           child: FormTextLabel(
//             label: "Catatan",
//             labelColor: MyColorsConst.darkColor,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Hero(
//           tag: 'Form-CatatanCuti',
//           flightShuttleBuilder: flightShuttleBuilder,
//           child: Material(
//             color: Colors.transparent,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(6),
//                     border: Border.all(color: Color(0xFFDDDDDD)),
//                   ),
//                   child: TextFormField(
//                     style: GoogleFonts.poppins(
//                         fontSize: 13, color: MyColorsConst.darkColor
//                       ),
//                     maxLines: 5,
//                     readOnly: false,
//                     decoration: InputDecoration(
//                       hintText: "Tuliskan Catatan",
//                       hintStyle: GoogleFonts.poppins(
//                         fontSize: 12,
//                         fontStyle: FontStyle.italic,
//                       ),
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(12),
//                       errorStyle: errorTextStyle,
//                     ),
//                     onTap: onTap,
//                     controller: controller,
//                     textInputAction: TextInputAction.next,
//                     validator: validator,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

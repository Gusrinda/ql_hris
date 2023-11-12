import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_alasan_cuti_model.dart';

import '../../utils/const.dart';
import '../HRIS/hero_widget.dart';

// class FormTipeCuti extends StatelessWidget {
//   const FormTipeCuti({
//     Key? key,
//     this.enabled = true,
//     this.input = "",
//     this.onTap,
//     required this.controller,
//   }) : super(key: key);

//   final bool enabled;
//   final String input;
//   final TextEditingController controller;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         const Hero(
//           tag: 'Label-TipeCuti',
//           flightShuttleBuilder: flightShuttleBuilder,
//           child: FormTextLabel(
//             label: "Tipe Cuti",
//             labelColor: MyColorsConst.darkColor,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Hero(
//           tag: 'Form-TipeCuti',
//           child: Material(
//             color: Colors.transparent,
//             child: FormTextField(
//               readOnly: true,
//               trailing: const Padding(
//                 padding: EdgeInsets.all(12.0),
//                 child: Icon(
//                   Icons.keyboard_arrow_down,
//                   color: MyColorsConst.primaryColor,
//                 ),
//               ),
//               hintText: "Pilih Tipe Cuti",
//               onTap: onTap,
//               textEditingController: TextEditingController(text: input),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class FormTipeCuti extends StatelessWidget {
  const FormTipeCuti({
    Key? key,
    this.enabled = true,
    this.input = "",
    this.onTap,
    required this.controller,
  }) : super(key: key);

  final bool enabled;
  final String input;
  final TextEditingController controller;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Hero(
          tag: 'Label-TipeCuti',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Tipe Cuti",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-TipeCuti',
          child: Material(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Color(0xFFDDDDDD)),
              ),
              child: TextFormField(
                readOnly: true,
                onTap: onTap,
                controller: controller,
                style: TextStyle(
                  fontSize: 12,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  border: InputBorder.none,
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: MyColorsConst.primaryColor,
                    ),
                  ),
                  hintText: "Pilih Tipe Cuti",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FormTipeAlasan extends StatelessWidget {
  const FormTipeAlasan({
    Key? key,
    this.enabled = true,
    this.input = "",
    required this.controller,
    // required this.alasanList,
    this.onTap,
  }) : super(key: key);

  final bool enabled;
  final String input;
  final VoidCallback? onTap;
  final TextEditingController controller;
  // final List<Datum> alasanList;

  @override
  Widget build(BuildContext context) {
    // print("isi alasan: $alasanList");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Hero(
          tag: 'Label-TipeAlasan',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Alasan",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-AlasanCuti',
          child: Material(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Color(0xFFDDDDDD)),
              ),
              child: TextFormField(
                readOnly: true,
                onTap: onTap,
                controller: controller,
                style: TextStyle(
                  fontSize: 12,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  border: InputBorder.none,
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: MyColorsConst.primaryColor,
                    ),
                  ),
                  hintText: "Alasan Cuti",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class FormTipeAlasan extends StatelessWidget {
//   const FormTipeAlasan({
//     Key? key,
//     this.enabled = true,
//     this.input = "",
//     this.onTap,
//     required this.controller,
//     required this.alasanList,
//   }) : super(key: key);

//   final bool enabled;
//   final String input;
//   final VoidCallback? onTap;
//   final TextEditingController controller;
//   final List<Datum> alasanList;

//   @override
//   Widget build(BuildContext context) {
//     // print("Alasan List: $alasanList");

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         const Hero(
//           tag: 'Label-TipeAlasan',
//           flightShuttleBuilder: flightShuttleBuilder,
//           child: FormTextLabel(
//             label: "Alasan",
//             labelColor: MyColorsConst.darkColor,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Hero(
//           tag: 'Form-TipeAlasan',
//           child: Material(
//             color: Colors.transparent,
//             child: FormTextField(
//               readOnly: true,
//               trailing: const Padding(
//                 padding: EdgeInsets.all(12.0),
//                 child: Icon(
//                   Icons.keyboard_arrow_down,
//                   color: MyColorsConst.primaryColor,
//                 ),
//               ),
//               hintText: "Pilih Tipe Alasan",
//               onTap: onTap,
//               textEditingController: TextEditingController(text: input),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class FormTanggalCuti extends StatelessWidget {
//   const FormTanggalCuti({
//     Key? key,
//     this.enabled = true,
//     this.input = "",
//     this.onTap,
//   }) : super(key: key);
//   final bool enabled;
//   final String input;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         const Hero(
//           tag: 'Label-TanggalCuti',
//           flightShuttleBuilder: flightShuttleBuilder,
//           child: FormTextLabel(
//             label: "Tanggal Cuti",
//             labelColor: MyColorsConst.darkColor,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Hero(
//           tag: 'Form-TanggalCuti',
//           child: Material(
//             color: Colors.transparent,
//             child: FormTextField(
//               readOnly: true,
//               trailing: Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Icon(
//                   Icons.calendar_month_rounded,
//                   color: MyColorsConst.primaryColor,
//                   size: 20,
//                 ),
//               ),
//               hintText: "Pilih Tanggal Cuti",
//               onTap: onTap,
//               textEditingController: TextEditingController(text: input),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class FormCatatanCuti extends StatelessWidget {
  const FormCatatanCuti({
    Key? key,
    this.enabled = true,
    this.input = "",
    this.onTap,
    required this.controller,
  }) : super(key: key);

  final bool enabled;
  final String input;
  final VoidCallback? onTap;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Hero(
          tag: 'Label-CatatanCuti',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Catatan",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // ignore: prefer_const_constructors
        Hero(
          tag: 'Form-CatatanCuti',
          flightShuttleBuilder: flightShuttleBuilder,
          // ignore: prefer_const_constructors
          child: Material(
            color: Colors.transparent,
            // ignore: prefer_const_constructors
            child: FormTextField(
              maxLines: 5,
              readOnly: false,
              hintText: "Tuliskan Catatan",
              onTap: onTap,
              textEditingController: controller,
              textInputAction: TextInputAction.next,
            ),
          ),
        )
      ],
    );
  }
}

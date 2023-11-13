import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_alasan_cuti_model.dart';

import '../../utils/const.dart';
import '../HRIS/hero_widget.dart';

class FormCuti extends StatelessWidget {
  const FormCuti({
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: labelTag,
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: labelForm,
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: formTag,
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
                controller: valueController, // Menggunakan valueController
                style: TextStyle(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  border: InputBorder.none,
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: MyColorsConst.primaryColor,
                    ),
                  ),
                  hintText: hintText,
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

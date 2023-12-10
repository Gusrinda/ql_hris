import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/HRIS/hero_widget.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DropDownDataProfile extends StatelessWidget {
  const DropDownDataProfile({
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
              const SizedBox(width: 2),
              const Text(
                '*',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Hero(
          tag: formTag,
          child: Material(
            color: Colors.transparent,
            child: Container(
              alignment: Alignment.center,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFFDDDDDD)),
              ),
              child: TextFormField(
                readOnly: true,
                onTap: onTap,
                controller: valueController, // Menggunakan valueController
                style: TextStyle(
                  fontSize: 13,
                ),
                validator: validator,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18),
                  border: InputBorder.none,
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: MyColorsConst.darkColor,
                    ),
                  ),
                  hintText: hintText,
                  hintStyle: TextStyle(
                      fontSize: 13,
                      color: MyColorsConst.disableColor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400),
                  errorStyle: errorTextStyle,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class FormDataProfile extends StatelessWidget {
  const FormDataProfile({
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
                const SizedBox(width: 2),
              if (showRedStar)
                const Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
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
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFDDDDDD)),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 13,
                      color: MyColorsConst.darkColor,
                      fontWeight: FontWeight.w500
                    ),
                    maxLines: 5,
                    readOnly: false,
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: TextStyle(
                          fontSize: 13,
                          color: MyColorsConst.disableColor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(18),
                      errorStyle: errorTextStyle,
                    ),
                    onTap: onTap,
                    controller: controller,
                    textInputAction: TextInputAction.next,
                    validator: validator,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

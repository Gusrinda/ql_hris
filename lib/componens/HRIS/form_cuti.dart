import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';

import '../../utils/const.dart';
import '../HRIS/hero_widget.dart';

class FormTipeCuti extends StatelessWidget {
  const FormTipeCuti({
    Key? key,
    this.enabled = true,
    this.input = "",
    this.onTap,
  }) : super(key: key);

  final bool enabled;
  final String input;
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
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColorsConst.primaryColor,
                ),
              ),
              hintText: "Pilih Tipe Cuti",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
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
    this.onTap,
  }) : super(key: key);
  final bool enabled;
  final String input;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Hero(
          tag: 'Label-TipeAlasan',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Tipe Alasan",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-TipeAlasan',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColorsConst.primaryColor,
                ),
              ),
              hintText: "Pilih Alasan",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormTanggalCuti extends StatelessWidget {
  const FormTanggalCuti({
    Key? key,
    this.enabled = true,
    this.input = "",
    this.onTap,
  }) : super(key: key);
  final bool enabled;
  final String input;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Hero(
          tag: 'Label-TanggalCuti',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Tanggal Cuti",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-TanggalCuti',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.calendar_month_rounded,
                  color: MyColorsConst.primaryColor,
                  size: 20,
                ),
              ),
              hintText: "Pilih Tanggal Cuti",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
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
  }) : super(key: key);

  final bool enabled;
  final String input;
  final VoidCallback? onTap;

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
              readOnly: true,
              hintText: "Tuliskan Catatan",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
              textInputAction: TextInputAction.next,
            ),
          ),
        )
      ],
    );
  }
}

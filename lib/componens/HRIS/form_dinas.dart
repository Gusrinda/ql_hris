import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';

import '../../utils/const.dart';
import '../HRIS/hero_widget.dart';

class FormTemplateSpd extends StatelessWidget {
  const FormTemplateSpd({
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
          tag: 'Label-TemplateSpd',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Template SPD",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-TemplateSpd',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.search,
                  color: MyColorsConst.primaryColor,
                ),
              ),
              hintText: "Cari Template SPD",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormDirektorat extends StatelessWidget {
  const FormDirektorat({
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
          tag: 'Label-Direktorat',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Direktorat",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-Direktorat',
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
              hintText: "Pilih Direktorat",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormDivisi extends StatelessWidget {
  const FormDivisi({
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
          tag: 'Label-Divisi',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Divisi",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-Divisi',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColorsConst.primaryColor,
                  size: 20,
                ),
              ),
              hintText: "Pilih Divisi",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormDepartemen extends StatelessWidget {
  const FormDepartemen({
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
          tag: 'Label-Departemen',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Departemen",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-Departemen',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColorsConst.primaryColor,
                  size: 20,
                ),
              ),
              hintText: "Pilih Departemen",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormPosisi extends StatelessWidget {
  const FormPosisi({
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
          tag: 'Label-Posisi',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Posisi",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-Posisi',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColorsConst.primaryColor,
                  size: 20,
                ),
              ),
              hintText: "Pilih Posisi",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormTanggalDinas extends StatelessWidget {
  const FormTanggalDinas({
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
          tag: 'Label-TanggalDinas',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Tanggal",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-TanggalDinas',
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
              hintText: "Pilih Tanggal",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormTanggalAcaraAwal extends StatelessWidget {
  const FormTanggalAcaraAwal({
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
          tag: 'Label-TanggalAcaraAwal',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Tanggal Acara Awal",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-TanggalAcaraAwal',
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
              hintText: "Pilih Tanggal Acara Awal",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormTanggalAcaraAkhir extends StatelessWidget {
  const FormTanggalAcaraAkhir({
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
          tag: 'Label-TanggalAcaraAkhir',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Tanggal Acara Akhir",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-TanggalAcaraAkhir',
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
              hintText: "Pilih Tanggal Acara Akhir",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormJenisSpd extends StatelessWidget {
  const FormJenisSpd({
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
          tag: 'Label-JenisSpd',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Jenis SPD",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-JenisSpd',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColorsConst.primaryColor,
                  size: 20,
                ),
              ),
              hintText: "Pilih Jenis Surat Perjalanan Dinas",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormZonaAwal extends StatelessWidget {
  const FormZonaAwal({
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
          tag: 'Label-ZonaAwal',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Zona Awal",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-ZonaAwal',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColorsConst.primaryColor,
                  size: 20,
                ),
              ),
              hintText: "Pilih Zona Awal",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormZonaTujuan extends StatelessWidget {
  const FormZonaTujuan({
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
          tag: 'Label-ZonaTujuan',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Zona Tujuan",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-ZonaTujuan',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColorsConst.primaryColor,
                  size: 20,
                ),
              ),
              hintText: "Pilih Zona Tujuan",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

class FormLokasiTujuan extends StatelessWidget {
  const FormLokasiTujuan({
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
          tag: 'Label-LokasiTujuan',
          flightShuttleBuilder: flightShuttleBuilder,
          child: FormTextLabel(
            label: "Lokasi Tujuan",
            labelColor: MyColorsConst.darkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'Form-LokasiTujuan',
          child: Material(
            color: Colors.transparent,
            child: FormTextField(
              readOnly: true,
              trailing: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColorsConst.primaryColor,
                  size: 20,
                ),
              ),
              hintText: "Pilih Lokasi Tujuan",
              onTap: onTap,
              textEditingController: TextEditingController(text: input),
            ),
          ),
        ),
      ],
    );
  }
}

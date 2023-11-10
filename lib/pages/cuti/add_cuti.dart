import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_cuti.dart';
import 'package:sj_presensi_mobile/componens/HRIS/hero_widget.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddCutiPage extends StatefulWidget {
  const AddCutiPage({Key? key}) : super(key: key);

  @override
  State<AddCutiPage> createState() => _AddCutiPageState();
}

class _AddCutiPageState extends State<AddCutiPage> {
  final TextEditingController _controller = TextEditingController();
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustomV1(
        title: "Pengajuan Cuti",
        padLeft: 8,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 8,
              ),
              FormTipeCuti(
                input: "",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              FormTipeAlasan(
                input: "",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              // FormTanggalCuti(
              //   input: "",
              //   onTap: () {},
              // ),
              const SizedBox(
                height: 20,
              ),
              const Hero(
                tag: 'Label-RowJamVisiting',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: FormTextLabel(
                        label: "Tanggal Mulai",
                        labelColor: MyColorsConst.darkColor,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: FormTextLabel(
                        label: "Tanggal Berakhir",
                        labelColor: MyColorsConst.darkColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: FormTextField(
                      textAlign: TextAlign.center,
                      // textEditingController: TextEditingController(
                      //     text: DateFormat('HH:mm', 'id_ID')
                      //         .format(DateTime.now())),
                      readOnly: true,
                      trailing: const Icon(
                        Icons.calendar_month_rounded,
                        color: MyColorsConst.primaryColor,
                        size: 20,
                      ),
                      hintText: "Masukkan Tanggal",
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: FormTextField(
                      textAlign: TextAlign.center,
                      // textEditingController: TextEditingController(
                      //     text: DateFormat('HH:mm', 'id_ID').format(
                      //         DateTime.now().add(const Duration(hours: 1)))),
                      readOnly: true,
                      trailing: const Icon(
                        Icons.calendar_month_rounded,
                        color: MyColorsConst.primaryColor,
                        size: 20,
                      ),
                      hintText: "Masukkan Tanggal",
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                      onTap: () {},
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              FormCatatanCuti(
                input: "",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              TextButtonCustomV1(
                text: "Kirim",
                backgroundColor: MyColorsConst.primaryColor,
                textColor: MyColorsConst.whiteColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CutiPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

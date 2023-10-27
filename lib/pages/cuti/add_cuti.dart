import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_cuti.dart';
import 'package:sj_presensi_mobile/componens/HRIS/hero_widget.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class CutiForm extends StatefulWidget {
  const CutiForm({Key? key}) : super(key: key);

  @override
  State<CutiForm> createState() => _CutiFormState();
}

class _CutiFormState extends State<CutiForm> {
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
              SizedBox(
                height: 8,
              ),
              FormTipeCuti(
                input: "",
                onTap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              FormTipeAlasan(
                input: "",
                onTap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              FormTanggalCuti(
                input: "",
                onTap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              Hero(
                tag: 'Label-RowJamVisiting',
                flightShuttleBuilder: flightShuttleBuilder,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: FormTextLabel(
                        label: "Jam Mulai",
                        labelColor: MyColorsConst.darkColor,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: FormTextLabel(
                        label: "Jam Berakhir",
                        labelColor: MyColorsConst.darkColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: FormTextField(
                      textAlign: TextAlign.center,
                      textEditingController: TextEditingController(
                          text: DateFormat('HH:mm', 'id_ID')
                              .format(DateTime.now())),
                      readOnly: true,
                      trailing: Icon(
                        Icons.access_time_filled,
                        color: MyColorsConst.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: FormTextField(
                      textAlign: TextAlign.center,
                      textEditingController: TextEditingController(
                          text: DateFormat('HH:mm', 'id_ID')
                              .format(DateTime.now().add(Duration(hours: 1)))),
                      readOnly: true,
                      trailing: Icon(
                        Icons.access_time_filled,
                        color: MyColorsConst.primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FormCatatanCuti(
                input: "",
                onTap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              TextButtonCustomV1(
                text: "Kirim",
                backgroundColor: MyColorsConst.primaryColor,
                textColor: MyColorsConst.whiteColor,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

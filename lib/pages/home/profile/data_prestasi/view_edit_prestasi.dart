import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditPrestasiPage extends StatefulWidget {
  static const routeName = '/ViewEditPrestasiPage';
  ViewEditPrestasiPage({super.key});

  final TextEditingController namaPrestasiController = TextEditingController();

  final TextEditingController idTingkatPrestasiController =
      TextEditingController();
  final TextEditingController valueTingkatPrestasiController =
      TextEditingController();
  final TextEditingController tahunController = TextEditingController();

  @override
  State<ViewEditPrestasiPage> createState() => _ViewEditPrestasiPageState();
}

class _ViewEditPrestasiPageState extends State<ViewEditPrestasiPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF5EB5EE),
              Color(0xFF6F7BF7),
            ],
            stops: [0.0, 0.1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 18,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: size.width * 1 / 4.2,
                  ),
                  Expanded(
                    child: Text(
                      "Data Prestasi",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
                            FormDataProfile(
                              input: widget.namaPrestasiController.text,
                              labelTag: 'label-namaprestasi',
                              labelForm: 'Nama Prestasi',
                              formTag: 'form-namaprestasi',
                              hintText: 'Nama Prestasi',
                              onTap: () {},
                              controller: widget.namaPrestasiController,
                              validator: (value) {},
                            ),
                            DropDownDataProfile(
                              input: '',
                              onTap: () {},
                              idController: widget.idTingkatPrestasiController,
                              valueController:
                                  widget.valueTingkatPrestasiController,
                              labelTag: 'Label-tingkatprestasi',
                              labelForm: 'Tingkat',
                              formTag: 'Form-tingkatprestasi',
                              hintText: 'Pilih Tingkat',
                              validator: (value) {},
                            ),
                            DropDownDataProfile(
                              input: '',
                              onTap: () {},
                              idController: widget.tahunController,
                              valueController: widget.tahunController,
                              labelTag: 'Label-tahunprestasi',
                              labelForm: 'Tahun',
                              formTag: 'Form-tahunprestasi',
                              hintText: 'Pilih Tahun',
                              validator: (value) {},
                            ),
                          ],
                        ),
                      ),
                      TextButtonCustomV1(
                        text: "Simpan Perubahan",
                        height: 50,
                        backgroundColor:
                            MyColorsConst.primaryColor.withOpacity(0.1),
                        textColor: MyColorsConst.primaryColor,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

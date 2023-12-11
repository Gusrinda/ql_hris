import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddPrestasiPage extends StatefulWidget {
  static const routeName = '/AddPrestasiPage';
  AddPrestasiPage({super.key});

  final TextEditingController namaPrestasiController = TextEditingController();

  final TextEditingController idTingkatPrestasiController =
      TextEditingController();
  final TextEditingController valueTingkatPrestasiController =
      TextEditingController();
  final TextEditingController tahunController = TextEditingController();

  @override
  State<AddPrestasiPage> createState() => _AddPrestasiPageState();
}

class _AddPrestasiPageState extends State<AddPrestasiPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyColorsConst.primaryDarkColor,
                  MyColorsConst.primaryColor,
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
                    width: size.width * 1 / 6.5,
                  ),
                  Expanded(
                    child: Text(
                      "Tambah Data Prestasi",
                      style: GoogleFonts.poppins(
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
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
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
                              labelTag: 'label-addnamaprestasi',
                              labelForm: 'Nama Prestasi',
                              formTag: 'form-addnamaprestasi',
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
                              labelTag: 'Label-addtingkatprestasi',
                              labelForm: 'Tingkat',
                              formTag: 'Form-addtingkatprestasi',
                              hintText: 'Pilih Tingkat',
                              validator: (value) {},
                            ),
                            DropDownDataProfile(
                              input: '',
                              onTap: () {},
                              idController: widget.tahunController,
                              valueController: widget.tahunController,
                              labelTag: 'Label-addtahunprestasi',
                              labelForm: 'Tahun',
                              formTag: 'Form-addtahunprestasi',
                              hintText: 'Pilih Tahun',
                              validator: (value) {},
                            ),
                          ],
                        ),
                      ),
                      TextButtonCustomV1(
                        text: "Simpan",
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddPelatihanPage extends StatefulWidget {
  static const routeName = '/AddPelatihanPage';
  AddPelatihanPage({super.key});

  final TextEditingController namaPelatihanController =
      TextEditingController();
  final TextEditingController lembagaPelatihanController =
      TextEditingController();
  final TextEditingController tahunPelatihanController =
      TextEditingController();
  final TextEditingController kotapelatihanController =
      TextEditingController();
  final TextEditingController posisiaOrganisasiController =
      TextEditingController();

  @override
  State<AddPelatihanPage> createState() => _AddPelatihanPageState();
}

class _AddPelatihanPageState extends State<AddPelatihanPage> {
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
                    width: size.width * 1 / 7.5,
                  ),
                  Expanded(
                    child: Text(
                      "Tambah Data Pelatihaan",
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
                              labelTag: 'label-addnamaPelatihan',
                              labelForm: 'Nama Pelatihan',
                              formTag: 'form-addnamapelatihan',
                              hintText: 'Nama Pelatihan',
                              onTap: () {},
                              controller: widget.namaPelatihanController,
                              validator: (value) {},
                            ),
                            FormDataProfile(
                              input: widget.lembagaPelatihanController.text,
                              labelTag: 'label-addnamalembaga',
                              labelForm: 'Nama Lembaga',
                              formTag: 'form-addnamalembaga',
                              hintText: 'Nama Lembaga',
                              onTap: () {},
                              controller: widget.lembagaPelatihanController,
                              validator: (value) {},
                            ),
                            DropDownDataProfile(
                              input: '',
                              onTap: () {},
                              idController: widget.tahunPelatihanController,
                              valueController: widget.tahunPelatihanController,
                              labelTag: 'Label-addtahunpelatihan',
                              labelForm: 'Tahun',
                              formTag: 'Form-addtahunpelatihan',
                              hintText: 'Pilih Tahun',
                              validator: (value) {},
                            ),
                            DropDownDataProfile(
                              input: '',
                              onTap: () {},
                              idController: widget.kotapelatihanController,
                              valueController: widget.kotapelatihanController,
                              labelTag: 'Label-addkotapelatihan',
                              labelForm: 'Kota',
                              formTag: 'Form-addkotapelatihan',
                              hintText: 'Pilih Kota',
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

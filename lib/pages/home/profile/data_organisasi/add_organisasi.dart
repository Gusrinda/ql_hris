import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddOrganisasiPage extends StatefulWidget {
  static const routeName = '/AddOrganisasiPage';
  AddOrganisasiPage({super.key});

  final TextEditingController namaOrganisasiController =
      TextEditingController();

  final TextEditingController tahunOrganisasiController =
      TextEditingController();
  final TextEditingController idJenisOrganisasiController =
      TextEditingController();
  final TextEditingController valueJenisOrganisasiController =
      TextEditingController();
  final TextEditingController idKotaOrganisasiController =
      TextEditingController();
  final TextEditingController valueKotaOrganisasiController =
      TextEditingController();
  final TextEditingController posisiaOrganisasiController =
      TextEditingController();
  @override
  State<AddOrganisasiPage> createState() => _AddOrganisasiPageState();
}

class _AddOrganisasiPageState extends State<AddOrganisasiPage> {
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
            SizedBox(height: 30.sp),
            Container(
              padding: EdgeInsets.only(left: 5.0.sp),
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
                      "Tambah Data Organisasi",
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
                      EdgeInsets.symmetric(horizontal: 24.sp, vertical: 16.sp),
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(height: 16.sp),
                            FormCatatanData(
                              input: widget.namaOrganisasiController.text,
                              labelTag: 'label-addorganisasi',
                              labelForm: 'Nama Organisasi',
                              formTag: 'form-addorganisasi',
                              hintText: 'Organisasi',
                              onTap: () {},
                              controller: widget.namaOrganisasiController,
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              input: '',
                              onTap: () {},
                              idController: widget.tahunOrganisasiController,
                              valueController: widget.tahunOrganisasiController,
                              labelTag: 'Label-addtahunorganisasi',
                              labelForm: 'Tahun',
                              formTag: 'Form-addtahunorganisasi',
                              hintText: 'Pilih Tahun',
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              input: '',
                              onTap: () {},
                              idController: widget.idJenisOrganisasiController,
                              valueController:
                                  widget.valueJenisOrganisasiController,
                              labelTag: 'Label-addjenisorganisasi',
                              labelForm: 'Jenis Organisasi',
                              formTag: 'Form-addjenisorganisasi',
                              hintText: 'Pilih Jenis Organisasi',
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              input: '',
                              onTap: () {},
                              idController: widget.idKotaOrganisasiController,
                              valueController:
                                  widget.valueKotaOrganisasiController,
                              labelTag: 'Label-addkota',
                              labelForm: 'Kota',
                              formTag: 'Form-addkota',
                              hintText: 'Pilih Kots',
                              validator: (value) {},
                            ),
                            FormCatatanData(
                              input: widget.posisiaOrganisasiController.text,
                              labelTag: 'label-addposisiorganisasi',
                              labelForm: 'Posisi',
                              formTag: 'form-addposisiorganisasi',
                              hintText: 'Posisi',
                              onTap: () {},
                              controller: widget.posisiaOrganisasiController,
                              validator: (value) {},
                            ),
                          ],
                        ),
                      ),
                      TextButtonCustomV1(
                        text: "Simpan",
                        height: 50.sp,
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditOrganisasiPage extends StatefulWidget {
  static const routeName = '/ViewEditOrganisasiPage';
  ViewEditOrganisasiPage({super.key});

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
  State<ViewEditOrganisasiPage> createState() => _ViewEditOrganisasiPageState();
}

class _ViewEditOrganisasiPageState extends State<ViewEditOrganisasiPage> {
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
                    width: size.width * 1 / 5,
                  ),
                  Expanded(
                    child: Text(
                      "Data Organisasi",
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
                              labelTag: 'label-organisasi',
                              labelForm: 'Nama Organisasi',
                              formTag: 'form-organisasi',
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
                              labelTag: 'Label-tahunorganisasi',
                              labelForm: 'Tahun',
                              formTag: 'Form-tahunorganisasi',
                              hintText: 'Pilih Tahun',
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              input: '',
                              onTap: () {},
                              idController: widget.idJenisOrganisasiController,
                              valueController:
                                  widget.valueJenisOrganisasiController,
                              labelTag: 'Label-jenisorganisasi',
                              labelForm: 'Jenis Organisasi',
                              formTag: 'Form-jenisorganisasi',
                              hintText: 'Pilih Jenis Organisasi',
                              validator: (value) {},
                            ),
                            FormDropDownData(
                              input: '',
                              onTap: () {},
                              idController: widget.idKotaOrganisasiController,
                              valueController:
                                  widget.valueKotaOrganisasiController,
                              labelTag: 'Label-kota',
                              labelForm: 'Kota',
                              formTag: 'Form-kota',
                              hintText: 'Pilih Kots',
                              validator: (value) {},
                            ),
                            FormCatatanData(
                              input: widget.posisiaOrganisasiController.text,
                              labelTag: 'label-posisiorganisasi',
                              labelForm: 'Posisi',
                              formTag: 'form-posisiorganisasi',
                              hintText: 'Posisi',
                              onTap: () {},
                              controller: widget.posisiaOrganisasiController,
                              validator: (value) {},
                            ),
                          ],
                        ),
                      ),
                      TextButtonCustomV1(
                        text: "Simpan Perubahan",
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

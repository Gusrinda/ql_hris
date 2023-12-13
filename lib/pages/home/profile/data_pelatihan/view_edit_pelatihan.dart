import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditPelatihanPage extends StatefulWidget {
  static const routeName = '/ViewEditPelatihanPage';
  ViewEditPelatihanPage({super.key});

  final TextEditingController namaPelatihanController = TextEditingController();
  final TextEditingController lembagaPelatihanController =
      TextEditingController();
  final TextEditingController tahunPelatihanController =
      TextEditingController();
  final TextEditingController kotapelatihanController = TextEditingController();
  final TextEditingController posisiaOrganisasiController =
      TextEditingController();

  @override
  State<ViewEditPelatihanPage> createState() => _ViewEditPelatihanPageState();
}

class _ViewEditPelatihanPageState extends State<ViewEditPelatihanPage> {
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
            SizedBox(height: 40.sp),
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
                    width: size.width * 1 / 4.5,
                  ),
                  Expanded(
                    child: Text(
                      "Data Pelatihaan",
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 16.sp),
                        FormInputData(
                          labelTag: 'label-namaPelatihan',
                          labelForm: 'Nama Pelatihan',
                          formTag: 'form-namapelatihan',
                          hintText: 'Nama Pelatihan',
                          onTap: () {},
                          controller: widget.namaPelatihanController,
                          validator: (value) {},
                        ),
                        FormInputData(
                          input: widget.lembagaPelatihanController.text,
                          labelTag: 'label-namalembaga',
                          labelForm: 'Nama Lembaga',
                          formTag: 'form-namalembaga',
                          hintText: 'Nama Lembaga',
                          onTap: () {},
                          controller: widget.lembagaPelatihanController,
                          validator: (value) {},
                        ),
                        FormDropDownData(
                          input: '',
                          onTap: () {},
                          idController: widget.tahunPelatihanController,
                          valueController: widget.tahunPelatihanController,
                          labelTag: 'Label-tahunpelatihan',
                          labelForm: 'Tahun',
                          formTag: 'Form-tahunpelatihan',
                          hintText: 'Pilih Tahun',
                          validator: (value) {},
                        ),
                        FormDropDownData(
                          input: '',
                          onTap: () {},
                          idController: widget.kotapelatihanController,
                          valueController: widget.kotapelatihanController,
                          labelTag: 'Label-kotapelatihan',
                          labelForm: 'Kota',
                          formTag: 'Form-kotapelatihan',
                          hintText: 'Pilih Kota',
                          validator: (value) {},
                        ),
                        SizedBox(height: 30.sp),
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
            ),
          ],
        ),
      ),
    );
  }
}

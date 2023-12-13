import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
                    width: size.width * 1 / 4.2,
                  ),
                  Expanded(
                    child: Text(
                      "Data Prestasi",
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
                          input: widget.namaPrestasiController.text,
                          labelTag: 'label-namaprestasi',
                          labelForm: 'Nama Prestasi',
                          formTag: 'form-namaprestasi',
                          hintText: 'Nama Prestasi',
                          onTap: () {},
                          controller: widget.namaPrestasiController,
                          validator: (value) {},
                        ),
                        FormDropDownData(
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
                        FormDropDownData(
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

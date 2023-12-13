import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddBahasaPage extends StatefulWidget {
  static const routeName = '/AddBahasaPage';
  AddBahasaPage({super.key});

  final TextEditingController bahasaController = TextEditingController();
  final TextEditingController lisanController = TextEditingController();
  final TextEditingController tertulisController = TextEditingController();

  @override
  State<AddBahasaPage> createState() => _AddBahasaPageState();
}

class _AddBahasaPageState extends State<AddBahasaPage> {
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
                    width: size.width * 1 / 6.5,
                  ),
                  Expanded(
                    child: Text(
                      "Tambah Data Bahasa",
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
                        Column(
                          children: [
                            SizedBox(height: 16.sp),
                            FormInputData(
                              input: widget.bahasaController.text,
                              labelTag: 'label-addbahasa',
                              labelForm: 'Bahasa Yang Dikuasai',
                              formTag: 'form-addbahasa',
                              hintText: 'Bahasa yang Dikuasai',
                              onTap: () {},
                              controller: widget.bahasaController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              input: widget.lisanController.text,
                              labelTag: 'label-addlisan',
                              labelForm: 'Nilai Lisan',
                              formTag: 'form-addlisan',
                              hintText: 'Nilai Lisan',
                              onTap: () {},
                              controller: widget.lisanController,
                              validator: (value) {},
                            ),
                            FormInputData(
                              input: widget.tertulisController.text,
                              labelTag: 'label-addtertulis',
                              labelForm: 'Nilai Tertulis',
                              formTag: 'form-addtertulis',
                              hintText: 'Nilai Tertulis',
                              onTap: () {},
                              controller: widget.tertulisController,
                              validator: (value) {},
                            ),
                          ],
                        ),
                        SizedBox(height: 30.sp),
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
            ),
          ],
        ),
      ),
    );
  }
}

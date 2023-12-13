import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditPendidikanPage extends StatefulWidget {
  static const routeName = '/ViewEditPendidikanPage';
  ViewEditPendidikanPage({super.key});

  final TextEditingController idTingkatController = TextEditingController();
  final TextEditingController valueTingkatController = TextEditingController();

  final TextEditingController namaSekolahController = TextEditingController();

  final TextEditingController idKotaController = TextEditingController();
  final TextEditingController valueKotaController = TextEditingController();

  final TextEditingController jurusanController = TextEditingController();
  final TextEditingController tahuunMasukController = TextEditingController();
  final TextEditingController tahunLulusController = TextEditingController();
  final TextEditingController nilaiController = TextEditingController();
  final TextEditingController pendidikanTerakhirController =
      TextEditingController();
  final TextEditingController ijazahController = TextEditingController();
  final TextEditingController catatanController = TextEditingController();

  @override
  State<ViewEditPendidikanPage> createState() => _ViewEditPendidikanPageState();
}

class _ViewEditPendidikanPageState extends State<ViewEditPendidikanPage> {
  int? pendidikanTerakhir;
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
                    width: size.width * 1 / 5,
                  ),
                  Expanded(
                    child: Text(
                      "Data Pendidikan",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16.sp),
                        FormDropDownData(
                          input: '',
                          onTap: () {},
                          idController: widget.idTingkatController,
                          valueController: widget.valueTingkatController,
                          labelTag: 'Label-TingkatPendidikan',
                          labelForm: 'Tingkat',
                          formTag: 'Form-TingkatPendidikan',
                          hintText: 'Pilih Tingkat',
                          validator: (value) {},
                        ),
                        FormInputData(
                          input: widget.namaSekolahController.text,
                          labelTag: 'label-namasekolah',
                          labelForm: 'Nama Sekolah',
                          formTag: 'form-namasekolah',
                          hintText: 'Nama Sekolah',
                          onTap: () {},
                          controller: widget.namaSekolahController,
                          validator: (value) {},
                        ),
                        FormDropDownData(
                          input: '',
                          onTap: () {},
                          idController: widget.idKotaController,
                          valueController: widget.valueKotaController,
                          labelTag: 'Label-kotapendidikan',
                          labelForm: 'Kota',
                          formTag: 'Form-kotapendidikan',
                          hintText: 'Pilih Kota',
                          validator: (value) {},
                        ),
                        FormInputData(
                          input: widget.jurusanController.text,
                          labelTag: 'label-jurusan',
                          labelForm: 'Jurusan',
                          formTag: 'form-jurusan',
                          hintText: 'Jurusan',
                          onTap: () {},
                          controller: widget.jurusanController,
                          validator: (value) {},
                        ),
                        FormDropDownData(
                          input: '',
                          onTap: () {},
                          idController: widget.tahuunMasukController,
                          valueController: widget.tahuunMasukController,
                          labelTag: 'Label-tahunmasukpendidikan',
                          labelForm: 'Tahun Masuk',
                          formTag: 'Form-tahunmasukpendidikan',
                          hintText: 'Pilih Tahun',
                          validator: (value) {},
                        ),
                        FormDropDownData(
                          input: '',
                          onTap: () {},
                          idController: widget.tahunLulusController,
                          valueController: widget.tahunLulusController,
                          labelTag: 'Label-tahunluluspendidikan',
                          labelForm: 'Tahun Lulus',
                          formTag: 'Form-tahunluluspendidikan',
                          hintText: 'Pilih Tahun',
                          validator: (value) {},
                        ),
                        FormInputData(
                          input: widget.nilaiController.text,
                          labelTag: 'label-nilai',
                          labelForm: 'Nilai',
                          formTag: 'form-nilai',
                          hintText: 'Nilai',
                          onTap: () {},
                          controller: widget.nilaiController,
                          validator: (value) {},
                        ),
                        Row(
                          children: [
                            Text(
                              'Pendidikan terakhir',
                              style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  color: MyColorsConst.darkColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '*',
                              style: GoogleFonts.poppins(color: Colors.red),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Radio(
                                value: 1,
                                groupValue: pendidikanTerakhir,
                                onChanged: (int? value) {
                                  setState(() {
                                    pendidikanTerakhir = value!;
                                    widget.pendidikanTerakhirController.text =
                                        pendidikanTerakhir.toString();
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Iya',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Radio(
                                value: 0,
                                groupValue: pendidikanTerakhir,
                                onChanged: (int? value) {
                                  setState(() {
                                    pendidikanTerakhir = value!;
                                    widget.pendidikanTerakhirController.text =
                                        pendidikanTerakhir.toString();
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Tidak',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.sp),
                        FormInputData(
                          input: widget.ijazahController.text,
                          labelTag: 'label-ijazah',
                          labelForm: 'Ijazah Terakhir',
                          formTag: 'form-ijazah',
                          hintText: 'Ijazah Terakhir',
                          onTap: () {},
                          controller: widget.ijazahController,
                          validator: (value) {},
                        ),
                        FormInputData(
                          input: widget.catatanController.text,
                          labelTag: 'label-catatanpendidikan',
                          labelForm: 'Catatan',
                          formTag: 'form-catatanpendidikan',
                          hintText: 'Catatan',
                          showRedStar: false,
                          onTap: () {},
                          controller: widget.catatanController,
                          validator: (value) {},
                        ),
                        SizedBox(height: 20.sp),
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

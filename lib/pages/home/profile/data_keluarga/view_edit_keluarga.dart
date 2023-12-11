import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditKeluargaPage extends StatefulWidget {
  static const routeName = '/ViewEditKeluargaPage';
  ViewEditKeluargaPage({super.key});

  final TextEditingController idkeluargaController = TextEditingController();
  final TextEditingController valuekeluargaController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController idPendidikanTerakhirController =
      TextEditingController();
  final TextEditingController valuePendidikanTerakhirController =
      TextEditingController();

  final TextEditingController idPekerjaanController = TextEditingController();
  final TextEditingController valuePekerjaanController =
      TextEditingController();

  final TextEditingController idJenisKelaminController =
      TextEditingController();
  final TextEditingController valueJenisKelaminController =
      TextEditingController();

  final TextEditingController usiaController = TextEditingController();

  final TextEditingController catatanController = TextEditingController();

  @override
  State<ViewEditKeluargaPage> createState() => _ViewEditKeluargaPageState();
}

class _ViewEditKeluargaPageState extends State<ViewEditKeluargaPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                      width: size.width * 1 / 4.2,
                    ),
                    Expanded(
                      child: Text(
                        "Data Keluarga",
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
              Container(
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
                      const SizedBox(height: 16),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.idkeluargaController,
                        valueController: widget.valuekeluargaController,
                        labelTag: 'Label-keluarga',
                        labelForm: 'Keluarga',
                        formTag: 'Form-keluarga',
                        hintText: 'Pilih Keluargai',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.nameController.text,
                        labelTag: 'label-name',
                        labelForm: 'Nama',
                        formTag: 'form-name',
                        hintText: 'Nama',
                        onTap: () {},
                        controller: widget.nameController,
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.idPendidikanTerakhirController,
                        valueController:
                            widget.valuePendidikanTerakhirController,
                        labelTag: 'Label-pendidikanterakhir',
                        labelForm: 'Pendidikan Terakhir',
                        formTag: 'Form-pendidikanterakhir',
                        hintText: 'Pilih Pendidikan Terakhir',
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.idPekerjaanController,
                        valueController: widget.valuePekerjaanController,
                        labelTag: 'Label-pekerjaan',
                        labelForm: 'Pekerjaan',
                        formTag: 'Form-pekerjaan',
                        hintText: 'Pilih Pekerjaan',
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.idJenisKelaminController,
                        valueController: widget.valueJenisKelaminController,
                        labelTag: 'Label-jeniskelamin',
                        labelForm: 'Jenis Kelamin',
                        formTag: 'Form-jeniskelamin',
                        hintText: 'Pilih Jenis Kelamin',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.usiaController.text,
                        labelTag: 'label-usia',
                        labelForm: 'Usia',
                        formTag: 'form-usia',
                        hintText: 'Usia',
                        onTap: () {},
                        controller: widget.usiaController,
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.catatanController.text,
                        labelTag: 'label-catatankeluarga',
                        labelForm: 'Catatan',
                        formTag: 'form-catatankeluarga',
                        hintText: 'Catatan',
                        showRedStar: false,
                        onTap: () {},
                        controller: widget.nameController,
                        validator: (value) {},
                      ),
                      const SizedBox(height: 20),
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
            ],
          ),
        ),
      ),
    );
  }
}

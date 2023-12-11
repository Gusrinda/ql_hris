import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddKeluargaPage extends StatefulWidget {
  static const routeName = '/AddKeluargaPage';
  AddKeluargaPage({super.key});

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
  State<AddKeluargaPage> createState() => _AddKeluargaPageState();
}

class _AddKeluargaPageState extends State<AddKeluargaPage> {
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
                      width: size.width * 1 / 7,
                    ),
                    Expanded(
                      child: Text(
                        "Tambah Data Keluarga",
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
                        labelTag: 'Label-addkeluarga',
                        labelForm: 'Keluarga',
                        formTag: 'Form-addkeluarga',
                        hintText: 'Pilih Keluargai',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.nameController.text,
                        labelTag: 'label-addname',
                        labelForm: 'Nama',
                        formTag: 'form-addname',
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
                        labelTag: 'Label-addpendidikanterakhir',
                        labelForm: 'Pendidikan Terakhir',
                        formTag: 'Form-addpendidikanterakhir',
                        hintText: 'Pilih Pendidikan Terakhir',
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.idPekerjaanController,
                        valueController: widget.valuePekerjaanController,
                        labelTag: 'Label-addpekerjaan',
                        labelForm: 'Pekerjaan',
                        formTag: 'Form-addpekerjaan',
                        hintText: 'Pilih Pekerjaan',
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.idJenisKelaminController,
                        valueController: widget.valueJenisKelaminController,
                        labelTag: 'Label-addjeniskelamin',
                        labelForm: 'Jenis Kelamin',
                        formTag: 'Form-addjeniskelamin',
                        hintText: 'Pilih Jenis Kelamin',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.usiaController.text,
                        labelTag: 'label-addusia',
                        labelForm: 'Usia',
                        formTag: 'form-addusia',
                        hintText: 'Usia',
                        onTap: () {},
                        controller: widget.usiaController,
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.catatanController.text,
                        labelTag: 'label-addcatatankeluarga',
                        labelForm: 'Catatan',
                        formTag: 'form-addcatatankeluarga',
                        hintText: 'Catatan',
                        showRedStar: false,
                        onTap: () {},
                        controller: widget.catatanController,
                        validator: (value) {},
                      ),
                      const SizedBox(height: 20),
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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddPendidikanPage extends StatefulWidget {
  static const routeName = '/AddPendidikanPage';
  AddPendidikanPage({super.key});

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
  State<AddPendidikanPage> createState() => _AddPendidikanPageState();
}

class _AddPendidikanPageState extends State<AddPendidikanPage> {
  int? pendidikanTerakhir;
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
              const SizedBox(height: 40),
              Container(
                padding: EdgeInsets.only(left: 10.0),
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
                    const Expanded(
                      child: Text(
                        "Tambah Data Pendidikan",
                        style: TextStyle(
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
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.idTingkatController,
                        valueController: widget.valueTingkatController,
                        labelTag: 'Label-addTingkatPendidikan',
                        labelForm: 'Tingkat',
                        formTag: 'Form-addTingkatPendidikan',
                        hintText: 'Pilih Tingkat',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.namaSekolahController.text,
                        labelTag: 'label-addnamasekolah',
                        labelForm: 'Nama Sekolah',
                        formTag: 'form-addnamasekolah',
                        hintText: 'Nama Sekolah',
                        onTap: () {},
                        controller: widget.namaSekolahController,
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.idKotaController,
                        valueController: widget.valueKotaController,
                        labelTag: 'Label-addkotapendidikan',
                        labelForm: 'Kota',
                        formTag: 'Form-addkotapendidikan',
                        hintText: 'Pilih Kota',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.jurusanController.text,
                        labelTag: 'label-addjurusan',
                        labelForm: 'Jurusan',
                        formTag: 'form-addjurusan',
                        hintText: 'Jurusan',
                        onTap: () {},
                        controller: widget.jurusanController,
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.tahuunMasukController,
                        valueController: widget.tahuunMasukController,
                        labelTag: 'Label-addtahunmasukpendidikan',
                        labelForm: 'Tahun Masuk',
                        formTag: 'Form-addtahunmasukpendidikan',
                        hintText: 'Pilih Tahun',
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.tahunLulusController,
                        valueController: widget.tahunLulusController,
                        labelTag: 'Label-addtahunluluspendidikan',
                        labelForm: 'Tahun Lulus',
                        formTag: 'Form-addtahunluluspendidikan',
                        hintText: 'Pilih Tahun',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.nilaiController.text,
                        labelTag: 'label-addnilai',
                        labelForm: 'Nilai',
                        formTag: 'form-addnilai',
                        hintText: 'Nilai',
                        onTap: () {},
                        controller: widget.nilaiController,
                        validator: (value) {},
                      ),
                      const Row(
                        children: [
                          Text(
                            'Pendidikan terakhir',
                            style: TextStyle(
                              fontSize: 13,
                              color: MyColorsConst.semiDarkColor,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            ' *',
                            style: TextStyle(color: Colors.red),
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
                          const Expanded(
                            flex: 1,
                            child: Text(
                              'Iya',
                              style: TextStyle(
                                fontSize: 13,
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
                          const Expanded(
                            flex: 3,
                            child: Text(
                              'Tidak',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      FormDataProfile(
                        input: widget.ijazahController.text,
                        labelTag: 'label-addijazah',
                        labelForm: 'Ijazah Terakhir',
                        formTag: 'form-addijazah',
                        hintText: 'Ijazah Terakhir',
                        onTap: () {},
                        controller: widget.ijazahController,
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.catatanController.text,
                        labelTag: 'label-addcatatanpendidikan',
                        labelForm: 'Catatan',
                        formTag: 'form-addcatatanpendidikan',
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

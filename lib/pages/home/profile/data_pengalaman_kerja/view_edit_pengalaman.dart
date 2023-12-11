import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditPengalamanPage extends StatefulWidget {
  static const routeName = '/ViewEditPengalamanPage';
  ViewEditPengalamanPage({super.key});

  final TextEditingController namaPerusahaanController =
      TextEditingController();
  final TextEditingController bidangUsahaController = TextEditingController();
  final TextEditingController noTelpController = TextEditingController();
  final TextEditingController posisiController = TextEditingController();
  final TextEditingController tahunMasukController = TextEditingController();
  final TextEditingController tahunKeluarController = TextEditingController();
  final TextEditingController alamatKantorController = TextEditingController();
  final TextEditingController idKotaController = TextEditingController();
  final TextEditingController valueKotaController = TextEditingController();
  final TextEditingController suratReferensiController =
      TextEditingController();

  @override
  State<ViewEditPengalamanPage> createState() => _ViewEditPengalamanPageState();
}

class _ViewEditPengalamanPageState extends State<ViewEditPengalamanPage> {
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
                      width: size.width * 1 / 7.5,
                    ),
                    Expanded(
                      child: Text(
                        "Data Pengalaman Kerja",
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
                      FormDataProfile(
                        labelTag: 'label-namaperusahaan',
                        labelForm: 'Nama Perusahaan',
                        formTag: 'form-namaperusahaan',
                        hintText: 'Nama Perusahaan',
                        onTap: () {},
                        controller: widget.namaPerusahaanController,
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.bidangUsahaController.text,
                        labelTag: 'label-bidangusaha',
                        labelForm: 'Bidang Usaha',
                        formTag: 'form-bidangusaha',
                        hintText: 'Bidang Usaha',
                        onTap: () {},
                        controller: widget.bidangUsahaController,
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.noTelpController.text,
                        labelTag: 'label-notelp',
                        labelForm: 'No Telp',
                        formTag: 'form-notelp',
                        hintText: 'No Telp',
                        onTap: () {},
                        controller: widget.noTelpController,
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.posisiController.text,
                        labelTag: 'label-posisipengalaman',
                        labelForm: 'Posisi',
                        formTag: 'form-posisipengalaman',
                        hintText: 'Posisi',
                        onTap: () {},
                        controller: widget.posisiController,
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.tahunMasukController,
                        valueController: widget.tahunMasukController,
                        labelTag: 'Label-tahunmasuk',
                        labelForm: 'Tahun Masuk',
                        formTag: 'Form-tahunmasuk',
                        hintText: 'Pilih Tahun',
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.tahunKeluarController,
                        valueController: widget.tahunKeluarController,
                        labelTag: 'Label-tahunkeluar',
                        labelForm: 'Tahun Keluar',
                        formTag: 'Form-tahunkeluar',
                        hintText: 'Pilih Tahun',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.alamatKantorController.text,
                        labelTag: 'label-alamatkantor',
                        labelForm: 'Alamat Kantor',
                        formTag: 'form-alamatkantor',
                        hintText: 'Alamat Kantor',
                        onTap: () {},
                        controller: widget.alamatKantorController,
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.idKotaController,
                        valueController: widget.valueKotaController,
                        labelTag: 'Label-kotapengalaman',
                        labelForm: 'Kota',
                        formTag: 'Form-kotapengalaman',
                        hintText: 'Pilih Kota',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.suratReferensiController.text,
                        labelTag: 'label-suratreferensi',
                        labelForm: 'Surat Referensi',
                        formTag: 'form-suratreferensi',
                        hintText: 'Surat Referensi',
                        onTap: () {},
                        controller: widget.suratReferensiController,
                        validator: (value) {},
                      ),
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

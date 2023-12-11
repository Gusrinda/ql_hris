import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddPengalamanPage extends StatefulWidget {
  static const routeName = '/AddPengalamanPage';
  AddPengalamanPage({super.key});

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
  State<AddPengalamanPage> createState() => _AddPengalamanPageState();
}

class _AddPengalamanPageState extends State<AddPengalamanPage> {
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
                      width: size.width * 0.5 / 8,
                    ),
                    Expanded(
                      child: Text(
                        "Tambah Data Pengalaman Kerja",
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
                        labelTag: 'label-addnamaperusahaan',
                        labelForm: 'Nama Perusahaan',
                        formTag: 'form-addnamaperusahaan',
                        hintText: 'Nama Perusahaan',
                        onTap: () {},
                        controller: widget.namaPerusahaanController,
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.bidangUsahaController.text,
                        labelTag: 'label-addbidangusaha',
                        labelForm: 'Bidang Usaha',
                        formTag: 'form-addbidangusaha',
                        hintText: 'Bidang Usaha',
                        onTap: () {},
                        controller: widget.bidangUsahaController,
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.noTelpController.text,
                        labelTag: 'label-addnotelp',
                        labelForm: 'No Telp',
                        formTag: 'form-addnotelp',
                        hintText: 'No Telp',
                        onTap: () {},
                        controller: widget.noTelpController,
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.posisiController.text,
                        labelTag: 'label-addposisipengalaman',
                        labelForm: 'Posisi',
                        formTag: 'form-addposisipengalaman',
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
                        labelTag: 'Label-addtahunmasuk',
                        labelForm: 'Tahun Masuk',
                        formTag: 'Form-addtahunmasuk',
                        hintText: 'Pilih Tahun',
                        validator: (value) {},
                      ),
                      DropDownDataProfile(
                        input: '',
                        onTap: () {},
                        idController: widget.tahunKeluarController,
                        valueController: widget.tahunKeluarController,
                        labelTag: 'Label-addtahunkeluar',
                        labelForm: 'Tahun Keluar',
                        formTag: 'Form-addtahunkeluar',
                        hintText: 'Pilih Tahun',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.alamatKantorController.text,
                        labelTag: 'label-addalamatkantor',
                        labelForm: 'Alamat Kantor',
                        formTag: 'form-addalamatkantor',
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
                        labelTag: 'Label-addkotapengalaman',
                        labelForm: 'Kota',
                        formTag: 'Form-addkotapengalaman',
                        hintText: 'Pilih Kota',
                        validator: (value) {},
                      ),
                      FormDataProfile(
                        input: widget.suratReferensiController.text,
                        labelTag: 'label-addsuratreferensi',
                        labelForm: 'Surat Referensi',
                        formTag: 'form-addsuratreferensi',
                        hintText: 'Surat Referensi',
                        onTap: () {},
                        controller: widget.suratReferensiController,
                        validator: (value) {},
                      ),
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

import 'package:flutter/material.dart';
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
              Color(0xFF5EB5EE),
              Color(0xFF6F7BF7),
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
                    width: size.width * 1 / 5,
                  ),
                  Expanded(
                    child: Text(
                      "Data Organisasi",
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
            Expanded(
              child: Container(
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
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
                            FormDataProfile(
                              input: widget.namaOrganisasiController.text,
                              labelTag: 'label-organisasi',
                              labelForm: 'Nama Organisasi',
                              formTag: 'form-organisasi',
                              hintText: 'Organisasi',
                              onTap: () {},
                              controller: widget.namaOrganisasiController,
                              validator: (value) {},
                            ),
                            DropDownDataProfile(
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
                            DropDownDataProfile(
                              input: '',
                              onTap: () {},
                              idController: widget.idJenisOrganisasiController,
                              valueController: widget.valueJenisOrganisasiController,
                              labelTag: 'Label-jenisorganisasi',
                              labelForm: 'Jenis Organisasi',
                              formTag: 'Form-jenisorganisasi',
                              hintText: 'Pilih Jenis Organisasi',
                              validator: (value) {},
                            ),
                            DropDownDataProfile(
                              input: '',
                              onTap: () {},
                              idController: widget.idKotaOrganisasiController,
                              valueController: widget.valueKotaOrganisasiController,
                              labelTag: 'Label-kota',
                              labelForm: 'Kota',
                              formTag: 'Form-kota',
                              hintText: 'Pilih Kots',
                              validator: (value) {},
                            ),
                            FormDataProfile(
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
            ),
          ],
        ),
      ),
    );
  }
}

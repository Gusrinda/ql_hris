import 'package:flutter/material.dart';
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
                    width: size.width * 1 / 4.5,
                  ),
                  Expanded(
                    child: Text(
                      "Data Pelatihaan",
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
                              labelTag: 'label-namaPelatihan',
                              labelForm: 'Nama Pelatihan',
                              formTag: 'form-namapelatihan',
                              hintText: 'Nama Pelatihan',
                              onTap: () {},
                              controller: widget.namaPelatihanController,
                              validator: (value) {},
                            ),
                            FormDataProfile(
                              input: widget.lembagaPelatihanController.text,
                              labelTag: 'label-namalembaga',
                              labelForm: 'Nama Lembaga',
                              formTag: 'form-namalembaga',
                              hintText: 'Nama Lembaga',
                              onTap: () {},
                              controller: widget.lembagaPelatihanController,
                              validator: (value) {},
                            ),
                            DropDownDataProfile(
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
                            DropDownDataProfile(
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

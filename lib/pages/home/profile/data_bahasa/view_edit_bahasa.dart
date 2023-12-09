import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ViewEditBahasaPage extends StatefulWidget {
  static const routeName = '/ViewEditBahasaPage';
  ViewEditBahasaPage({super.key});

  final TextEditingController bahasaController = TextEditingController();
  final TextEditingController lisanController = TextEditingController();
  final TextEditingController tertulisController = TextEditingController();

  @override
  State<ViewEditBahasaPage> createState() => _ViewEditBahasaPageState();
}

class _ViewEditBahasaPageState extends State<ViewEditBahasaPage> {
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
                    width: size.width * 1 / 4,
                  ),
                  Expanded(
                    child: Text(
                      "Data Bahasa",
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
                              input: widget.bahasaController.text,
                              labelTag: 'label-bahasa',
                              labelForm: 'Bahasa Yang Dikuasai',
                              formTag: 'form-bahasa',
                              hintText: 'Bahasa yang Dikuasai',
                              onTap: () {},
                              controller: widget.bahasaController,
                              validator: (value) {},
                            ),
                            FormDataProfile(
                              input: widget.lisanController.text,
                              labelTag: 'label-lisan',
                              labelForm: 'Nilai Lisan',
                              formTag: 'form-lisan',
                              hintText: 'Nilai Lisan',
                              onTap: () {},
                              controller: widget.lisanController,
                              validator: (value) {},
                            ),
                            FormDataProfile(
                              input: widget.tertulisController.text,
                              labelTag: 'label-tertulis',
                              labelForm: 'Nilai Tertulis',
                              formTag: 'form-tertulis',
                              hintText: 'Nilai Tertulis',
                              onTap: () {},
                              controller: widget.tertulisController,
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

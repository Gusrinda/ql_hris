import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/add_bahasa.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/view_edit_bahasa.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataBahasaPage extends StatefulWidget {
  static const routeName = '/DataBahasaPage';
  const DataBahasaPage({super.key});

  @override
  State<DataBahasaPage> createState() => _DataBahasaPageState();
}

class _DataBahasaPageState extends State<DataBahasaPage> {
  bool showDeleteButton = false;

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
            stops: [0.0, 0.12],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(5.0),
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
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              subtitle: GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(ViewEditBahasaPage.routeName);
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: Color(0xFFDDDDDD)),
                                    color: MyColorsConst.whiteColor,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 10,
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Bahasa Indonesia',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: MyColorsConst
                                                      .primaryColor,
                                                ),
                                              ),
                                              IconButton(
                                                icon: Icon(Icons.more_horiz),
                                                onPressed: () {
                                                  setState(() {
                                                    showDeleteButton =
                                                        !showDeleteButton;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nilai Lisan',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10,
                                                        color: MyColorsConst
                                                            .lightDarkColor,
                                                      ),
                                                    ),
                                                    Text(
                                                      '90',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10,
                                                        color: MyColorsConst
                                                            .darkColor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nilai Tertulis',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10,
                                                        color: MyColorsConst
                                                            .lightDarkColor,
                                                      ),
                                                    ),
                                                    Text(
                                                      '90',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10,
                                                        color: MyColorsConst
                                                            .darkColor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: 30,
                                        right: 15,
                                        child: Visibility(
                                          visible: showDeleteButton,
                                          child: Material(
                                            elevation: 4,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                  vertical: 4,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  border: Border.all(
                                                      color: Color(0xFFDDDDDD)),
                                                  color:
                                                      MyColorsConst.whiteColor,
                                                ),
                                                child: Text(
                                                  'Hapus',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    color:
                                                        MyColorsConst.darkColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      TextButtonCustomV1(
                        text: "Tambah Data",
                        height: 50,
                        backgroundColor:
                            MyColorsConst.primaryColor.withOpacity(0.1),
                        textColor: MyColorsConst.primaryColor,
                        onPressed: () {Navigator.of(context)
                                      .pushNamed(AddBahasaPage.routeName);},
                      )
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

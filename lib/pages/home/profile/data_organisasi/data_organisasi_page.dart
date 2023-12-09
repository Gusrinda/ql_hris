import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/add_organisasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/view_edit_organisasi.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DataOrganisasiPage extends StatefulWidget {
  static const routeName = '/DataOrganisasiPage';
  const DataOrganisasiPage({super.key});

  @override
  State<DataOrganisasiPage> createState() => _DataOrganisasiPageState();
}

class _DataOrganisasiPageState extends State<DataOrganisasiPage> {
  bool showDeleteButton = false;

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
                    width: size.width * 1 / 4.5,
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
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    ViewEditOrganisasiPage.routeName);
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                subtitle: Container(
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
                                                'Organisasi',
                                                style: TextStyle(
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
                                          const Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Posisi',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: MyColorsConst
                                                            .lightDarkColor,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Ketus',
                                                      style: TextStyle(
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
                                                      'Tahun',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: MyColorsConst
                                                            .lightDarkColor,
                                                      ),
                                                    ),
                                                    Text(
                                                      '2020',
                                                      style: TextStyle(
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
                                                  style: TextStyle(
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
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(AddOrganisasiPage.routeName);
                        },
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

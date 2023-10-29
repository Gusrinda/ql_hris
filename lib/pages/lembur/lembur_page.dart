import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/monthpicker_custom.dart';
import 'package:sj_presensi_mobile/componens/yearpicker_custom.dart';
import 'package:sj_presensi_mobile/pages/lembur/add_lembur.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class LemburPage extends StatefulWidget {
  const LemburPage({super.key});

  @override
  State<LemburPage> createState() => _LemburPageState();
}

class _LemburPageState extends State<LemburPage> {
  @override
  void initState() {
    // Notifications.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> daftarPermohonan = [
      "Menunggu Disetujui",
      "Ditolak",
      "Disetujui"
    ];

    List<String> daftarTanggal = [
      "Hari ini",
      "Kemarin",
    ];
    List<int> daftar = [1, 3];

    return Scaffold(
      appBar: appBarCustomMain(
        title: "Selamat Datang, Trial!",
        padLeft: 8,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              splashRadius: 25,
              iconSize: 20,
              icon: const Icon(Icons.notifications_active),
              onPressed: () async {},
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bulan",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: MyColorsConst.darkColor,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      MonthPicker(
                        onTap: (bool? sortState) {
                          print('Sort state: $sortState');
                        },
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Tahun",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: MyColorsConst.darkColor,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      YearPickerCustom(
                        onTap: (bool? sortState) {
                          print('Sort state: $sortState');
                        },
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: daftarTanggal.length,
                itemBuilder: (BuildContext c, int index) {
                  return SuratLemburPerTanggal(
                    tanggal: daftarTanggal[index],
                    urutan: index,
                    daftarPermohonan: daftarPermohonan,
                    daftar: daftar,
                  );
                },
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LemburForm(),
            ),
          );
        },
        backgroundColor: MyColorsConst.primaryLightColor,
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
    );
  }
}

class SuratLemburPerTanggal extends StatelessWidget {
  const SuratLemburPerTanggal({
    super.key,
    required this.daftarPermohonan,
    required this.daftar,
    required this.tanggal,
    required this.urutan,
  });
  final int urutan;
  final String tanggal;
  final List<String> daftarPermohonan;
  final List<int> daftar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tanggal,
            style: TextStyle(
                fontFamily: 'Poppins',
                color: MyColorsConst.darkColor,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 12,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: daftar[urutan],
            itemBuilder: (BuildContext c, int index) {
              return CardPerintahLembur(
                isAlreadyRead: index == daftar[urutan] - 1,
                isLast: index == daftar[urutan] - 1,
                status:
                    daftarPermohonan[Random().nextInt(daftarPermohonan.length)],
              );
            },
          ),
        ],
      ),
    );
  }
}

class CardPerintahLembur extends StatelessWidget {
  const CardPerintahLembur({
    super.key,
    required this.isAlreadyRead,
    required this.isLast,
    required this.status,
  });

  final bool isAlreadyRead;
  final bool isLast;
  final String status;

  @override
  Widget build(BuildContext context) {
    Color? warnaStatus;
    switch (status) {
      case "Menunggu Disetujui":
        warnaStatus = Colors.blue;
        break;
      case "Ditolak":
        warnaStatus = Colors.red;
        break;
      case "Disetujui":
        warnaStatus = Colors.green;
        break;
      default:
        warnaStatus = Colors.grey;
    }
    return Stack(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: warnaStatus,
          ),
        ),
        Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 15, left: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Color(0xFFDDDDDD)),
              color: MyColorsConst.whiteColor),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Surat Perintah Lembur",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: warnaStatus.withOpacity(0.1),
                        ),
                        child: Text(
                          status,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: warnaStatus,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_rounded,
                        color: MyColorsConst.lightDarkColor,
                        size: 10,
                      ),
                      SizedBox(width: 5), // Atur jarak sesuai kebutuhan
                      Text(
                        '09 Oktober 2023',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        color: MyColorsConst.lightDarkColor,
                        size: 10,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "09.00 - 17.00",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

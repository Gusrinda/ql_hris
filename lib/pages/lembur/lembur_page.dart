import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/pages/lembur/detail_lembur.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_page.dart';
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
      "Active",
      "Inactive",
    ];

    List<int> daftar = [1, 3];

    return Scaffold(
      appBar: appBarCustomMain(
        title: "Selamat Datang, Trial!",
        padLeft: 8,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset.zero,
                ),
              ],
            ),
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width * 0.1,
            child: IconButton(
              splashRadius: 25,
              iconSize: 20,
              icon: const Icon(Icons.notifications_active),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotifikasiPage()),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Daftar Lembur",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: MyColorsConst.darkColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bulan",
                        style: TextStyle(
                          color: MyColorsConst.darkColor,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      MonthPicker(
                        onTap: (DateTime? months, DateTime? years) {},
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Tahun",
                        style: TextStyle(
                          color: MyColorsConst.darkColor,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      YearPickerCustom(
                        onTap: (DateTime? months, DateTime? years) {},
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: daftar.length,
                itemBuilder: (BuildContext c, int index) {
                  return SuratLemburPerTanggal(
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
    );
  }
}

class SuratLemburPerTanggal extends StatelessWidget {
  const SuratLemburPerTanggal({
    super.key,
    required this.daftarPermohonan,
    required this.daftar,
    required this.urutan,
  });
  final int urutan;
  final List<String> daftarPermohonan;
  final List<int> daftar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailLemburPage(),
                    ),
                  );
                },
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
    this.onTap,
  });

  final bool isAlreadyRead;
  final bool isLast;
  final String status;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Color? warnaStatus;
    switch (status) {
      case "Active":
        warnaStatus = Colors.blue;
        break;
      case "Inactive":
        warnaStatus = Colors.red;
        break;
      default:
        warnaStatus = Colors.grey;
    }
    return GestureDetector(
      onTap: onTap,
      child: Stack(
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
                        const Text(
                          "Lembur Regular",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: warnaStatus.withOpacity(0.1),
                          ),
                          child: Text(
                            status,
                            style: TextStyle(
                              color: warnaStatus,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
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
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
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
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DinasPage extends StatefulWidget {
  const DinasPage({Key? key}) : super(key: key);

  @override
  State<DinasPage> createState() => _DinasPageState();
}

class _DinasPageState extends State<DinasPage> {
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
            margin: const EdgeInsets.only(right: 10),
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                itemCount: daftarTanggal.length,
                itemBuilder: (BuildContext context, int index) {
                  return SuratDinasPerTanggl(
                    tanggal: daftarTanggal[index],
                    urutan: index,
                    daftarPermohonan: daftarPermohonan,
                    daftar: daftar,
                  );
                },
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddDinasPage(),
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

class SuratDinasPerTanggl extends StatelessWidget {
  const SuratDinasPerTanggl({
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
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tanggal,
            style: const TextStyle(
                color: MyColorsConst.darkColor,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
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
          margin: const EdgeInsets.only(bottom: 15, left: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xFFDDDDDD)),
            color: MyColorsConst.whiteColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Surat Perjalanan Dinas",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(5),
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
                  const Text(
                    "Divisi | Departemen",
                    style: TextStyle(
                        color: MyColorsConst.darkColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
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
                        "Dibuat Tanggal 17 Oktober 2023",
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
    );
  }
}

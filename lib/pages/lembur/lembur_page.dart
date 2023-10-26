import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/monthpicker_custom.dart';
import 'package:sj_presensi_mobile/componens/yearpicker_custom.dart';
import 'package:sj_presensi_mobile/pages/home/history/bloc/history_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/report/bloc/reports_history_bloc.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class LemburPage extends StatefulWidget {
  const LemburPage({Key? key}) : super(key: key);

  @override
  _LemburPageState createState() => _LemburPageState();
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
      "28 April 2023",
      "27 April 2023",
      "18 Agustus 2023",
    ];
    List<int> daftar = [1, 3];

    return Scaffold(
      appBar: appBarCustomMain(
        title: "Selamat Datang, Trial!",
        padLeft: 8,
        actions: [
          IconButton(
            splashRadius: 20,
            iconSize: 20,
            icon: const Icon(Icons.notifications_active),
            onPressed: () async {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Tahun",
                      style: TextStyle(
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
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: daftarTanggal.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardPerintahLembur(
                    tanggal: daftarTanggal[index],
                    urutan: index,
                    daftarPermohonan: daftarPermohonan,
                    daftar: daftar,
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: MyColorsConst.primaryLightColor,
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
    );
  }
}

class CardPerintahLembur extends StatelessWidget {
  const CardPerintahLembur({
    Key? key,
    required this.daftarPermohonan,
    required this.daftar,
    required this.tanggal,
    required this.urutan,
  }) : super(key: key);

  final int urutan;
  final String tanggal;
  final List<String> daftarPermohonan;
  final List<int> daftar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: MyColorsConst.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 18, left: 5),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFFDDDDDD)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Surat Perintah Lembur",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_rounded,
                        color: MyColorsConst.lightDarkColor,
                        size: 10,
                      ),
                      const SizedBox(width: 5), // Atur jarak sesuai kebutuhan
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
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        color: MyColorsConst.lightDarkColor,
                        size: 10,
                      ),
                      const SizedBox(width: 5),
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
    );
  }
}

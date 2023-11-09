import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class NotifikasiPage extends StatefulWidget {
  const NotifikasiPage({Key? key}) : super(key: key);

  @override
  State<NotifikasiPage> createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  @override
  Widget build(BuildContext context) {
    List<String> daftarNotifikasi = [
      "Cuti",
      "Dinas",
      "Lembur",
      "Event",
    ];

    return Scaffold(
      appBar: appBarCustomV1(
        title: "Notifikasi",
        // centerTitle: true,
        padLeft: 8,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: daftarNotifikasi.length,
            itemBuilder: (BuildContext c, int index) {
              return CardListNotifikasi(
                tipeNotifikasi: daftarNotifikasi[index],
                status: "Disetujui",
              );
            },
          ),
        ],
      ),
    );
  }
}

class CardListNotifikasi extends StatelessWidget {
  const CardListNotifikasi({
    super.key,
    required this.tipeNotifikasi,
    required this.status,
  });

  final String tipeNotifikasi;
  final String status;

  @override
  Widget build(BuildContext context) {
    Icon? iconNotifikasi;
    switch (tipeNotifikasi) {
      case "Dinas":
        if (status == "Disetujui") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.green,
            size: 30,
          );
        } else if (status == "Ditolak") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.red,
            size: 30,
          );
        }
        break;
      case "Cuti":
        if (status == "Disetujui") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.green,
            size: 30,
          );
        } else if (status == "Ditolak") {
          iconNotifikasi = const Icon(
            Icons.article_outlined,
            color: Colors.red,
            size: 30,
          );
        }
        break;
      case "Lembur":
        iconNotifikasi = const Icon(
          Icons.access_time,
          color: Colors.red,
          size: 30,
        );
        break;
      case "Event":
        iconNotifikasi = const Icon(
          Icons.calendar_month_outlined,
          color: Colors.blue,
          size: 30,
        );
        break;
      default:
        iconNotifikasi = const Icon(
          Icons.notifications,
          color: Colors.yellow,
          size: 30,
        );
    }

    Color? warnaStatus;
    switch (status) {
      case "Disetujui":
        if (tipeNotifikasi == "Cuti" || tipeNotifikasi == "Dinas") {
          warnaStatus = Colors.green;
        } else if (tipeNotifikasi == "Lembur") {
          warnaStatus = Colors.red;
        } else if (tipeNotifikasi == "Event") {
          warnaStatus = Colors.blue;
        }
        break;
      case "Ditolak":
        if (tipeNotifikasi == "Cuti" || tipeNotifikasi == "Dinas") {
          warnaStatus = Colors.red;
        } else if (tipeNotifikasi == "Lembur") {
          warnaStatus = Colors.red;
        } else if (tipeNotifikasi == "Event") {
          warnaStatus = Colors.blue;
        }
        break;
      default:
        warnaStatus = Colors.grey;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: warnaStatus!.withOpacity(0.4),
                ),
                child: iconNotifikasi,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Surat Pengajuanmu Telah Disetujui!',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "21 okt",
                          style: TextStyle(
                            color: MyColorsConst.semidarkColor2,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cek pengajuanmu pada tanggal 17 Oktober 2023',
                      style: TextStyle(
                        color: MyColorsConst.semiDarkColor,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

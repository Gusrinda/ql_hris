import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotifikasiPage extends StatefulWidget {
  const NotifikasiPage({super.key});

  @override
  State<NotifikasiPage> createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  @override
  Widget build(BuildContext context) {
    List<String> daftarNotifikasi = [
      "Lembur",
      "Dinas",
      "Cuti",
      "Event",
    ];

    return Scaffold(
      appBar: appBarCustomV1(
        title: "Notifikasi",
        padLeft: 8,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: daftarNotifikasi.length,
            itemBuilder: (BuildContext c, int index) {
              return CardListNotifikasi(
                tipeNotifikasi: daftarNotifikasi[index],
              );
            },
          ),
        ],
      ),
    );
  }
}

class CardListNotifikasi extends StatelessWidget {
  CardListNotifikasi({
    super.key,
    required this.tipeNotifikasi,
  });

  final String tipeNotifikasi;

  @override
  Widget build(BuildContext context) {
    FaIcon iconNotifikasi;
    if (tipeNotifikasi == "Target") {
      iconNotifikasi = FaIcon(
        FontAwesomeIcons.bullseye,
        color: Colors.green,
        size: 20,
      );
    } else if (tipeNotifikasi == "Visiting") {
      iconNotifikasi = FaIcon(
        FontAwesomeIcons.locationDot,
        color: Colors.orange,
        size: 20,
      );
    } else if (tipeNotifikasi == "Tagihan") {
      iconNotifikasi = FaIcon(
        FontAwesomeIcons.clipboard,
        color: Colors.blue,
        size: 20,
      );
    } else {
      iconNotifikasi = FaIcon(
        FontAwesomeIcons.bell,
        color: Colors.yellow,
        size: 20,
      );
    }
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0x33DDDDDD)),
                child: iconNotifikasi,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'ini notifikasi',
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

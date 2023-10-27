import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';

class DetailAbsensiPage extends StatefulWidget {
  const DetailAbsensiPage({super.key});

  @override
  State<DetailAbsensiPage> createState() => _DetailAbsensiPageState();
}

class _DetailAbsensiPageState extends State<DetailAbsensiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustomV1(
        title: 'Detail Absensi',
      ),
    );
  }
}

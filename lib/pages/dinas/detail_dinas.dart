import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "IN APPROVAL": {
    "name": "Menunggu Disetujui",
  },
  "APPROVED": {
    "name": "Disetujui",
  },
  "REJECTED": {
    "name": "Ditolak",
  },
  "REVISED": {
    "name": "Revisi",
  },
};

class DetailDinasPage extends StatefulWidget {
  static const routeName = '/DetailDinasPage';

  const DetailDinasPage({
    super.key,
    this.status,
    this.createdAt,
    this.data,
    this.zonaAwal,
    this.zonaTujuan,
    this.lokasiTujuan,
    this.jenisSpd,
  });
  final dynamic? data;
  final String? status;
  final String? createdAt;
  final String? jenisSpd;
  final String? zonaAwal;
  final String? zonaTujuan;
  final String? lokasiTujuan;

  @override
  State<DetailDinasPage> createState() => _DetailDinasPageState();
}

class _DetailDinasPageState extends State<DetailDinasPage> {
  String mapStatusToString(String status) {
    if (widget.status != null && stateDict.containsKey(widget.status)) {
      return stateDict[widget.status]['name'];
    } else {
      return 'Undefined';
    }
  }

  Color getColorFromStatus(String status) {
    if (stateDict.containsKey(status)) {
      switch (status) {
        case "IN APPROVAL":
          return const Color(0xFF0068D4);
        case "REVISED":
          return Colors.orange;
        case "REJECTED":
          return const Color(0xFFED1B24);
        case "APPROVED":
          return const Color(0xFF0CA356);
        default:
          return Colors.grey; // warna default
      }
    } else {
      return Colors.grey; // warna default
    }
  }

  String formatDate(String? dateString) {
    if (dateString != null) {
      DateTime date = DateFormat("dd/MM/yyyy").parse(dateString);
      return DateFormat('d MMMM y', 'id_ID').format(date);
    } else {
      return 'Tanggal tidak tersedia';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String currentStatus = widget.status as String;
    Color currentColor = getColorFromStatus(currentStatus);

    return Scaffold(
      appBar: appBarCustomV1(
        title: "Detail Pengajuan Cuti",
        padLeft: 8,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Color(0xFFDDDDDD)),
                      color: MyColorsConst.whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Surat Perjalanan Dinas",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: currentColor.withOpacity(0.1),
                              ),
                              child: Text(
                                mapStatusToString(widget.status as String),
                                style: TextStyle(
                                  color: currentColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time_filled,
                              color: MyColorsConst.lightDarkColor,
                              size: 10,
                            ),
                            const SizedBox(
                                width: 5), // Atur jarak sesuai kebutuhan
                            Text(
                              "Dibuat Tanggal ${formatDate(widget.createdAt)}",
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Divider(
                          color: Color(0xFFDDDDDD),
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Jenis Spd',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${widget.jenisSpd}',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Zona Awal',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${widget.zonaAwal}',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Zona Tujuan',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${widget.zonaTujuan}',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Lokasi Tujuan',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${widget.lokasiTujuan}',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  if (currentStatus == "REVISED")
                    TextButtonCustomV1(
                      height: 45,
                      text: "Edit",
                      backgroundColor: Colors.blue,
                      textColor: MyColorsConst.whiteColor,
                      onPressed: () {},
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

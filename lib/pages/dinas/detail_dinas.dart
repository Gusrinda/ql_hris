import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/edit_dinas.dart';
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
  "DRAFT": {
    "name": "Draft",
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
    this.templateSpd,
    this.tanggalAwal,
    this.tanggalAkhir,
    this.dinasId,
    this.posisi,
    this.jenisSpdId,
    this.templateSpdId,
    this.posisiId,
    this.divisiId,
    this.divisiValue,
    this.deptId,
    this.deptValue,
    this.direktoratId,
    this.direktoratValue,
    this.tanggal,
    this.zonaAwalId,
    this.zonaTujuanId,
    this.lokasiTujuanId,
    required this.reloadDataCallback,
    this.nomorFromNotif,
    this.nomorFromList,
  });
  final dynamic? data;
  final String? status;
  final String? createdAt;
  final String? jenisSpd;
  final int? jenisSpdId;
  final String? zonaAwal;
  final int? zonaAwalId;
  final String? zonaTujuan;
  final int? zonaTujuanId;
  final String? lokasiTujuan;
  final int? lokasiTujuanId;
  final String? templateSpd;
  final int? templateSpdId;
  final String? tanggalAwal;
  final String? tanggalAkhir;
  final int? dinasId;
  final String? posisi;
  final int? posisiId;
  final int? divisiId;
  final String? divisiValue;
  final int? deptId;
  final String? deptValue;
  final int? direktoratId;
  final String? direktoratValue;
  final String? tanggal;
  final VoidCallback reloadDataCallback;
  final String? nomorFromNotif;
  final String? nomorFromList;

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
      // appBar: appBarCustomV1(
      //   title: "Detail Pengajuan Dinas",
      //   padLeft: 8,
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyColorsConst.primaryDarkColor,
                  MyColorsConst.primaryColor,
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
              padding: EdgeInsets.only(left: 8.0),
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
                    width: size.width * 1 / 7,
                  ),
                  Expanded(
                    child: Text(
                      "Detail Perjalanan Dinas",
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
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
                                  style: GoogleFonts.poppins(
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
                                    style: GoogleFonts.poppins(
                                      color: currentColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "${widget.divisiValue}",
                                    style: GoogleFonts.poppins(
                                      color: MyColorsConst.darkColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " | ",
                                    style: GoogleFonts.poppins(
                                      color: Color(
                                          0XFF0068D4), // Set the color of the pipe to blue
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "${widget.deptValue}",
                                    style: GoogleFonts.poppins(
                                      color: MyColorsConst.darkColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 8,
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
                                  style: GoogleFonts.poppins(
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
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Template Spd',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${widget.templateSpd}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Posisi',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${widget.posisi}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Direktorat',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${widget.direktoratValue}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Tanggal',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${formatDate(widget.tanggal)}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Jenis Spd',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${widget.jenisSpd}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tanggal Acara Awal',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${formatDate(widget.tanggalAwal)}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Tanggal Acara Akhir',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${formatDate(widget.tanggalAkhir)}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Zona Awal',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${widget.zonaAwal}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Zona Tujuan',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${widget.zonaTujuan}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Lokasi Tujuan',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${widget.lokasiTujuan}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      if (currentStatus == "REVISED")
                        TextButtonCustomV1(
                          text: "Revisi Perjalanan Dinas",
                          textSize: 12,
                          backgroundColor: Colors.orange,
                          textColor: MyColorsConst.whiteColor,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) => AddDinasBloc()
                                    ..add(OnSelectDivisi(page: 1, search: ''))
                                    ..add(
                                        OnSelectDepartemen(page: 1, search: ''))
                                    ..add(OnSelectPosisi(page: 1, search: ''))
                                    ..add(OnSelectTemplateSpd(
                                        page: 1, search: ''))
                                    ..add(
                                        OnSelectDirektorat(page: 1, search: ''))
                                    ..add(OnSelectJenisSpd(page: 1, search: ''))
                                    ..add(OnSelectZona(page: 1, search: ''))
                                    ..add(OnSelectLokasiTujuan(
                                        page: 1, search: ''))
                                    ..add(OnSelectPic(page: 1, search: '')),
                                  child: EditDinasPage(
                                    dinasId: widget.dinasId ?? 1,
                                    jenisSpd: widget.jenisSpd,
                                    jenisSpdId: widget.jenisSpdId,
                                    zonaAwal: widget.zonaAwal,
                                    zonaAwalId: widget.zonaAwalId,
                                    zonaTujuan: widget.zonaTujuan,
                                    zonaTujuanId: widget.zonaTujuanId,
                                    lokasiTujuan: widget.lokasiTujuan,
                                    lokasiTujuanId: widget.lokasiTujuanId,
                                    templateSpd: widget.templateSpd,
                                    templateSpdId: widget.templateSpdId,
                                    tanggalAwal: widget.tanggalAwal,
                                    tanggalAkhir: widget.tanggalAkhir,
                                    posisiId: widget.posisiId,
                                    posisi: widget.posisi,
                                    divisiId: widget.divisiId,
                                    divisiValue: widget.divisiValue,
                                    deptId: widget.deptId,
                                    deptValue: widget.deptValue,
                                    direktoratId: widget.direktoratId,
                                    direktoratValue: widget.direktoratValue,
                                    tanggal: widget.tanggal,
                                    reloadDataCallback:
                                        widget.reloadDataCallback,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
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

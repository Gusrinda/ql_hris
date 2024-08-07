import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/edit_dinas.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
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
  final DataDinas? data;
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

  String convertMinutesToHours(int minutes) {
    if (minutes < 60) {
      return "$minutes Menit";
    } else {
      int hours = minutes ~/ 60;
      int remainingMinutes = minutes % 60;

      if (remainingMinutes == 0) {
        return "$hours Jam";
      } else {
        return "$hours Jam $remainingMinutes Menit";
      }
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
            SizedBox(height: 40.sp),
            Container(
              padding: EdgeInsets.only(left: 5.0.sp),
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
                    width: size.width * 0.5 / 3.5,
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
                      EdgeInsets.symmetric(horizontal: 24.sp, vertical: 16.sp),
                  child: Column(
                    children: [
                      SizedBox(height: 20.sp),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildText('Nomor Pengajuan SPD',
                                    widget.data?.nomor ?? '-'),
                                _buildText('Nomor Template SPD',
                                    widget.templateSpd ?? '-'),
                                if (widget.direktoratValue != null)
                                  _buildText('Direktorat',
                                      widget.direktoratValue ?? '-'),
                                _buildText('Divisi', widget.divisiValue ?? '-'),
                                _buildText(
                                    'Departemen', widget.deptValue ?? '-'),
                                _buildText('Posisi', widget.posisi ?? '-'),
                                _buildText('Jenis SPD', widget.jenisSpd ?? '-'),
                                _buildText('Durasi Hari',
                                    "${widget.data!.interval?.toString() ?? '0'} Hari"),
                                Text(
                                  'Status Approval',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  mapStatusToString(widget.status as String),
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: currentColor,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Catatan Approval',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  widget.data!.approvalNote ?? "-",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: MyColorsConst.darkColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildText('Dibuat Pada',
                                    widget.data?.createdAt ?? '-'),
                                _buildText(
                                    'Nama PIC', widget.data?.namaPic ?? '-'),
                                _buildText(
                                    'Tanggal Pengajuan', widget.tanggal ?? '-'),
                                _buildText('Tanggal Berangkat Dinas',
                                    widget.tanggalAwal ?? '-'),
                                _buildText('Tanggal Pulang Dinas',
                                    widget.tanggalAkhir ?? '-'),
                                _buildText('Zona Awal', widget.zonaAwal ?? '-'),
                                _buildText(
                                    'Zona Tujuan', widget.zonaTujuan ?? '-'),
                                _buildText('Lokasi Tujuan',
                                    "${widget.lokasiTujuan ?? '-'}\n${widget.data?.mLokasiTujuanDesc ?? '-'}"),
                                _buildText(
                                    'Kendaraan Dinas?',
                                    widget.data?.isKendDinas == true
                                        ? "Iya"
                                        : "Tidak"),
                                _buildText('Keterangan Kendaraan',
                                    widget.data?.catatanKend ?? '-'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      if (currentStatus == "REVISED")
                        TextButtonCustomV1(
                          text: "Revisi Perjalanan Dinas",
                          height: 50,
                          textSize: 12,
                          backgroundColor:
                              Colors.orange.shade700.withOpacity(0.2),
                          textColor: Colors.orange.shade700,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) => AddDinasBloc()
                                    ..add(OnSelectDivisi())
                                    ..add(OnSelectDepartemen())
                                    ..add(OnSelectPosisi())
                                    ..add(OnSelectTemplateSpd())
                                    ..add(OnSelectDirektorat())
                                    ..add(OnSelectJenisSpd())
                                    ..add(OnSelectZona())
                                    ..add(OnSelectLokasiTujuan())
                                    ..add(OnSelectPic()),
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
                                    isKendDinas:
                                        widget.data?.isKendDinas ?? false,
                                    namaKend: widget.data?.catatanKend,
                                    dataDinas: widget.data,
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

  Widget _buildText(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 10.sp,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15.sp),
      ],
    );
  }
}

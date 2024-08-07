import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/edit_cuti.dart';
import 'package:sj_presensi_mobile/services/model/cuti/list_cuti_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:url_launcher/link.dart';

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

class DetailCutiPage extends StatefulWidget {
  static const routeName = '/DetailCutiPage';

  const DetailCutiPage({
    super.key,
    this.data,
    this.dateFrom,
    this.dateTo,
    this.timeFrom,
    this.timeTo,
    this.alasanValue,
    this.status,
    this.keterangan,
    this.tipeCutiValue,
    this.nomorFromNotif,
    this.nomorFromList,
    this.cutiId,
    this.alasanID,
    this.tipeCutiID,
    required this.reloadDataCallback,
  });
  final DataListCuti? data;
  final String? dateFrom;
  final String? dateTo;
  final String? timeFrom;
  final String? timeTo;
  final String? alasanValue;
  final String? status;
  final String? keterangan;
  final String? tipeCutiValue;
  final String? nomorFromNotif;
  final String? nomorFromList;
  final int? cutiId;
  final int? alasanID;
  final int? tipeCutiID;
  final VoidCallback reloadDataCallback;

  @override
  State<DetailCutiPage> createState() => _DetailCutiPageState();
}

class _DetailCutiPageState extends State<DetailCutiPage> {
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

  // String formatTime(String rawTime) {
  //   DateTime parsedTime = DateFormat.Hms().parse(rawTime);
  //   return DateFormat('HH:mm').format(parsedTime);
  // }

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
      //   title: "Detail Pengajuan Cuti",
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
              padding: EdgeInsets.only(left: 5.sp),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 18,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: size.width * 1 / 4,
                  ),
                  Expanded(
                    child: Text(
                      "Detail Cuti",
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
                            // flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildText('Nomor Pengajuan Cuti',
                                    widget.nomorFromList ?? '-'),
                                _buildText(
                                    'Tipe Cuti', widget.tipeCutiValue ?? '-'),
                                if (widget.data?.timeFrom != null &&
                                    widget.data?.timeFrom != 0)
                                  _buildText(
                                      'Waktu Awal',
                                      widget.data?.timeFrom?.toString() ??
                                          '00:00'),
                                if (widget.data?.timeTo != null &&
                                    widget.data?.timeTo != 0)
                                  _buildText(
                                      'Waktu Berakhir',
                                      widget.data?.timeTo?.toString() ??
                                          '00:00'),
                                _buildText(
                                    'Keterangan', widget.keterangan ?? '-'),
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
                                    fontWeight: FontWeight.w400,
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
                                  widget.data?.approvalNote ?? "-",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: MyColorsConst.darkColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            // flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildText('Dibuat Pada',
                                    widget.data?.createdAt ?? '-'),
                                if (widget.data?.alasanValue != null)
                                  _buildText('Alasan',
                                      widget.data?.alasanValue ?? '-'),
                                if (widget.data?.attachment != null) ...{
                                  Text(
                                    "Surat Dokter",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Link(
                                    target: LinkTarget.self,
                                    uri:
                                        Uri.parse('${widget.data?.attachment}'),
                                    builder: (context, followLink) =>
                                        GestureDetector(
                                      onTap: followLink,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Lihat Surat Dokter",
                                            style: GoogleFonts.poppins(
                                              fontSize: 12.sp,
                                              color: MyColorsConst.primaryColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          Icon(
                                            Icons.image_search_rounded,
                                            size: 14.sp,
                                            color: MyColorsConst.primaryColor,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15.sp),
                                },
                                _buildText('Tanggal Awal',
                                    formatDate(widget.dateFrom ?? '-')),
                                _buildText('Tanggal Berakhir',
                                    formatDate(widget.dateTo ?? '-')),
                                if (widget.data?.interval != null &&
                                    widget.data?.interval != 0)
                                  _buildText('Durasi Hari',
                                      "${widget.data?.interval?.toString() ?? '0'} Hari"),

                                if (widget.data?.intervalMin != null &&
                                    widget.data?.intervalMin != 0)
                                  _buildText(
                                      'Durasi Waktu',
                                      convertMinutesToHours(
                                          widget.data?.intervalMin ?? 0)),
                                // _buildText('Catatan Approval',
                                //     widget.data?.keterangan?.toString() ?? '-'),
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
                          text: "Revisi Pengajuan Cuti",
                          height: 50.sp,
                          textSize: 12,
                          backgroundColor:
                              Colors.orange.shade700.withOpacity(0.2),
                          textColor: Colors.orange.shade700,
                          onPressed: () {
                            print("Edit Cuti ID : ${widget.cutiId}");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) => AddCutiBloc()
                                    ..add(OnSelectAlasanCuti())
                                    ..add(OnSelectTipeCuti()),
                                  child: EditCutiPage(
                                    dataCuti: widget.data,
                                    cutiId: widget.cutiId ?? 1,
                                    dateFrom: widget.dateFrom,
                                    dateTo: widget.dateTo,
                                    alasanValue: widget.alasanValue,
                                    alasanID: widget.alasanID,
                                    status: widget.status,
                                    keterangan: widget.keterangan,
                                    tipeCutiValue: widget.tipeCutiValue,
                                    tipeCutiID: widget.tipeCutiID,
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

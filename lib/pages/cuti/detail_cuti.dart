import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/edit_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/listCutiBloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/services/model/cuti/list_cuti_model.dart';
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
                                _buildText(
                                    'Nomor', widget.nomorFromList ?? '-'),
                                _buildText(
                                    'Tipe Cuti', widget.tipeCutiValue ?? '-'),
                                _buildText('Tanggal Awal',
                                    formatDate(widget.dateFrom ?? '-')),
                                _buildText(
                                    'Waktu Awal',
                                    widget.data?.timeFrom?.toString() ??
                                        '00:00'),
                                Text(
                                  'Status',
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
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            // flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildText('Alasan', widget.alasanValue ?? '-'),
                                _buildText(
                                    'Keterangan', widget.keterangan ?? '-'),
                                _buildText('Tanggal Berakhir',
                                    formatDate(widget.dateTo ?? '-')),
                                _buildText('Waktu Berakhir',
                                    widget.data?.timeTo?.toString() ?? '00:00'),
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
                          backgroundColor: Colors.orange.withOpacity(0.1),
                          textColor: Colors.orange,
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

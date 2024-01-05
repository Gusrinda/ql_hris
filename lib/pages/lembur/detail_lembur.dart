import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/services/model/lembur/lembur_model.dart';
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

class DetailLemburPage extends StatefulWidget {
  static const routeName = '/DetailLemburPage';

  const DetailLemburPage({
    Key? key,
    this.tipeLemburValue,
    this.nomorFromList,
    this.tanggal,
    this.jamMulai,
    this.jamSelesai,
    this.noDoc,
    this.doc,
    this.keterangan,
    this.data,
    this.alasanValue,
    // required this.id,
  }) : super(key: key);
  final DataLembur? data;
  final String? tipeLemburValue;
  final String? nomorFromList;
  final String? tanggal;
  final String? jamMulai;
  final String? jamSelesai;
  final String? noDoc;
  final String? doc;
  final String? keterangan;
  final String? alasanValue;

  @override
  _DetailLemburPageState createState() => _DetailLemburPageState();
}

class _DetailLemburPageState extends State<DetailLemburPage> {
  String mapStatusToString(String status) {
    if (widget.data?.status != null &&
        stateDict.containsKey(widget.data?.status)) {
      return stateDict[widget.data?.status]['name'];
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

  String extractTime(String? timeString) {
    if (timeString != null) {
      return timeString.substring(0, 5);
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String currentStatus = widget.data?.status as String;
    Color currentColor = getColorFromStatus(currentStatus);

    return Scaffold(
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
                    width: size.width * 1 / 4.5,
                  ),
                  Expanded(
                    child: Text(
                      "Detail Lembur",
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
                                  'Nomor',
                                  "${widget.nomorFromList ?? '-'}",
                                ),
                                if (widget.noDoc != null)
                                  _buildText(
                                    'No. Dokumen',
                                    "${widget.noDoc ?? '-'}",
                                  ),
                                if (widget.data?.picNamaLengkap != null)
                                  _buildText(
                                    'PIC',
                                    widget.data?.picNamaLengkap ?? '-',
                                  ),
                                Text(
                                  'Tipe Lembur',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "${widget.tipeLemburValue ?? '-'}",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 15),
                                _buildText(
                                  'Keterangan',
                                  "${widget.keterangan ?? '-'}",
                                ),
                                Text(
                                  'Status Approval',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  mapStatusToString(widget.data?.status as String),
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: currentColor,
                                  ),
                                ),
                                // SizedBox(height: 10),
                                // _buildText(
                                //   'Keterangan',
                                //   "${widget.data?.keterangan ?? '-'}",
                                // ),
                              ],
                            ),
                          ),
                          Expanded(
                            // flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildText(
                                  'Dibuat Pada',
                                  "${widget.data?.createdAt ?? '-'}",
                                ),
                                _buildText(
                                  'Tanggal Lembur',
                                  "${widget.tanggal ?? '-'}",
                                ),
                                _buildText(
                                  'Alasan',
                                  "${widget.alasanValue ?? '-'}",
                                ),
                                _buildText(
                                  'Jam Mulai',
                                  "${widget.jamMulai ?? '-'}",
                                ),
                                _buildText(
                                  'Jam Selesai',
                                  "${widget.jamSelesai ?? '-'}",
                                ),
                                if (widget.doc != null) ...{
                                  Text(
                                    'File Ref.',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Link(
                                    target: LinkTarget.self,
                                    uri: Uri.parse('${widget.doc}'),
                                    builder: (context, followLink) =>
                                        GestureDetector(
                                      onTap: followLink,
                                      child: Text(
                                        "Doc.pdf",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: MyColorsConst.primaryColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                }
                              ],
                            ),
                          )
                        ],
                      )
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

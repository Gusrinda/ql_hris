import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:url_launcher/link.dart';

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
  final dynamic? data;
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
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 5),
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
                  child: ListView(
                    children: [
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildText(
                                      'Nomor',
                                      "${widget.nomorFromList ?? '-'}",
                                    ),
                                    _buildText(
                                      'No. Dokumen',
                                      "${widget.noDoc ?? '-'}",
                                    ),
                                    _buildText(
                                      'Jam Mulai',
                                      "${widget.jamMulai ?? '-'}",
                                    ),
                                    _buildText(
                                      'Keterangan',
                                      "${widget.keterangan ?? '-'}",
                                    ),
                                    // _buildText(
                                    //   'Tipe Lembur',
                                    //   "${widget.tipeLemburValue ?? '-'}",
                                    // ),
                                    Text(
                                      'Tipe Lembur.',
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
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildText(
                                      'Tanggal Lembur',
                                      "${widget.tanggal ?? '-'}",
                                    ),
                                    _buildText(
                                      'Alasan',
                                      "${widget.alasanValue ?? '-'}",
                                    ),
                                    _buildText(
                                      'Jam Selesai',
                                      "${widget.jamSelesai ?? '-'}",
                                    ),
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
                                  ],
                                ),
                              ),
                            ],
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

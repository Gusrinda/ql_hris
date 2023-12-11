import 'package:flutter/material.dart';
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
                                Expanded(
                                  flex: 7,
                                  child: Text(
                                    "${widget.nomorFromList ?? '-'}",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: MyColorsConst.primaryColor
                                          .withOpacity(0.1),
                                    ),
                                    child: Text(
                                      '${widget.tipeLemburValue ?? '-'}',
                                      style: GoogleFonts.poppins(
                                        color: MyColorsConst.primaryColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month_rounded,
                                  color: MyColorsConst.lightDarkColor,
                                  size: 10,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '${formatDate(widget.tanggal ?? '-')}',
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.access_time_filled,
                                  color: MyColorsConst.lightDarkColor,
                                  size: 10,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "${extractTime(widget.jamMulai ?? '-')} - ${extractTime(widget.jamSelesai ?? '-')}",
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0xFFDDDDDD),
                              thickness: 1,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Alasan',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '${widget.alasanValue ?? '-'}',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'No Dokumen',
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '${widget.noDoc ?? '-'}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                // const SizedBox(
                                //   width: 50,
                                // ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                      Column(
                                        children: [
                                          Link(
                                            target: LinkTarget.self,
                                            uri: Uri.parse('${widget.doc}'),
                                            builder: (context, followLink) =>
                                                GestureDetector(
                                              onTap: followLink,
                                              child: Text(
                                                "file.pdf",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  color: MyColorsConst
                                                      .primaryColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Keterangan',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              widget.keterangan != null
                                  ? '${widget.keterangan}'
                                  : '-',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
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
}

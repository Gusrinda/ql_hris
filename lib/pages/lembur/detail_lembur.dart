import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: appBarCustomV1(
        title: "Detail Lembur",
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
                            Expanded(
                              flex: 3,
                              child: Text(
                                "${widget.nomorFromList}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: MyColorsConst.primaryColor
                                      .withOpacity(0.1),
                                ),
                                child: Text(
                                  '${widget.tipeLemburValue}',
                                  style: const TextStyle(
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
                              '${formatDate(widget.tanggal)}',
                              style: const TextStyle(
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
                              "${extractTime(widget.jamMulai)} - ${extractTime(widget.jamSelesai)}",
                              style: const TextStyle(
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
                        const Text(
                          'Alasan',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${widget.alasanValue}',
                          style: const TextStyle(
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
                                const Text(
                                  'No Dokumen',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '${widget.noDoc}',
                                  style: const TextStyle(
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'File Ref.',
                                    style: TextStyle(
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
                                            style: const TextStyle(
                                              fontSize: 10,
                                              color: MyColorsConst.primaryColor,
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
                        const Text(
                          'Keterangan',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          widget.keterangan != null
                              ? '${widget.keterangan}'
                              : '-',
                          style: const TextStyle(
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
          ],
        ),
      ),
    );
  }
}

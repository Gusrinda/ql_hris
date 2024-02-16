import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kode_presensi.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class KodePresensiSearchDelegate extends SearchDelegate<DataKodePresensi?> {
  final List<DataKodePresensi> dataKodePresensi;
  final List<DataKodePresensi> filteredData;

  KodePresensiSearchDelegate({
    required this.dataKodePresensi,
    required this.filteredData,
  });

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
        color: MyColorsConst.primaryColor,
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
      color: MyColorsConst.primaryColor,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    String convertTimeFormat(String timeString) {
      try {
        final parsedTime = DateTime.parse('2000-01-01 $timeString');
        final formattedTime = DateFormat('HH:mm').format(parsedTime);

        return formattedTime;
      } catch (e) {
        print('Error: $e');
        return timeString;
      }
    }

    final searchResults = dataKodePresensi
        .where((element) =>
            (element.kode?.toLowerCase().contains(query.toLowerCase()) ??
                false) ||
            (element.waktuMulai?.toLowerCase().contains(query.toLowerCase()) ??
                false) ||
            (element.waktuAkhir?.toLowerCase().contains(query.toLowerCase()) ??
                false) ||
            (element.desc?.toLowerCase().contains(query.toLowerCase()) ??
                false))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    searchResults[index].kode ?? '-',
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: MyColorsConst.darkColor),
                  ),
                  const SizedBox(height: 3),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Start : ',
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: convertTimeFormat(
                              searchResults[index].waktuMulai ?? "08:00:00"),
                          style: GoogleFonts.poppins(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade800),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'End   : ',
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: convertTimeFormat(
                              searchResults[index].waktuAkhir ?? "08:00:00"),
                          style: GoogleFonts.poppins(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade800),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ket    : ',
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResults[index].desc ?? '-',
                          style: GoogleFonts.poppins(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                close(context, searchResults[index]);
              },
            ),
            const Divider(
              height: 10,
              thickness: 0.5,
              color: MyColorsConst.lightDarkColor,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}

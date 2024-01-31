import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_divisi_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DivisiSearchDelegate extends SearchDelegate<DataDivisi?> {
  final List<DataDivisi> dataDivisi;
  final List<DataDivisi> filteredData;

  DivisiSearchDelegate({
    required this.dataDivisi,
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
    final searchResults = dataDivisi
        .where((tipeCuti) =>
            tipeCuti.nama!.toLowerCase().contains(query.toLowerCase()) ||
            tipeCuti.mDirNama!.toLowerCase().contains(query.toLowerCase()))
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
                    searchResults[index].nama ?? '-',
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
                          text: 'DIR : ',
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResults[index].mDirNama ?? '-',
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

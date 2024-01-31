import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DinasApprovedSearchDelegate extends SearchDelegate<DataDinas?> {
  final List<DataDinas> dataDinasApproved;
  final List<DataDinas> filteredData;
  DinasApprovedSearchDelegate({
    required this.dataDinasApproved,
    required this.filteredData,
  });

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
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
    final searchResult = dataDinasApproved
        .where((element) =>
            element.nomor!.toLowerCase().contains(query.toLowerCase()) &&
            element.status == 'APPROVED')
        .toList();
    return ListView.builder(
      itemCount: searchResult.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    searchResult[index].nomor ?? '-',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Karyawan: ',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResult[index].mKaryNamaLengkap ?? '-',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'PIC: ',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResult[index].picNamaLengkap ?? '-',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Zona: ',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResult[index].mZonaTujuanNama ?? '-',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Lokasi: ',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResult[index].mLokasiTujuanNama ?? '-',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                close(context, searchResult[index]);
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

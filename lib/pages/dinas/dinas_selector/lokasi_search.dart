import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_lokasitujuan_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class LokasiTujuanSearchDelegate extends SearchDelegate<DataLokasiTujuan?> {
  final List<DataLokasiTujuan> dataLokasi;
  final List<DataLokasiTujuan> filteredData;

  LokasiTujuanSearchDelegate({
    required this.dataLokasi,
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
    final searchResults = dataLokasi
        .where((element) =>
            element.nama!.toLowerCase().contains(query.toLowerCase()) ||
            element.desc!.toLowerCase().contains(query.toLowerCase()))
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
                  Text(
                    searchResults[index].desc ?? '-',
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade800),
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

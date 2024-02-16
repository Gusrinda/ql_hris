import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_templatespd_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

// Template Spd Selector
class TemplateSpdSearchDelegate extends SearchDelegate<DataTemplateSpd?> {
  final List<DataTemplateSpd> dataTemplateSpd;
  final List<DataTemplateSpd> filteredData;
  TemplateSpdSearchDelegate({
    required this.dataTemplateSpd,
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
    final searchResult = dataTemplateSpd
        .where((element) =>
            (element.kode?.toLowerCase().contains(query.toLowerCase()) ??
                false) ||
            (element.mDivisiNama?.toLowerCase().contains(query.toLowerCase()) ??
                false) ||
            (element.mDeptNama?.toLowerCase().contains(query.toLowerCase()) ??
                false) ||
            (element.mPosisiDescKerja
                    ?.toLowerCase()
                    .contains(query.toLowerCase()) ??
                false) ||
            (element.desc?.toLowerCase().contains(query.toLowerCase()) ??
                false))
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
                    searchResult[index].kode ?? '-',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: MyColorsConst.darkColor),
                  ),
                  const SizedBox(height: 3),
                  if (searchResult[index].mDirNama != null) ...{
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Direktorat : ',
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              color: MyColorsConst.lightDarkColor,
                            ),
                          ),
                          TextSpan(
                            text: searchResult[index].mDirNama ?? '-',
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: MyColorsConst.darkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  },
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Divisi : ',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResult[index].mDivisiNama ?? '-',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: MyColorsConst.darkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Departemen : ',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResult[index].mDeptNama ?? '-',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: MyColorsConst.darkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Posisi : ',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResult[index].mPosisiDescKerja ?? '-',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: MyColorsConst.darkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Deskripsi : ',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        TextSpan(
                          text: searchResult[index].desc ?? '-',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: MyColorsConst.darkColor,
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

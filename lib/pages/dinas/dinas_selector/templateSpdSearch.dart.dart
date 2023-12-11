import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_templatespd_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

// Template Spd Selector
class TemplateSpdSearchDelegate extends SearchDelegate<DataTemplateSpd?> {
  TemplateSpdSearchDelegate();

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
    return BlocProvider(
      create: (context) =>
          AddDinasBloc()..add(OnSelectTemplateSpd(page: 1, search: query)),
      child: BlocListener<AddDinasBloc, AddDinasState>(
        listener: (context, state) {},
        child: BlocBuilder<AddDinasBloc, AddDinasState>(
          builder: (context, state) {
            if (state is AddDinasLoading) {
              return Center(child: CircularProgressIndicator());
            }

            if (state is SelectTemplateSpdSuccessInBackground) {
              return ListView.builder(
                itemCount: state.dataTemplateSpd.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.dataTemplateSpd[index].kode ?? '-',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Direktorat: ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        state.dataTemplateSpd[index].mDirNama ??
                                            '-',
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
                                    text: 'Divisi: ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: state.dataTemplateSpd[index]
                                            .mDivisiNama ??
                                        '-',
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
                                    text: 'Departemen: ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: state
                                            .dataTemplateSpd[index].mDeptNama ??
                                        '-',
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
                                    text: 'Posisi: ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: state.dataTemplateSpd[index]
                                            .mPosisiDescKerja ??
                                        '-',
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
                                    text: 'Deskripsi: ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: state.dataTemplateSpd[index].desc ??
                                        '-',
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
                          close(context, state.dataTemplateSpd[index]);
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
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}

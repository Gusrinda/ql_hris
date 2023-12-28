import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_realisasi_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_realisasi_dinas_bloc/add_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/detail_realisasi_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/detail_realisasi_dinas_bloc/detail_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_realisasi_dinas_bloc/list_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class RealisasiDinasPage extends StatefulWidget {
  static const routeName = '/RealisasiDinasPage';
  const RealisasiDinasPage({super.key});

  @override
  State<RealisasiDinasPage> createState() => _RealisasiDinasPageState();
}

class _RealisasiDinasPageState extends State<RealisasiDinasPage> {
  @override
  void initState() {
    super.initState();
    loadData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<ListRealisasiDinasBloc>()
          .add(GetListRealisasiDinas(date: DateTime.now()));
    });
  }

  void loadData() {
    context
        .read<ListRealisasiDinasBloc>()
        .add(GetListRealisasiDinas(date: DateTime.now()));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<ListRealisasiDinasBloc, ListRealisasiDinasState>(
      listener: (context, state) async {
        if (state is ListRealisasiDinasLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListRealisasiDinasSuccessInBackground) {
          LoadingDialog.dismissDialog(context);
        } else if (state is ListRealisasiDinasFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListRealisasiDinasFailedUserExpired) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else if (state is ListRealisasiDinasFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
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
                padding: EdgeInsets.only(left: 5.0.sp),
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
                      width: size.width.sp * 0.5 / 4,
                    ),
                    Expanded(
                      child: Text(
                        "Realisasi Perjalanan Dinas",
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
                child: BlocBuilder<ListRealisasiDinasBloc,
                    ListRealisasiDinasState>(
                  builder: (context, state) {
                    var listRealisasiDinas = context
                        .read<ListRealisasiDinasBloc>()
                        .listRealisasiDinas;

                    return Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bulan",
                                      style: GoogleFonts.poppins(
                                        color: MyColorsConst.darkColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    MonthPicker(
                                      onTap:
                                          (DateTime? months, DateTime? years) {
                                        if (months != null) {
                                          setState(() {
                                            selectedMonth = months;
                                          });
                                          print(
                                              "ini bulan terpilih ${selectedMonth} ${selectedYear}");
                                          DateTime newDate;
                                          if (selectedYear != null) {
                                            newDate = DateTime(
                                                selectedYear!.year,
                                                selectedMonth!.month,
                                                DateTime.now().day);
                                          } else {
                                            newDate = DateTime(
                                                DateTime.now().year,
                                                selectedMonth!.month,
                                                DateTime.now().day);
                                          }

                                          context
                                              .read<ListRealisasiDinasBloc>()
                                              .add(
                                                GetListRealisasiDinas(
                                                  date: newDate,
                                                ),
                                              );
                                        }
                                      },
                                      selectedYear: selectedYear,
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tahun",
                                      style: GoogleFonts.poppins(
                                        color: MyColorsConst.darkColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    YearPickerCustom(
                                      onTap:
                                          (DateTime? years, DateTime? months) {
                                        if (years != null) {
                                          setState(() {
                                            selectedYear = years;
                                          });
                                          print(
                                              "ini tahun yang dipilih ${selectedYear} ${selectedMonth}");

                                          DateTime newDate;
                                          if (selectedMonth != null) {
                                            newDate = DateTime(
                                                selectedYear!.year,
                                                selectedMonth!.month);
                                          } else {
                                            newDate = DateTime(
                                                selectedYear!.year,
                                                DateTime.now().month);
                                          }

                                          context
                                              .read<ListRealisasiDinasBloc>()
                                              .add(
                                                GetListRealisasiDinas(
                                                  date: newDate,
                                                ),
                                              );
                                        }
                                      },
                                      selectedMonth: selectedMonth,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.sp,
                            ),
                            Expanded(
                              child: listRealisasiDinas.isNotEmpty
                                  ? ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: listRealisasiDinas.length,
                                      itemBuilder: (
                                        context,
                                        index,
                                      ) {
                                        var dataRealisasiDinas =
                                            listRealisasiDinas[index];
                                        return ListTile(
                                          subtitle: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      BlocProvider(
                                                    create: (context) =>
                                                        DetailRealisasiDinasBloc(),
                                                    child: DetailRealisasiDinas(
                                                      dataRealisasi:
                                                          dataRealisasiDinas,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Stack(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 7,
                                                      left: 5,
                                                      right: 3),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 15,
                                                      vertical: 15),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    // border: Border.all(color: const Color(0xFFDDDDDD)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.1),
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5)
                                                    ],
                                                    color: MyColorsConst
                                                        .whiteColor,
                                                  ),
                                                  height: 100.sp,
                                                  width: size.width,
                                                  // Container(
                                                  //   padding: EdgeInsets.all(10),
                                                  //   decoration: BoxDecoration(
                                                  //       color: Colors
                                                  //           .green.shade700
                                                  //           .withOpacity(0.2),
                                                  //       shape: BoxShape.circle),
                                                  //   child: Icon(
                                                  //     CupertinoIcons
                                                  //         .doc_chart_fill,
                                                  //     color:
                                                  //         Colors.green.shade700,
                                                  //   ),
                                                  // ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        "${dataRealisasiDinas.nomor ?? '-'}",
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: MyColorsConst
                                                                .darkColor),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Text(
                                                              'Nama',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 3,
                                                            child: Text(
                                                              "${dataRealisasiDinas.creatorName ?? '-'}",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: MyColorsConst
                                                                      .darkColor),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      // Text(
                                                      //   "${dataRealisasiDinas.totalBiayaSelisih ?? '-'}",
                                                      //   style: GoogleFonts.poppins(
                                                      //       fontSize: 12.sp,
                                                      //       fontWeight:
                                                      //           FontWeight.w500,
                                                      //       color: MyColorsConst
                                                      //           .darkColor),
                                                      // ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Text(
                                                              'Tanggal',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 3,
                                                            child: Text(
                                                              "${dataRealisasiDinas.tSpdTglAcaraAwal ?? '-'} - ${dataRealisasiDinas.tSpdTglAcaraAkhir ?? '-'}",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      10.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: MyColorsConst
                                                                      .darkColor),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  right: 0,
                                                  child: Container(
                                                    height: 30,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 6,
                                                        vertical: 3),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(
                                                                10.sp),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                10.sp),
                                                      ),
                                                      color: MyColorsConst
                                                          .primaryColor,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        dataRealisasiDinas
                                                                .status ??
                                                            '-',
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    )
                                  : Center(
                                      child: EmptyStateBuilder(),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return BlocProvider(
                    create: (context) => AddRealisasiDinasBloc(),
                    child: AddRealisasiDinasPage(
                      reloadDataCallback: loadData,
                    ),
                  );
                },
              ),
            );
          },
          backgroundColor: MyColorsConst.primaryLightColor,
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/detail_history_absensi.dart';
import 'package:sj_presensi_mobile/services/model/history_attendance_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "ATTEND NO CHECKOU": {
    "name": "Hadir Tidak Check-Out",
  },
  "WORKING": {
    "name": "Belum Check-Out",
  },
  "ATTEND": {
    "name": "Hadir",
  },
  "NOT ATTEND": {
    "name": "Tidak Hadir",
  },
  "CUTI": {
    "name": "Cuti",
  },
  "CUTI BERSAMA": {
    "name": "Cuti Bersama",
  },
  "HARI LIBUR": {
    "name": "Hari Libur",
  },
};

final Map<String, dynamic> stateDictType = {
  "Hari Kerja": {
    "name": "Hari Kerja",
  },
  "Hari Libur": {
    "name": "Hari Libur",
  },
  "Cuti Bersama": {
    "name": "Cuti Bersama",
  },
};

class HistoryPage extends StatefulWidget {
  static const routeName = '/HistoryPage';
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  String formatDate(String date) {
    if (date == null || date.isEmpty) {
      return "";
    }

    try {
      DateTime dateTime = DateFormat("dd-MM-yyyy").parse(date);
      String formattedDate =
          DateFormat("EEEE, dd MMMM yyyy", "id").format(dateTime);
      return formattedDate;
    } catch (e) {
      print("Error parsing date: $e");
      return "";
    }
  }

  String mapStatusToString(String status) {
    if (stateDict.containsKey(status)) {
      return stateDict[status]['name'];
    } else {
      return 'Tidak Diketahui';
    }
  }

  Color getColorFromStatus(String status) {
    if (stateDict.containsKey(status)) {
      switch (status) {
        case "WORKING":
          return const Color(0xFF0068D4);
        case "NOT ATTEND":
          return const Color(0xFFED1B24);
        case "ATTEND NO CHECKOUT":
          return Colors.green.shade700;
        case "ATTEND":
          return const Color(0xFF0CA356);
        case "CUTI":
          return const Color(0xFFED1B24);
        case "CUTI BERSAMA":
          return Colors.deepOrange.shade700;
        case "HARI LIBUR":
          return Colors.purple.shade800;
        default:
          return Colors.black87; // warna default
      }
    } else {
      return Colors.grey; // warna default
    }
  }

  String mapTypeToString(String status) {
    if (stateDictType.containsKey(status)) {
      return stateDictType[status]['name'];
    } else {
      return 'Tidak Diketahui';
    }
  }

  Color getColorFromType(String type) {
    if (stateDictType.containsKey(type)) {
      switch (type) {
        case "Hari Kerja":
          return const Color(0xFF0CA356);
        case "Hari Libur":
          return const Color(0xFFED1B24);
        case "Cuti Bersama":
          return const Color(0xFF0068D4);
        default:
          return Colors.black87; // warna default
      }
    } else {
      return Colors.grey; // warna default
    }
  }

  DateTime? selectedMonth;
  DateTime? selectedYear;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocListener<HistoryAttendanceBloc, HistoryAttendanceState>(
      listener: (context, state) async {
        // print("LISTEN STATUS SEKARANG ${state}");

        if (state is HistoryAttendanceLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is HistoryAttendanceFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is HistoryFailedUserExpired) {
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
        } else if (state is HistoryFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        // appBar: appBarCustomV1(
        //   title: "History Presensi",
        //   padLeft: 8,
        // ),
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
                      width: size.width * 1 / 5,
                    ),
                    Expanded(
                      child: Text(
                        "Riwayat Presensi",
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
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
                                  onTap: (DateTime? months, DateTime? years) {
                                    if (months != null) {
                                      setState(() {
                                        selectedMonth = months;
                                      });
                                      print(
                                          "ini bulan terpilih ${selectedMonth} ${selectedYear}");
                                      DateTime newDate;
                                      newDate = DateTime(
                                          selectedYear?.year ??
                                              DateTime.now().year,
                                          selectedMonth!.month);

                                      context.read<HistoryAttendanceBloc>().add(
                                            GetAttendancesHistory(
                                              date: newDate,
                                            ),
                                          );
                                    }
                                  },
                                  selectedYear: selectedYear,
                                ),
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
                                  onTap: (DateTime? years, DateTime? months) {
                                    if (years != null) {
                                      setState(() {
                                        selectedYear = years;
                                      });
                                      print(
                                          "ini tahun yang dipilih ${selectedYear} ${selectedMonth}");

                                      DateTime newDate;
                                      if (selectedMonth != null) {
                                        newDate = DateTime(selectedYear!.year,
                                            selectedMonth!.month);
                                      } else {
                                        newDate = DateTime(selectedYear!.year,
                                            DateTime.now().month);
                                      }

                                      context.read<HistoryAttendanceBloc>().add(
                                            GetAttendancesHistory(
                                              date: newDate,
                                            ),
                                          );
                                    }
                                  },
                                  selectedMonth: selectedMonth,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Expanded(
                        child: BlocBuilder<HistoryAttendanceBloc,
                            HistoryAttendanceState>(
                          builder: (context, state) {
                            // Aku butuh data attendance
                            // Data attendace didapat dari BLOC historyAttendance
                            List<DataPresensi>? attendances = context
                                .read<HistoryAttendanceBloc>()
                                .attendances;

                            debugPrint("ATTENDANCE ? ${attendances}");

                            return attendances.isNotEmpty
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: attendances.length,
                                    itemBuilder: (context, index) {
                                      DataPresensi? data = attendances[index];
                                      String currentStatus =
                                          data.status as String;
                                      Color currentColor =
                                          getColorFromStatus(currentStatus);
                                      Color currentColorFromType =
                                          getColorFromType(
                                              data.type.toString());
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.sp),
                                        child: ListTile(
                                          contentPadding: EdgeInsets.zero,
                                          subtitle: GestureDetector(
                                            child: Stack(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 7),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: MyColorsConst
                                                            .darkColor
                                                            .withOpacity(0.2),
                                                        offset: Offset(2, 3.5),
                                                        blurRadius: 7,
                                                      ),
                                                    ],
                                                    color: MyColorsConst
                                                        .whiteColor,
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.sp,
                                                      vertical: 10.sp),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 7,
                                                                vertical: 2),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3),
                                                            color:
                                                                currentColorFromType
                                                                    .withOpacity(
                                                                        0.15)),
                                                        child: Text(
                                                          data.type ?? '-',
                                                          style: GoogleFonts.poppins(
                                                              color:
                                                                  currentColorFromType,
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                      SizedBox(height: 7.sp),
                                                      Text(
                                                        formatDate(
                                                            data.dateToIdn ??
                                                                ''),
                                                        style: GoogleFonts.poppins(
                                                            color: MyColorsConst
                                                                .darkColor,
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 10.sp,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  'In  ',
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    fontSize:
                                                                        12.sp,
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  data.checkinTime ??
                                                                      "-",
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    fontSize:
                                                                        12.sp,
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 4,
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  'Out  ',
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    fontSize:
                                                                        12.sp,
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  data.checkoutTime ??
                                                                      "-",
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),

                                                      // Text.rich(
                                                      //   TextSpan(
                                                      //     text: 'out ',
                                                      //     style: GoogleFonts
                                                      //         .poppins(
                                                      //       fontSize: 12,
                                                      //       color: Color(
                                                      //           0XFF8F8F8F),
                                                      //       fontWeight:
                                                      //           FontWeight.w400,
                                                      //     ),
                                                      //     children: <TextSpan>[
                                                      //       TextSpan(
                                                      //         text: data
                                                      //                     .checkoutTime !=
                                                      //                 null
                                                      //             ? "${data.checkoutTime}"
                                                      //             : "-",
                                                      //         style: GoogleFonts
                                                      //             .poppins(
                                                      //           fontSize: 12,
                                                      //           color: Color(
                                                      //               0XFF8F8F8F),
                                                      //           fontWeight:
                                                      //               FontWeight
                                                      //                   .w700,
                                                      //         ),
                                                      //       ),
                                                      //     ],
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  right: 0,
                                                  child: Container(
                                                    height: 30,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.sp,
                                                            vertical: 3.sp),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(
                                                                7.sp),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                7.sp),
                                                      ),
                                                      color: currentColor,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        mapStatusToString(
                                                            currentStatus),
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailHistoryAbsensiPage(
                                                      data: data,
                                                      status: data.status,
                                                      checkinFoto:
                                                          data.checkinFoto,
                                                      checkoutFoto:
                                                          data.checkoutFoto,
                                                      checkinTime:
                                                          data.checkinTime,
                                                      checkoutTime:
                                                          data.checkoutTime,
                                                      tanggal: data.tanggal
                                                          .toString(),
                                                      checkoutAddress:
                                                          data.checkoutAddress,
                                                      checkinAddress:
                                                          data.checkinAddress,
                                                      checkinOnScope:
                                                          data.checkinOnScope,
                                                      checkoutOnScope:
                                                          data.checkoutOnScope,
                                                    ),
                                                  ));
                                            },
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                : Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/box_nodata.png",
                                          height: size.width * 1 / 2,
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          "Tidak ada data yang ditampilkan!",
                                          style: GoogleFonts.poppins(
                                            color: MyColorsConst.darkColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

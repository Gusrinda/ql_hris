import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/monthYearPicker_custom.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/detail_history_absensi.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "ATTEND NO CHECKOU": {
    "name": "Hadir Tidak Check-Out",
  },
  "WORKING": {
    "name": "Hadir Belum Check-Out",
  },
  "ATTEND": {
    "name": "Hadir",
  },
  "NOT ATTEND": {
    "name": "Tidak Hadir",
  },
  "DAY OFF": {
    "name": "Libur",
  },
};

class HistoryPage extends StatefulWidget {
  static const routeName = '/HistoryPage';
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  String getDayFromDate(String date) {
    DateTime dateTime = DateFormat("dd/MM/yyyy").parse(date);
    String day = DateFormat.EEEE("id").format(dateTime);
    return day;
  }

  String mapStatusToString(String status) {
    if (stateDict.containsKey(status)) {
      return stateDict[status]['name'];
    } else {
      return 'Undefined';
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
          return const Color(0xFF0CA356);
        case "ATTEND":
          return const Color(0xFF0CA356);
        default:
          return Colors.black; // warna default
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
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 5.0),
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
                        "History Presensi",
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
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                  onTap: (DateTime? months, DateTime? years) {
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
                        Expanded(
                          child: BlocBuilder<HistoryAttendanceBloc,
                              HistoryAttendanceState>(
                            builder: (context, state) {
                              // Aku butuh data attendance
                              // Data attendace didapat dari BLOC historyAttendance
                              var attendances = context
                                  .read<HistoryAttendanceBloc>()
                                  .attendances;

                              debugPrint("ATTENDANCE ? ${attendances}");

                              return attendances.isNotEmpty
                                  ? ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: attendances.length,
                                      itemBuilder: (context, index) {
                                        var data = attendances;
                                        String currentStatus =
                                            data[index].status as String;
                                        Color currentColor =
                                            getColorFromStatus(currentStatus);

                                        return ListTile(
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
                                                            6),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.1),
                                                        offset: Offset(0, 0),
                                                        blurRadius: 5,
                                                      ),
                                                    ],
                                                    color: MyColorsConst
                                                        .whiteColor,
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 12.sp,
                                                      vertical: 10.sp),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "${getDayFromDate("${data[index].tanggal}")}, ${data[index].tanggal}",
                                                        style: GoogleFonts.poppins(
                                                            color: MyColorsConst
                                                                .primaryColor,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      SizedBox(
                                                        height: 10.sp,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Text(
                                                              'In ',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.grey,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 3,
                                                            child: Text(
                                                              data[index]
                                                                      .checkinTime ??
                                                                  "-",
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Text(
                                                              'Out',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 10,
                                                                color:
                                                                    Colors.grey,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 3,
                                                            child: Text(
                                                              data[index]
                                                                      .checkoutTime ??
                                                                  "-",
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
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
                                                      //         text: data[index]
                                                      //                     .checkoutTime !=
                                                      //                 null
                                                      //             ? "${data[index].checkoutTime}"
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
                                                            horizontal: 6.sp,
                                                            vertical: 3.sp),
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
                                                      color: currentColor,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        mapStatusToString(
                                                            currentStatus),
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
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailHistoryAbsensiPage(
                                                      data: data,
                                                      status:
                                                          data[index].status,
                                                      checkinFoto: data[index]
                                                          .checkinFoto,
                                                      checkoutFoto: data[index]
                                                          .checkoutFoto,
                                                      checkinTime: data[index]
                                                          .checkinTime,
                                                      checkoutTime: data[index]
                                                          .checkoutTime,
                                                      tanggal:
                                                          data[index].tanggal,
                                                      checkoutAddress:
                                                          data[index]
                                                              .checkoutAddress,
                                                      checkinAddress:
                                                          data[index]
                                                              .checkinAddress,
                                                      checkinOnScope:
                                                          data[index]
                                                              .checkinOnScope,
                                                      checkoutOnScope:
                                                          data[index]
                                                              .checkoutOnScope,
                                                    ),
                                                  ));
                                            },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

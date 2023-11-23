import 'package:flutter/material.dart';
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
  "WORKING": {
    "name": "Hadir Tidak Check Out",
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
          return Color(0XFF0068D4);
        case "NOT ATTEND":
          return Color(0XFFED1B24);
        case "ATTEND NO CHECKOUT":
          return Color(0XFF0CA356);
        case "ATTEND":
          return Color(0XFF0CA356);
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
      child: SafeArea(
        child: Scaffold(
          appBar: appBarCustomV1(
            title: "History Presensi",
            padLeft: 8,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bulan",
                          style: TextStyle(
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
                                newDate = DateTime(selectedYear!.year,
                                    selectedMonth!.month, DateTime.now().day);
                              } else {
                                newDate = DateTime(DateTime.now().year,
                                    selectedMonth!.month, DateTime.now().day);
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
                        const Text(
                          "Tahun",
                          style: TextStyle(
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
                                newDate = DateTime(
                                    selectedYear!.year, selectedMonth!.month);
                              } else {
                                newDate = DateTime(
                                    selectedYear!.year, DateTime.now().month);
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
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<HistoryAttendanceBloc,
                      HistoryAttendanceState>(
                    builder: (context, state) {
                      // Aku butuh data attendance
                      // Data attendace didapat dari BLOC historyAttendance
                      var attendances =
                          context.read<HistoryAttendanceBloc>().attendances;

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
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 7),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                              color: Color(0xFFDDDDDD)),
                                          color: MyColorsConst.whiteColor,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "${getDayFromDate("${data[index].tanggal}")}, ${data[index].tanggal}",
                                                  style: const TextStyle(
                                                      color: MyColorsConst
                                                          .darkColor,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 6,
                                                      vertical: 3),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: currentColor
                                                        .withOpacity(0.1),
                                                  ),
                                                  child: Text(
                                                    mapStatusToString(
                                                        data[index].status
                                                            as String),
                                                    style: TextStyle(
                                                      color: currentColor,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Text.rich(
                                                  TextSpan(
                                                    text: 'in ',
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0XFF8F8F8F),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: data[index]
                                                                    .checkinTime !=
                                                                null
                                                            ? "${data[index].checkinTime}"
                                                            : "-",
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0XFF8F8F8F),
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Spacer(),
                                                Text.rich(
                                                  TextSpan(
                                                    text: 'out ',
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0XFF8F8F8F),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: data[index]
                                                                    .checkoutTime !=
                                                                null
                                                            ? "${data[index].checkoutTime}"
                                                            : "-",
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0XFF8F8F8F),
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailHistoryAbsensiPage(
                                                data: data,
                                                status: data[index].status,
                                                checkinFoto:
                                                    data[index].checkinFoto,
                                                checkoutFoto:
                                                    data[index].checkoutFoto,
                                                checkinTime:
                                                    data[index].checkinTime,
                                                checkoutTime:
                                                    data[index].checkoutTime,
                                                tanggal: data[index].tanggal,
                                                checkoutAddress:
                                                    data[index].checkoutAddress,
                                                checkinAddress:
                                                    data[index].checkinAddress,
                                                checkinOnScope:
                                                    data[index].checkinOnScope,
                                                checkoutOnScope:
                                                    data[index].checkoutOnScope,
                                              ),
                                            ));
                                      },
                                    ));
                              },
                            )
                          : Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/box_nodata.png",
                                    height: size.width * 1 / 2,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    "Tidak ada data yang ditampilkan!",
                                    style: TextStyle(
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
    );
  }
}

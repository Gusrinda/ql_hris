import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/monthpicker_custom.dart';
import 'package:sj_presensi_mobile/componens/yearpicker_custom.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/detail_history_absensi.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

final Map<String, dynamic> stateDict = {
  "ATTEND NO CHECKOUT": {
    "name": "Hadir Tidak Check Out",
  },
  "ATTEND": {
    "name": "Hadir",
  },
  "WORKING": {
    "name": "Bekerja",
  },
  "NOT ATTEND": {
    "name": "Tidak Hadir",
  },
  "DAY OFF": {
    "name": "Libur",
  },
};

class HistoryPage extends StatelessWidget {
  static const routeName = '/HistoryPage';
  const HistoryPage({super.key});
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
          return Colors.blue;
        case "NOT ATTEND":
          return Colors.red;
        case "ATTEND NO CHECKOUT":
          return Colors.green;
        case "ATTEND":
          return Colors.green;
        default:
          return Colors.black; // warna default
      }
    } else {
      return Colors.black; // warna default
    }
  }

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
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        MonthPicker(
                          onTap: (bool? sortState) {
                            print('Sort state: $sortState');
                          },
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tahun",
                          style: TextStyle(
                            color: MyColorsConst.darkColor,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        YearPickerCustom(
                          onTap: (bool? sortState) {
                            print('Sort state: $sortState');
                          },
                        )
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
                                            const EdgeInsets.only(bottom: 20),
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
                                                  style: TextStyle(
                                                      color: MyColorsConst
                                                          .darkColor,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Spacer(),
                                                Container(
                                                  padding: EdgeInsets.all(4),
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
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  data[index].checkinTime !=
                                                          null
                                                      ? "in ${data[index].checkinTime}"
                                                      : "in -",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: MyColorsConst
                                                        .lightDarkColor,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  data[index].checkoutTime !=
                                                          null
                                                      ? "out ${data[index].checkoutTime}"
                                                      : "out -",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: MyColorsConst
                                                        .lightDarkColor,
                                                    fontWeight: FontWeight.w400,
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
                                  Lottie.asset(
                                    "assets/lotties/json/lottie_nodata.json",
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

  // Widget buildCard({
  //   required Key key,
  //   required date,
  //   required state,
  //   Datum? dataAbsensi,
  //   String? url,
  //   DateTime? datetime,
  //   bool? onSite,
  //   bool checkIn = true,
  //   VoidCallback? onTap,
  // }) {
  //   var stateDict = {
  //     "attend_no_checkout": {
  //       "name": "Tidak Check Out",
  //     },
  //     "attend": {
  //       "name": "Hadir",
  //     },
  //     "working": {
  //       "name": "Bekerja",
  //     },
  //     "absent": {
  //       "name": "Tidak Hadir",
  //     },
  //     "day_off": {
  //       "name": "Libur",
  //     },
  //   };
  //   return GestureDetector(
  //     onTap: onTap,
  //     child: Container(
  //       key: key,
  //       margin: const EdgeInsets.only(bottom: 20),
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(6),
  //         border: Border.all(color: Color(0xFFDDDDDD)),
  //         color: MyColorsConst.whiteColor,
  //       ),
  //       padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
  //       child: Column(
  //         children: [
  //           SizedBox(
  //             height: 10,
  //           ),
  //           Row(
  //             mainAxisSize: MainAxisSize.max,
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text(
  //                 DateFormat('EEEE, dd/MM/yyyy', 'id_ID').format(date),
  //                 style: const TextStyle(
  //                   color: Colors.black,
  //                   fontSize: 14,
  //                   fontWeight: FontWeight.w500,
  //                 ),
  //               ),
  //               Text(
  //                 stateDict[state]!["name"] as String,
  //                 style: const TextStyle(
  //                   color: Colors.black,
  //                   fontSize: 12,
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //               ),
  //             ],
  //           ),
  //           Row(
  //             mainAxisSize: MainAxisSize.max,
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               buildSubCard(
  //                 checkIn: true,
  //                 datetime: dataAbsensi?.checkinTime != null
  //                     ? DateFormat("dd/MM/yyyy")
  //                         .parse(dataAbsensi?.checkinTime ?? '01/01/2023')
  //                     : null,
  //               ),
  //               buildSubCard(
  //                 checkIn: false,
  //                 datetime: dataAbsensi?.checkoutTime != null
  //                     ? DateFormat("dd/MM/yyyy")
  //                         .parse(dataAbsensi?.checkoutTime ?? '01/01/2023')
  //                     : null,
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Padding buildSubCard({
  //   required DateTime? datetime,
  //   bool checkIn = true,
  // }) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(vertical: 10),
  //     child: Row(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Text(
  //           checkIn ? "In " : "Out ",
  //           style: TextStyle(
  // fontSize: 12,
  // color: MyColorsConst.lightDarkColor,
  // fontWeight: FontWeight.w400,
  //           ),
  //         ),
  //         Text(
  //           datetime != null ? DateFormat('HH:mm:ss').format(datetime) : "-",
  //           style: TextStyle(
  //             fontSize: 12,
  //             color: Color(0xFF969696),
  //             fontWeight: FontWeight.w600,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/monthpicker_custom.dart';
import 'package:sj_presensi_mobile/componens/yearpicker_custom.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';
// import 'package:sj_presensi_mobile/pages/home/history/detail_hitory_absensi.dart';
import 'package:sj_presensi_mobile/services/model/history_attendance_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class HistoryPage extends StatelessWidget {
  static const routeName = '/HistoryPage';
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    String convertDateFormat(String inputFormat) {
      final parts = inputFormat.split('/');
      final day = parts[0].padLeft(2, '0');
      final month = parts[1].padLeft(2, '0');
      final year = parts[2];
      return '$year-$month-$day';
    }

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
                                if (data != null && data.isNotEmpty) {
                                  return ListTile(
                                      subtitle: Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border:
                                          Border.all(color: Color(0xFFDDDDDD)),
                                      color: MyColorsConst.whiteColor,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "${convertDateFormat(data[index].tanggal!)}",
                                              style: TextStyle(
                                                  color:
                                                      MyColorsConst.darkColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "in ${data[index].checkinTime}",
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: MyColorsConst
                                                    .primaryColor
                                                    .withOpacity(0.1),
                                              ),
                                              child: Text(
                                                "${data[index].status}",
                                                style: TextStyle(
                                                  color: MyColorsConst
                                                      .primaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "in ${data[index].checkoutTime}",
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                      // Text(
                                      //     "Check In : ${data[index].checkinTime}"),
                                      // Text(
                                      //
                                      );
                                  // return buildCard(
                                  //   key: Key("${data[index].id}"),
                                  //   date: DateFormat("dd/MM/yyyy").parse(
                                  //       data[index].tanggal ?? '01/01/2023'),
                                  //   state: data[index].status,
                                  //   dataAbsensi: data[index],
                                  //   // dataCheckIn:
                                  //   //     data.length > 0 ? data[0] : null,
                                  //   // dataCheckOut:
                                  //   //     data.length > 1 ? data[1] : null,
                                  //   onTap: () {
                                  //     Navigator.push(
                                  //       context,
                                  //       MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             const DetailHistoryAbsensiPage(),
                                  //       ),
                                  //     );
                                  //   },
                                  // );
                                } else {
                                  return Container(); // Atau widget lainnya jika tidak ada data
                                }
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

  Widget buildCard({
    required Key key,
    required date,
    required state,
    Datum? dataAbsensi,
    String? url,
    DateTime? datetime,
    bool? onSite,
    bool checkIn = true,
    VoidCallback? onTap,
  }) {
    var stateDict = {
      "attend_no_checkout": {
        "name": "Tidak Check Out",
      },
      "attend": {
        "name": "Hadir",
      },
      "working": {
        "name": "Bekerja",
      },
      "absent": {
        "name": "Tidak Hadir",
      },
      "day_off": {
        "name": "Libur",
      },
    };
    return GestureDetector(
      onTap: onTap,
      child: Container(
        key: key,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Color(0xFFDDDDDD)),
          color: MyColorsConst.whiteColor,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('EEEE, dd/MM/yyyy', 'id_ID').format(date),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  stateDict[state]!["name"] as String,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSubCard(
                  checkIn: true,
                  datetime: dataAbsensi?.checkinTime != null
                      ? DateFormat("dd/MM/yyyy")
                          .parse(dataAbsensi?.checkinTime ?? '01/01/2023')
                      : null,
                ),
                buildSubCard(
                  checkIn: false,
                  datetime: dataAbsensi?.checkoutTime != null
                      ? DateFormat("dd/MM/yyyy")
                          .parse(dataAbsensi?.checkoutTime ?? '01/01/2023')
                      : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildSubCard({
    required DateTime? datetime,
    bool checkIn = true,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            checkIn ? "In " : "Out ",
            style: TextStyle(
              fontSize: 12,
              color: MyColorsConst.lightDarkColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            datetime != null ? DateFormat('HH:mm:ss').format(datetime) : "-",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF969696),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
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
import 'package:sj_presensi_mobile/pages/home/history/detail_hitory_absensi.dart';
import 'package:sj_presensi_mobile/services/model/history_attendance_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class HistoryPage extends StatelessWidget {
  static const routeName = '/HistoryPage';
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<HistoryAttendanceBloc, HistoryAttendanceState>(
      listener: (context, state) async {
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
                      var attendances =
                          context.read<HistoryAttendanceBloc>().attendances;
                      return attendances.isNotEmpty
                          ? ListView.builder(
                              shrinkWrap: true,
                              itemCount: attendances.length,
                              itemBuilder: (context, index) {
                                return Container(); 
                                  
                                }
                              //   var data = attendances.data;
                              //   if (data != null && data.isNotEmpty) {
                              //     return buildCard(
                              //       key: Key("${data[index].id}"),
                              //       date: data[index].tanggal,
                              //       state: data[index].status,
                              //       dataCheckIn:
                              //           data.length > 0 ? data[0] : null,
                              //       dataCheckOut:
                              //           data.length > 1 ? data[1] : null,
                              //       onTap: () {
                              //         Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //             builder: (context) =>
                              //                 const DetailHistoryAbsensiPage(),
                              //           ),
                              //         );
                              //       },
                              //     );
                              //   } else {
                              //     return Container(); // Atau widget lainnya jika tidak ada data
                              //   }
                              // },
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
    Datum? dataCheckIn,
    Datum? dataCheckOut,
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
                  datetime: dataCheckIn != null
                      ? DateTime.parse(dataCheckIn.checkinTime!)
                      : null,
                ),
                buildSubCard(
                  checkIn: false,
                  datetime: dataCheckOut != null
                      ? DateTime.parse(dataCheckOut.checkoutTime!)
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

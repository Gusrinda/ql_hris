import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/add_check_in_out_page.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/history_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class HomeCheckInOutPage extends StatelessWidget {
  // static const routeName = 'HomeCheckInOutPage';
  const HomeCheckInOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<CheckInOutBloc, CheckInOutState>(
      listener: (context, state) async {
        if (state is CheckInOutLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is InfoCheckInOutSuccessInBackground) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => const DialogCustom(
              state: DialogCustomItem.info,
              message: "Anda sudah melakukan presensi hari ini!",
            ),
          );
        } else if (state is CheckInOutFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is CheckInOutFailedUserExpired) {
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
        } else if (state is CheckInOutFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: SafeArea(
        child: BlocBuilder<CheckInOutBloc, CheckInOutState>(
          builder: (context, state) {
            String? name;
            if (state is InfoCheckInOutSuccessInBackground) {
              name = state.name;
            } else if (state is CheckInOutSuccessInBackground) {
              name = state.name;
            }
            return Scaffold(
              backgroundColor: MyColorsConst.whiteColor,
              appBar: appBarCustomMain(
                title: "Selamat Datang, ${name ?? "Employe"}!",
                // padLeft: 10,
                actions: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: IconButton(
                      splashRadius: 25,
                      iconSize: 20,
                      icon: const Icon(Icons.notifications_active),
                      onPressed: () async {},
                    ),
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => HistoryAttendanceBloc()
                          ..add(
                            GetAttendancesHistory(
                              date: DateTime.now(),
                            ),
                          ),
                        child: const HistoryPage(),
                      ),
                    ),
                  );
                },
                backgroundColor: MyColorsConst.primaryLightColor,
                child: const Icon(
                  Icons.pending_actions_rounded,
                  size: 32,
                ),
              ),
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Yuk isi absensimu!",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      BlocBuilder<CheckInOutBloc, CheckInOutState>(
                        builder: (context, state) {
                          return buttonCheckInOut(
                            size: size,
                            iconPath: "assets/images/check_in_door.png",
                            title: "Check In",
                            color: MyColorsConst.whiteColor,
                            enable: state is CheckInOutSuccessInBackground
                                ? state.isCheckin
                                : false,
                            onPressed: () async {
                              await Navigator.of(context).pushNamed(
                                AddCheckInOutPage.routeName,
                                arguments: ProcessCheckInOutPageState.checkin,
                              );
                              context
                                  .read<CheckInOutBloc>()
                                  .add(AttendanceStateChecked());
                            },
                          );
                        },
                      ),
                      BlocBuilder<CheckInOutBloc, CheckInOutState>(
                        builder: (context, state) {
                          return buttonCheckInOut(
                            size: size,
                            iconPath: "assets/images/check_out_door.png",
                            title: "Check Out",
                            color: MyColorsConst.whiteColor,
                            enable: state is CheckInOutSuccessInBackground
                                ? !state.isCheckin
                                : false,
                            onPressed: () async {
                              await Navigator.of(context).pushNamed(
                                AddCheckInOutPage.routeName,
                                arguments: ProcessCheckInOutPageState.checkout,
                              );
                              context
                                  .read<CheckInOutBloc>()
                                  .add(AttendanceStateChecked());
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buttonCheckInOut({
    size,
    iconPath,
    title,
    color,
    enable,
    required VoidCallback onPressed,
  }) {
    return Column(
      children: [
        Container(
          width: size.width * 1 / 2,
          height: size.width * 1 / 2,
          child: ElevatedButton(
            onPressed: enable ? onPressed : null,
            style: OutlinedButton.styleFrom(
              elevation: enable ? 5 : 0,
              backgroundColor: enable ? color : Colors.grey.shade200,
              foregroundColor: enable ? MyColorsConst.greenColor : MyColorsConst.redColor,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide.none,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    enable ? iconPath : "assets/images/closed_door.png",
                    width: size.width / 3,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: enable ? MyColorsConst.darkColor : Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



// ElevatedButton(
//             onPressed: onPress,
//             child: Text(
//               title,
//               style: const TextStyle(
//                 color: MyColorsConst.whiteColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//           Container(
//             width: size.width * 3 / 6 + 15,
//             height: size.width * 1 / 5,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: enable ? color : MyColorsConst.disableColor,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Text(
//               title,
//               style: const TextStyle(
//                 color: MyColorsConst.whiteColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//           ),
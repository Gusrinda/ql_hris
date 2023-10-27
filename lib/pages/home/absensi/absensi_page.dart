import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/componens/appar_custom_main.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/home_check_in_out_page.dart';
import 'package:sj_presensi_mobile/pages/home/cubit/home_cubit.dart';
import 'package:sj_presensi_mobile/pages/home/history/bloc/history_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/history_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AbsensiPage extends StatefulWidget {
  const AbsensiPage({super.key});

  @override
  State<AbsensiPage> createState() => _AbsensiPageState();
}

class _AbsensiPageState extends State<AbsensiPage> {
  bool isLeftSelected = true;

  void toggleButton(bool isLeft) {
    setState(() {
      isLeftSelected = isLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustomMain(
        // title: "Selamat Datang, ${name ?? "-"}!",
        title: "Selamat Datang, Trial!",
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
      body: BlocBuilder<HomeNavigationCubit, HomeNavigationState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () => toggleButton(true),
                    child: Text('Absensi'),
                    style: isLeftSelected
                        ? TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: MyColorsConst.primaryColor,
                            elevation: 0,
                            fixedSize: Size.fromWidth(
                                MediaQuery.of(context).size.width * 0.4),
                            side: BorderSide(
                                width: 2, color: MyColorsConst.primaryColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                              ),
                            ),
                          )
                        : TextButton.styleFrom(
                            foregroundColor: MyColorsConst.primaryColor,
                            backgroundColor: Colors.white,
                            elevation: 0,
                            fixedSize: Size.fromWidth(
                                MediaQuery.of(context).size.width * 0.4),
                            side: BorderSide(
                                width: 2, color: MyColorsConst.primaryColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                              ),
                            ),
                          ),
                  ),
                  TextButton(
                    onPressed: () => toggleButton(false),
                    child: Text('Riwayat'),
                    style: isLeftSelected
                        ? TextButton.styleFrom(
                            foregroundColor: MyColorsConst.primaryColor,
                            backgroundColor: Colors.white,
                            elevation: 0,
                            fixedSize: Size.fromWidth(
                                MediaQuery.of(context).size.width * 0.4),
                            side: BorderSide(
                                width: 2, color: MyColorsConst.primaryColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                            ),
                          )
                        : TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: MyColorsConst.primaryColor,
                            elevation: 0,
                            fixedSize: Size.fromWidth(
                                MediaQuery.of(context).size.width * 0.4),
                            side: BorderSide(
                                width: 2, color: MyColorsConst.primaryColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: BlocBuilder<HomeNavigationCubit, HomeNavigationState>(
                    builder: (context, state) {
                      return isLeftSelected == true
                          ? BlocProvider(
                              create: (context) => CheckInOutBloc()
                                ..add(AttendanceStateChecked()),
                              child: const HomeCheckInOutPage(),
                            )
                          : BlocProvider(
                              create: (context) => HistoryBloc()
                                ..add(
                                  GetAttendancesHistory(
                                    date: DateTime.now(),
                                  ),
                                ),
                              child: const HistoryPage(),
                            );
                    },
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

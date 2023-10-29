import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/cuti_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
import 'package:sj_presensi_mobile/pages/home/absensi/absensi_page.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/home_check_in_out_page.dart';
import 'package:sj_presensi_mobile/pages/home/cubit/home_cubit.dart';
import 'package:sj_presensi_mobile/pages/home/history/bloc/history_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/profile_page.dart';
import 'package:sj_presensi_mobile/pages/home/report/bloc/reports_history_bloc.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BlocBuilder<HomeNavigationCubit, HomeNavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.index,
            backgroundColor: MyColorsConst.whiteColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: MyColorsConst.primaryColor,
            unselectedItemColor: MyColorsConst.lightDarkColor,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 7,
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 7,
            ),
            iconSize: 21,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.assignment,
                ),
                label: "Absensi",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_time_filled,
                ),
                label: "Lembur",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.directions_car,
                ),
                label: "Perjalanan Dinas",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.article,
                ),
                label: "Pengajuan Cuti",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile",
              ),
            ],
            onTap: (index) {
              var provider = BlocProvider.of<HomeNavigationCubit>(context);
              switch (index) {
                case 0:
                  provider.getNavBarItem(HomeNavBarItem.home);
                  // provider.getNavBarItem(HomeNavBarItem.absensi);
                  break;
                case 1:
                  provider.getNavBarItem(HomeNavBarItem.lembur);
                  break;
                case 2:
                  provider.getNavBarItem(HomeNavBarItem.dinas);
                  break;
                case 3:
                  provider.getNavBarItem(HomeNavBarItem.cuti);
                  break;
                case 4:
                  provider.getNavBarItem(HomeNavBarItem.profile);
                  break;
              }
            },
          );
        },
      ),
      body: BlocBuilder<HomeNavigationCubit, HomeNavigationState>(
        builder: (context, state) {
          if (state.navbarItem == HomeNavBarItem.home) {
            return BlocProvider(
              create: (context) =>
                  CheckInOutBloc()..add(AttendanceStateChecked()),
              child: const HomeCheckInOutPage(),
            );
          } 
           else if (state.navbarItem == HomeNavBarItem.lembur) {
            return BlocProvider(
              create: (context) => HistoryBloc()
                ..add(
                  GetAttendancesHistory(
                    date: DateTime.now(),
                  ),
                ),
              child: const LemburPage(),
            );
          } else if (state.navbarItem == HomeNavBarItem.dinas) {
            return BlocProvider(
              create: (context) => ReportsHistoryBloc()
                ..add(
                  GetReportsHistory(
                    date: DateTime.now(),
                  ),
                ),
              child: DinasPage(),
            );
          } else if (state.navbarItem == HomeNavBarItem.cuti) {
            return CutiPage();
          } else if (state.navbarItem == HomeNavBarItem.profile) {
            return BlocProvider(
              create: (context) => ProfileBloc()..add(GetDataProfile()),
              child: ProfilePage(),
            );
          }
          return Container();
        },
      ),
    );
  }
}

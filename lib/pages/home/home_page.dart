import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/home_check_in_out_page.dart';
import 'package:ql_absensi_express_mobile/pages/home/cubit/home_cubit.dart';
import 'package:ql_absensi_express_mobile/pages/home/history/bloc/history_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/history/history_page.dart';
import 'package:ql_absensi_express_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/profile/profile_page.dart';
import 'package:ql_absensi_express_mobile/pages/home/report/bloc/reports_history_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/home/report/reports_history_page.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BlocBuilder<HomeNavigationCubit, HomeNavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            showUnselectedLabels: false,
            selectedItemColor: MyColorsConst.primaryColor,
            unselectedItemColor: MyColorsConst.lightDarkColor,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.history_edu_rounded,
                ),
                label: "History",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.task_rounded,
                ),
                label: "Report",
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
                  break;
                case 1:
                  provider.getNavBarItem(HomeNavBarItem.history);
                  break;
                case 2:
                  provider.getNavBarItem(HomeNavBarItem.reports);
                  break;
                case 3:
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
        } else if (state.navbarItem == HomeNavBarItem.history) {
          return BlocProvider(
            create: (context) => HistoryBloc()
              ..add(
                GetAttendancesHistory(
                  date: DateTime.now(),
                ),
              ),
            child: const HistoryPage(),
          );
        } else if (state.navbarItem == HomeNavBarItem.reports) {
          return BlocProvider(
            create: (context) => ReportsHistoryBloc()
              ..add(
                GetReportsHistory(
                  date: DateTime.now(),
                ),
              ),
            child: ReportsHistoryPage(),
          );
        } else if (state.navbarItem == HomeNavBarItem.profile) {
          return BlocProvider(
            create: (context) => ProfileBloc()..add(GetDataProfile()),
            child: ProfilePage(),
          );
        }
        return Container();
      }),
    );
  }
}

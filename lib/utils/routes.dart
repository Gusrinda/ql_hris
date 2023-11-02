import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/bloc/login_bloc.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/add_check_in_out_page.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/bloc/add_check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/bloc/location_acio_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/bloc/time_acio_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/location.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/time.dart';
import 'package:sj_presensi_mobile/pages/home/cubit/home_cubit.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/detail_history_absensi.dart';
import 'package:sj_presensi_mobile/pages/home/history/history_page.dart';
import 'package:sj_presensi_mobile/pages/home/home_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/change_password_page.dart';
import 'package:sj_presensi_mobile/pages/home/report/add/add_report_page.dart';
import 'package:sj_presensi_mobile/pages/home/report/add/bloc/add_report_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/report/report_detail_page.dart';
import 'package:sj_presensi_mobile/pages/splash/splash_page.dart';
import 'package:sj_presensi_mobile/services/model/report_detail_page_model.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      // case LoginScreen.routeName:
      //   return MaterialPageRoute(builder: (context) {
      //     CustomProgressDialog.context = context;
      //     return LoginScreen();
      //   });
      case SplashPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return const SplashPage();
        });
      case LoginPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => LoginBloc()..add(LoginChecked()),
            child: LoginPage(),
          );
        });
      case HomePage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider<HomeNavigationCubit>(
            create: (context) => HomeNavigationCubit(HomeNavBarItem.home),
            child: const HomePage(),
          );
        });
      case ChangePasswordPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ProfileBloc(),
            child: ChangePasswordPage(),
          );
        });
      // case ProfilePage.routeName:
      //   return MaterialPageRoute(builder: (context) {
      //     return ProfilePage();
      //   });
      case HistoryPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => HistoryAttendanceBloc(),
            child: const HistoryPage(),
          );
        });
      case DetailHistoryAbsensiPage.routeName:
      final data = settings.arguments as DetailHistoryAbsensiPage;
        return MaterialPageRoute(builder: (context) {
            return DetailHistoryAbsensiPage(data: data.data);
        });
      case AddCheckInOutPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<TimeAcioBloc>(
                create: (context) =>
                    TimeAcioBloc(MyTimer())..add(StartDateTimeTimeAcio()),
              ),
              BlocProvider<LocationAcioBloc>(
                create: (context) => LocationAcioBloc(MyLocation())
                  ..add(StartLocationTrackingLocationAcio()),
              ),
              BlocProvider<AddCheckInOutBloc>(
                create: (context) => AddCheckInOutBloc(),
              ),
            ],
            child: AddCheckInOutPage(
                formState: args as ProcessCheckInOutPageState),
          );
        });
      case ReportDetailPage.routeName:
        final args = settings.arguments as ReportDetailPageModel;
        return MaterialPageRoute(builder: (context) {
          return ReportDetailPage(
            title: args.title,
            reportModel: args.data,
          );
        });
      case AddReportPage.routeName:
        final state = settings.arguments as bool;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddReportBloc()..add(GetLastReport()),
            child: AddReportPage(
              isMorningReport: state,
            ),
          );
        });
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Route Error'),
        ),
        body: const Center(
          child: Text('Route Error'),
        ),
      );
    });
  }
}
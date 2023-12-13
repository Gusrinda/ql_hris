import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/bloc/login_bloc.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/add_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/dashboard_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/detail_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/edit_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/listCutiBloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/dashboard_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/detail_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/edit_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_dinas_bloc/list_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/add_check_in_out_page.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/bloc/add_check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/bloc/location_acio_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/bloc/time_acio_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/location.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/time.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/bloc/check_in_out_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/dashboard.view.dart';
import 'package:sj_presensi_mobile/pages/home/history/attendance_history/history_attendance_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/history/detail_history_absensi.dart';
import 'package:sj_presensi_mobile/pages/home/history/history_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/add_bahasa.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/data_bahasa_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/view_edit_bahasa.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/bloc/biodata_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/data_diri_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/edit_data_diri.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/add_keluarga.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/data_keluarga_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/view_edit_keluarga.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/add_organisasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/data_organisasi_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/view_edit_organisasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/add_pelatihan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/data_pelatihan_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/view_edit_pelatihan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/add_pendidikan.bloc/add_data_pendidikan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/add_pendidikan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/data_pendidikan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/view_edit-pendidikan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/add_pengalaman.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/data_pengalaman_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/view_edit_pengalaman.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/add_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/data_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/view_edit_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/password_change.dart';
import 'package:sj_presensi_mobile/pages/home/report/add/add_report_page.dart';
import 'package:sj_presensi_mobile/pages/home/report/add/bloc/add_report_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/report/report_detail_page.dart';
import 'package:sj_presensi_mobile/pages/lembur/detail_lembur.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_bloc/notifikasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_page.dart';
import 'package:sj_presensi_mobile/pages/splash/splash_page.dart';
import 'package:sj_presensi_mobile/services/model/report_detail_page_model.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_biodata_karyawan.dart';

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
      case DashboardView.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) =>
                CheckInOutBloc()..add(AttendanceStateChecked()),
            child: DashboardView(),
          );
        });
      // case HomePage.routeName:
      //   return MaterialPageRoute(builder: (context) {
      //     return BlocProvider<HomeNavigationCubit>(
      //       create: (context) => HomeNavigationCubit(HomeNavBarItem.home),
      //       child: const HomePage(),
      //     );
      //   });
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
      case NotifikasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => NotifikasiBloc(),
            child: const NotifikasiPage(),
          );
        });
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
      case DetailLemburPage.routeName:
        final data = settings.arguments as DetailLemburPage;
        return MaterialPageRoute(builder: (context) {
          return DetailLemburPage(data: data.data);
        });
      case DashboardCutiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return DashboardCutiPage();
        });
      case DetailCutiPage.routeName:
        final data = settings.arguments as DetailCutiPage;
        return MaterialPageRoute(builder: (context) {
          return DetailCutiPage(
            reloadDataCallback: () {},
            data: data.data,
          );
        });
      case AddCutiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddCutiBloc(),
            child: AddCutiPage(
              reloadDataCallback: () {
                context
                    .read<ListCutiBloc>()
                    .add(GetListCuti(date: DateTime.now()));
              },
            ),
          );
        });
      case EditCutiPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final cutiId = arguments['cutiId'] as int;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddCutiBloc(),
            child: EditCutiPage(
              cutiId: cutiId,
              reloadDataCallback: () {
                context
                    .read<ListCutiBloc>()
                    .add(GetListCuti(date: DateTime.now()));
              },
            ),
          );
        });
      case DashboardDinasPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return const DashboardDinasPage();
        });
      case AddDinasPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddDinasBloc(),
            child: AddDinasPage(
              reloadDataCallback: () {
                context
                    .read<ListDinasBloc>()
                    .add(GetListDinas(date: DateTime.now()));
              },
            ),
          );
        });
      case DetailDinasPage.routeName:
        final data = settings.arguments as DetailDinasPage;
        return MaterialPageRoute(builder: (context) {
          return DetailDinasPage(
            data: data.data,
            reloadDataCallback: () {},
          );
        });
      case EditDinasPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final dinasId = arguments['dinasId'] as int;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddCutiBloc(),
            child: EditDinasPage(
              dinasId: dinasId,
              reloadDataCallback: () {
                context
                    .read<ListDinasBloc>()
                    .add(GetListDinas(date: DateTime.now()));
              },
            ),
          );
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
      case DataDiriPage.routeName:
        final bioData = settings.arguments as Biodata?;
        return MaterialPageRoute(builder: (context) {
          return DataDiriPage(bioData: bioData!);
        });
      case EditDataDiriPage.routeName:
        final bioData = settings.arguments as Biodata?;
        return MaterialPageRoute(builder: (context) {
          return EditDataDiriPage(bioData: bioData!);
        });
      case DataBahasaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return DataBahasaPage();
        });
      case ViewEditBahasaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return ViewEditBahasaPage();
        });
      case AddBahasaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return AddBahasaPage();
        });
      case DataKeluargaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return DataKeluargaPage();
        });
      case ViewEditKeluargaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return ViewEditKeluargaPage();
        });
      case AddKeluargaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return AddKeluargaPage();
        });
      case DataOrganisasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return DataOrganisasiPage();
        });
      case ViewEditOrganisasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return ViewEditOrganisasiPage();
        });
      case AddOrganisasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return AddOrganisasiPage();
        });
      case DataPelatihanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return DataPelatihanPage();
        });
      case ViewEditPelatihanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return ViewEditPelatihanPage();
        });
      case AddPelatihanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return AddPelatihanPage();
        });
      case DataPendidikanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return DataPendidikanPage();
        });
      case AddPendidikanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddDataPendidikanBloc(),
            child: AddPendidikanPage(),
          );
        });
      case ViewEditPendidikanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return ViewEditPendidikanPage();
        });
      case DataPengalamanKerjaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return DataPengalamanKerjaPage();
        });
      case ViewEditPengalamanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return ViewEditPengalamanPage();
        });
      case AddPengalamanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return AddPengalamanPage();
        });
      case DataPrestasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return DataPrestasiPage();
        });
      case ViewEditPrestasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return ViewEditPrestasiPage();
        });
      case AddPrestasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return AddPrestasiPage();
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
          title: Text('Route Error'),
        ),
        body: const Center(
          child: Text('Route Error'),
        ),
      );
    });
  }
}

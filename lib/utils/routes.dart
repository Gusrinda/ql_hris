import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/approval/approval.view.dart';
import 'package:sj_presensi_mobile/pages/approval/bloc/approval_bloc.dart';
import 'package:sj_presensi_mobile/pages/approval/detail_approval.view.dart';
import 'package:sj_presensi_mobile/pages/authentication/check_version/check_version_bloc.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/bloc/login_bloc.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/birthday/birthday.view.dart';
import 'package:sj_presensi_mobile/pages/cuti/addCutiBloc/add_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/cuti/add_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/detail_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/edit_cuti.dart';
import 'package:sj_presensi_mobile/pages/cuti/listCutiBloc/list_cuti_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_realisasi_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_realisasi_dinas_bloc/add_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/dashboard_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/detail_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/detail_realisasi_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/edit_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/edit_realisasi_dinas.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_dinas_bloc/list_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/list_realisasi_dinas_bloc/list_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/realisasi_dinas.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/detail_list_berkas.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/kategori_berkas_bloc/berkas_bloc.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/download_berkas_page.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/list_berkas_bloc/list_berkas_bloc.dart';
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
import 'package:sj_presensi_mobile/pages/home/home_bloc/home_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/bloc/pengumuman_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/list_pengumuman.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/add_bahasa.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/add_bahasa_bloc/add_bahasa_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/data_bahasa_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/list_bahasa_bloc/list_bahasa_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/view_edit_bahasa.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/data_diri_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/edit_biodata_bloc/edit_biodata_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/edit_data_diri.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/add_keluarga.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/add_keluarga_bloc/add_keluarga_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/data_keluarga_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/list_keluarga_bloc/list_keluarga_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/view_edit_keluarga.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/add_organisasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/add_organisasi_bloc/add_organisasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/data_organisasi_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/list_organisas_bloc/list_organisasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/view_edit_organisasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/add_pelatihan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/add_pelatihan_bloc/add_pelatihan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/data_pelatihan_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/list_pelatihan_bloc/list_pelatihan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/view_edit_pelatihan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/add_pendidikan.bloc/add_data_pendidikan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/add_pendidikan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/data_pendidikan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/list_pendidikan_bloc/list_pendidikan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/view_edit-pendidikan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/add_pengalaman.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/add_pengalaman_bloc/add_pengalaman_kerja_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/data_pengalaman_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/list_pengalaman_bloc/list_pengalaman_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/view_edit_pengalaman.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/add_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/add_prestasi_bloc/add_prestasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/data_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/list_prestasi_bloc/list_prestasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/view_edit_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/password_change.dart';
import 'package:sj_presensi_mobile/pages/home/report/add/add_report_page.dart';
import 'package:sj_presensi_mobile/pages/home/report/add/bloc/add_report_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/report/report_detail_page.dart';
import 'package:sj_presensi_mobile/pages/lembur/detail_lembur.dart';
import 'package:sj_presensi_mobile/pages/lembur/edit_lembur.dart';
import 'package:sj_presensi_mobile/pages/lembur/lembur_bloc/list_lembur_bloc.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_bloc/notifikasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/notifikasi/notifikasi_page.dart';
import 'package:sj_presensi_mobile/pages/splash/splash_page.dart';
import 'package:sj_presensi_mobile/services/model/cuti/list_cuti_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/realisasi_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/list_approval/response_list_approval.dart';
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
          return BlocProvider(
            create: (context) => CheckVersionBloc(),
            child: SplashPage(),
          );
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
      case DownloadBerkasPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => BerkasBloc(),
            child: const DownloadBerkasPage(),
          );
        });
      case DetailListBerkasPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ListBerkasBloc(),
            child: const DetailListBerkasPage(),
          );
        });
      case ApprovalPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ApprovalBloc(),
            child: const ApprovalPage(),
          );
        });

      case DetailApproval.routeName:
        final dataApproval = settings.arguments as DataApproval;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ApprovalBloc(),
            child: DetailApproval(
              dataApproval: dataApproval,
              reloadDataCallback: () {
                context.read<ApprovalBloc>().add(GetListApproval());
              },
            ),
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
        final arguments = settings.arguments as Map<String, dynamic>;
        final lemburID = arguments['lemburID'] as int;
        return MaterialPageRoute(builder: (context) {
          return DetailLemburPage(
            data: data.data,
            lemburID: lemburID,
            reloadDataCallback: () {
              context
                  .read<ListLemburBloc>()
                  .add(GetListLembur(date: DateTime.now()));
            },
          );
        });
      case EditLemburPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final lemburID = arguments['lemburID'] as int;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddCutiBloc(),
            child: EditCutiPage(
              cutiId: lemburID,
              reloadDataCallback: () {
                context
                    .read<ListLemburBloc>()
                    .add(GetListLembur(date: DateTime.now()));
              },
            ),
          );
        });
      case DetailCutiPage.routeName:
        final data = settings.arguments as DataListCuti;
        return MaterialPageRoute(builder: (context) {
          return DetailCutiPage(
            reloadDataCallback: () {},
            data: data,
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
      case listBirthdayTodayPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => HomeBloc(),
            child: listBirthdayTodayPage(),
          );
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
      case RealisasiDinasPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ListRealisasiDinasBloc(),
            child: const RealisasiDinasPage(),
          );
        });
      case DetailRealisasiDinas.routeName:
        final dataRealisasi = settings.arguments as DataRealisasiDinas?;
        return MaterialPageRoute(builder: (context) {
          return DetailRealisasiDinas(
            dataRealisasi: dataRealisasi!,
            reloadDataCallback: () {},
          );
        });
      case EditRealisasiDinasPage.routeName:
        final dataRealisasi = settings.arguments as DataRealisasiDinas?;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddCutiBloc(),
            child: EditRealisasiDinasPage(
              dataRealisasi: dataRealisasi,
              reloadDataCallback: () {
                context
                    .read<ListDinasBloc>()
                    .add(GetListDinas(date: DateTime.now()));
              },
            ),
          );
        });
      case AddRealisasiDinasPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddRealisasiDinasBloc(),
            child: AddRealisasiDinasPage(
              reloadDataCallback: () {
                context
                    .read<ListRealisasiDinasBloc>()
                    .add(GetListRealisasiDinas(date: DateTime.now()));
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
      case DownloadBerkasPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return const DownloadBerkasPage();
        });
      case ListPengumumanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => PengumumanBloc(),
            child: ListPengumumanPage(),
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
          return BlocProvider(
            create: (context) => EditBiodataBloc(),
            child: EditDataDiriPage(
              bioData: bioData!,
              reloadDataCallback: () {
                context.read<ProfileBloc>().add(GetDataProfile());
              },
            ),
          );
        });
      case DataBahasaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ListBahasaBloc(),
            child: DataBahasaPage(),
          );
        });
      case ViewEditBahasaPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final bahasaId = arguments['bahasaId'] as int;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddBahasaBloc(),
            child: ViewEditBahasaPage(
              reloadDataCallback: () {
                context.read<ListBahasaBloc>().add(GetListBahasa());
              },
              bahasaId: bahasaId,
            ),
          );
        });
      case AddBahasaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddBahasaBloc(),
            child: AddBahasaPage(
              reloadDataCallback: () {
                context.read<ListBahasaBloc>().add(GetListBahasa());
              },
            ),
          );
        });
      case DataKeluargaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ListKeluargaBloc(),
            child: DataKeluargaPage(),
          );
        });
      case ViewEditKeluargaPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final dataKeluargaId = arguments['dataKeluargaId'] as int;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddKeluargaBloc(),
            child: ViewEditKeluargaPage(
              reloadDataCallback: () {
                context.read<ListKeluargaBloc>().add(
                      GetListKeluarga(),
                    );
              },
              dataKeluargaId: dataKeluargaId,
            ),
          );
        });
      case AddKeluargaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddKeluargaBloc(),
            child: AddKeluargaPage(
              reloadDataCallback: () {
                context.read<ListKeluargaBloc>().add(GetListKeluarga());
              },
            ),
          );
        });
      case DataOrganisasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ListOrganisasiBloc(),
            child: DataOrganisasiPage(),
          );
        });
      case ViewEditOrganisasiPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final organisasiId = arguments['organisasiId'] as int;
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => AddOrganisasiBloc(),
              child: ViewEditOrganisasiPage(
                reloadDataCallback: () {
                  context.read<ListKeluargaBloc>().add(
                        GetListKeluarga(),
                      );
                },
                organisasiId: organisasiId,
              ),
            );
          },
        );
      case AddOrganisasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddOrganisasiBloc(),
            child: AddOrganisasiPage(
              reloadDataCallback: () {
                context.read<ListOrganisasiBloc>().add(GetListOrganisasi());
              },
            ),
          );
        });
      case DataPelatihanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ListPelatihanBloc(),
            child: DataPelatihanPage(),
          );
        });
      case ViewEditPelatihanPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final pelatihanId = arguments['pelatihanId'] as int;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddPelatihanBloc(),
            child: ViewEditPelatihanPage(
              reloadDataCallback: () {
                context.read<ListPelatihanBloc>().add(GetListPelatihan());
              },
              idPelatihan: pelatihanId,
            ),
          );
        });
      case AddPelatihanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddPelatihanBloc(),
            child: AddPelatihanPage(
              reloadDataCallback: () {
                context.read<ListPelatihanBloc>().add(GetListPelatihan());
              },
            ),
          );
        });
      case DataPendidikanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ListPendidikanBloc(),
            child: DataPendidikanPage(),
          );
        });
      case AddPendidikanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddDataPendidikanBloc(),
            child: AddPendidikanPage(
              reloadDataCallback: () {
                context.read<ListPendidikanBloc>().add(GetListPendidikan());
              },
            ),
          );
        });
      case ViewEditPendidikanPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final pendidikanId = arguments['pendidikanId'] as int;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddDataPendidikanBloc(),
            child: ViewEditPendidikanPage(
              reloadDataCallback: () {
                context.read<ListPendidikanBloc>().add(GetListPendidikan());
              },
              pendidikanId: pendidikanId,
            ),
          );
        });
      case DataPengalamanKerjaPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ListPengalamanBloc(),
            child: DataPengalamanKerjaPage(),
          );
        });
      case ViewEditPengalamanPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final pengalamanId = arguments['pengalamanId'] as int;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddPengalamanKerjaBloc(),
            child: ViewEditPengalamanPage(
              reloadDataCallback: () {
                context.read<ListPengalamanBloc>().add(GetListPengalaman());
              },
              pengalamanId: pengalamanId,
            ),
          );
        });
      case AddPengalamanPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddPengalamanKerjaBloc(),
            child: AddPengalamanPage(
              reloadDataCallback: () {
                context.read<ListPengalamanBloc>().add(GetListPengalaman());
              },
            ),
          );
        });
      case DataPrestasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ListPrestasiBloc(),
            child: DataPrestasiPage(),
          );
        });
      case ViewEditPrestasiPage.routeName:
        final arguments = settings.arguments as Map<String, dynamic>;
        final prestasiId = arguments['prestasiId'] as int;
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddPrestasiBloc(),
            child: ViewEditPrestasiPage(
              reloadDataCallback: () {
                context.read<ListPrestasiBloc>().add(GetListPrestasi());
              },
              prestasiId: prestasiId,
            ),
          );
        });
      case AddPrestasiPage.routeName:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => AddPrestasiBloc(),
            child: AddPrestasiPage(
              reloadDataCallback: () {
                context.read<ListPrestasiBloc>().add(GetListPrestasi());
              },
            ),
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
      return BlocProvider(
        create: (context) => CheckVersionBloc(),
        child: SplashPage(),
      );
    });
  }
}

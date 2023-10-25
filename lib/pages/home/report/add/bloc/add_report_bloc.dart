import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/model/report_model.dart';
import 'package:sj_presensi_mobile/services/reports_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_report_event.dart';
part 'add_report_state.dart';

class AddReportBloc extends Bloc<AddReportEvent, AddReportState> {
  AddReportBloc() : super(AddReportInitial()) {
    on<GetLastReport>((event, emit) async {
      emit(AddReportLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res =
            await ReportsServices.getLastReport(resToken.response["token"]);
        if (res is ServicesSuccess) {
          var data = ReportModel.fromMap(res.response);
          emit(
            FetchLastReportSuccessInBackground(
              reportModel: data,
            ),
          );
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddReportFailedUserExpired(message: "Token expired"));
          } else if (res.code == 404) {
            emit(FetchLastReportFailedInBackground());
          } else {
            emit(AddReportFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddReportFailedInBackground());
      }
    });

    on<AddReportSubmited>((event, emit) async {
      if (event.status) {
        emit(AddReportLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ReportsServices.addReport(
            resToken.response["token"],
            event.pastTask,
            event.nextTask,
            event.keterangan,
          );
          if (res is ServicesSuccess) {
            emit(AddReportSuccess(message: "Tambah Laporan berhasil!"));
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(AddReportFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddReportFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(AddReportFailedInBackground());
        }
      }
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ql_absensi_express_mobile/sentry/my_sentry.dart';
import 'package:ql_absensi_express_mobile/services/model/report_model.dart';
import 'package:ql_absensi_express_mobile/services/reports_services.dart';
import 'package:ql_absensi_express_mobile/utils/services.dart';
import 'package:ql_absensi_express_mobile/utils/shared_pref.dart';

part 'reports_history_event.dart';
part 'reports_history_state.dart';

class ReportsHistoryBloc
    extends Bloc<ReportsHistoryEvent, ReportsHistoryState> {
  List<ReportModel> reports = [];
  bool sortState = false;
  ReportsHistoryBloc() : super(ReportsHistoryInitial()) {
    on<GetReportsHistory>((event, emit) async {
      emit(ReportsHistoryLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await ReportsServices.getReportsHistory(
            resToken.response["token"], event.date);
        if (res is ServicesSuccess) {
          reports = ReportModel.reportsFromMap(res.response);
          reports.sort(
            (a, b) {
              if (sortState) {
                return a.date!.compareTo(b.date!);
              }

              return b.date!.compareTo(a.date!);
            },
          );
          emit(
            ReportsHistorySuccessInBackground(
              reportsModel: reports,
            ),
          );
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ReportsHistoryFailedUserExpired(message: "Token expired"));
          } else {
            emit(ReportsHistoryFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ReportsHistoryFailedInBackground());
      }
    });
    on<SortByDateReportsHistory>((event, emit) async {
      emit(ReportsHistoryLoading());
      try {
        sortState = event.sortState;
        reports.sort(
          (a, b) {
            if (sortState) {
              return a.date!.compareTo(b.date!);
            }

            return b.date!.compareTo(a.date!);
          },
        );
        emit(
          ReportsHistorySuccessInBackground(
            reportsModel: reports,
          ),
        );
      } catch (e, st) {
        emit(ReportsHistoryFailed(message: "Gagal Melakukan Sorting"));
        await MySentry.sendReport(e.toString(), st.toString());
      }
    });

    on<ReportStateChecked>(
      (event, emit) async {
        emit(ReportsHistoryLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ReportsServices.getReportState(resToken.response["token"]);
          if (res is ServicesSuccess) {
            emit(
              CheckReportHistorySuccessInBackground(
                isMorningReport: res.response["state"] == "done"
                    ? null
                    : res.response["no_report_yet"] as bool,
              ),
            );
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(ReportsHistoryFailedUserExpired(message: "Token expired"));
            } else {
              emit(ReportsHistoryFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(ReportsHistoryFailedInBackground());
        }
      },
    );
  }
}

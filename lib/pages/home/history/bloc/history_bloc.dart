import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/sentry/my_sentry.dart';
import 'package:sj_presensi_mobile/services/attendances_services.dart';
import 'package:sj_presensi_mobile/services/model/attendances_model.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  List<AttendanceModel> attendances = [];
  bool sortState = false;
  HistoryBloc() : super(HistoryInitial()) {
    on<GetAttendancesHistory>((event, emit) async {
      emit(HistoryLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await AttendancesServices.getAttendancesHistory(
            resToken.response["token"], event.date);
        if (res is ServicesSuccess) {
          attendances = AttendanceModel.attendancesFromMap(res.response);
          attendances.sort(
            (a, b) {
              if (sortState) {
                return a.date!.compareTo(b.date!);
              }

              return b.date!.compareTo(a.date!);
            },
          );
          emit(
            HistorySuccessInBackground(
              attendancesModel: attendances,
            ),
          );
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(HistoryFailedUserExpired(message: "Token expired"));
          } else {
            emit(HistoryFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(HistoryFailedInBackground());
      }
    });
    on<SortByDateAttendancesHistory>((event, emit) async {
      emit(HistoryLoading());
      try {
        sortState = event.sortState;
        attendances.sort(
          (a, b) {
            if (sortState) {
              return a.date!.compareTo(b.date!);
            }

            return b.date!.compareTo(a.date!);
          },
        );
        emit(
          HistorySuccessInBackground(
            attendancesModel: attendances,
          ),
        );
      } catch (e, st) {
        emit(HistoryFailed(message: "Gagal Melakukan Sorting"));
        await MySentry.sendReport(e.toString(), st.toString());
      }
    });
  }
}

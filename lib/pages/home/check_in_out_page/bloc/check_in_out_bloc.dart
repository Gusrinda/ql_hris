import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/attendances_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'check_in_out_event.dart';
part 'check_in_out_state.dart';

class CheckInOutBloc extends Bloc<CheckInOutEvent, CheckInOutState> {
  CheckInOutBloc() : super(CheckInOutInitial()) {
    on<AttendanceStateChecked>(
      (event, emit) async {
        emit(CheckInOutLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await AttendancesServices.getAttendanceState(
              resToken.response["token"]);
          if (res is ServicesSuccess) {
            if (res.response["state"] == "attend") {
              emit(InfoCheckInOutSuccessInBackground(
                  name: res.response["user_name"]));
            } else {
              emit(
                CheckInOutSuccessInBackground(
                  name: res.response["user_name"],
                  isCheckin: res.response["is_user_checkin"] as bool,
                ),
              );
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(CheckInOutFailedUserExpired(message: "Token expired"));
            } else {
              emit(CheckInOutFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(CheckInOutFailedInBackground());
        }
      },
    );
  }
}

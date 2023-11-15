import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/attendances_services.dart';
import 'package:sj_presensi_mobile/services/profile_services.dart';
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
          var resUser = await ProfileServices.getDataProfilel(
              resToken.response["token"], resToken.response["id"]);
          if (res is ServicesSuccess && resUser is ServicesSuccess) {
            final name = resUser.response["data"]["name"] ?? 'Pegawai SJ';
            final jsonData = res.response["data"];
            final status = jsonData["status"];

            if (status == "ATTEND") {
              emit(InfoCheckInOutSuccessInBackground(
                name: name,
              ));
            } else if (status == "NOT ATTEND") {
              emit(CheckInOutSuccessInBackground(
                name: name,
                isCheckin: true,
              ));
            } else if (status == "WORKING") {
              emit(CheckInOutSuccessInBackground(
                name: name,
                isCheckin: false,
              ));
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

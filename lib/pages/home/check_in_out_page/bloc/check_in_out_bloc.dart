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
            final name = resUser.response["data"]["name"] ?? 'Karyawan SJ';
            final fotoProfil = resUser.response["data"]["profil_image"] ?? '';
            final cutiMasaKerja = resUser.response["data"]["m_kary.cuti_sisa_reguler"].toString() ?? '';
            final cutiTahunan = resUser.response["data"]["m_kary.cuti_sisa_reguler"].toString()  ?? '';
            final p24 = resUser.response["data"]["m_kary.cuti_sisa_reguler"].toString()  ?? '';

            final jsonData = res.response["data"];
            final status = jsonData["status"];

            if (status == "ATTEND") {
              emit(InfoCheckInOutSuccessInBackground(
                fotoProfil: fotoProfil,
                name: name,
                cutiMasaKerja: cutiMasaKerja,
                cutiTahunan: cutiTahunan,
                p24: p24
              ));
            } else if (status == "NOT ATTEND") {
              emit(CheckInOutSuccessInBackground(
                fotoProfil: fotoProfil,
                name: name,
                isCheckin: true,
                cutiMasaKerja: cutiMasaKerja,
                cutiTahunan: cutiTahunan,
                p24: p24
              ));
            } else if (status == "WORKING") {
              emit(CheckInOutSuccessInBackground(
                fotoProfil: fotoProfil,
                name: name,
                isCheckin: false,
                cutiMasaKerja: cutiMasaKerja,
                cutiTahunan: cutiTahunan,
                p24: p24
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

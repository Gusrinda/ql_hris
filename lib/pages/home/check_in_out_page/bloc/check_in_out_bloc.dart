import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/attendances_services.dart';
import 'package:sj_presensi_mobile/services/model/profile_model.dart';
import 'package:sj_presensi_mobile/services/profile_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'check_in_out_event.dart';
part 'check_in_out_state.dart';

class CheckInOutBloc extends Bloc<CheckInOutEvent, CheckInOutState> {
  CheckInOutBloc() : super(CheckInOutInitial()) {
    DataProfile? dataProfile;

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
            dataProfile = DataProfile.fromJson(resUser.response["data"]);
            print("DATA PROFILE: $dataProfile");

            final name = dataProfile?.mKaryNamaLengkap ?? 'Karyawan SJ';
            final fotoProfil = dataProfile?.profilImage ?? '';
            // final cutiMasaKerja = resUser.response["data"]["m_kary.cuti_sisa_reguler"]?.toString() ?? '0';
            // final cutiTahunan = resUser.response["data"]["m_kary.cuti_sisa_panjang"]?.toString()  ?? '0';
            // final p24 = resUser.response["data"]["m_kary.cuti_sisa_p24"]?.toString()  ?? '0';
            final infoCuti = dataProfile?.infoCuti;

            print(
                "Cuti Masa Kerja: ${dataProfile?.infoCuti?.sisaCutiMasaKerja?.toString() ?? 0}");
            print(
                "Cuti Tahunan: ${dataProfile?.infoCuti?.sisaCutiReguler?.toString() ?? 0}");
            print(
                "Cuti P24: ${dataProfile?.infoCuti?.sisaCutiP24?.toString() ?? 0}");

            final jsonData = res.response["data"];
            final status = jsonData["status"];

            if (status == "ATTEND") {
              emit(InfoCheckInOutSuccessInBackground(
                fotoProfil: fotoProfil,
                name: name,
                infoCuti: infoCuti,
              ));
            } else if (status == "NOT ATTEND") {
              emit(CheckInOutSuccessInBackground(
                fotoProfil: fotoProfil,
                name: name,
                isCheckin: true,
                infoCuti: infoCuti,
              ));
            } else if (status == "WORKING") {
              emit(CheckInOutSuccessInBackground(
                fotoProfil: fotoProfil,
                name: name,
                isCheckin: false,
                infoCuti: infoCuti,
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

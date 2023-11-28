import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/pages/home/check_in_out_page/add/add_check_in_out_form_model.dart';
import 'package:sj_presensi_mobile/services/attendances_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_check_in_out_event.dart';
part 'add_check_in_out_state.dart';

class AddCheckInOutBloc extends Bloc<AddCheckInOutEvent, AddCheckInOutState> {
  AddCheckInOutModel formDataSubmited = AddCheckInOutModel();
  AddCheckInOutBloc() : super(AddCheckInOutInitial()) {
    on<AddCheckInOutSubmited>((event, emit) async {
      emit(AddCheckInOutLoading());
      // print("Image Submit : ${formDataSubmited.imagePath}");
      print("Address Submit : ${formDataSubmited.address}");
      print("isOnSite Submit : ${formDataSubmited.isOnSite}");
      print("Latitude Submit : ${formDataSubmited.latitude}");
      print("Longitude Submit : ${formDataSubmited.longitude}");
      if (formDataSubmited.imagePath == null) {
        emit(AddCheckInOutFailed(message: "Foto kehadiran harus di isi!"));
      } else if (formDataSubmited.address == null ||
          formDataSubmited.isOnSite == null ||
          formDataSubmited.latitude == null ||
          formDataSubmited.longitude == null) {
        emit(AddCheckInOutFailed(message: "Hidupkan Lokasi anda!"));
      } else {
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          print("resToken : ${resToken.response["token"]}");
          var resStatus = await AttendancesServices.getAttendanceState(
              resToken.response["token"]);

          if (resStatus is ServicesSuccess) {
            final jsonData = resStatus.response["data"];
            final status = jsonData["status"];
            if (status == "NOT ATTEND") {
              var res = await AttendancesServices.addAttendanceIn(
                resToken.response["token"],
                formDataSubmited.imagePath,
                formDataSubmited.address,
                formDataSubmited.isOnSite,
                formDataSubmited.latitude,
                formDataSubmited.longitude,
              );
              if (res is ServicesSuccess) {
                emit(AddCheckInOutSuccess(message: "Check-In Berhasil!"));
              } else if (res is ServicesFailure) {
                if (res.code == 500) {
                  emit(AddCheckInOutFailed(message: res.errorResponse));
                  await GeneralSharedPreferences.removeUserToken();
                  emit(
                      AddCheckInOutFailedUserExpired(message: "Token expired"));
                } else if (res.code == 401) {
                  emit(AddCheckInOutFailed(message: res.errorResponse));
                  await GeneralSharedPreferences.removeUserToken();
                  emit(
                      AddCheckInOutFailedUserExpired(message: "Token expired"));
                } else {
                  emit(AddCheckInOutFailed(message: res.errorResponse));
                }
              }
            } else if (status == "WORKING") {
              var res = await AttendancesServices.addAttendanceOut(
                resToken.response["token"],
                formDataSubmited.imagePath,
                formDataSubmited.address,
                formDataSubmited.isOnSite,
                formDataSubmited.latitude,
                formDataSubmited.longitude,
              );
              if (res is ServicesSuccess) {
                emit(AddCheckInOutSuccess(message: "Check-Out Berhasil!"));
              } else if (res is ServicesFailure) {
                if (res.errorResponse == null) {
                  emit(AddCheckInOutFailedUserExpired(
                      message: "Presensi Gagal!"));
                } else {
                  emit(AddCheckInOutFailed(message: res.errorResponse));
                }
              }
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(AddCheckInOutFailedInBackground());
        }
      }
    });

    on<AddCheckInOutFormDataAdded>((event, emit) async {
      formDataSubmited = formDataSubmited.copyWith(
        imagePath: event.formData.imagePath,
        address: event.formData.address,
        isOnSite: event.formData.isOnSite,
        latitude: event.formData.latitude,
        longitude: event.formData.longitude,
      );
      if (formDataSubmited.address != null &&
          formDataSubmited.imagePath != null) {
        emit(AddCheckInOutButtonActivate(isOnSite: formDataSubmited.isOnSite!));
      }
    });
  }
}

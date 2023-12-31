import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/add/add_check_in_out_form_model.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/add/location.dart';
import 'package:ql_absensi_express_mobile/pages/home/check_in_out_page/add/time.dart';
import 'package:ql_absensi_express_mobile/services/attendances_services.dart';
import 'package:ql_absensi_express_mobile/utils/services.dart';
import 'package:ql_absensi_express_mobile/utils/shared_pref.dart';

part 'add_check_in_out_event.dart';
part 'add_check_in_out_state.dart';

class AddCheckInOutBloc extends Bloc<AddCheckInOutEvent, AddCheckInOutState> {
  AddCheckInOutModel formDataSubmited = AddCheckInOutModel();
  AddCheckInOutBloc() : super(AddCheckInOutInitial()) {
    on<AddCheckInOutSubmited>((event, emit) async {
      emit(AddCheckInOutLoading());
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
          var res = await AttendancesServices.addAttendance(
            resToken.response["token"],
            formDataSubmited.imagePath,
            formDataSubmited.address,
            formDataSubmited.isOnSite,
            formDataSubmited.latitude,
            formDataSubmited.longitude,
          );
          if (res is ServicesSuccess) {
            emit(AddCheckInOutSuccess(message: "Tambah presensi berhasil!"));
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(AddCheckInOutFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddCheckInOutFailed(message: res.errorResponse));
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

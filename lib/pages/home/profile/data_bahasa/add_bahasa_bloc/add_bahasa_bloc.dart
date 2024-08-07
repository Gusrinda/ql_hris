import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_bahasa_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_bahasa_event.dart';
part 'add_bahasa_state.dart';

class AddBahasaBloc extends Bloc<AddBahasaEvent, AddBahasaState> {
  AddBahasaBloc() : super(AddDatabahasaInitial()) {
    on<AddDatabahasaSubmited>((event, emit) async {
      emit(AddDatabahasaLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataBahasaServices.createDataBahasa(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
          resToken.response["m_dir_id"] ?? 1,
          event.bhsDikuasai,
          event.nilaiLisan,
          event.nilaiTertulis,
        );
        if (res is ServicesSuccess) {
          emit(AddDatabahasaSuccess(message: "Create Data Pelatihan Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDatabahasaFailedUserExpired(message: "Token Expired"));
          } else {
            emit(AddDatabahasaFailed(message: res.errorResponse));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDatabahasaFailedInBackground(
            message: "Response format is invalid"));
      }
    });

    on<EditDatabahasaSubmited>((event, emit) async {
      emit(AddDatabahasaLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataBahasaServices.editDataBahasa(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
          resToken.response["m_dir_id"] ?? 1,
          event.bahasaId,
          event.bhsDikuasai,
          event.nilaiLisan,
          event.nilaiTertulis,
        );
        if (res is ServicesSuccess) {
          emit(EditBahasanSuccess(message: "Edit Data Pelatihan Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDatabahasaFailedUserExpired(message: "Token Expired"));
          } else {
            emit(EditBahasanFailed(message: res.errorResponse));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDatabahasaFailedInBackground(
            message: "Response format is invalid"));
      }
    });
  }
}

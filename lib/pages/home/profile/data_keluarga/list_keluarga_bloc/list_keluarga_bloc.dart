import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_keluarga_services.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_keluarga_karyawan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_keluarga_event.dart';
part 'list_keluarga_state.dart';

class ListKeluargaBloc extends Bloc<ListKeluargaEvent, ListKeluargaState> {
  List<DataKeluarga> listkeluarga = [];
  ListKeluargaBloc() : super(ListKeluargaInitial()) {
    on<GetListKeluarga>((event, emit) async {
      emit(ListKeluargaLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res = await DataKeluargaServices.getListKeluarga(
            resToken.response["token"]);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            ResponseKeluargaKaryawan dataResponse =
                ResponseKeluargaKaryawan.fromJson(res.response);
            listkeluarga = dataResponse.data ?? [];
            print("GET Pelatihan: $listkeluarga}");
            emit(
                ListKeluargaSuccess(dataKeluarga: listkeluarga));
          } else {
            emit(ListKeluargaFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListKeluargaFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListKeluargaFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListKeluargaFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

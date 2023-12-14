import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_organisasi_service.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_organisasi_karyawan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_organisasi_event.dart';
part 'list_organisasi_state.dart';

class ListOrganisasiBloc extends Bloc<ListOrganisasiEvent, ListOrganisasiState> {
  List<DataOrganisasi> listorganisasi = [];
  ListOrganisasiBloc() : super(ListOrganisasiInitial()) {
    on<GetListOrganisasi>((event, emit) async {
      emit(ListOrganisasiLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res = await DataOrganisasiServices.getListOrganisasi(
            resToken.response["token"]);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            ResponseOrganisasiKaryawan dataResponse =
                ResponseOrganisasiKaryawan.fromJson(res.response);
            listorganisasi = dataResponse.data ?? [];
            print("GET Organisasi: $listorganisasi}");
            emit(
                ListOrganisasiSuccess(dataOrganisasi: listorganisasi));
          } else {
            emit(ListOrganisasiFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListOrganisasiFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListOrganisasiFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListOrganisasiFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_prestasi_service.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_prestasi_karyawan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_prestasi_event.dart';
part 'list_prestasi_state.dart';

class ListPrestasiBloc extends Bloc<ListPrestasiEvent, ListPrestasiState> {
   List<DataPrestasi> listPrestasi = [];
  ListPrestasiBloc() : super(ListPrestasiInitial()) {
    on<GetListPrestasi>((event, emit) async {
      emit(ListPrestasiLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res = await DataPrestasiServices.getListPrestasi(
            resToken.response["token"]);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            ResponsePrestasiKaryawan dataResponse =
                ResponsePrestasiKaryawan.fromJson(res.response);
            listPrestasi = dataResponse.data ?? [];
            print("GET Prestasi: $listPrestasi}");
            emit(
                ListPrestasiSuccess(dataPrestasi: listPrestasi));
          } else {
            emit(ListPrestasiFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListPrestasiFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListPrestasiFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListPrestasiFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

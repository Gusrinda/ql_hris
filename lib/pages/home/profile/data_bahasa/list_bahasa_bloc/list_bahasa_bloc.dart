import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_bahasa_services.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_bahasa_karyawan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_bahasa_event.dart';
part 'list_bahasa_state.dart';

class ListBahasaBloc extends Bloc<ListBahasaEvent, ListBahasaState> {
  List<DataBahasa> listbahasa = [];
  ListBahasaBloc() : super(ListBahasaInitial()) {
    on<GetListBahasa>((event, emit) async {
      emit(ListBahasaLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res =
            await DataBahasaServices.getListBahasa(resToken.response["token"]);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            ResponseBahasaKaryawan dataResponse =
                ResponseBahasaKaryawan.fromJson(res.response);
            listbahasa = dataResponse.data ?? [];
            print("GET Pelatihan: $listbahasa}");
            emit(ListBahasaSuccess(dataBahasa: listbahasa));
          } else {
            emit(ListBahasaFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListBahasaFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListBahasaFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListBahasaFailedInBackground(message: "Response Invalid"));
      }
    });

    on<DeleteListBahasa>(
      (event, emit) async {
        emit(ListBahasaLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        print(resToken);
        if (resToken is ServicesSuccess) {
          final res = await DataBahasaServices.deleteDataBahasa(
              resToken.response["token"], event.dataID);
          if (res is ServicesSuccess) {
            emit(DeleteBahasaSuccess(message: "Berhasil Menghapus Data"));
            print(res.response);
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(ListBahasaFailedUserExpired(message: "Token Expired"));
            } else {
              emit(ListBahasaFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(ListBahasaFailedInBackground(message: "Response invalid"));
        }
      },
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_pengalaman_kerja_service.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_pengalaman_karyawan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_pengalaman_event.dart';
part 'list_pengalaman_state.dart';

class ListPengalamanBloc extends Bloc<ListPengalamanEvent, ListPengalamanState> {
   List<DataPengalaman> listPengalaman = [];
  ListPengalamanBloc() : super(ListPengalamanInitial()) {
    on<ListPengalamanEvent>((event, emit) async {
      emit(ListPengalamanLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res = await DataPengalamanKerjaService.getListPengalaman(
            resToken.response["token"]);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            ResponsePengalamaniKaryawan dataResponse =
                ResponsePengalamaniKaryawan.fromJson(res.response);
            listPengalaman = dataResponse.data ?? [];
            print("GET Pengalaman: $listPengalaman}");
            emit(
                ListPengalamanSuccess(dataPengalaman: listPengalaman));
          } else {
            emit(ListPengalamanFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListPengalamanFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListPengalamanFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListPengalamanFailedInBackground(message: 'Response invalid'));
      }
    });

    on<DeleteListPengalaman>(
      (event, emit) async {
        emit(ListPengalamanLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        print(resToken);
        if (resToken is ServicesSuccess) {
          final res = await DataPengalamanKerjaService.deleteDataPengalaman(
              resToken.response["token"], event.dataID);
          if (res is ServicesSuccess) {
            emit(DeletePengalamanSuccess(message: "Berhasil Menghapus Data"));
            print(res.response);
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(ListPengalamanFailedUserExpired(message: "Token Expired"));
            } else {
              emit(ListPengalamanFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(ListPengalamanFailedInBackground(message: "Response invalid"));
        }
      },
    );
  }
}


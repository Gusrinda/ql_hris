import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_pendidikan_karyawan.service.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_pendidikan_karyawan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_pendidikan_event.dart';
part 'list_pendidikan_state.dart';

class ListPendidikanBloc
    extends Bloc<ListPendidikanEvent, ListPendidikanState> {
  List<ListDataPendidikan> listPendidikan = [];

  ListPendidikanBloc() : super(ListPendidikanInitial()) {
    on<GetListPendidikan>((event, emit) async {
      emit(ListPendidikanLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res = await DataKaryawanService.getListPendidikan(
            resToken.response["token"]);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            ResponsePendidikanKaryawan dataResponse =
                ResponsePendidikanKaryawan.fromJson(res.response);
            listPendidikan = dataResponse.data ?? [];
            print("GET Pendidikan: $listPendidikan}");
            emit(ListPendidikanSuccess(dataPendidikan: listPendidikan));
          } else {
            emit(ListPendidikanFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListPendidikanFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListPendidikanFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListPendidikanFailedInBackground(message: 'Response invalid'));
      }
    });

    on<DeleteListPendidikan>((event, emit) async {
      emit(ListPendidikanLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        ///Disini menjalankan state Deletenya dengan mengirimkan ID ke Service
        final res = await DataKaryawanService.deleteDataPendidikan(
            resToken.response["token"], event.dataID);

        ///Ketika Respon Berhasil
        if (res is ServicesSuccess) {
          emit(DeleteListPendidikanSuccess(message: "Berhasil Menghapus Data"));
          print(res.response);

          ///Ketika Respon Gagal
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListPendidikanFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListPendidikanFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListPendidikanFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

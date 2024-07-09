import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/services/model/dinas/realisasi_dinas_model.dart';
import 'package:sj_presensi_mobile/services/realisasi_dinas_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_realisasi_dinas_event.dart';
part 'list_realisasi_dinas_state.dart';

class ListRealisasiDinasBloc
    extends Bloc<ListRealisasiDinasEvent, ListRealisasiDinasState> {
  List<DataRealisasiDinas> listRealisasiDinas = [];

  ListRealisasiDinasBloc() : super(ListRealisasiDinasInitial()) {
    on<GetListRealisasiDinas>((event, emit) async {
      emit(ListRealisasiDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await RealisasiDinasServices.getListRealisasiDinas(
            resToken.response["token"], event.date);
        print(res);
        if (res is ServicesSuccess) {
          debugPrint(res.response.toString());
          if (res.response is Map<String, dynamic>) {
            //Mengubah hasil response api ke model kelas
            RealisasiDinasModel dataResponse =
                RealisasiDinasModel.fromJson(res.response);

            //Masukkan data dari model ke kebutuhan
            listRealisasiDinas = dataResponse.data ?? [];

            emit(
              ListRealisasiDinasSuccessInBackground(
                dataRealisasiDinas: listRealisasiDinas,
              ),
            );
          } else {
            emit(ListRealisasiDinasFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListRealisasiDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListRealisasiDinasFailed(message: res.errorResponse));
            print(res.errorResponse);
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListRealisasiDinasFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

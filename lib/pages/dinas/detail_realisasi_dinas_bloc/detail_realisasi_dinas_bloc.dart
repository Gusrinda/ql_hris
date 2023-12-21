import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:sj_presensi_mobile/services/model/dinas/detail_realisasi_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/response_detail_spd.dart';
import 'package:sj_presensi_mobile/services/realisasi_dinas_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'detail_realisasi_dinas_event.dart';
part 'detail_realisasi_dinas_state.dart';

class DetailRealisasiDinasBloc
    extends Bloc<DetailRealisasiDinasEvent, DetailRealisasiDinasState> {
  DetailRealisasiData? detailRealisasiDinas;
  DataDetailDinas? dataDetailSPD;

  DetailRealisasiDinasBloc() : super(DetailRealisasiDinasInitial()) {
    on<GetDetailRealisasiListDinas>((event, emit) async {
      emit(DetailRealisasiDinasLoading());
      print('ini memulai get detail realisasi');
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await RealisasiDinasServices.getDetailRealisasiDinas(
            resToken.response["token"], event.id);
        if (res is ServicesSuccessNoMobile) {
          debugPrint(res.response.toString());
          print(res);
          //Mengubah hasil response api ke model kelas
          // DetailRealisasiDinasModel dataResponse =
          //     DetailRealisasiDinasModel.fromJson(res.response);
          DetailRealisasiDinasModel? dataResponse =
              DetailRealisasiDinasModel.fromJson(res.response);

          //Masukkan data dari model ke kebutuhan
          detailRealisasiDinas = dataResponse.data;

          emit(
            DetailRealisasiDinasSuccess(
              dataDetailrealisasiDinas: detailRealisasiDinas,
            ),
          );
        } else if (res is ServicesFailureNoMobile) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(DetailRealisasiDinasFailedUserExpired(
                message: "Token expired"));
          } else {
            emit(DetailRealisasiDinasFailed(message: res.errorResponse));
            print(res.errorResponse);
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(DetailRealisasiDinasFailedInBackground(
            message: 'Response invalid'));
      }
    });

    on<GetDetailSPD>((event, emit) async {
      emit(DetailRealisasiDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await RealisasiDinasServices.getDetailSPD(
            resToken.response["token"], event.spdID);

        if (res is ServicesSuccess) {
          debugPrint(res.response.toString());
          if (res.response is Map<String, dynamic>) {
            //Mengubah hasil response api ke model kelas
            ResponseDetailSpd dataResponse =
                ResponseDetailSpd.fromJson(res.response);

            //Masukkan data dari model ke kebutuhan
            dataDetailSPD = dataResponse.data!;

            emit(
              DetailSPDSuceess(dataDetailSPD: dataDetailSPD!),
            );
          } else {
            emit(DetailRealisasiDinasFailedUserExpired(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(DetailRealisasiDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(DetailRealisasiDinasFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(DetailRealisasiDinasFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

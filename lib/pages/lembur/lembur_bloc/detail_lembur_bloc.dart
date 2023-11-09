import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/services/lembur_services.dart';
import 'package:sj_presensi_mobile/services/model/lembur/detail_lembur_model.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'detail_lembur_event.dart';
part 'detail_lembur_state.dart';

class DetailLemburBloc extends Bloc<DetailLemburEvent, DetailLemburState> {
  Data detaillembur = Data(); // Initialize with an empty Data object
  DetailLemburBloc() : super(DetailLemburInitial()) {
    on<GetDetailLembur>((event, emit) async {
      emit(DetailLemburLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await LemburServices.getDetailLembur(
            resToken.response["token"], event.id);
        if (res is ServicesSuccess) {
          debugPrint(res.response.toString());
          if (res.response is Map<String, dynamic>) {
            print(res.response);

            DetailLemburModel dataResponse =
                DetailLemburModel.fromJson(res.response);

            detaillembur = dataResponse.data!;

            emit(
              DetailLemburSuccessInBackground(dataDetailLembur: detaillembur),
            );
          } else {
            emit(DetailLemburFailedInBackground(
                message: 'Response format in invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(DetailLemburFailedUserExpired(message: "Token expired"));
          } else {
            emit(DetailLemburFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(DetailLemburFailedInBackground(message: 'Response Invalid'));
      }
    });
  }
}
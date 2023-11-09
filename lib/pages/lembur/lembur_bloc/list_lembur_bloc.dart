import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/services/lembur_services.dart';
import 'package:sj_presensi_mobile/services/model/lembur/lembur_model.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_lembur_event.dart';
part 'list_lembur_state.dart';

class ListLemburBloc extends Bloc<ListLemburEvent, ListLemburState> {
  List<Datum> listlembur = [];
  ListLemburBloc() : super(LemburInitial()) {
    on<GetListLembur>((event, emit) async {
     emit(LemburLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await LemburServices.getListLembur(
            resToken.response["token"], event.date);
        print(res);
        if (res is ServicesSuccess) {
          debugPrint(res.response.toString());
          if (res.response is Map<String, dynamic>) {
            print(res.response);

            //Mengubah hasil response api ke model kelas
            LemburModel dataResponse =
                LemburModel.fromJson(res.response);

            //Masukkan data dari model ke kebutuhan
            listlembur = dataResponse.data ?? [];

            emit(
              LemburSuccessInBackground(dataLembur: listlembur),
            );
          } else {
            emit(LemburFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(LemburFailedUserExpired(message: "Token expired"));
          } else {
            emit(LemburFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(LemburFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

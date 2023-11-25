import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/services/lembur_services.dart';
import 'package:sj_presensi_mobile/services/model/lembur/lembur_model.dart';
import 'package:sj_presensi_mobile/services/profile_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_lembur_event.dart';
part 'list_lembur_state.dart';

class ListLemburBloc extends Bloc<ListLemburEvent, ListLemburState> {
  List<DataLembur> listlembur = [];
  ListLemburBloc() : super(LemburInitial()) {
    on<GetListLembur>((event, emit) async {
      emit(LemburLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await LemburServices.getListLembur(
            resToken.response["token"], event.date);
        var resUser = await ProfileServices.getDataProfilel(
            resToken.response["token"], resToken.response["id"]);
        print(res);
        if (res is ServicesSuccess && resUser is ServicesSuccess) {
          final username = resUser.response["data"]["name"] ?? 'Pegawai SJ';
          debugPrint(res.response.toString());
          if (res.response is Map<String, dynamic>) {
            //Mengubah hasil response api ke model kelas
            LemburModel dataResponse = LemburModel.fromJson(res.response);

            //Masukkan data dari model ke kebutuhan
            listlembur = dataResponse.data ?? [];

            emit(
              LemburSuccessInBackground(
                dataLembur: listlembur,
                username: username,
              ),
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

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/services/dinas_services.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
import 'package:sj_presensi_mobile/services/profile_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_dinas_event.dart';
part 'list_dinas_state.dart';

class ListDinasBloc extends Bloc<ListDinasEvent, ListDinasState> {
  List<Datum> listdinas = [];
  // ProfileModel? profileModel;
  ListDinasBloc() : super(ListDinasInitial()) {
    on<GetListDinas>((event, emit) async {
      emit(ListDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DinasServices.getListDinas(
            resToken.response["token"], event.date);
        var resUser = await ProfileServices.getDataProfilel(
            resToken.response["token"], resToken.response["id"]);
        print(res);
        if (res is ServicesSuccess && resUser is ServicesSuccess) {
          final username = resUser.response["data"]["username"] ?? 'Pegawai SJ';
          debugPrint(res.response.toString());
          if (res.response is Map<String, dynamic>) {

            //Mengubah hasil response api ke model kelas
            ListDinasModel dataResponse = ListDinasModel.fromJson(res.response);

            //Masukkan data dari model ke kebutuhan
            listdinas = dataResponse.data ?? [];

            // ProfileModel dataResponseProfile =
            //     ProfileModel.fromMap(resUser.response);
            // profileModel = ProfileModel.fromMap(res.response);

            emit(
              ListDinasSuccessInBackground(
                dataDinas: listdinas,
                username: username,
              ),
            );
          } else {
            emit(ListDinasFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListDinasFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListDinasFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

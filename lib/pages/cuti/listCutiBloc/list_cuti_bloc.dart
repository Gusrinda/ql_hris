import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/services/cuti_services.dart';
import 'package:sj_presensi_mobile/services/model/cuti/list_cuti_model.dart';
import 'package:sj_presensi_mobile/services/profile_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_cuti_event.dart';
part 'list_cuti_state.dart';

class ListCutiBloc extends Bloc<ListCutiEvent, ListCutiState> {
  List<Datum> listcuti = [];
  ListCutiBloc() : super(ListCutiInitial()) {
    on<GetListCuti>((event, emit) async {
      emit(ListCutiLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await CutiServices.getListCuti(resToken.response["token"], event.date);
        var resUser = await ProfileServices.getDataProfilel(
            resToken.response["token"], resToken.response["id"]);
        if (res is ServicesSuccess && resUser is ServicesSuccess) {
          final username = resUser.response["data"]["name"] ?? 'Pegawai SJ';
          debugPrint(res.response.toString());
          if (res.response is Map<String, dynamic>) {
            print(res.response);

            //Mengubah hasil response api ke model kelas
            ListCutiModel dataResponse = ListCutiModel.fromJson(res.response);

            //Masukkan data dari model ke kebutuhan
            listcuti = dataResponse.data ?? [];

            emit(
              ListCutiSuccessInBackground(dataCuti: listcuti, username: username,),
            );
          } else {
            emit(ListCutiFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListCutiFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListCutiFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListCutiFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

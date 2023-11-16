import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/cuti_services.dart';
import 'package:sj_presensi_mobile/services/model/cuti/list_cuti_model.dart';
import 'package:sj_presensi_mobile/services/model/notifikasi_model.dart';
import 'package:sj_presensi_mobile/services/notifikasi_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'notifikasi_event.dart';
part 'notifikasi_state.dart';

class NotifikasiBloc extends Bloc<NotifikasiEvent, NotifikasiState> {
  List<DataNotif> listNotifikasi = [];
  List<Datum> listcuti = [];
  NotifikasiBloc() : super(ListNotifikasiInitial()) {
    on<GetListNotifikasi>((event, emit) async {
      emit(ListNotifikasiLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res =
            await NotifikasiServices.getNotifikasi(resToken.response["token"]);
        //Ambil tanggal sekarang
        DateTime date = DateTime.now();
        var resCuti =
            await CutiServices.getListCuti(resToken.response["token"], date);
        if (res is ServicesSuccess && resCuti is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print(res.response);
            NotifikasiModel dataResponse =
                NotifikasiModel.fromJson(res.response);
            listNotifikasi = dataResponse.data ?? [];

            //Mengubah hasil response api ke model kelas
            ListCutiModel dataResponseCuti =
                ListCutiModel.fromJson(resCuti.response);
            //Masukkan data dari model ke kebutuhan
            listcuti = dataResponseCuti.data ?? [];

            emit(
              ListNotifikasiSuccessInBackground(
                  listNotifikasi: listNotifikasi, listCuti: listcuti),
            );
          } else {
            emit(ListNotifikasiFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListNotifikasiFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListNotifikasiFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListNotifikasiFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

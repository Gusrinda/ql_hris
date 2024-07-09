import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/cuti_services.dart';
import 'package:sj_presensi_mobile/services/dinas_services.dart';
import 'package:sj_presensi_mobile/services/lembur_services.dart';
import 'package:sj_presensi_mobile/services/model/cuti/list_cuti_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
// import 'package:sj_presensi_mobile/services/model/lembur/detail_lembur_model.dart';
import 'package:sj_presensi_mobile/services/model/lembur/lembur_model.dart';
import 'package:sj_presensi_mobile/services/model/notifikasi_model.dart';
import 'package:sj_presensi_mobile/services/notifikasi_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'notifikasi_event.dart';
part 'notifikasi_state.dart';

class NotifikasiBloc extends Bloc<NotifikasiEvent, NotifikasiState> {
  List<DataNotif> listNotifikasi = [];
  List<DataListCuti> listcuti = [];
  List<DataLembur> listlembur = [];
  List<DataDinas> listdinas = [];
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
        var resLembur = await LemburServices.getListLembur(
            resToken.response["token"], date);
        var resDinas =
            await DinasServices.getListDinas(resToken.response["token"], date);
        if (res is ServicesSuccess &&
            resCuti is ServicesSuccess &&
            resLembur is ServicesSuccess &&
            resDinas is ServicesSuccess) {
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

            LemburModel dataResponseLembur =
                LemburModel.fromJson(resLembur.response);
            listlembur = dataResponseLembur.data ?? [];

            ListDinasModel dataResponseDinas =
                ListDinasModel.fromJson(resDinas.response);
            listdinas = dataResponseDinas.data ?? [];

            emit(
              ListNotifikasiSuccessInBackground(
                listNotifikasi: listNotifikasi,
                listCuti: listcuti,
                listlembur: listlembur,
                listdinas: listdinas,
              ),
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

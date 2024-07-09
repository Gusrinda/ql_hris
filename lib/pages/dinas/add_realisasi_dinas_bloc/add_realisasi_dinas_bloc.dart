import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/services/model/dinas/detail_realisasi_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/response_detail_spd.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/services/realisasi_dinas_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_realisasi_dinas_event.dart';
part 'add_realisasi_dinas_state.dart';

class AddRealisasiDinasBloc
    extends Bloc<AddRealisasiDinasEvent, AddRealisasiDinasState> {
  List<DataDinas> listDinasApproved = [];
  List<DataGeneral> listTipe = [];
  DataDetailDinas? dataDetailSPD;
  DetailRealisasiData? detailRealisasiDinas;

  AddRealisasiDinasBloc() : super(AddRealisasiDinasInitial()) {
    on<AddRealisasiDinasSubmited>((event, emit) async {
      emit(AddRealisasiDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await RealisasiDinasServices.addRealisasiDinas(
          resToken.response["token"],
          event.tSpdId,
          event.totalBiayaSPD,
          event.totalBiayaSelisih,
          event.keterangan,
          event.tRpdDetList ?? [],
        );
        if (res is ServicesSuccess) {
          emit(AddRealisasiDinasSuccess(
              message: 'Data Realisasi Dinas Berhasil Dibuat'));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddRealisasiDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddRealisasiDinasFailed(message: res.errorResponse));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddRealisasiDinasFailedInBackground(message: 'Response invalid'));
      }
    });

    on<EditRealisasiDinasSubmited>((event, emit) async {
      emit(AddRealisasiDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await RealisasiDinasServices.editRealisasiDinas(
          resToken.response["token"],
          event.rpdID,
          event.tSpdId,
          event.totalBiayaSPD,
          event.totalBiayaSelisih,
          event.keterangan,
          event.tRpdDetList ?? [],
        );
        if (res is ServicesSuccess) {
          emit(AddRealisasiDinasSuccess(
              message: 'Revisi Realisasi Dinas Berhasil Dikirim'));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddRealisasiDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddRealisasiDinasFailed(message: res.errorResponse));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddRealisasiDinasFailedInBackground(message: 'Response invalid'));
      }
    });

    on<GetDetailEditRealisasiDinas>((event, emit) async {
      emit(AddRealisasiDinasLoading());
      print('ini memulai get detail realisasi');
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await RealisasiDinasServices.getDetailRealisasiDinas(
            resToken.response["token"], event.id);
        if (res is ServicesSuccess) {
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
            DetailEditRealisasiDinasSuccess(
              dataDetailrealisasiDinas: detailRealisasiDinas,
            ),
          );
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddRealisasiDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddRealisasiDinasFailed(message: res.errorResponse));
            print(res.errorResponse);
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddRealisasiDinasFailedInBackground(message: 'Response invalid'));
      }
    });

    on<GetDetailEditSPD>((event, emit) async {
      emit(AddRealisasiDinasLoading());
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

            print("Print Data Detail Dinas Edit $dataResponse");

            //Masukkan data dari model ke kebutuhan
            dataDetailSPD = dataResponse.data!;

            emit(
              DetailEditSPDSuceess(dataEditDetailSPD: dataDetailSPD!),
            );
          } else {
            emit(AddRealisasiDinasFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddRealisasiDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddRealisasiDinasFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddRealisasiDinasFailedInBackground(message: 'Response invalid'));
      }
    });

    on<GetDetailBiayaSPD>((event, emit) async {
      emit(AddRealisasiDinasLoading());
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

            print("Print Data Detail Dinas Bloc $dataResponse");

            //Masukkan data dari model ke kebutuhan
            dataDetailSPD = dataResponse.data!;

            emit(
              DetailBiayaSPDSuceess(dataDetailSPD: dataDetailSPD!),
            );
          } else {
            emit(AddRealisasiDinasFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddRealisasiDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddRealisasiDinasFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddRealisasiDinasFailedInBackground(message: 'Response invalid'));
      }
    });

    on<OnSelectDinasApproved>((event, emit) async {
      emit(AddRealisasiDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await RealisasiDinasServices.getListDinasApprove(
            resToken.response["token"]);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            ListDinasModel dataResponse = ListDinasModel.fromJson(res.response);

            listDinasApproved = dataResponse.data ?? [];

            print("INI LIST DINAS YANG APPROVED ${dataResponse.data}");
            emit(
              SelectDinasApprovedSuccessInBackground(
                  dataDinasApproved: listDinasApproved),
            );
          } else {
            emit(
              AddRealisasiDinasFailedInBackground(
                  message: 'Response format is invalid'),
            );
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddRealisasiDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddRealisasiDinasFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddRealisasiDinasFailedInBackground(message: 'Response invalid'));
      }
    });

    on<OnSelectTipe>((event, emit) async {
      emit(AddRealisasiDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res =
            await RealisasiDinasServices.getTipe(resToken.response["token"]);
        if (res is ServicesSuccess) {
          print(res.response);
          if (res.response is Map<String, dynamic>) {
            ResponseGeneral dataResponse =
                ResponseGeneral.fromJson(res.response);

            listTipe = dataResponse.data ?? [];
            emit(
              SelectTipeSuccessInBackground(dataTipe: listTipe),
            );
          } else {
            emit(
              AddRealisasiDinasFailedInBackground(
                  message: 'Response format is invalid'),
            );
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddRealisasiDinasFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddRealisasiDinasFailed(message: res.errorResponse));
            print(res.errorResponse);
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddRealisasiDinasFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

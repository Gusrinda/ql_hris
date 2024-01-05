import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/dinas_services.dart';
import 'package:sj_presensi_mobile/services/lembur_services.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_pic_model.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_lembur_event.dart';
part 'add_lembur_state.dart';

class AddLemburBloc extends Bloc<AddLemburEvent, AddLemburState> {
  List<DataGeneral>? dataAlasanLembur = [];
  List<DataGeneral>? dataTipeLembur = [];
  List<DataPic> dataPic = [];

  AddLemburBloc() : super(AddLemburInitial()) {
    on<OnSumbitLembur>((event, emit) async {
      emit(AddLemburLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        print("ini res Token : ${resToken.response}");
        print("GET DATA: ");
        print("Ini M_COMP_ID : ${resToken.response["m_comp_id"]}");
        print("Ini M_DIR_ID : ${resToken.response["m_dir_id"]}");
        print("Ini M_KARY_ID : ${resToken.response["m_kari_id"]}");

        var res = await LemburServices.addLembur(
            resToken.response["token"],
            resToken.response["m_comp_id"] ?? 1,
            resToken.response["m_dir_id"] ?? 1,
            resToken.response["m_kary_id"] ?? 1,
            event.picID ?? -99,
            event.dateLembur,
            event.alasanLemburID,
            event.tipeLemburID,
            event.timeFrom,
            event.timeTo,
            // event.noDoc!,
            // event.doc!,
            event.keterangan);

        if (res is ServicesSuccess) {
          emit(AddLemburSuccess(
              message: "Pengajuan lembur telah berhasil dikirim"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddLemburFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddLemburFailed(
                message: "Maaf data belum valid, silahkan dikoreksi"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddLemburFailed(message: 'Response format is invalid'));
      }
    });

    on<OnSelectPic>(
      (event, emit) async {
        emit(AddLemburLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await DinasServices.getPic(resToken.response["token"]);
          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              GetPicModel dataResponse = GetPicModel.fromJson(res.response);

              dataPic = dataResponse.data ?? [];
              emit(
                SelectPicSuccessInBackground(dataPic: dataPic),
              );
            } else {
              emit(
                AddLemburFailed(message: 'Response format is invalid'),
              );
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(AddLemburFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddLemburFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(AddLemburFailed(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectAlasanLembur>(
      (event, emit) async {
        emit(AddLemburLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await LemburServices.getAlasanLembur(resToken.response["token"]);

          // print("Respons API Alasan Lembur: $res");

          if (res is ServicesSuccess) {
            // debugPrint(res.response.toString());
            if (res.response is Map<String, dynamic>) {
              // print(res.response);

              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataAlasanLembur = dataResponse.data ?? [];

              emit(
                SelectAlasanSuccess(dataAlasanLembur: dataAlasanLembur!),
              );
            } else {
              emit(AddLemburFailed(message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(AddLemburFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddLemburFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(AddLemburFailed(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectTipeLembur>(
      (event, emit) async {
        emit(AddLemburLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await LemburServices.getTipeLembur(resToken.response["token"]);

          // print("Respons API Tipe Lembur: $res");

          if (res is ServicesSuccess) {
            // debugPrint(res.response.toString());
            if (res.response is Map<String, dynamic>) {
              // print(res.response);

              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataTipeLembur = dataResponse.data ?? [];

              emit(
                SelectTipeSuccess(dataTipeLembur: dataTipeLembur!),
              );
            } else {
              emit(AddLemburFailed(message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(AddLemburFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddLemburFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(AddLemburFailed(message: 'Response invalid'));
        }
      },
    );
  }
}

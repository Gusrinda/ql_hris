import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:sj_presensi_mobile/services/cuti_services.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_alasan_cuti_model.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_tipe_cuti_model.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_cuti_event.dart';
part 'add_cuti_state.dart';

class AddCutiBloc extends Bloc<AddCutiEvent, AddCutiState> {
  List<Datum> dataAlasanCuti = [];
  List<DataTipeCuti> dataTipeCuti = [];
  AddCutiBloc() : super(AddCutiInitial()) {
    on<AddCutiSubmited>((event, emit) async {
      emit(AddCutiLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        print("ini res Token : ${resToken.response}");
        print("GET DATA: ");
        print("Ini M_COMP_ID : ${resToken.response["m_comp_id"]}");
        print("Ini M_DIR_ID : ${resToken.response["m_dir_id"]}");
        print("Ini M_KARY_ID : ${resToken.response["m_kari_id"]}");

        var res = await CutiServices.addCuti(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? -99,
          resToken.response["m_dir_id"] ?? -99,
          resToken.response["m_kary_id"] ?? -99,
          event.keterangan,
          event.alasan ?? -99,
          event.tipeCuti,
          event.dateFrom,
          event.dateTo,
          event.timeFrom ?? "08:00",
          event.timeTo ?? "08:00",
          event.suratDokter,
        );

        if (res is ServicesSuccess) {
          emit(
              AddCutiSuccess(message: "Pengajuan cuti telah berhasil dikirim"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddCutiFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddCutiFailed(message: res.errorResponse));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddCutiFailedInBackground(message: 'Response format is invalid'));
      }
    });

    on<OnSelectAlasanCuti>(
      (event, emit) async {
        emit(AddCutiLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await CutiServices.getAlasanCuti(resToken.response["token"]);

          // print("Respons API Alasan Cuti: $res");

          if (res is ServicesSuccess) {
            // debugPrint(res.response.toString());
            if (res.response is Map<String, dynamic>) {
              // print(res.response);

              //Mengubah hasil response api ke model kelas
              GetAlasanCutiModel dataResponse =
                  GetAlasanCutiModel.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataAlasanCuti = dataResponse.data ?? [];

              emit(
                SelectAlasanSuccessInBackground(dataAlasanCuti: dataAlasanCuti),
              );
            } else {
              emit(AddCutiFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(AddCutiFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddCutiFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(AddCutiFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectTipeCuti>(
      (event, emit) async {
        emit(AddCutiLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await CutiServices.getTipeCuti(resToken.response["token"]);

          // print("Respons API Tipe Cuti: $res");

          if (res is ServicesSuccess) {
            // debugPrint(res.response.toString());
            if (res.response is Map<String, dynamic>) {
              // print(res.response);

              //Mengubah hasil response api ke model kelas
              GetTipeCutiModel dataResponse =
                  GetTipeCutiModel.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataTipeCuti = dataResponse.data ?? [];

              emit(
                SelectTipeSuccessInBackground(dataTipeCuti: dataTipeCuti),
              );
            } else {
              emit(AddCutiFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(AddCutiFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddCutiFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(AddCutiFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<EditCutiSubmited>((event, emit) async {
      emit(AddCutiLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await CutiServices.editCuti(
          resToken.response["token"],
          event.cutiID,
          resToken.response["m_comp_id"] ?? -99,
          resToken.response["m_dir_id"] ?? -99,
          resToken.response["m_kary_id"] ?? -99,
          event.keterangan,
          event.alasan ?? -99,
          event.tipeCuti,
          event.dateFrom,
          event.dateTo,
          event.timeFrom ?? "08:00",
          event.timeTo ?? "08:00",
          event.suratDokter
        );
        if (res is ServicesSuccess) {
          emit(AddCutiSuccess(message: "Edit pengajuan cuti berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddCutiFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddCutiFailed(message: res.errorResponse));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddCutiFailedInBackground(message: 'Response format is invalid'));
      }
    });
  }
}

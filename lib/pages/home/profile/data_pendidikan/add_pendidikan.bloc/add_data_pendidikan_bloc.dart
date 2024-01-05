import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/cuti_services.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_pendidikan_karyawan.service.dart';
import 'package:sj_presensi_mobile/services/list_general_service/list_general_services.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_tingkat_pendidikan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_data_pendidikan_event.dart';
part 'add_data_pendidikan_state.dart';

class AddDataPendidikanBloc
    extends Bloc<AddDataPendidikanEvent, AddDataPendidikanState> {
  List<DataTingkat> dataTingkat = [];
  List<DataKota> dataKota = [];

  AddDataPendidikanBloc() : super(AddDataPendidikanInitial()) {
    on<AddDataPendidikanSubmited>((event, emit) async {
      emit(AddDataPendidikanLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        print("ini res Token : ${resToken.response}");
        var res = await DataKaryawanService.createDataPendidikan(
            resToken.response["token"],
            resToken.response["m_comp_id"] ?? 1,
            resToken.response["m_dir_id"] ?? 1,
            event.tingkatID,
            event.namaSekolah,
            event.tahunMasuk,
            event.tahunLulus,
            event.kotaID,
            event.nilai,
            event.jurusan,
            event.isPendTerakhir,
            event.ijazahNo,
            event.ijazahFoto,
            event.desc);

        if (res is ServicesSuccess) {
          emit(AddDataPendidikanSuccess(
              message: "Create Data Pendidikan Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataPendidikanFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddDataPendidikanFailed(message: "Unknown error occurred"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDataPendidikanFailedInBackground(
            message: 'Response format is invalid'));
      }
    });

    on<EditDataPendidikanSubmited>((event, emit) async {
      emit(AddDataPendidikanLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        print("ini res Token : ${resToken.response}");
        var res = await DataKaryawanService.editDataPendidikan(
            resToken.response["token"],
            resToken.response["m_comp_id"] ?? 1,
            resToken.response["m_dir_id"] ?? 1,
            event.pendidikanId,
            event.tingkatID,
            event.namaSekolah,
            event.tahunMasuk,
            event.tahunLulus,
            event.kotaID,
            event.nilai,
            event.jurusan,
            event.isPendTerakhir,
            event.ijazahNo,
            event.ijazahFoto,
            event.desc);

        if (res is ServicesSuccess) {
          emit(EditDataPendidikanSuccess(
              message: "Edit Data Pendidikan Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataPendidikanFailedUserExpired(message: "Token expired"));
          } else {
            emit(EditDataPendidikanFailed(message: "Unknown error occurred"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDataPendidikanFailedInBackground(
            message: 'Response format is invalid'));
      }
    });

    on<OnSelectTingkatPendidikan>(
      (event, emit) async {
        emit(AddDataPendidikanLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getTingkatPendidikan(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseTingkatPendidikan dataResponse =
                  ResponseTingkatPendidikan.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataTingkat = dataResponse.data ?? [];

              emit(
                SelectTingkatSuccessInBackground(dataTingkat: dataTingkat),
              );
            } else {
              emit(AddDataPendidikanFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(
                  AddDataPendidikanFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataPendidikanFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(
              AddDataPendidikanFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectKota>(
      (event, emit) async {
        emit(AddDataPendidikanLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ListGeneralService.getKotaAll(resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseKota dataResponse = ResponseKota.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataKota = dataResponse.data ?? [];

              emit(
                SelectKotaSuccessInBackground(dataKota: dataKota),
              );
            } else {
              emit(AddDataPendidikanFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(
                  AddDataPendidikanFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataPendidikanFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(
              AddDataPendidikanFailedInBackground(message: 'Response invalid'));
        }
      },
    );
  }
}

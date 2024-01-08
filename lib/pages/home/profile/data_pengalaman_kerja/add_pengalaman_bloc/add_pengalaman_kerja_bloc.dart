import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_pengalaman_kerja_service.dart';
import 'package:sj_presensi_mobile/services/list_general_service/list_general_services.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_pengalaman_kerja_event.dart';
part 'add_pengalaman_kerja_state.dart';

class AddPengalamanKerjaBloc
    extends Bloc<AddPengalamanKerjaEvent, AddPengalamanKerjaState> {
  List<DataKota> dataKota = [];
  AddPengalamanKerjaBloc() : super(AddDataPengalamanKerjaInitial()) {
    on<AddDataPengalamanKerjaSubmited>((event, emit) async {
      emit(AddDataPengalamanKerjaLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        print("ini res Token : ${resToken.response}");
        var res = await DataPengalamanKerjaService.createDataPengalamanKerja(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
          resToken.response["m_dir_id"] ?? 1,
          event.instansi,
          event.bidangUsaha,
          event.noTelp,
          event.posisi,
          event.tahunMasuk,
          event.tahunKeluar,
          event.alamat,
          event.kotaId,
          event.suratReferensi,
        );

        if (res is ServicesSuccess) {
          emit(AddDataPengalamanKerjaSuccess(
              message: "Create Data Pengalaman Kerja Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataPengalamanKerjaFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddDataPengalamanKerjaFailed(message: "Unknown error occurred"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDataPengalamanKerjaFailedInBackground(
            message: 'Response format is invalid'));
      }
    });

    on<EditDataPengalamanKerjaSubmited>((event, emit) async {
      emit(AddDataPengalamanKerjaLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        print("ini res Token : ${resToken.response}");
        var res = await DataPengalamanKerjaService.editDataPengalamanKerja(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
          resToken.response["m_dir_id"] ?? 1,
          event.pengalamanId,
          event.instansi,
          event.bidangUsaha,
          event.noTelp,
          event.posisi,
          event.tahunMasuk,
          event.tahunKeluar,
          event.alamat,
          event.kotaId,
          event.suratReferensi,
        );

        if (res is ServicesSuccess) {
          emit(EditPengalamanSuccess(
              message: "Edit Data Pengalaman Kerja Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataPengalamanKerjaFailedUserExpired(message: "Token expired"));
          } else {
            emit(AddDataPengalamanKerjaFailed(message: "Unknown error occurred"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(EditPengalamanFailed(
            message: 'Response format is invalid'));
      }
    });

    on<OnSelectKota>(
      (event, emit) async {
        emit(AddDataPengalamanKerjaLoading());
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
              emit(AddDataPengalamanKerjaFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(
                  AddDataPengalamanKerjaFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataPengalamanKerjaFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(
              AddDataPengalamanKerjaFailedInBackground(message: 'Response invalid'));
        }
      },
    );
  }
}

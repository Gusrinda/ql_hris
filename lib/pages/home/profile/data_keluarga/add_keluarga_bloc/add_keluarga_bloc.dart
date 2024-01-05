import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_keluarga_services.dart';
import 'package:sj_presensi_mobile/services/list_general_service/list_general_services.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_tingkat_pendidikan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_keluarga_event.dart';
part 'add_keluarga_state.dart';

class AddKeluargaBloc extends Bloc<AddKeluargaEvent, AddKeluargaState> {
   List<DataTingkat> dataTingkat = [];
   List<DataGeneral> dataPekerjaan = [];
   List<DataGeneral> dataJenisKelamin = [];
   List<DataGeneral> dataHubKeluarga = [];
  AddKeluargaBloc() : super(AddDataKeluargaInitial()) {
    on<AddDataKeluargaSubmited>((event, emit) async {
     emit(AddDataKeluargaLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataKeluargaServices.createDataKeluarga(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
           resToken.response["m_dir_id"] ?? 1,
          event.keluargaId,
          event.nama,
          event.pendTerakhirId,
          event.jenisKelaminId,
          event.pekerjaanId,
          event.usia,
          event.desc,
        );
        if (res is ServicesSuccess) {
          emit(AddDataKeluargaSuccess(message: "Create Data Keluarga Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataKeluargaFailedUserExpired(message: "Token Expired"));
          } else {
            emit(AddDataKeluargaFailed(message: "Unknown error occured"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      }
      else if (resToken is ServicesFailure) {
        emit(AddDataKeluargaFailedInBackground(message: "Response format is invalid"));
      }
    });

    on<EditDataKeluargaSubmited>((event, emit) async {
     emit(AddDataKeluargaLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataKeluargaServices.editDataKeluarga(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
           resToken.response["m_dir_id"] ?? 1,
           event.dataKeluargaId,
          event.keluargaId,
          event.nama,
          event.pendTerakhirId,
          event.jenisKelaminId,
          event.pekerjaanId,
          event.usia,
          event.desc,
        );
        if (res is ServicesSuccess) {
          emit(EditDataKeluargaSuccess(message: "Edit Data Keluarga Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataKeluargaFailedUserExpired(message: "Token Expired"));
          } else {
            emit(EditDataKeluargaFailed(message: "Unknown error occured"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      }
      else if (resToken is ServicesFailure) {
        emit(AddDataKeluargaFailedInBackground(message: "Response format is invalid"));
      }
    });

    on<OnSelectHubKeluarga>(
      (event, emit) async {
        emit(AddDataKeluargaLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getHubKeluarga(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataHubKeluarga = dataResponse.data ?? [];

              emit(
                SelectHubKeluargaSuccessInBackground(dataHubKeluarga: dataHubKeluarga),
              );
            } else {
              emit(AddDataKeluargaFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(
                  AddDataKeluargaFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataKeluargaFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(
              AddDataKeluargaFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectTingkatPendidikan>(
      (event, emit) async {
        emit(AddDataKeluargaLoading());
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
              emit(AddDataKeluargaFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(
                  AddDataKeluargaFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataKeluargaFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(
              AddDataKeluargaFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectPekerjaan>(
      (event, emit) async {
        emit(AddDataKeluargaLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getPekerjaan(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataPekerjaan = dataResponse.data ?? [];

              emit(
                SelectPekerjaanSuccessInBackground(dataPekerjaan: dataPekerjaan),
              );
            } else {
              emit(AddDataKeluargaFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(
                  AddDataKeluargaFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataKeluargaFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(
              AddDataKeluargaFailedInBackground(message: 'Response invalid'));
        }
      },
    );

     on<OnSelectJenisKelamin>(
      (event, emit) async {
        emit(AddDataKeluargaLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ListGeneralService.getJenisKelamin(
              resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse =
                  ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataJenisKelamin = dataResponse.data ?? [];

              emit(
                SelectJenisKelaminSuccessInBackground(dataJenisKelamin: dataJenisKelamin),
              );
            } else {
              emit(AddDataKeluargaFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(
                  AddDataKeluargaFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataKeluargaFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(
              AddDataKeluargaFailedInBackground(message: 'Response invalid'));
        }
      },
    );

  }
}

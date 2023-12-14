import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_organisasi_service.dart';
import 'package:sj_presensi_mobile/services/list_general_service/list_general_services.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_organisasi_event.dart';
part 'add_organisasi_state.dart';

class AddOrganisasiBloc extends Bloc<AddOrganisasiEvent, AddOrganisasiState> {
  List<DataKota> dataKota = [];
  List<DataGeneral> dataJenisOrganisasi = [];
  AddOrganisasiBloc() : super(AddDataOrganisasiInitial()) {
    on<AddDataOrganisasiSubmited>((event, emit) async {
     emit(AddDataOrganisasiLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataOrganisasiServices.createDataOrganisasi(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
           resToken.response["m_dir_id"] ?? 1,
          event.nama,
          event.tahun,
          event.jenisOrgId,
          event.kotaId,
          event.posisi
        );
        if (res is ServicesSuccess) {
          emit(AddDataOrganisasiSuccess(message: "Create Data Organisasi Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataOrganisasiFailedUserExpired(message: "Token Expired"));
          } else {
            emit(AddDataOrganisasiFailed(message: "Unknown error occured"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      }
      else if (resToken is ServicesFailure) {
        emit(AddDataOrganisasiFailedInBackground(message: "Response format is invalid"));
      }
    });

    on<OnSelectKota>(
      (event, emit) async {
        emit(AddDataOrganisasiLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ListGeneralService.getKota(resToken.response["token"]);

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
              emit(AddDataOrganisasiFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(
                  AddDataOrganisasiFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataOrganisasiFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(
              AddDataOrganisasiFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<OnSelectJenisOrganisasi>(
      (event, emit) async {
        emit(AddDataOrganisasiLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res =
              await ListGeneralService.getJenisOrganisasi(resToken.response["token"]);

          if (res is ServicesSuccess) {
            if (res.response is Map<String, dynamic>) {
              //Mengubah hasil response api ke model kelas
              ResponseGeneral dataResponse = ResponseGeneral.fromJson(res.response);

              //Masukkan data dari model ke kebutuhan
              dataJenisOrganisasi = dataResponse.data ?? [];

              emit(
                SelectJenisOrgSuccessInBackground(dataJenisOrganisasi: dataJenisOrganisasi),
              );
            } else {
              emit(AddDataOrganisasiFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(
                  AddDataOrganisasiFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataOrganisasiFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(
              AddDataOrganisasiFailedInBackground(message: 'Response invalid'));
        }
      },
    );
  }
}

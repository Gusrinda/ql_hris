import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_pelatihan_service.dart';
import 'package:sj_presensi_mobile/services/list_general_service/list_general_services.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_kota.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_pelatihan_event.dart';
part 'add_pelatihan_state.dart';

class AddPelatihanBloc extends Bloc<AddPelatihanEvent, AddPelatihanState> {
  List<DataKota> dataKota = [];
  AddPelatihanBloc() : super(AddDataPelatihanInitial()) {
    on<AddDataPelatihanSubmited>((event, emit) async {
      emit(AddDataPelatihanLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataPelatihanServices.createDataPelatihan(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
          resToken.response["m_dir_id"] ?? 1,
          event.namaPel,
          event.tahun,
          event.namaLem,
          event.kotaId,
        );
        if (res is ServicesSuccess) {
          emit(AddDataPelatihanSuccess(
              message: "Create Data Pelatihan Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataPelatihanFailedUserExpired(message: "Token Expired"));
          } else {
            emit(AddDataPelatihanFailed(message: "Unknown error occured"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDataPelatihanFailedInBackground(
            message: "Response format is invalid"));
      }
    });

    on<OnSelectKota>(
      (event, emit) async {
        emit(AddDataPelatihanLoading());
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
              emit(AddDataPelatihanFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(AddDataPelatihanFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataPelatihanFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(AddDataPelatihanFailedInBackground(message: 'Response invalid'));
        }
      },
    );

    on<EditDataPelatihanSubmited>((event, emit) async {
      emit(AddDataPelatihanLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataPelatihanServices.editDataPelatihan(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
          resToken.response["m_dir_id"] ?? 1,
          event.pelatihanId,
          event.namaPel,
          event.tahun,
          event.namaLem,
          event.kotaId,
        );
        if (res is ServicesSuccess) {
          emit(EditPelatihanSuccess(message: "Edit Data Pelatihan Berhasil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataPelatihanFailedUserExpired(message: "Token Expired"));
          } else {
            emit(EditPelatihanFailed(message: "Unknown error occured"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDataPelatihanFailedInBackground(
            message: "Response format is invalid"));
      }
    });
  }
}

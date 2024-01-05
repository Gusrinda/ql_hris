import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_prestasi_service.dart';
import 'package:sj_presensi_mobile/services/list_general_service/list_general_services.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_tingkat_pendidikan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_prestasi_event.dart';
part 'add_prestasi_state.dart';

class AddPrestasiBloc extends Bloc<AddPrestasiEvent, AddPrestasiState> {
  List<DataTingkat> dataTingkat = [];
  AddPrestasiBloc() : super(AddDataPrestasiInitial()) {
    on<AddDataPrestasiSubmited>((event, emit) async {
      emit(AddDataPrestasiLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataPrestasiServices.createDataPrestasi(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
          resToken.response["m_dir_id"] ?? 1,
          event.namaPres,
          event.tahun,
          event.tingkatPresId,
          // event.desc,
        );
        if (res is ServicesSuccess) {
          emit(AddDataPrestasiSuccess(
              message: "Create Data Prestasi Berhassil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataPrestasiFailedUserExpired(message: "Token Expired"));
          } else {
            emit(AddDataPrestasiFailed(message: "Unknown error occured"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDataPrestasiFailedUserExpired(
            message: "Response format is invalid"));
      }
    });

    on<EditDataPrestasiSubmited>((event, emit) async {
      emit(AddDataPrestasiLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataPrestasiServices.editDataPrestasi(
          resToken.response["token"],
          resToken.response["m_comp_id"] ?? 1,
          resToken.response["m_dir_id"] ?? 1,
          event.prestasiId,
          event.namaPres,
          event.tahun,
          event.tingkatPresId,
          // event.desc,
        );
        if (res is ServicesSuccess) {
          emit(
              EditDataPrestasiSuccess(message: "Edit Data Prestasi Berhassil"));
          print(res.response);
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(AddDataPrestasiFailedUserExpired(message: "Token Expired"));
          } else {
            emit(EditDataPrestasiFailed(message: "Unknown error occured"));
            print("Response from API: ${res.errorResponse}");
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(AddDataPrestasiFailedUserExpired(
            message: "Response format is invalid"));
      }
    });

    on<OnSelectTingkatPrestasi>(
      (event, emit) async {
        emit(AddDataPrestasiLoading());
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
              emit(AddDataPrestasiFailedInBackground(
                  message: 'Response format is invalid'));
            }
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(AddDataPrestasiFailedUserExpired(message: "Token expired"));
            } else {
              emit(AddDataPrestasiFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(AddDataPrestasiFailedInBackground(message: 'Response invalid'));
        }
      },
    );
  }
}

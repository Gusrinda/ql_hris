import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/services/realisasi_dinas_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'add_realisasi_dinas_event.dart';
part 'add_realisasi_dinas_state.dart';

class AddRealisasiDinasBloc
    extends Bloc<AddRealisasiDinasEvent, AddRealisasiDinasState> {
  List<DataDinas> listDinasApproved = [];
  List<DataGeneral> listTipe = [];
  AddRealisasiDinasBloc() : super(AddRealisasiDinasInitial()) {
    
    on<AddRealisasiDinasSubmited>((event, emit) async {
      emit(AddRealisasiDinasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await RealisasiDinasServices.addRealisasiDinas(
          resToken.response["token"],
          event.tSpdId,
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

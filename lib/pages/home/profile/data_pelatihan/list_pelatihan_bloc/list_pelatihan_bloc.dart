import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/data_pelatihan_service.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_pelatihan_karyawan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_pelatihan_event.dart';
part 'list_pelatihan_state.dart';

class ListPelatihanBloc extends Bloc<ListPelatihanEvent, ListPelatihanState> {
  List<DataPelatihan> listpelatihan = [];
  ListPelatihanBloc() : super(ListPelatihanInitial()) {
    on<GetListPelatihan>((event, emit) async {
      emit(ListPelatihanLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await DataPelatihanServices.getListPelatihan(
            resToken.response["token"]);
        if (res is ServicesSuccessNoMobile) {
          if (res.response is Map<String, dynamic>) {
            print(res.response);
            ResponsePelatihanKaryawan dataResponse =
                ResponsePelatihanKaryawan.fromJson(res.response);
            listpelatihan = dataResponse.data ?? [];
            emit(
                ListPelatihanSuccessInBackground(dataPelatihan: listpelatihan));
          } else {
            emit(ListPelatihanFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailureNoMobile) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListPelatihanFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListPelatihanFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListPelatihanFailedInBackground(message: 'Response invalid'));
      }
    });
  }
}

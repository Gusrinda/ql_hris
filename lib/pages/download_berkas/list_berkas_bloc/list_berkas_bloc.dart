import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sj_presensi_mobile/services/berkas_services.dart';
import 'package:sj_presensi_mobile/services/model/berkas_model.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'list_berkas_event.dart';
part 'list_berkas_state.dart';

class ListBerkasBloc extends Bloc<ListBerkasEvent, ListBerkasState> {
  List<DataBerkas> listBerkas = [];
  ListBerkasBloc() : super(ListBerkasInitial()) {
    on<GetListBerkas>((event, emit) async {
      emit(ListBerkasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res = await BerkasServices.getListBerkas(
            resToken.response["token"], event.kategori);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            BerkasModel dataResponse = BerkasModel.fromJson(res.response);
            listBerkas = dataResponse.data ?? [];
            print("GET Pelatihan: $listBerkas}");
            emit(ListBerkasSuccess(dataBerkas: listBerkas));
          } else {
            emit(ListBerkasFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListBerkasFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListBerkasFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListBerkasFailedInBackground(message: "Response Invalid"));
      }
    });
  }
}

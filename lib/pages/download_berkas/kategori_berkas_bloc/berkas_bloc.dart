import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/berkas_services.dart';
import 'package:sj_presensi_mobile/services/model/berkas_model.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'berkas_event.dart';
part 'berkas_state.dart';

class BerkasBloc extends Bloc<BerkasEvent, BerkasState> {
  List<DataBerkas> kategoriBerkas = [];
  BerkasBloc() : super(KategoriBerkasInitial()) {
    on<GetKategoriBerkas>((event, emit) async {
       emit(KategoriBerkasLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res =
            await BerkasServices.getBerkas(resToken.response["token"]);
        if (res is ServicesSuccessNoMobile) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            BerkasModel dataResponse =
                BerkasModel.fromJson(res.response);
            kategoriBerkas = dataResponse.data ?? [];
            print("GET Pelatihan: $kategoriBerkas}");
            emit(KategoriBerkasSuccess(dataBerkas: kategoriBerkas));
          } else {
            emit(KategoriBerkasFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(KategoriBerkasFailedUserExpired(message: "Token expired"));
          } else {
            emit(KategoriBerkasFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailureNoMobile) {
        emit(KategoriBerkasFailedInBackground(message: "Response Invalid"));
      }
    });
  }
}

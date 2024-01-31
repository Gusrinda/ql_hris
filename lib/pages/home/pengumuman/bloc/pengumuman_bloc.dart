import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/model/pengumuman/pengumuman_model.dart';
import 'package:sj_presensi_mobile/services/pengumuman_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'pengumuman_event.dart';
part 'pengumuman_state.dart';

class PengumumanBloc extends Bloc<PengumumanEvent, PengumumanState> {
  List<DataPengumuman> listpengumuman = [];
  PengumumanBloc() : super(ListPengumumanInitial()) {
    on<GetListPengumuman>((event, emit) async {
      emit(ListPengumumanLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res =
            await PengumumanServices.getPengumuman(resToken.response["token"]);
        if (res is ServicesSuccess) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            PengumumanModel dataResponse =
                PengumumanModel.fromJson(res.response);
            listpengumuman = dataResponse.data ?? [];
            print("GET Pengumuman: $listpengumuman}");
            emit(ListPengumumanSuccess(dataPengumuman: listpengumuman));
          } else {
            emit(ListPengumumanFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListPengumumanFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListPengumumanFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ListPengumumanFailedInBackground(message: "Response Invalid"));
      }
      // try {
      //   var response = await PengumumanServices.getPengumuman();
      //   if (response is ServicesSuccess) {
      //     // Check if response contains data property
      //     if (response.response != null &&
      //         response.response is List<dynamic>) {
      //       List<dynamic> responseData = response.response;
      //       // Convert dynamic list to List<PengumumanModel>
      //       List<PengumumanModel> data = responseData
      //           .map((json) => PengumumanModel.fromJson(json))
      //           .toList();
      //       emit(ListPengumumanSuccess(dataPengumuman: data));
      //     } else {
      //       emit(ListPengumumanFailed(message: "Failed to get data"));
      //     }
      //   } else {
      //     emit(ListPengumumanFailed(message: "Failed to get data"));
      //   }
      // } catch (e) {
      //   emit(ListPengumumanFailed(message: "An error occurred: $e"));
      // }
    });
  }
}

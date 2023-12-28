import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/model/pengumuman/pengumuman_model.dart';
import 'package:sj_presensi_mobile/services/pengumuman_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';
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
        String staticToken =
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNGU1ZTIxYmVhMzg5NGVmMmUyMmZjNzIwM2Q1Y2I0MTExOTNhMDkzMmFlZGRjNjYwZGUwZTgyOTA4YmIyODBkMjAzOTZiZDQwMTk1Y2FjY2UiLCJpYXQiOjE3MDM3MTcyNDcuNjQzNzA1LCJuYmYiOjE3MDM3MTcyNDcuNjQzNzEsImV4cCI6MTczNTMzOTY0Ny42MzY3Nywic3ViIjoiMTciLCJzY29wZXMiOltdfQ.kjaagij0MCwey4fsfP8toiPPyPiPD0QIQb3sJhnAZNzLmsleGXAWA9VAPVLv_WJPlnqULO7ZFOP3WO7qMZCP3lNUFFIO0dDgOsiadKY-eI0-L2r_PT7HethNEJOlVxmPCPOiw_ACNX8Mg394fVOgDx9rvbAZoQ509T2Vn7NGLAMeBgaNCIM_P45lBZPKB695TVtlM135dHQUuiuQnaLjpbPT1CYNmFoeNkRQJsJCiOEYPUIOHenTUevIe2LqgEgSeRxbWy4NltVhx-sUnb2uvzW3vqJU_BTC5ohfZLYDUNcYbbOZjRFxbfhYZyFMzO3vJqhcnIgfyKG9XVOsqxaBvfZdlSa2Qa7EwIvs_pDuIN_OevyY6Z3IMpl26jZ5lv4RQ4UfJ90TztZRTPTo_MJJ49xKktkXUeALORlpI57Sx7-D8wR0n07Ij_kSkct4hlBAjSRL2IWC7YAdIocXPoDs-Ad4bPg9amYp9tsyxQy55tcKTJHjHCP7QaAL5KSN2jYHXhLgn_3CPUN1vicjxZg95s_hVwaBJgs8en2FZ3j8iBDmsmRfFznkxTwQyzydJFHezLfuytcd2ZzU8nbDEYxZ-JVUJiiOGQx9Y-T3T9g4yLT2gmmPlIOAzFdwoRIfvL3eKM95NcO4zAFyRGRBQtGHlMGID7B0hIIJoUwLIvzCtYU";
        var res = await PengumumanServices.getPengumuman(staticToken);
        if (res is ServicesSuccessNoMobile) {
          if (res.response is Map<String, dynamic>) {
            print("INI RES: ${res.response}");
            PengumumanModel dataResponse =
                PengumumanModel.fromJson(res.response);
            listpengumuman = dataResponse.data ?? [];
            print("GET Pelatihan: $listpengumuman}");
            emit(ListPengumumanSuccess(dataPengumuman: listpengumuman));
          } else {
            emit(ListPengumumanFailedInBackground(
                message: 'Response format is invalid'));
          }
        } else if (res is ServicesFailureNoMobile) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ListPengumumanFailedUserExpired(message: "Token expired"));
          } else {
            emit(ListPengumumanFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailureNoMobile) {
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

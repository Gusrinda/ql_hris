import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/data_karyawan_service/biodata_karyawan.service.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_biodata_karyawan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'biodata_event.dart';
part 'biodata_state.dart';
// part 'biodata_bloc.freezed.dart';

class BiodataBloc extends Bloc<BiodataEvent, BiodataState> {
  ResponseBiodataKaryawan? biodataKaryawan;
  

  BiodataBloc() : super(BiodataInitial()) {
    on<GetBiodata>((event, emit) async {
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res = await BiodataKaryawanService.getBiodataKaryawan(
            resToken.response["token"]);
        if (res is ServicesSuccessNoMobile) {
          Biodata? bioData = Biodata.fromJson(res.response['data']);
          print("GET BIODATA: $bioData}");
          emit(GetBiodataSuccess(bioData: bioData));
        } else if (res is ServicesFailureNoMobile) {
          if (res.errorResponse == null) {
            emit(BiodataFailedUserExpired(message: "Gagal Mengambil Data"));
          } else {
            emit(BiodataFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(BiodataFailedInBackground());
      }
    });

    

    
  }
}

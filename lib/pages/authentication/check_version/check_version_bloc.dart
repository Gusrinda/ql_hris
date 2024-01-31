import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:sj_presensi_mobile/services/model/check_version/check_version.dart';
import 'package:sj_presensi_mobile/services/version_service.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';
import 'package:yaml/yaml.dart';

part 'check_version_event.dart';
part 'check_version_state.dart';

class CheckVersionBloc extends Bloc<CheckVersionEvent, CheckVersionState> {
  DataVersion? dataVersion;

  CheckVersionBloc() : super(CheckVersionInitial()) {
    on<GetVersion>((event, emit) async {
      emit(CheckVersionLoading());
      var res = await VersionServices.getVersion();
      print("Get API");
      if (res is ServicesSuccess) {
        if (res.response is Map<String, dynamic>) {
          ResponseCheckVersion? dataResponse =
              ResponseCheckVersion.fromJson(res.response);
          dataVersion = dataResponse.data;
          print("Response API");
          print(dataResponse);

          emit(
            CheckVersionSuccess(
              dataVersion: dataVersion,
            ),
          );
        } else {
          emit(CheckVersionFailed(message: 'Gagal mengambil data'));
        }
      } else if (res is ServicesFailure) {
        if (res.errorResponse == null) {
          await GeneralSharedPreferences.removeUserToken();
          emit(CheckVersionFailedUserExpired(message: "Token expired"));
        } else {
          emit(CheckVersionFailed(message: res.errorResponse));
        }
      }
    });
  }
}

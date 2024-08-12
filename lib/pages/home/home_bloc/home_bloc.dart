import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sj_presensi_mobile/services/birthday_services.dart';
import 'package:sj_presensi_mobile/services/model/all_karyawan/response_all_karyawan.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<OnGetBirthday>(_onGetBirthday);
  }

  FutureOr<void> _onGetBirthday(
      OnGetBirthday event, Emitter<HomeState> emit) async {
    try {
      print("start");
      // emit(LemburLoading());
      emit(state.copyWith(status: FormzSubmissionStatus.initial));

      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await BirthdayService.getBirthday(
            token: resToken.response["token"]);
        if (res is ServicesSuccess) {
          ResponseAllKaryawan responseData =
              ResponseAllKaryawan.fromJson(res.response);
              // log(responseData.data.toString());
          emit(state.copyWith(
            responseDataKaryawan: responseData,
            status: FormzSubmissionStatus.success,
          ));
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(state.copyWith(
              status: FormzSubmissionStatus.failure,
              errorMessage: "Terjadi Kesalahan!",
            ));
          } else {
            emit(state.copyWith(
              status: FormzSubmissionStatus.failure,
              errorMessage: res.errorResponse,
            ));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: "Gagal mendapatkan data",
        ));
      }
    } catch (e) {
      log(e.toString());
    }
  }
}

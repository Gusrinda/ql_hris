import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sj_presensi_mobile/services/auth_services.dart';
import 'package:sj_presensi_mobile/services/model/profile_model.dart';
import 'package:sj_presensi_mobile/services/profile_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileModel? profileModel;

  ProfileBloc() : super(ProfileInitial()) {
    on<GetDataProfile>((event, emit) async {
      emit(ProfileLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res =
            await ProfileServices.getDataProfiel(resToken.response["token"]);
        if (res is ServicesSuccess) {
          profileModel = ProfileModel.fromMap(res.response["data"]);
          emit(GetDataProfileSuccess(
            imagePath: profileModel?.imagePath,
            name: profileModel?.name,
            employeeId: profileModel?.employeeId,
            email: profileModel?.email,
            phoneNumber: profileModel?.phoneNumber,
          ));
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ProfileFailedUserExpired(message: "Token expired"));
          } else {
            emit(ProfileFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ProfileFailedInBackground());
      }
    });

    on<LogoutProfile>((event, emit) async {
      emit(ProfileLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      if (resToken is ServicesSuccess) {
        var res = await AuthServices.logout(resToken.response["token"]);
        if (res is ServicesSuccess) {
          emit(LogoutSuccessInBackground());
          await GeneralSharedPreferences.removeUserToken();
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            await GeneralSharedPreferences.removeUserToken();
            emit(ProfileFailedUserExpired(message: "Token expired"));
          } else {
            emit(ProfileFailed(message: res.errorResponse));
          }
        }
      } else if (resToken is ServicesFailure) {
        emit(ProfileFailedInBackground());
      }
    });

    on<EditImageProfile>((event, emit) async {
      if (event.imagePath != null) {
        emit(ProfileLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ProfileServices.editProfile(
            resToken.response["token"],
            profileModel?.email,
            profileModel?.employeeId,
            profileModel?.name,
            profileModel?.phoneNumber,
            imagePath: event.imagePath,
          );
          if (res is ServicesSuccess) {
            print(res.response);
            emit(ProfileSuccessInBackground());
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(ProfileFailedUserExpired(message: "Token expired"));
            } else {
              emit(ProfileFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(ProfileFailedInBackground());
        }
      }
    });

    on<EditDataProfile>((event, emit) async {
      if (event.phoneNumber != null) {
        emit(ProfileLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ProfileServices.editProfile(
            resToken.response["token"],
            profileModel?.email,
            profileModel?.employeeId,
            profileModel?.name,
            event.phoneNumber,
          );
          if (res is ServicesSuccess) {
            emit(ProfileSuccessInBackground());
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(ProfileFailedUserExpired(message: "Token expired"));
            } else {
              emit(ProfileFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(ProfileFailedInBackground());
        }
      }
    });

    on<EditPasswordProfile>((event, emit) async {
      if (event.status) {
        emit(ProfileLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await ProfileServices.editProfilePassword(
            resToken.response["token"],
            event.oldPassword,
            event.newPassword,
          );
          if (res is ServicesSuccess) {
            emit(ChangePasswordSuccess(message: "Ubah password berhasil!"));
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(ProfileFailedUserExpired(message: "Token expired"));
            } else {
              emit(ChangePasswordFailed(message: res.errorResponse));
            }
          }
        } else if (resToken is ServicesFailure) {
          emit(ProfileFailedInBackground());
        }
      }
    });
  }
}

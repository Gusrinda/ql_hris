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
  DataProfile? profileModel;
  DataProfile formDataSubmited = DataProfile();

  ProfileBloc() : super(ProfileInitial()) {
    on<GetDataProfile>((event, emit) async {
      emit(ProfileLoading());
      var resToken = await GeneralSharedPreferences.getUserToken();
      print(resToken);
      if (resToken is ServicesSuccess) {
        var res = await ProfileServices.getDataProfilel(
            resToken.response["token"], resToken.response["id"] ?? 1);
        if (res is ServicesSuccess) {
          print(res.response);
          profileModel = DataProfile.fromJson(res.response["data"]);
          emit(GetDataProfileSuccess(
            imagePath: profileModel!.profilImage ?? '',
            username: profileModel!.username ?? '',
            name: profileModel!.mKaryNamaLengkap ?? '',
            employeeId: profileModel!.id ?? 1,
            email: profileModel!.email ?? '',
            phoneNumber: profileModel!.telp ?? '',
            dataProfile: profileModel
          ));
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            // await GeneralSharedPreferences.removeUserToken();
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
        print("ini res tokennya ${resToken}");
        var res = await AuthServices.logout(resToken.response["token"]);
        if (res is ServicesSuccess) {
          emit(LogoutSuccessInBackground(message: 'Logout Success'));
          await GeneralSharedPreferences.removeUserToken();
        } else if (res is ServicesFailure) {
          if (res.errorResponse == null) {
            emit(ProfileFailedUserExpired(message: "Token Expired"));
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
          print("ini res tokennya ${resToken}");
          var res = await ProfileServices.editImageProfile(
            resToken.response["token"],
            resToken.response["id"] ?? 1,
            imagePath: event.imagePath,
          );
          print("ini res: ${res}");
          if (res is ServicesSuccess) {
            print(res.response);
            emit(ProfileSuccessInBackground());
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              // await GeneralSharedPreferences.removeUserToken();
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
          var res = await ProfileServices.editDataProfile(
            resToken.response["token"],
            resToken.response["id"] ?? 1,
            event.oldPassword,
            event.newPassword,
          );
          if (res is ServicesSuccess) {
            emit(ChangePasswordSuccess(message: "Password berhasil diganti"));
          } else if (res is ServicesFailure) {
            if (res.errorResponse == null) {
              await GeneralSharedPreferences.removeUserToken();
              emit(ProfileFailedUserExpired(message: "Token expired"));
              print('error apa ${res.errorResponse}');
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

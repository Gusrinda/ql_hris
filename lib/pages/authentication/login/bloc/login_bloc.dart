import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sj_presensi_mobile/services/auth_services.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/shared_pref.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmited>(
      (event, emit) async {
        if (event.status) {
          emit(LoginLoading());
          print("Status: ${event.status}");
          print("Username: ${event.username}, Password: ${event.password}");
          var res = await AuthServices.login(event.username, event.password);
          if (res is ServicesSuccess) {
            try {
              await GeneralSharedPreferences.saveUserToken(res.response["token"].toString());
              print("Token: ${res.response["token"]}");
              // print("Res: ${res.response}");
            } catch (e) {
              print("An error occurred: $e");
            }
            emit(LoginSuccess(message: "Login berhasil!"));
          } else if (res is ServicesFailure) {
            emit(LoginFailed(
                message: "Login failed! ${res.errorResponse ?? ''}"));
          }
        }
      },
    );
    on<LoginChecked>(
      (event, emit) async {
        emit(LoginLoading());
        var resToken = await GeneralSharedPreferences.getUserToken();
        if (resToken is ServicesSuccess) {
          var res = await AuthServices.checkTokenAvailable(
              resToken.response["token"]);
          if (res is ServicesSuccess) {
            emit(LoginSuccess(message: "Login berhasil!"));
          } else if (res is ServicesFailure) {
            await GeneralSharedPreferences.removeUserToken();
            emit(LoginFailed(
                message:
                    "Login failed! ${res.errorResponse ?? 'Token expired'}"));
          }
        } else if (resToken is ServicesFailure) {
          emit(LoginFailedInBackground());
        }
      },
    );
  }
}

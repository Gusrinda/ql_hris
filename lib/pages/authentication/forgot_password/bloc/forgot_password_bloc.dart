import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ql_absensi_express_mobile/services/auth_services.dart';
import 'package:ql_absensi_express_mobile/utils/services.dart';
import 'package:ql_absensi_express_mobile/utils/shared_pref.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(ForgotPasswordInitial()) {
    on<ForgotPasswordSubmited>(
      (event, emit) async {
        if (event.status) {
          emit(ForgotPasswordLoading());
          var res = await AuthServices.forgotPassword(event.email);
          if (res is ServicesSuccess) {
            emit(ForgotPasswordSuccess(message: "Email berhasil dikirim!"));
          } else if (res is ServicesFailure) {
            emit(ForgotPasswordFailed(
                message: "Email gagal dikirim! ${res.errorResponse.toString()}"));
          }
        }
      },
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ql_absensi_express_mobile/services/auth_services.dart';
import 'package:ql_absensi_express_mobile/utils/services.dart';
import 'package:ql_absensi_express_mobile/utils/shared_pref.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterSubmited>((event, emit) async {
      if (event.status) {
        emit(RegisterLoading());
        var res = await AuthServices.register(
            event.email, event.password, event.name);
        if (res is ServicesSuccess) {
          emit(RegisterSuccess(message: "Register berhasil!"));
        } else if (res is ServicesFailure) {
          emit(RegisterFailed(
              message: "Register failed! ${res.errorResponse.toString()}"));
        }
      }
    });
  }
}

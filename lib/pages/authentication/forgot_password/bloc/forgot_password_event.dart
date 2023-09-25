part of 'forgot_password_bloc.dart';

abstract class ForgotPasswordEvent extends Equatable {
  const ForgotPasswordEvent();

  @override
  List<Object> get props => [];
}


class ForgotPasswordSubmited extends ForgotPasswordEvent {
  String email;
  bool status;

  ForgotPasswordSubmited({
    required this.email,
    required this.status,
  });

  @override
  List<Object> get props => [email, status];
}
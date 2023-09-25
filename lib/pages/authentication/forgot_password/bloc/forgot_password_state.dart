part of 'forgot_password_bloc.dart';

abstract class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();
  
  @override
  List<Object> get props => [];
}

class ForgotPasswordInitial extends ForgotPasswordState {}

class ForgotPasswordLoading extends ForgotPasswordState {}

class ForgotPasswordFailed extends ForgotPasswordState {
  String message;

  ForgotPasswordFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ForgotPasswordSuccess extends ForgotPasswordState {
  String message;

  ForgotPasswordSuccess({required this.message});
  
  @override
  List<Object> get props => [message];
}

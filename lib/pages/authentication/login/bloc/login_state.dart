part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailed extends LoginState {
  String message;

  LoginFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class LoginFailedInBackground extends LoginState {}

class LoginSuccess extends LoginState {
  String message;

  LoginSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

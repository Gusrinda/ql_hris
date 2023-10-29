part of 'login_bloc.dart';

// @immutable
abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginSubmited extends LoginEvent {
  String username;
  String password;
  bool status;

  LoginSubmited({
    required this.username,
    required this.password,
    required this.status,
  });

  @override
  List<Object> get props => [username, password, status];
}

class LoginChecked extends LoginEvent {}

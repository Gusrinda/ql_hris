part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterSubmited extends RegisterEvent {
  String name;
  String email;
  String password;
  bool status;

  RegisterSubmited({
    required this.name,
    required this.email,
    required this.password,
    required this.status,
  });

  @override
  List<Object> get props => [name, email, password, status];
}

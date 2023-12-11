part of 'check_in_out_bloc.dart';

abstract class CheckInOutState extends Equatable {
  const CheckInOutState();

  @override
  List<Object> get props => [];
}

class CheckInOutInitial extends CheckInOutState {}

class CheckInOutLoading extends CheckInOutState {}

class CheckInOutSuccessInBackground extends CheckInOutState {
  String name;
  String fotoProfil;
  bool isCheckin;

  CheckInOutSuccessInBackground({
    required this.name,
    required this.fotoProfil,
    required this.isCheckin,
  });

  @override
  List<Object> get props => [name, fotoProfil, isCheckin];
}

class InfoCheckInOutSuccessInBackground extends CheckInOutState {
  String name;
  String fotoProfil;

  InfoCheckInOutSuccessInBackground({
    required this.name,
    required this.fotoProfil,
  });

  @override
  List<Object> get props => [name, fotoProfil];
}

class CheckInOutFailedInBackground extends CheckInOutState {}

class CheckInOutFailed extends CheckInOutState {
  String message;

  CheckInOutFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class CheckInOutFailedUserExpired extends CheckInOutState {
  String message;

  CheckInOutFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

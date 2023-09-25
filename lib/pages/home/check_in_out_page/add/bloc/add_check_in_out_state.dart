part of 'add_check_in_out_bloc.dart';

abstract class AddCheckInOutState extends Equatable {
  const AddCheckInOutState();

  @override
  List<Object> get props => [];
}

class AddCheckInOutInitial extends AddCheckInOutState {}

class AddCheckInOutLoading extends AddCheckInOutState {}

class AddCheckInOutFailed extends AddCheckInOutState {
  String message;

  AddCheckInOutFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddCheckInOutFailedUserExpired extends AddCheckInOutState {
  String message;

  AddCheckInOutFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

class AddCheckInOutSuccess extends AddCheckInOutState {
  String message;

  AddCheckInOutSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddCheckInOutFailedInBackground extends AddCheckInOutState {}

class AddCheckInOutButtonActivate extends AddCheckInOutState {
  bool isOnSite;

  AddCheckInOutButtonActivate({required this.isOnSite});

  @override
  List<Object> get props => [isOnSite];
}

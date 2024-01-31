part of 'add_bahasa_bloc.dart';


abstract class AddBahasaState extends Equatable {
  const AddBahasaState();

  @override
  List<Object> get props => [];
}

class AddDatabahasaInitial extends AddBahasaState {}

class AddDatabahasaLoading extends AddBahasaState {}

class AddDatabahasaSuccess extends AddBahasaState {
  String message;

  AddDatabahasaSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDatabahasaFailed extends AddBahasaState {
  String message;

  AddDatabahasaFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDatabahasaFailedInBackground extends AddBahasaState {
  String message;

  AddDatabahasaFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDatabahasaFailedUserExpired extends AddBahasaState {
  String message;

  AddDatabahasaFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

class EditBahasanSuccess extends AddBahasaState {
  String message;

  EditBahasanSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class EditBahasanFailed extends AddBahasaState {
  String message;

  EditBahasanFailed({required this.message});

  @override
  List<Object> get props => [message];
}
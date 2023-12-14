part of 'add_pelatihan_bloc.dart';

abstract class AddPelatihanState extends Equatable {
  const AddPelatihanState();

  @override
  List<Object> get props => [];
}

class AddDataPelatihanInitial extends AddPelatihanState {}

class AddDataPelatihanLoading extends AddPelatihanState {}

class SelectKotaSuccessInBackground extends AddPelatihanState {
  List<DataKota> dataKota;

  SelectKotaSuccessInBackground({
    required this.dataKota,
  });

  @override
  List<Object> get props => [dataKota];
}

class AddDataPelatihanSuccess extends AddPelatihanState {
  String message;

  AddDataPelatihanSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPelatihanFailed extends AddPelatihanState {
  String message;

  AddDataPelatihanFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPelatihanFailedInBackground extends AddPelatihanState {
  String message;

  AddDataPelatihanFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPelatihanFailedUserExpired extends AddPelatihanState {
  String message;

  AddDataPelatihanFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

class EditPelatihanSuccess extends AddPelatihanState {
  String message;

  EditPelatihanSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class EditPelatihanFailed extends AddPelatihanState {
  String message;

  EditPelatihanFailed({required this.message});

  @override
  List<Object> get props => [message];
}
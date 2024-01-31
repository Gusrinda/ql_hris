part of 'add_lembur_bloc.dart';

abstract class AddLemburState extends Equatable {
  const AddLemburState();

  @override
  List<Object> get props => [];
}

class AddLemburInitial extends AddLemburState {}

class AddLemburLoading extends AddLemburState {}

class SelectAlasanSuccess extends AddLemburState {
  List<DataGeneral> dataAlasanLembur;

  SelectAlasanSuccess({
    required this.dataAlasanLembur,
  });

  @override
  List<Object> get props => [dataAlasanLembur];
}

class SelectPicSuccessInBackground extends AddLemburState {
  List<DataPic> dataPic;

  SelectPicSuccessInBackground({
    required this.dataPic,
  });

  @override
  List<Object> get props => [dataPic];
}

class SelectTipeSuccess extends AddLemburState {
  List<DataGeneral> dataTipeLembur;

  SelectTipeSuccess({
    required this.dataTipeLembur,
  });

  @override
  List<Object> get props => [dataTipeLembur];
}

class AddLemburSuccess extends AddLemburState {
  String message;

  AddLemburSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddLemburFailed extends AddLemburState {
  String message;

  AddLemburFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddLemburFailedUserExpired extends AddLemburState {
  String message;

  AddLemburFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

class EditLemburSuccess extends AddLemburState {
  String message;

  EditLemburSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class EditLemburFailed extends AddLemburState {
  String message;

  EditLemburFailed({required this.message});

  @override
  List<Object> get props => [message];
}
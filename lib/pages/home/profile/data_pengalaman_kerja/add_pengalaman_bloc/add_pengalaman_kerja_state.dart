part of 'add_pengalaman_kerja_bloc.dart';

abstract class AddPengalamanKerjaState extends Equatable {
  const AddPengalamanKerjaState();

  @override
  List<Object> get props => [];
}

class AddDataPengalamanKerjaInitial extends AddPengalamanKerjaState {}

class AddDataPengalamanKerjaLoading extends AddPengalamanKerjaState {}

class SelectKotaSuccessInBackground extends AddPengalamanKerjaState {
  List<DataKota> dataKota;

  SelectKotaSuccessInBackground({
    required this.dataKota,
  });

  @override
  List<Object> get props => [dataKota];
}

class AddDataPengalamanKerjaSuccess extends AddPengalamanKerjaState {
  String message;

  AddDataPengalamanKerjaSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPengalamanKerjaFailed extends AddPengalamanKerjaState {
  String message;

  AddDataPengalamanKerjaFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPengalamanKerjaFailedInBackground extends AddPengalamanKerjaState {
  String message;

  AddDataPengalamanKerjaFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPengalamanKerjaFailedUserExpired extends AddPengalamanKerjaState {
  String message;

  AddDataPengalamanKerjaFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

class EditPengalamanSuccess extends AddPengalamanKerjaState {
  String message;

  EditPengalamanSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class EditPengalamanFailed extends AddPengalamanKerjaState {
  String message;

  EditPengalamanFailed({required this.message});

  @override
  List<Object> get props => [message];
}
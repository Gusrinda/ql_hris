part of 'add_cuti_bloc.dart';

abstract class AddCutiState extends Equatable {
  const AddCutiState();

  @override
  List<Object> get props => [];
}

class AddCutiInitial extends AddCutiState {}

class AddCutiLoading extends AddCutiState {}

class SelectAlasanSuccessInBackground extends AddCutiState {
  List<Datum> dataAlasanCuti;

  SelectAlasanSuccessInBackground({
    required this.dataAlasanCuti,
  });

  @override
  List<Object> get props => [dataAlasanCuti];
}

class SelectTipeSuccessInBackground extends AddCutiState {
  List<DataTipeCuti> dataTipeCuti;

  SelectTipeSuccessInBackground({
    required this.dataTipeCuti,
  });

  @override
  List<Object> get props => [dataTipeCuti];
}

class AddCutiSuccess extends AddCutiState {
  String message;

  AddCutiSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class UploadingFileSuccess extends AddCutiState {
  String message;

  UploadingFileSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class UploadingFileFailed extends AddCutiState {
  String message;

  UploadingFileFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddCutiFailed extends AddCutiState {
  String message;

  AddCutiFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddCutiFailedInBackground extends AddCutiState {
  String message;

  AddCutiFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddCutiFailedUserExpired extends AddCutiState {
  String message;

  AddCutiFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

class EditCutiSuccess extends AddCutiState {
  String message;

  EditCutiSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class EditCutiFailed extends AddCutiState {
  String message;

  EditCutiFailed({required this.message});

  @override
  List<Object> get props => [message];
}

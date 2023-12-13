part of 'add_data_pendidikan_bloc.dart';

abstract class AddDataPendidikanState extends Equatable {
  const AddDataPendidikanState();

  @override
  List<Object> get props => [];
}

class AddDataPendidikanInitial extends AddDataPendidikanState {}

class AddDataPendidikanLoading extends AddDataPendidikanState {}

class SelectTingkatSuccessInBackground extends AddDataPendidikanState {
  List<DataTingkat> dataTingkat;

  SelectTingkatSuccessInBackground({
    required this.dataTingkat,
  });

  @override
  List<Object> get props => [dataTingkat];
}

class SelectKotaSuccessInBackground extends AddDataPendidikanState {
  List<DataKota> dataKota;

  SelectKotaSuccessInBackground({
    required this.dataKota,
  });

  @override
  List<Object> get props => [dataKota];
}

class AddDataPendidikanSuccess extends AddDataPendidikanState {
  String message;

  AddDataPendidikanSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPendidikanFailed extends AddDataPendidikanState {
  String message;

  AddDataPendidikanFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPendidikanFailedInBackground extends AddDataPendidikanState {
  String message;

  AddDataPendidikanFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataPendidikanFailedUserExpired extends AddDataPendidikanState {
  String message;

  AddDataPendidikanFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

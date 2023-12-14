part of 'add_keluarga_bloc.dart';

abstract class AddKeluargaState extends Equatable {
  const AddKeluargaState();

  @override
  List<Object> get props => [];
}


class AddDataKeluargaInitial extends AddKeluargaState {}

class AddDataKeluargaLoading extends AddKeluargaState {}

class SelectHubKeluargaSuccessInBackground extends AddKeluargaState {
  List<DataGeneral> dataHubKeluarga;

  SelectHubKeluargaSuccessInBackground({
    required this.dataHubKeluarga,
  });

  @override
  List<Object> get props => [dataHubKeluarga];
}

class SelectTingkatSuccessInBackground extends AddKeluargaState {
  List<DataTingkat> dataTingkat;

  SelectTingkatSuccessInBackground({
    required this.dataTingkat,
  });

  @override
  List<Object> get props => [dataTingkat];
}

class SelectPekerjaanSuccessInBackground extends AddKeluargaState {
  List<DataGeneral> dataPekerjaan;

  SelectPekerjaanSuccessInBackground({
    required this.dataPekerjaan,
  });

  @override
  List<Object> get props => [dataPekerjaan];
}

class SelectJenisKelaminSuccessInBackground extends AddKeluargaState {
  List<DataGeneral> dataJenisKelamin;

  SelectJenisKelaminSuccessInBackground({
    required this.dataJenisKelamin,
  });

  @override
  List<Object> get props => [dataJenisKelamin];
}

class AddDataKeluargaSuccess extends AddKeluargaState {
  String message;

  AddDataKeluargaSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataKeluargaFailed extends AddKeluargaState {
  String message;

  AddDataKeluargaFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataKeluargaFailedInBackground extends AddKeluargaState {
  String message;

  AddDataKeluargaFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataKeluargaFailedUserExpired extends AddKeluargaState {
  String message;

  AddDataKeluargaFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
part of 'add_organisasi_bloc.dart';

abstract class AddOrganisasiState extends Equatable {
  const AddOrganisasiState();
  @override
  List<Object> get props => [];
}

class AddDataOrganisasiInitial extends AddOrganisasiState {}

class AddDataOrganisasiLoading extends AddOrganisasiState {}

class SelectKotaSuccessInBackground extends AddOrganisasiState {
  List<DataKota> dataKota;

  SelectKotaSuccessInBackground({
    required this.dataKota,
  });

  @override
  List<Object> get props => [dataKota];
}

class SelectJenisOrgSuccessInBackground extends AddOrganisasiState {
  List<DataGeneral> dataJenisOrganisasi;

  SelectJenisOrgSuccessInBackground({
    required this.dataJenisOrganisasi,
  });

  @override
  List<Object> get props => [dataJenisOrganisasi];
}

class AddDataOrganisasiSuccess extends AddOrganisasiState {
  String message;

  AddDataOrganisasiSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataOrganisasiFailed extends AddOrganisasiState {
  String message;

  AddDataOrganisasiFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataOrganisasiFailedInBackground extends AddOrganisasiState {
  String message;

  AddDataOrganisasiFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDataOrganisasiFailedUserExpired extends AddOrganisasiState {
  String message;

  AddDataOrganisasiFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
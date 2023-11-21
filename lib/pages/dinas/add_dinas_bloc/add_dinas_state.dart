part of 'add_dinas_bloc.dart';

abstract class AddDinasState extends Equatable {
  const AddDinasState();
  @override
  List<Object> get props => [];
}

class AddDinasInitial extends AddDinasState {}

class AddDinasLoading extends AddDinasState {}

class AddDinasSuccess extends AddDinasState {
  String message;

  AddDinasSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDinasFailed extends AddDinasState {
  String message;

  AddDinasFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDinasFailedInBackground extends AddDinasState {
  String message;

  AddDinasFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddDinasFailedUserExpired extends AddDinasState {
  String message;

  AddDinasFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

class SelectDivisiSuccessInBackground extends AddDinasState {
  List<DataDivisi> dataDivisi;

  SelectDivisiSuccessInBackground({
    required this.dataDivisi,
  });

  @override
  List<Object> get props => [dataDivisi];
}

class SelectDepartemenSuccessInBackground extends AddDinasState {
  List<DataDepartemen> dataDepartemen;
  int currentPage;
  bool hasNextPage;

  SelectDepartemenSuccessInBackground({
    required this.dataDepartemen,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object> get props => [dataDepartemen, currentPage, hasNextPage];
}

class SelectPosisiSuccessInBackground extends AddDinasState {
  List<DataPosisi> dataPosisi;

  SelectPosisiSuccessInBackground({
    required this.dataPosisi,
  });

  @override
  List<Object> get props => [dataPosisi];
}

class SelectTemplateSpdSuccessInBackground extends AddDinasState {
  List<DataTemplateSpd> dataTemplateSpd;

  SelectTemplateSpdSuccessInBackground({
    required this.dataTemplateSpd,
  });

  @override
  List<Object> get props => [dataTemplateSpd];
}

class SelectDirektoratSuccessInBackground extends AddDinasState {
  List<DataDirektorat> dataDirektorat;

  SelectDirektoratSuccessInBackground({
    required this.dataDirektorat,
  });

  @override
  List<Object> get props => [dataDirektorat];
}

class SelectJenisSpdSuccessInBackground extends AddDinasState {
  List<DataJenisSpd> dataJenisSpd;

  SelectJenisSpdSuccessInBackground({
    required this.dataJenisSpd,
  });

  @override
  List<Object> get props => [dataJenisSpd];
}

class SelectZonaSuccessInBackground extends AddDinasState {
  List<DataZona> dataZona;

  SelectZonaSuccessInBackground({
    required this.dataZona,
  });

  @override
  List<Object> get props => [dataZona];
}

class SelectLokasiSuccessInBackground extends AddDinasState {
  List<DataLokasiTujuan> dataLokasiTujuan;

  SelectLokasiSuccessInBackground({
    required this.dataLokasiTujuan,
  });

  @override
  List<Object> get props => [dataLokasiTujuan];
}

class SelectPicSuccessInBackground extends AddDinasState {
  List<DataPic> dataPic;
  int currentPage;
  bool hasNextPage;

  SelectPicSuccessInBackground({
    required this.dataPic,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object> get props => [dataPic, currentPage, hasNextPage];
}

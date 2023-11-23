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
  int currentPage;
  bool hasNextPage;

  SelectDivisiSuccessInBackground({
    required this.dataDivisi,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object> get props => [dataDivisi, currentPage, hasNextPage];
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
  int currentPage;
  bool hasNextPage;

  SelectPosisiSuccessInBackground({
    required this.dataPosisi,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object> get props => [dataPosisi, currentPage, hasNextPage];
}

class SelectTemplateSpdSuccessInBackground extends AddDinasState {
  List<DataTemplateSpd> dataTemplateSpd;
  int currentPage;
  bool hasNextPage;

  SelectTemplateSpdSuccessInBackground({
    required this.dataTemplateSpd,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object> get props => [dataTemplateSpd, currentPage, hasNextPage];
}

class SelectDirektoratSuccessInBackground extends AddDinasState {
  List<DataDirektorat> dataDirektorat;
  int currentPage;
  bool hasNextPage;

  SelectDirektoratSuccessInBackground({
    required this.dataDirektorat,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object> get props => [dataDirektorat, currentPage, hasNextPage];
}

class SelectJenisSpdSuccessInBackground extends AddDinasState {
  List<DataJenisSpd> dataJenisSpd;
  int currentPage;
  bool hasNextPage;

  SelectJenisSpdSuccessInBackground({
    required this.dataJenisSpd,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object> get props => [dataJenisSpd, currentPage, hasNextPage];
}

class SelectZonaSuccessInBackground extends AddDinasState {
  List<DataZona> dataZona;
  int currentPage;
  bool hasNextPage;

  SelectZonaSuccessInBackground({
    required this.dataZona,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object> get props => [dataZona, currentPage, hasNextPage];
}

class SelectLokasiSuccessInBackground extends AddDinasState {
  List<DataLokasiTujuan> dataLokasiTujuan;
  int currentPage;
  bool hasNextPage;

  SelectLokasiSuccessInBackground({
    required this.dataLokasiTujuan,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object> get props => [dataLokasiTujuan, currentPage, hasNextPage];
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

class EditDinasSuccess extends AddDinasState {
  String message;

  EditDinasSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class EditDinasFailed extends AddDinasState {
  String message;

  EditDinasFailed({required this.message});

  @override
  List<Object> get props => [message];
}
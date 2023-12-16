part of 'edit_biodata_bloc.dart';


abstract class EditBiodataState extends Equatable  {
  const EditBiodataState();

  @override
  List<Object> get props => [];
}

class EditBiodataInitial extends EditBiodataState {}

class EditBiodataLoading extends EditBiodataState {}

class EditBiodataSuccess extends EditBiodataState {
  String message;

  EditBiodataSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class EditBiodataFailed extends EditBiodataState {
  String message;

  EditBiodataFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class EditBiodataFailedInBackground extends EditBiodataState {
  String message;

 EditBiodataFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class EditBiodataFailedUserExpired extends EditBiodataState {
  String message;

  EditBiodataFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

class SelectDivisiSuccessInBackground extends EditBiodataState {
  List<DataDivisi> dataDivisi;

  SelectDivisiSuccessInBackground({
    required this.dataDivisi,
  });

  @override
  List<Object> get props => [dataDivisi];
}

class SelectDepartemenSuccessInBackground extends EditBiodataState {
  List<DataDepartemen> dataDepartemen;

  SelectDepartemenSuccessInBackground({
    required this.dataDepartemen,
  });

  @override
  List<Object> get props => [dataDepartemen];
}

class SelectPosisiSuccessInBackground extends EditBiodataState {
  List<DataPosisi> dataPosisi;

  SelectPosisiSuccessInBackground({
    required this.dataPosisi,
  });

  @override
  List<Object> get props => [dataPosisi];
}

class SelectZonaSuccessInBackground extends EditBiodataState {
  List<DataZona> dataZona;

  SelectZonaSuccessInBackground({
    required this.dataZona,
  });

  @override
  List<Object> get props => [dataZona];
}

class SelectJenisKelaminSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataJenisKelamin;

  SelectJenisKelaminSuccessInBackground({
    required this.dataJenisKelamin,
  });

  @override
  List<Object> get props => [dataJenisKelamin];
}

class SelectKotaSuccessInBackground extends EditBiodataState {
  List<DataKota> dataKota;

  SelectKotaSuccessInBackground({
    required this.dataKota,
  });

  @override
  List<Object> get props => [dataKota];
}

class SelectKodePresensiSuccessInBackground extends EditBiodataState {
  List<DataKodePresensi> dataKodePresensi;

  SelectKodePresensiSuccessInBackground({
    required this.dataKodePresensi,
  });

  @override
  List<Object> get props => [dataKodePresensi];
}

class SelectAgamaSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataAgama;

  SelectAgamaSuccessInBackground({
    required this.dataAgama,
  });

  @override
  List<Object> get props => [dataAgama];
}

class SelectGolDarahSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataGolDarah;

  SelectGolDarahSuccessInBackground({
    required this.dataGolDarah,
  });

  @override
  List<Object> get props => [dataGolDarah];
}

class SelectStatusNikahSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataStatusNikah;

  SelectStatusNikahSuccessInBackground({
    required this.dataStatusNikah,
  });

  @override
  List<Object> get props => [dataStatusNikah];
}

class SelectTanggunganSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataTanggungan;

  SelectTanggunganSuccessInBackground({
    required this.dataTanggungan,
  });

  @override
  List<Object> get props => [dataTanggungan];
}

class SelectProvinsiSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataProvinsi;

  SelectProvinsiSuccessInBackground({
    required this.dataProvinsi,
  });

  @override
  List<Object> get props => [dataProvinsi];
}

class SelectKotabyProvinsiSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataKotabyProvinsi;

  SelectKotabyProvinsiSuccessInBackground({
    required this.dataKotabyProvinsi,
  });

  @override
  List<Object> get props => [dataKotabyProvinsi];
}

class SelectKecamatanSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataKecamatan;

  SelectKecamatanSuccessInBackground({
    required this.dataKecamatan,
  });

  @override
  List<Object> get props => [dataKecamatan];
}
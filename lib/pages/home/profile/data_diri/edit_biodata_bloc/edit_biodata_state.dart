part of 'edit_biodata_bloc.dart';

abstract class EditBiodataState extends Equatable {
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

class SelectCostCentreSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataCostCentre;

  SelectCostCentreSuccessInBackground({
    required this.dataCostCentre,
  });

  @override
  List<Object> get props => [dataCostCentre];
}

class SelectStandarGajiSuccessInBackground extends EditBiodataState {
  List<DataStandarGaji> dataStandarGaji;

  SelectStandarGajiSuccessInBackground({
    required this.dataStandarGaji,
  });

  @override
  List<Object> get props => [dataStandarGaji];
}

class SelectKodePresensiSuccessInBackground extends EditBiodataState {
  List<DataKodePresensi> dataKodePresensi;

  SelectKodePresensiSuccessInBackground({
    required this.dataKodePresensi,
  });

  @override
  List<Object> get props => [dataKodePresensi];
}

class SelectTipeBPJSSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataTipeBPJS;

  SelectTipeBPJSSuccessInBackground({
    required this.dataTipeBPJS,
  });

  @override
  List<Object> get props => [dataTipeBPJS];
}

class SelectPeriodeGajiSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataPeriodeGaji;

  SelectPeriodeGajiSuccessInBackground({
    required this.dataPeriodeGaji,
  });

  @override
  List<Object> get props => [dataPeriodeGaji];
}

class SelectTipePembayaranSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataTipePembayaran;

  SelectTipePembayaranSuccessInBackground({
    required this.dataTipePembayaran,
  });

  @override
  List<Object> get props => [dataTipePembayaran];
}

class SelectMetodePembayaranSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataMetodePembayaran;

  SelectMetodePembayaranSuccessInBackground({
    required this.dataMetodePembayaran,
  });

  @override
  List<Object> get props => [dataMetodePembayaran];
}

class SelectNamaBankSuccessInBackground extends EditBiodataState {
  List<DataGeneral> dataNamaBank;

  SelectNamaBankSuccessInBackground({
    required this.dataNamaBank,
  });

  @override
  List<Object> get props => [dataNamaBank];
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

part of 'edit_biodata_bloc.dart';

abstract class EditBiodataEvent extends Equatable {
  const EditBiodataEvent();

  @override
  List<Object> get props => [];
}


class EditDataBiodataSubmited extends EditBiodataEvent {
  int userId;
  int dirId;
  int divisiId;
  int deptId;
  int zonaId;
  int gradingId;
  int costcentreId;
  int posisiId;
  int jamKerjaId;
  String nik;
  String namaDepan;
  String namaBelakang;
  String namaLengkap;
  String namaPanggilan;
  int jkId;
  String tempatLahir;
  String tglLahir;
  int provinsiId;
  int kotaId;
  int kecamatanId;
  String kodePos;
  String alamatAsli;
  String alamatDomisili;
  String noTlp;
  String noTlpLainnya;
  String noDarurat;
  String namaKontakDarurat;
  int agamaId;
  int golDarahId;
  int statusNikahId;
  int tanggunganId;
  String hubDgnKaryawan;
  int cutiJatahReguler;
  int cutiSisaReguler;
  int cutiPanjang;
  int cutiSisaPanjang;
  int statusKaryId;
  String tglMasuk;
  String tglBerhenti;
  String alasanBerhenti;
  String ukBaju;
  String ukCelana;
  String ukSepatu;

  EditDataBiodataSubmited({
    required this.userId,
    required this.dirId,
    required this.divisiId,
    required this.deptId,
    required this.zonaId,
    required this.gradingId,
    required this.costcentreId,
    required this.posisiId,
    required this.jamKerjaId,
    required this.nik,
    required this.namaDepan,
    required this.namaBelakang,
    required this.namaLengkap,
    required this.namaPanggilan,
    required this.jkId,
    required this.tempatLahir,
    required this.tglLahir,
    required this.provinsiId,
    required this.kotaId,
    required this.kecamatanId,
    required this.kodePos,
    required this.alamatAsli,
    required this.alamatDomisili,
    required this.noTlp,
    required this.noTlpLainnya,
    required this.noDarurat,
    required this.namaKontakDarurat,
    required this.agamaId,
    required this.golDarahId,
    required this.statusNikahId,
    required this.tanggunganId,
    required this.hubDgnKaryawan,
    required this.cutiJatahReguler,
    required this.cutiSisaReguler,
    required this.cutiPanjang,
    required this.cutiSisaPanjang,
    required this.statusKaryId,
    required this.tglMasuk,
    required this.tglBerhenti,
    required this.alasanBerhenti,
    required this.ukBaju,
    required this.ukCelana,
    required this.ukSepatu,
  });

  @override
  List<Object> get props => [
        userId,
        dirId,
        divisiId,
        deptId,
        zonaId,
        gradingId,
        costcentreId,
        posisiId,
        jamKerjaId,
        nik,
        namaDepan,
        namaBelakang,
        namaLengkap,
        namaPanggilan,
        jkId,
        tempatLahir,
        tglLahir,
        provinsiId,
        kotaId,
        kecamatanId,
        kodePos,
        alamatAsli,
        alamatDomisili,
        noTlp,
        noTlpLainnya,
        noDarurat,
        namaKontakDarurat,
        agamaId,
        golDarahId,
        statusNikahId,
        tanggunganId,
        hubDgnKaryawan,
        cutiJatahReguler,
        cutiSisaReguler,
        cutiPanjang,
        cutiSisaPanjang,
        statusKaryId,
        tglMasuk,
        tglBerhenti,
        alasanBerhenti,
        ukBaju,
        ukCelana,
        ukSepatu,
      ];
}

class OnSelectDivisi extends EditBiodataEvent {

  OnSelectDivisi();
  @override
  List<Object> get props => [];
}

class OnSelectDepartemen extends EditBiodataEvent {

  OnSelectDepartemen();

  @override
  List<Object> get props => [];
}

class OnSelectPosisi extends EditBiodataEvent {

  OnSelectPosisi();
  @override
  List<Object> get props => [];
}

class OnSelectZona extends EditBiodataEvent {

  OnSelectZona();
  @override
  List<Object> get props => [];
}

class OnSelectKota extends EditBiodataEvent {
  const OnSelectKota();
  @override
  List<Object> get props => [];
}

class OnSelectJenisKelamin extends EditBiodataEvent {
  const OnSelectJenisKelamin();
  @override
  List<Object> get props => [];
}

class OnSelectKodePresensi extends EditBiodataEvent {
  const OnSelectKodePresensi();
  @override
  List<Object> get props => [];
}

class OnSelectAgama extends EditBiodataEvent {
  const OnSelectAgama();
  @override
  List<Object> get props => [];
}

class OnSelectGolDarah extends EditBiodataEvent {
  const OnSelectGolDarah();
  @override
  List<Object> get props => [];
}

class OnSelectStatusNikah extends EditBiodataEvent {
  const OnSelectStatusNikah();
  @override
  List<Object> get props => [];
}

class OnSelectTanggungan extends EditBiodataEvent {
  const OnSelectTanggungan();
  @override
  List<Object> get props => [];
}

class OnSelectProvinsi extends EditBiodataEvent {
  const OnSelectProvinsi();
  @override
  List<Object> get props => [];
}

class OnSelectKotabyProvinsi extends EditBiodataEvent {
  int idProvinsi;
  OnSelectKotabyProvinsi({
    required this.idProvinsi,
  });
  @override
  List<Object> get props => [idProvinsi];
}

class OnSelectKecamatan extends EditBiodataEvent {
  int idKota;
  OnSelectKecamatan({
    required this.idKota,
  });
  @override
  List<Object> get props => [idKota];
}
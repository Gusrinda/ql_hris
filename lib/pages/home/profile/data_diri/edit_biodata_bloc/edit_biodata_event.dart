part of 'edit_biodata_bloc.dart';

abstract class EditBiodataEvent extends Equatable {
  const EditBiodataEvent();

  @override
  List<Object> get props => [];
}

class EditDataBiodataSubmited extends EditBiodataEvent {
  int? userId;
  int? dirId;
  int? divisiId;
  int? deptId;
  int? zonaId;
  int? gradingId;
  int? costcentreId;
  int? posisiId;
  int? jamKerjaId;
  String? nik;
  String? namaDepan;
  String? namaBelakang;
  String? namaLengkap;
  String? namaPanggilan;
  int? jkId;
  String? tempatLahir;
  String? tglLahir;
  int? provinsiId;
  int? kotaId;
  int? kecamatanId;
  String? kodePos;
  String? alamatAsli;
  String? alamatDomisili;
  String? noTlp;
  String? noTlpLainnya;
  String? noDarurat;
  String? namaKontakDarurat;
  int? agamaId;
  int? golDarahId;
  int? statusNikahId;
  int? tanggunganId;
  String? hubDgnKaryawan;
  int? cutiJatahReguler;
  int? cutiSisaReguler;
  int? cutiPanjang;
  int? cutiSisaPanjang;
  int? statusKaryId;
  String? tglMasuk;
  String? tglBerhenti;
  String? alasanBerhenti;
  String? ukBaju;
  String? ukCelana;
  String? ukSepatu;
  File? ktpFoto;
  File? pasFoto;
  File? bpjsFoto;
  String? ktpNo;
  String? kkNo;
  String? npwpNo;
  String? npwpTglBerlaku;
  int? bpjsTipeId;
  String? bpjsNo;
  String? berkasLain;

  EditDataBiodataSubmited({
    this.userId,
    this.dirId,
    this.divisiId,
    this.deptId,
    this.zonaId,
    this.gradingId,
    this.costcentreId,
    this.posisiId,
    this.jamKerjaId,
    this.nik,
    this.namaDepan,
    this.namaBelakang,
    this.namaLengkap,
    this.namaPanggilan,
    this.jkId,
    this.tempatLahir,
    this.tglLahir,
    this.provinsiId,
    this.kotaId,
    this.kecamatanId,
    this.kodePos,
    this.alamatAsli,
    this.alamatDomisili,
    this.noTlp,
    this.noTlpLainnya,
    this.noDarurat,
    this.namaKontakDarurat,
    this.agamaId,
    this.golDarahId,
    this.statusNikahId,
    this.tanggunganId,
    this.hubDgnKaryawan,
    this.cutiJatahReguler,
    this.cutiSisaReguler,
    this.cutiPanjang,
    this.cutiSisaPanjang,
    this.statusKaryId,
    this.tglMasuk,
    this.tglBerhenti,
    this.alasanBerhenti,
    this.ukBaju,
    this.ukCelana,
    this.ukSepatu,
    this.ktpFoto,
    this.pasFoto,
    this.bpjsFoto,
    this.ktpNo,
    this.kkNo,
    this.npwpNo,
    this.npwpTglBerlaku,
    this.bpjsTipeId,
    this.bpjsNo,
    this.berkasLain,
  });

  @override
  List<Object> get props => [
        userId!,
        dirId!,
        divisiId!,
        deptId!,
        zonaId!,
        gradingId!,
        costcentreId!,
        posisiId!,
        jamKerjaId!,
        nik!,
        namaDepan!,
        namaBelakang!,
        namaLengkap!,
        namaPanggilan!,
        jkId!,
        tempatLahir!,
        tglLahir!,
        provinsiId!,
        kotaId!,
        kecamatanId!,
        kodePos!,
        alamatAsli!,
        alamatDomisili!,
        noTlp!,
        noTlpLainnya!,
        noDarurat!,
        namaKontakDarurat!,
        agamaId!,
        golDarahId!,
        statusNikahId!,
        tanggunganId!,
        hubDgnKaryawan!,
        cutiJatahReguler!,
        cutiSisaReguler!,
        cutiPanjang!,
        cutiSisaPanjang!,
        statusKaryId!,
        tglMasuk!,
        tglBerhenti!,
        alasanBerhenti!,
        ukBaju!,
        ukCelana!,
        ukSepatu!,
        ktpFoto!,
        pasFoto!,
        bpjsFoto!,
        ktpNo!,
        kkNo!,
        npwpNo!,
        npwpTglBerlaku!,
        bpjsTipeId!,
        bpjsNo!,
        berkasLain!,
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

class OnSelectCostcentre extends EditBiodataEvent {
  OnSelectCostcentre();
  @override
  List<Object> get props => [];
}

class OnSelectStandarGaji extends EditBiodataEvent {
  OnSelectStandarGaji();
  @override
  List<Object> get props => [];
}

class OnSelectKodePresensi extends EditBiodataEvent {
  const OnSelectKodePresensi();
  @override
  List<Object> get props => [];
}

class OnSelectTipeBJPS extends EditBiodataEvent {
  OnSelectTipeBJPS();
  @override
  List<Object> get props => [];
}

class OnSelectPeriodeGaji extends EditBiodataEvent {
  OnSelectPeriodeGaji();
  @override
  List<Object> get props => [];
}

class OnSelectTipePembayaran extends EditBiodataEvent {
  OnSelectTipePembayaran();
  @override
  List<Object> get props => [];
}

class OnSelectMetodePembayaran extends EditBiodataEvent {
  OnSelectMetodePembayaran();
  @override
  List<Object> get props => [];
}

class OnSelectNamaBank extends EditBiodataEvent {
  OnSelectNamaBank();
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

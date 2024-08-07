part of 'add_dinas_bloc.dart';

abstract class AddDinasEvent extends Equatable {
  const AddDinasEvent();

  @override
  List<Object> get props => [];
}

class AddDinasSubmited extends AddDinasEvent {
  int divisi;
  int departemen;
  int posisi;
  int? templateSpd;
  int? direktorat;
  String tanggal;
  String tanggalAwal;
  String tanggalAkhir;
  int jenisSpd;
  int zonaAsal;
  int zonaTujuan;
  int lokasiTujuan;
  int pic;
  int kendDinas;
  String? desc;

  AddDinasSubmited({
    required this.divisi,
    required this.departemen,
    required this.posisi,
    this.templateSpd,
    this.direktorat,
    required this.tanggal,
    required this.tanggalAwal,
    required this.tanggalAkhir,
    required this.jenisSpd,
    required this.zonaAsal,
    required this.zonaTujuan,
    required this.lokasiTujuan,
    required this.pic,
    required this.kendDinas,
    this.desc,
  });

  @override
  List<Object> get props => [
        divisi,
        departemen,
        posisi,
        templateSpd!,
        direktorat!,
        tanggal,
        tanggalAwal,
        tanggalAkhir,
        jenisSpd,
        zonaAsal,
        zonaTujuan,
        lokasiTujuan,
        pic,
        kendDinas,
        desc!
      ];
}

class OnSelectDivisi extends AddDinasEvent {
  OnSelectDivisi();
  @override
  List<Object> get props => [];
}

class OnSelectDepartemen extends AddDinasEvent {
  OnSelectDepartemen();

  @override
  List<Object> get props => [];
}

class OnSelectPosisi extends AddDinasEvent {
  OnSelectPosisi();
  @override
  List<Object> get props => [];
}

class OnSelectTemplateSpd extends AddDinasEvent {
  OnSelectTemplateSpd();
  @override
  List<Object> get props => [];
}

class OnSelectDirektorat extends AddDinasEvent {
  OnSelectDirektorat();
  @override
  List<Object> get props => [];
}

class OnSelectJenisSpd extends AddDinasEvent {
  OnSelectJenisSpd();
  @override
  List<Object> get props => [];
}

class OnSelectZona extends AddDinasEvent {
  OnSelectZona();
  @override
  List<Object> get props => [];
}

class OnSelectLokasiTujuan extends AddDinasEvent {
  OnSelectLokasiTujuan();
  @override
  List<Object> get props => [];
}

class OnSelectPic extends AddDinasEvent {
  OnSelectPic();

  @override
  List<Object> get props => [];
}

class EditDinasSubmited extends AddDinasEvent {
  int spdID;
  int divisi;
  int departemen;
  int posisi;
  int? templateSpd;
  int? direktorat;
  String tanggal;
  String tanggalAwal;
  String tanggalAkhir;
  int jenisSpd;
  int zonaAsal;
  int zonaTujuan;
  int lokasiTujuan;
  int pic;
  int kendDinas;
  String? desc;

  EditDinasSubmited({
    required this.spdID,
    required this.divisi,
    required this.departemen,
    required this.posisi,
    this.templateSpd,
    this.direktorat,
    required this.tanggal,
    required this.tanggalAwal,
    required this.tanggalAkhir,
    required this.jenisSpd,
    required this.zonaAsal,
    required this.zonaTujuan,
    required this.lokasiTujuan,
    required this.pic,
    required this.kendDinas,
    this.desc,
  });

  @override
  List<Object> get props => [
        spdID,
        divisi,
        departemen,
        posisi,
        templateSpd!,
        direktorat!,
        tanggal,
        tanggalAwal,
        tanggalAkhir,
        jenisSpd,
        zonaAsal,
        zonaTujuan,
        lokasiTujuan,
        pic,
        kendDinas,
        desc!
      ];
}

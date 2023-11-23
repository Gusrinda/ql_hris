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
  int templateSpd;
  int direktorat;
  String tanggal;
  String tanggalAwal;
  String tanggalAkhir;
  int jenisSpd;
  int zonaAsal;
  int zonaTujuan;
  int lokasiTujuan;
  int pic;
  bool kendDinas;

  AddDinasSubmited({
    required this.divisi,
    required this.departemen,
    required this.posisi,
    required this.templateSpd,
    required this.direktorat,
    required this.tanggal,
    required this.tanggalAwal,
    required this.tanggalAkhir,
    required this.jenisSpd,
    required this.zonaAsal,
    required this.zonaTujuan,
    required this.lokasiTujuan,
    required this.pic,
    required this.kendDinas,
  });

  @override
  List<Object> get props => [
        divisi,
        departemen,
        posisi,
        templateSpd,
        direktorat,
        tanggal,
        tanggalAwal,
        tanggalAkhir,
        jenisSpd,
        zonaAsal,
        zonaTujuan,
        lokasiTujuan,
        pic,
        kendDinas,
      ];
}

class OnSelectDivisi extends AddDinasEvent {
  int page;
  String search;

  OnSelectDivisi({
    required this.page,
    required this.search,
  });
  @override
  List<Object> get props => [page, search];
}

class OnSelectDepartemen extends AddDinasEvent {
  int page;
  String search;

  OnSelectDepartemen({
    required this.page,
    required this.search,
  });

  @override
  List<Object> get props => [page, search];
}

class OnSelectPosisi extends AddDinasEvent {
  int page;
  String search;

  OnSelectPosisi({
    required this.page,
    required this.search,
  });
  @override
  List<Object> get props => [page, search];
}

class OnSelectTemplateSpd extends AddDinasEvent {
  int page;
  String search;

  OnSelectTemplateSpd({
    required this.page,
    required this.search,
  });
  @override
  List<Object> get props => [page, search];
}

class OnSelectDirektorat extends AddDinasEvent {
  int page;
  String search;

  OnSelectDirektorat({
    required this.page,
    required this.search,
  });
  @override
  List<Object> get props => [page, search];
}

class OnSelectJenisSpd extends AddDinasEvent {
  int page;
  String search;

  OnSelectJenisSpd({required this.page, required this.search});
  @override
  List<Object> get props => [page, search];
}

class OnSelectZona extends AddDinasEvent {
  int page;
  String search;

  OnSelectZona({
    required this.page,
    required this.search,
  });
  @override
  List<Object> get props => [page, search];
}

class OnSelectLokasiTujuan extends AddDinasEvent {
  int page;
  String search;

  OnSelectLokasiTujuan({
    required this.page,
    required this.search,
  });
  @override
  List<Object> get props => [page, search];
}

class OnSelectPic extends AddDinasEvent {
  int page;
  String search;

  OnSelectPic({required this.page, required this.search});

  @override
  List<Object> get props => [page, search];
}

class EditDinasSubmited extends AddDinasEvent {
  int id;
  int divisi;
  int departemen;
  int posisi;
  int templateSpd;
  int direktorat;
  String tanggal;
  String tanggalAwal;
  String tanggalAkhir;
  int jenisSpd;
  int zonaAsal;
  int zonaTujuan;
  int lokasiTujuan;
  int pic;
  bool kendDinas;

  EditDinasSubmited({
    required this.id,
    required this.divisi,
    required this.departemen,
    required this.posisi,
    required this.templateSpd,
    required this.direktorat,
    required this.tanggal,
    required this.tanggalAwal,
    required this.tanggalAkhir,
    required this.jenisSpd,
    required this.zonaAsal,
    required this.zonaTujuan,
    required this.lokasiTujuan,
    required this.pic,
    required this.kendDinas,
  });

  @override
  List<Object> get props => [
        id,
        divisi,
        departemen,
        posisi,
        templateSpd,
        direktorat,
        tanggal,
        tanggalAwal,
        tanggalAkhir,
        jenisSpd,
        zonaAsal,
        zonaTujuan,
        lokasiTujuan,
        pic,
        kendDinas,
      ];
}

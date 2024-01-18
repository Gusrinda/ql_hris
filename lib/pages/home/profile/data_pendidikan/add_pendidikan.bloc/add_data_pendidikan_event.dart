part of 'add_data_pendidikan_bloc.dart';

abstract class AddDataPendidikanEvent extends Equatable {
  const AddDataPendidikanEvent();

  @override
  List<Object> get props => [];
}

class AddDataPendidikanSubmited extends AddDataPendidikanEvent {
  int tingkatID;
  String namaSekolah;
  String tahunMasuk;
  String tahunLulus;
  int kotaID;
  double nilai;
  String jurusan;
  int isPendTerakhir;
  String? ijazahNo;
  File? ijazahFoto;
  String desc;

  AddDataPendidikanSubmited({
    required this.tingkatID,
    required this.namaSekolah,
    required this.tahunMasuk,
    required this.tahunLulus,
    required this.kotaID,
    required this.nilai,
    required this.jurusan,
    required this.isPendTerakhir,
    this.ijazahNo,
    this.ijazahFoto,
    required this.desc,
  });

  @override
  List<Object> get props => [
        tingkatID,
        namaSekolah,
        tahunMasuk,
        tahunLulus,
        kotaID,
        nilai,
        jurusan,
        isPendTerakhir,
        ijazahNo!,
        ijazahFoto!,
        desc,
      ];
}

class OnSelectTingkatPendidikan extends AddDataPendidikanEvent {
  const OnSelectTingkatPendidikan();
  @override
  List<Object> get props => [];
}

class OnSelectKota extends AddDataPendidikanEvent {
  const OnSelectKota();
  @override
  List<Object> get props => [];
}

class EditDataPendidikanSubmited extends AddDataPendidikanEvent {
  int pendidikanId;
  int tingkatID;
  String namaSekolah;
  String tahunMasuk;
  String tahunLulus;
  int kotaID;
  double nilai;
  String jurusan;
  int isPendTerakhir;
  String? ijazahNo;
  File? ijazahFoto;
  String desc;

  EditDataPendidikanSubmited({
    required this.pendidikanId,
    required this.tingkatID,
    required this.namaSekolah,
    required this.tahunMasuk,
    required this.tahunLulus,
    required this.kotaID,
    required this.nilai,
    required this.jurusan,
    required this.isPendTerakhir,
    this.ijazahNo,
    this.ijazahFoto,
    required this.desc,
  });

  @override
  List<Object> get props => [
        pendidikanId,
        tingkatID,
        namaSekolah,
        tahunMasuk,
        tahunLulus,
        kotaID,
        nilai,
        jurusan,
        isPendTerakhir,
        ijazahNo!,
        ijazahFoto!,
        desc,
      ];
}

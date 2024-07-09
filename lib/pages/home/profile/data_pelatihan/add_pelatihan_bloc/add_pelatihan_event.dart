part of 'add_pelatihan_bloc.dart';

abstract class AddPelatihanEvent extends Equatable {
  const AddPelatihanEvent();
  @override
  List<Object> get props => [];
}

class AddDataPelatihanSubmited extends AddPelatihanEvent {
  String namaPel;
  String tahun;
  String namaLem;
  int kotaId;

  AddDataPelatihanSubmited({
    required this.namaPel,
    required this.tahun,
    required this.namaLem,
    required this.kotaId,
  });

  @override
  List<Object> get props => [
        namaPel,
        tahun,
        namaLem,
        kotaId,
      ];
}

class OnSelectKota extends AddPelatihanEvent {
  const OnSelectKota();
  @override
  List<Object> get props => [];
}

class EditDataPelatihanSubmited extends AddPelatihanEvent {
  int pelatihanId;
  String namaPel;
  int tahun;
  String namaLem;
  int kotaId;

  EditDataPelatihanSubmited({
    required this.pelatihanId,
    required this.namaPel,
    required this.tahun,
    required this.namaLem,
    required this.kotaId,
  });

  @override
  List<Object> get props => [
        pelatihanId,
        namaPel,
        tahun,
        namaLem,
        kotaId,
      ];
}

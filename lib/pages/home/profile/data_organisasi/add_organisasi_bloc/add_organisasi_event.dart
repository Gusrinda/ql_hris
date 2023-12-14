part of 'add_organisasi_bloc.dart';

abstract class AddOrganisasiEvent extends Equatable {
  const AddOrganisasiEvent();

  @override
  List<Object> get props => [];
}

class AddDataOrganisasiSubmited extends AddOrganisasiEvent {
  String nama;
  String tahun;
  int jenisOrgId;
  int kotaId;
  String posisi;

  AddDataOrganisasiSubmited({
    required this.nama,
    required this.tahun,
    required this.jenisOrgId,
    required this.kotaId,
    required this.posisi,
  });

  @override
  List<Object> get props => [
        nama,
        tahun,
        jenisOrgId,
        kotaId,
        posisi,
      ];
}

class OnSelectKota extends AddOrganisasiEvent {
  const OnSelectKota();
  @override
  List<Object> get props => [];
}

class OnSelectJenisOrganisasi extends AddOrganisasiEvent {
  const OnSelectJenisOrganisasi();
  @override
  List<Object> get props => [];
}
part of 'add_keluarga_bloc.dart';

abstract class AddKeluargaEvent extends Equatable {
  const AddKeluargaEvent();

   @override
  List<Object> get props => [];
}

class AddDataKeluargaSubmited extends AddKeluargaEvent {
  int keluargaId;
  String nama;
  int pendTerakhirId;
  int jenisKelaminId;
  int pekerjaanId;
  int usia;
  String desc;

  AddDataKeluargaSubmited({
    required this.keluargaId,
    required this.nama,
    required this.pendTerakhirId,
    required this.jenisKelaminId,
    required this.pekerjaanId,
    required this.usia,
    required this.desc,
  });

  @override
  List<Object> get props => [
        keluargaId,
        nama,
        pendTerakhirId,
        jenisKelaminId,
        pekerjaanId,
        usia,
        desc
      ];
}

class OnSelectHubKeluarga extends AddKeluargaEvent {
  const OnSelectHubKeluarga();
  @override
  List<Object> get props => [];
}

class OnSelectTingkatPendidikan extends AddKeluargaEvent {
  const OnSelectTingkatPendidikan();
  @override
  List<Object> get props => [];
}

class OnSelectPekerjaan extends AddKeluargaEvent {
  const OnSelectPekerjaan();
  @override
  List<Object> get props => [];
}

class OnSelectJenisKelamin extends AddKeluargaEvent {
  const OnSelectJenisKelamin();
  @override
  List<Object> get props => [];
}
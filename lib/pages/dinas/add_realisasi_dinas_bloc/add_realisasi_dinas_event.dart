part of 'add_realisasi_dinas_bloc.dart';

abstract class AddRealisasiDinasEvent extends Equatable {
  const AddRealisasiDinasEvent();

  @override
  List<Object> get props => [];
}

class AddRealisasiDinasSubmited extends AddRealisasiDinasEvent {
  String nomor;
  int mCompId;
  int tSpdId;
  int totalBiayaSpd;
  int totalBiayaSelisih;
  int pengambilanSpd;
  String keterangan;
  String status;
  int creatorId;
  int lastEditorId;
  final List<Map<String, dynamic>> tRpdDetList;

  AddRealisasiDinasSubmited({
    required this.nomor,
    required this.mCompId,
    required this.tSpdId,
    required this.totalBiayaSpd,
    required this.totalBiayaSelisih,
    required this.pengambilanSpd,
    required this.keterangan,
    required this.status,
    required this.creatorId,
    required this.lastEditorId,
    required this.tRpdDetList,
  });

  @override
  List<Object> get props => [
        nomor,
        mCompId,
        tSpdId,
        totalBiayaSpd,
        totalBiayaSelisih,
        pengambilanSpd,
        keterangan,
        status,
        creatorId,
        lastEditorId,
        tRpdDetList,
      ];
}

class OnSelectDinasApproved extends AddRealisasiDinasEvent {
  OnSelectDinasApproved();
  @override
  List<Object> get props => [];
}

class OnSelectTipe extends AddRealisasiDinasEvent {
  OnSelectTipe();
  @override
  List<Object> get props => [];
}

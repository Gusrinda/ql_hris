part of 'add_realisasi_dinas_bloc.dart';

abstract class AddRealisasiDinasEvent extends Equatable {
  const AddRealisasiDinasEvent();

  @override
  List<Object> get props => [];
}

class AddRealisasiDinasSubmited extends AddRealisasiDinasEvent {
  int tSpdId;
  double totalBiayaSelisih;
  String keterangan;
  final List<Map<String, dynamic>>? tRpdDetList;

  AddRealisasiDinasSubmited({
    required this.tSpdId,
    required this.totalBiayaSelisih,
    required this.keterangan,
    this.tRpdDetList,
  });

  @override
  List<Object> get props => [
        tSpdId,
        totalBiayaSelisih,
        keterangan,
        tRpdDetList!,
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

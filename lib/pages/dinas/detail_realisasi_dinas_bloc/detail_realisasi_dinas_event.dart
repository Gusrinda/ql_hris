part of 'detail_realisasi_dinas_bloc.dart';

abstract class DetailRealisasiDinasEvent extends Equatable {
  const DetailRealisasiDinasEvent();

  @override
  List<Object> get props => [];
}

class GetDetailRealisasiListDinas extends DetailRealisasiDinasEvent {
  int id;

  GetDetailRealisasiListDinas({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}


class GetDetailSPD extends DetailRealisasiDinasEvent {
  int spdID;


  GetDetailSPD({
    required this.spdID
  });

  @override
  List<Object> get props => [];
}
part of 'list_realisasi_dinas_bloc.dart';


abstract class ListRealisasiDinasEvent extends Equatable {
  const ListRealisasiDinasEvent();

  @override
  List<Object> get props => [];
}

class GetListRealisasiDinas extends ListRealisasiDinasEvent {
  DateTime date;
  GetListRealisasiDinas(
    {
    required this.date,
  }
  );

  @override
  List<Object> get props => [date];
}

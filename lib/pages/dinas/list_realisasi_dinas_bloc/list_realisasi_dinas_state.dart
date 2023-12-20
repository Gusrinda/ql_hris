part of 'list_realisasi_dinas_bloc.dart';


abstract class ListRealisasiDinasState extends Equatable {
  const ListRealisasiDinasState();

  @override
  List<Object> get props => [];
}

class ListRealisasiDinasInitial extends ListRealisasiDinasState {}

class ListRealisasiDinasLoading extends ListRealisasiDinasState {}

class ListRealisasiDinasSuccessInBackground extends ListRealisasiDinasState {
  List<DataRealisasiDinas> dataRealisasiDinas;

  ListRealisasiDinasSuccessInBackground({
    required this.dataRealisasiDinas,
  });

  @override
  List<Object> get props => [dataRealisasiDinas];
}

class ListRealisasiDinasFailedInBackground extends ListRealisasiDinasState {
  String message;
  ListRealisasiDinasFailedInBackground({required this.message});
}

class ListRealisasiDinasFailed extends ListRealisasiDinasState {
  String message;
  ListRealisasiDinasFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListRealisasiDinasFailedUserExpired extends ListRealisasiDinasState {
  String message;

  ListRealisasiDinasFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
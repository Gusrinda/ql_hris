part of 'detail_realisasi_dinas_bloc.dart';


abstract class DetailRealisasiDinasState extends Equatable {
  const DetailRealisasiDinasState();

   @override
  List<Object> get props => [];
}

class DetailRealisasiDinasInitial extends DetailRealisasiDinasState {}

class DetailRealisasiDinasLoading extends DetailRealisasiDinasState {}

// class DetailRealisasiDinasSuccessInBackground extends DetailRealisasiDinasState {}

class DetailRealisasiDinasSuccess extends DetailRealisasiDinasState {
 DetailRealisasiData? dataDetailrealisasiDinas;

  DetailRealisasiDinasSuccess({this.dataDetailrealisasiDinas});

  @override
  List<Object> get props => [dataDetailrealisasiDinas!];
}

class DetailRealisasiDinasFailedInBackground extends DetailRealisasiDinasState {
  String message;
  DetailRealisasiDinasFailedInBackground({required this.message});
}

class DetailRealisasiDinasFailed extends DetailRealisasiDinasState {
  String message;
  DetailRealisasiDinasFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class DetailRealisasiDinasFailedUserExpired extends DetailRealisasiDinasState {
  String message;

  DetailRealisasiDinasFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
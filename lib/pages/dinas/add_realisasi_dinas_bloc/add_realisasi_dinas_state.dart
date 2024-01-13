part of 'add_realisasi_dinas_bloc.dart';


abstract class AddRealisasiDinasState extends Equatable {
  const AddRealisasiDinasState();

  @override
  List<Object> get props => [];
}

class AddRealisasiDinasInitial extends AddRealisasiDinasState {}

class AddRealisasiDinasLoading extends AddRealisasiDinasState {}

class AddRealisasiDinasSuccess extends AddRealisasiDinasState {
  String message;

  AddRealisasiDinasSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class DetailBiayaSPDSuceess extends AddRealisasiDinasState {
  DataDetailDinas dataDetailSPD;

  DetailBiayaSPDSuceess({
    required this.dataDetailSPD,
  });

  @override
  List<Object> get props => [dataDetailSPD];
}

class DetailEditRealisasiDinasSuccess extends AddRealisasiDinasState {
 DetailRealisasiData? dataDetailrealisasiDinas;

  DetailEditRealisasiDinasSuccess({this.dataDetailrealisasiDinas});

  @override
  List<Object> get props => [dataDetailrealisasiDinas!];
}

class AddRealisasiDinasFailed extends AddRealisasiDinasState {
  String message;

  AddRealisasiDinasFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class AddRealisasiDinasFailedInBackground extends AddRealisasiDinasState {
  String message;

  AddRealisasiDinasFailedInBackground({required this.message});

  @override
  List<Object> get props => [message];
}

class AddRealisasiDinasFailedUserExpired extends AddRealisasiDinasState {
  String message;

  AddRealisasiDinasFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

class SelectDinasApprovedSuccessInBackground extends AddRealisasiDinasState {
  List<DataDinas> dataDinasApproved;

  SelectDinasApprovedSuccessInBackground({
    required this.dataDinasApproved,
  });

  @override
  List<Object> get props => [dataDinasApproved];
}

class SelectTipeSuccessInBackground extends AddRealisasiDinasState {
  List<DataGeneral> dataTipe;

  SelectTipeSuccessInBackground({
    required this.dataTipe,
  });

  @override
  List<Object> get props => [dataTipe];
}
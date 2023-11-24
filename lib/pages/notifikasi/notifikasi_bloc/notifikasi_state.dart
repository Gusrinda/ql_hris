part of 'notifikasi_bloc.dart';

abstract class NotifikasiState extends Equatable {
  const NotifikasiState();

  @override
  List<Object> get props => [];
}

class ListNotifikasiInitial extends NotifikasiState {}

class ListNotifikasiLoading extends NotifikasiState {}

class ListNotifikasiSuccessInBackground extends NotifikasiState {
  List<DataNotif> listNotifikasi;
  List<Datum> listCuti;
  List<DataLembur> listlembur;
  List<DataDinas> listdinas;

  ListNotifikasiSuccessInBackground({
    required this.listNotifikasi,
    required this.listCuti,
    required this.listlembur,
    required this.listdinas,
    
  });

  @override
  List<Object> get props => [listNotifikasi, listCuti, listlembur, listdinas];
}

class ListNotifikasiFailedInBackground extends NotifikasiState {
  String message;
  ListNotifikasiFailedInBackground({required this.message});
}

class ListNotifikasiFailed extends NotifikasiState {
  String message;
  ListNotifikasiFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListNotifikasiFailedUserExpired extends NotifikasiState {
  String message;

  ListNotifikasiFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

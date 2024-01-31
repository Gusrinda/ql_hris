part of 'list_prestasi_bloc.dart';


abstract class ListPrestasiState extends Equatable {
  const ListPrestasiState();

  @override
  List<Object> get props => [];
}

class ListPrestasiInitial extends ListPrestasiState {}

class ListPrestasiLoading extends ListPrestasiState {}

class ListPrestasiSuccess extends ListPrestasiState {
  List<DataPrestasi> dataPrestasi;

  ListPrestasiSuccess({
    required this.dataPrestasi,
  });

  @override
  List<Object> get props => [dataPrestasi];
}

class DeleteListPrestasiSuccess extends ListPrestasiState {
  String message;
  DeleteListPrestasiSuccess({required this.message});
}

class ListPrestasiFailedInBackground extends ListPrestasiState {
  String message;
  ListPrestasiFailedInBackground({required this.message});
}

class ListPrestasiFailed extends ListPrestasiState {
  String message;
  ListPrestasiFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListPrestasiFailedUserExpired extends ListPrestasiState {
  String message;

  ListPrestasiFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
part of 'list_bahasa_bloc.dart';


abstract class ListBahasaState extends Equatable {
  const ListBahasaState();

   @override
  List<Object> get props => [];
}

class ListBahasaInitial extends ListBahasaState {}

class ListBahasaLoading extends ListBahasaState {}

class ListBahasaSuccess extends ListBahasaState {
  List<DataBahasa> dataBahasa;

  ListBahasaSuccess({
    required this.dataBahasa,
  });

  @override
  List<Object> get props => [dataBahasa];
}


class ListBahasaFailedInBackground extends ListBahasaState {
  String message;
  ListBahasaFailedInBackground({required this.message});
}

class ListBahasaFailed extends ListBahasaState {
  String message;
  ListBahasaFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListBahasaFailedUserExpired extends ListBahasaState {
  String message;

  ListBahasaFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
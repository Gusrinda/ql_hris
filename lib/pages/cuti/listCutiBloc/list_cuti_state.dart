part of 'list_cuti_bloc.dart';

abstract class ListCutiState extends Equatable {
  const ListCutiState();

  @override
  List<Object> get props => [];
}

class ListCutiInitial extends ListCutiState {}

class ListCutiLoading extends ListCutiState {}

class ListCutiSuccessInBackground extends ListCutiState {
  List<Datum> dataCuti;

  ListCutiSuccessInBackground({
    required this.dataCuti,
  });

  @override
  List<Object> get props => [dataCuti];
}

class ListCutiFailedInBackground extends ListCutiState {
  String message;
  ListCutiFailedInBackground({required this.message});
}

class ListCutiFailed extends ListCutiState {
  String message;
  ListCutiFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListCutiFailedUserExpired extends ListCutiState {
  String message;

  ListCutiFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
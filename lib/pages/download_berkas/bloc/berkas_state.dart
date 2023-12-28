part of 'berkas_bloc.dart';

abstract class BerkasState extends Equatable {
  const BerkasState();

  @override
  List<Object> get props => [];
}

class ListBerkasInitial extends BerkasState {}

class ListBerkasLoading extends BerkasState {}

class ListBerkasSuccess extends BerkasState {
  List<DataBerkas> dataBerkas;

  ListBerkasSuccess({
    required this.dataBerkas,
  });

  @override
  List<Object> get props => [dataBerkas];
}

class ListBerkasFailedInBackground extends BerkasState {
  String message;
  ListBerkasFailedInBackground({required this.message});
}

class ListBerkasFailed extends BerkasState {
  String message;
  ListBerkasFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListBerkasFailedUserExpired extends BerkasState {
  String message;

  ListBerkasFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

part of 'berkas_bloc.dart';

abstract class BerkasState extends Equatable {
  const BerkasState();

  @override
  List<Object> get props => [];
}

class KategoriBerkasInitial extends BerkasState {}

class KategoriBerkasLoading extends BerkasState {}

class KategoriBerkasSuccess extends BerkasState {
  List<DataBerkas> dataBerkas;

  KategoriBerkasSuccess({
    required this.dataBerkas,
  });

  @override
  List<Object> get props => [dataBerkas];
}

class KategoriBerkasFailedInBackground extends BerkasState {
  String message;
  KategoriBerkasFailedInBackground({required this.message});
}

class KategoriBerkasFailed extends BerkasState {
  String message;
  KategoriBerkasFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class KategoriBerkasFailedUserExpired extends BerkasState {
  String message;

  KategoriBerkasFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

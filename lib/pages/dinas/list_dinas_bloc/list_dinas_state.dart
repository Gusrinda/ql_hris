part of 'list_dinas_bloc.dart';

abstract class ListDinasState extends Equatable {
  const ListDinasState();

  @override
  List<Object> get props => [];
}

class ListDinasInitial extends ListDinasState {}

class ListDinasLoading extends ListDinasState {}

class ListDinasSuccessInBackground extends ListDinasState {
  List<DataDinas> dataDinas;
  String username;

  ListDinasSuccessInBackground({
    required this.dataDinas,
    required this.username,
  });

  @override
  List<Object> get props => [dataDinas, username];
}

class ListDinasFailedInBackground extends ListDinasState {
  String message;
  ListDinasFailedInBackground({required this.message});
}

class ListDinasFailed extends ListDinasState {
  String message;
  ListDinasFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListDinasFailedUserExpired extends ListDinasState {
  String message;

  ListDinasFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
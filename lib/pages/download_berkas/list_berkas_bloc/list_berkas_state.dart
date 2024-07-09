part of 'list_berkas_bloc.dart';

abstract class ListBerkasState extends Equatable {
  const ListBerkasState();
   @override
  List<Object> get props => [];
}

class ListBerkasInitial extends ListBerkasState {}

class ListBerkasLoading extends ListBerkasState {}

class ListBerkasSuccess extends ListBerkasState {
  List<DataBerkas> dataBerkas;

  ListBerkasSuccess({
    required this.dataBerkas,
  });

  @override
  List<Object> get props => [dataBerkas];
}

class ListBerkasFailedInBackground extends ListBerkasState {
  String message;
  ListBerkasFailedInBackground({required this.message});
}

class ListBerkasFailed extends ListBerkasState {
  String message;
  ListBerkasFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListBerkasFailedUserExpired extends ListBerkasState {
  String message;

  ListBerkasFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
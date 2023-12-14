part of 'list_pendidikan_bloc.dart';


abstract class ListPendidikanState extends Equatable {
  const ListPendidikanState();
  @override
  List<Object> get props => [];
}

class ListPendidikanInitial extends ListPendidikanState {}

class ListPendidikanLoading extends ListPendidikanState {}

class ListPendidikanSuccess extends ListPendidikanState {
  List<ListDataPendidikan> dataPendidikan;

  ListPendidikanSuccess({
    required this.dataPendidikan,
  });

  @override
  List<Object> get props => [dataPendidikan];
}


class ListPendidikanFailedInBackground extends ListPendidikanState {
  String message;
  ListPendidikanFailedInBackground({required this.message});
}

class ListPendidikanFailed extends ListPendidikanState {
  String message;
  ListPendidikanFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListPendidikanFailedUserExpired extends ListPendidikanState {
  String message;

  ListPendidikanFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
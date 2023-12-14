part of 'list_pengalaman_bloc.dart';


abstract class ListPengalamanState extends Equatable {
  const ListPengalamanState();

  @override
  List<Object> get props => [];
}

class ListPengalamanInitial extends ListPengalamanState {}

class ListPengalamanLoading extends ListPengalamanState {}

class ListPengalamanSuccess extends ListPengalamanState {
  List<DataPengalaman> dataPengalaman;

  ListPengalamanSuccess({
    required this.dataPengalaman,
  });

  @override
  List<Object> get props => [dataPengalaman];
}


class ListPengalamanFailedInBackground extends ListPengalamanState {
  String message;
  ListPengalamanFailedInBackground({required this.message});
}

class ListPengalamanFailed extends ListPengalamanState {
  String message;
  ListPengalamanFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListPengalamanFailedUserExpired extends ListPengalamanState {
  String message;

  ListPengalamanFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
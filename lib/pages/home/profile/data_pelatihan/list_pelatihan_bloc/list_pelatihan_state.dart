part of 'list_pelatihan_bloc.dart';

abstract class ListPelatihanState extends Equatable {
  const ListPelatihanState();

  @override
  List<Object> get props => [];
}

class ListPelatihanInitial extends ListPelatihanState {}

class ListPelatihanLoading extends ListPelatihanState {}

class ListPelatihanSuccessInBackground extends ListPelatihanState {
  List<DataPelatihan> dataPelatihan;

  ListPelatihanSuccessInBackground({
    required this.dataPelatihan,
  });

  @override
  List<Object> get props => [dataPelatihan];
}

// class ListPelatihanSuccess extends ListPelatihanState {}

class ListPelatihanFailedInBackground extends ListPelatihanState {
  String message;
  ListPelatihanFailedInBackground({required this.message});
}

class DeletePelatihanSuccess extends ListPelatihanState {
  String message;
  DeletePelatihanSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class ListPelatihanFailed extends ListPelatihanState {
  String message;
  ListPelatihanFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListPelatihanFailedUserExpired extends ListPelatihanState {
  String message;

  ListPelatihanFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

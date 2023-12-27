part of 'pengumuman_bloc.dart';

abstract class PengumumanState extends Equatable {
  const PengumumanState();

  @override
  List<Object> get props => [];
}

class ListPengumumanInitial extends PengumumanState {}

class ListPengumumanLoading extends PengumumanState {}

class ListPengumumanSuccess extends PengumumanState {
  List<DataPengumuman> dataPengumuman;

  ListPengumumanSuccess({
    required this.dataPengumuman,
  });

  @override
  List<Object> get props => [dataPengumuman];
}

class ListPengumumanFailedInBackground extends PengumumanState {
  String message;
  ListPengumumanFailedInBackground({required this.message});
}

class ListPengumumanFailed extends PengumumanState {
  String message;
  ListPengumumanFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListPengumumanFailedUserExpired extends PengumumanState {
  String message;

  ListPengumumanFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

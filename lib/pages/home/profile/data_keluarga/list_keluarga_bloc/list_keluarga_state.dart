part of 'list_keluarga_bloc.dart';

abstract class ListKeluargaState extends Equatable {
  const ListKeluargaState();

  @override
  List<Object> get props => [];
}
class ListKeluargaInitial extends ListKeluargaState {}

class ListKeluargaLoading extends ListKeluargaState {}

class ListKeluargaSuccess extends ListKeluargaState {
  List<DataKeluarga> dataKeluarga;

  ListKeluargaSuccess({
    required this.dataKeluarga,
  });

  @override
  List<Object> get props => [dataKeluarga];
}


class ListKeluargaFailedInBackground extends ListKeluargaState {
  String message;
  ListKeluargaFailedInBackground({required this.message});
}

class ListKeluargaFailed extends ListKeluargaState {
  String message;
  ListKeluargaFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListKeluargaFailedUserExpired extends ListKeluargaState {
  String message;

  ListKeluargaFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
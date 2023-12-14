part of 'list_organisasi_bloc.dart';


abstract class ListOrganisasiState extends Equatable {
  const ListOrganisasiState();

  @override
  List<Object> get props => [];
}

class ListOrganisasiInitial extends ListOrganisasiState {}

class ListOrganisasiLoading extends ListOrganisasiState {}

class ListOrganisasiSuccess extends ListOrganisasiState {
  List<DataOrganisasi> dataOrganisasi;

  ListOrganisasiSuccess({
    required this.dataOrganisasi,
  });

  @override
  List<Object> get props => [dataOrganisasi];
}


class ListOrganisasiFailedInBackground extends ListOrganisasiState {
  String message;
  ListOrganisasiFailedInBackground({required this.message});
}

class ListOrganisasiFailed extends ListOrganisasiState {
  String message;
  ListOrganisasiFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ListOrganisasiFailedUserExpired extends ListOrganisasiState {
  String message;

  ListOrganisasiFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
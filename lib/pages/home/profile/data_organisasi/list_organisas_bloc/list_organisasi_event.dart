part of 'list_organisasi_bloc.dart';


abstract class ListOrganisasiEvent extends Equatable {
  const ListOrganisasiEvent();

  @override
  List<Object> get props => [];
}

class GetListOrganisasi extends ListOrganisasiEvent {

  GetListOrganisasi();

  @override
  List<Object> get props => [];
}

class DeleteListOrganisai extends ListOrganisasiEvent {
  String dataID;

  DeleteListOrganisai({required this.dataID});

  @override
  List<Object> get props => [dataID];
}

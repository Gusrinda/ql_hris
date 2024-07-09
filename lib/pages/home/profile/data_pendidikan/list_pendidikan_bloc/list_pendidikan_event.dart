part of 'list_pendidikan_bloc.dart';


abstract class ListPendidikanEvent extends Equatable {
  const ListPendidikanEvent();
  @override
  List<Object> get props => [];
}
class GetListPendidikan extends ListPendidikanEvent {

  GetListPendidikan();

  @override
  List<Object> get props => [];
}

class DeleteListPendidikan extends ListPendidikanEvent {
  String dataID;

  DeleteListPendidikan({required this.dataID});

  @override
  List<Object> get props => [dataID];
}

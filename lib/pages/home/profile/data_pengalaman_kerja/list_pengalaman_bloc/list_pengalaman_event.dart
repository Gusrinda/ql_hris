part of 'list_pengalaman_bloc.dart';


abstract class ListPengalamanEvent extends Equatable {
  const ListPengalamanEvent();
  @override
  List<Object> get props => [];
}

class GetListPengalaman extends ListPengalamanEvent {

  GetListPengalaman();

  @override
  List<Object> get props => [];
}

class DeleteListPengalaman extends ListPengalamanEvent {
  String dataID;

  DeleteListPengalaman({required this.dataID});

  @override
  List<Object> get props => [dataID];
}
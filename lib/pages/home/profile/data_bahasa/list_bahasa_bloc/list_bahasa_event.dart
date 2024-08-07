part of 'list_bahasa_bloc.dart';


abstract class ListBahasaEvent extends Equatable {
  const ListBahasaEvent();

   @override
  List<Object> get props => [];
}

class GetListBahasa extends ListBahasaEvent {

  GetListBahasa();

  @override
  List<Object> get props => [];
}

class DeleteListBahasa extends ListBahasaEvent {
  String dataID;

  DeleteListBahasa({required this.dataID});

  @override
  List<Object> get props => [dataID];
}
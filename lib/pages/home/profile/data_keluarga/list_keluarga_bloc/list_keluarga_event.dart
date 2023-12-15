part of 'list_keluarga_bloc.dart';


abstract class ListKeluargaEvent extends Equatable {
  const ListKeluargaEvent();

   @override
  List<Object> get props => [];
}

class GetListKeluarga extends ListKeluargaEvent {

  GetListKeluarga();

  @override
  List<Object> get props => [];
}

class DeleteListKeluarga extends ListKeluargaEvent {
  String dataID;

  DeleteListKeluarga({required this.dataID});

  @override
  List<Object> get props => [dataID];
}

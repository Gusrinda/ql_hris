part of 'list_prestasi_bloc.dart';


abstract class ListPrestasiEvent extends Equatable {
  const ListPrestasiEvent();
  @override
  List<Object> get props => [];
}
class GetListPrestasi extends ListPrestasiEvent {
  GetListPrestasi();

  @override
  List<Object> get props => [];
}

class DeleteListPrestasi extends ListPrestasiEvent {
  String dataID;

  DeleteListPrestasi({required this.dataID});

  @override
  List<Object> get props => [dataID];
}

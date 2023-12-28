part of 'list_berkas_bloc.dart';

abstract class ListBerkasEvent extends Equatable {
  const ListBerkasEvent();

  @override
  List<Object> get props => [];
}

class GetListBerkas extends ListBerkasEvent {
  String kategori;
  GetListBerkas({
    required this.kategori,
  });

  @override
  List<Object> get props => [kategori];
}
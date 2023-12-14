part of 'list_pelatihan_bloc.dart';

@freezed
abstract class ListPelatihanEvent extends Equatable {
  const ListPelatihanEvent();

   @override
  List<Object> get props => [];
}

class GetListPelatihan extends ListPelatihanEvent {

  GetListPelatihan();

  @override
  List<Object> get props => [];
}
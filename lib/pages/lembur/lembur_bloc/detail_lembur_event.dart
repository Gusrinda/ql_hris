part of 'detail_lembur_bloc.dart';

abstract class DetailLemburEvent extends Equatable {
  const DetailLemburEvent();

  @override
  List<Object> get props => [];
}

class GetDetailLembur extends DetailLemburEvent {
  int id;

  GetDetailLembur({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
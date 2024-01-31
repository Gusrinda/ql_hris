part of 'pengumuman_bloc.dart';

abstract class PengumumanEvent extends Equatable {
  const PengumumanEvent();

  @override
  List<Object> get props => [];
}

class GetListPengumuman extends PengumumanEvent {
  GetListPengumuman();

  @override
  List<Object> get props => [];
}

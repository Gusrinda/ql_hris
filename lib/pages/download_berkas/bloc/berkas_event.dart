part of 'berkas_bloc.dart';

abstract class BerkasEvent extends Equatable {
  const BerkasEvent();

  @override
  List<Object> get props => [];
}

class GetListBerkas extends BerkasEvent {

  GetListBerkas();

  @override
  List<Object> get props => [];
}
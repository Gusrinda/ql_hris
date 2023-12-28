part of 'berkas_bloc.dart';

abstract class BerkasEvent extends Equatable {
  const BerkasEvent();

  @override
  List<Object> get props => [];
}

class GetKategoriBerkas extends BerkasEvent {

  GetKategoriBerkas();

  @override
  List<Object> get props => [];
}
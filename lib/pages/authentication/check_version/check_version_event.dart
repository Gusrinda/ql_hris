part of 'check_version_bloc.dart';

abstract class CheckVersionEvent extends Equatable {
  const CheckVersionEvent();

  @override
  List<Object> get props => [];
}

class GetVersion extends CheckVersionEvent {
  GetVersion();
  @override
  List<Object> get props => [];
}

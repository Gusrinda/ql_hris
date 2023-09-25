part of 'time_acio_bloc.dart';

abstract class TimeAcioEvent extends Equatable {
  const TimeAcioEvent();

  @override
  List<Object> get props => [];
}

class StartDateTimeTimeAcio extends TimeAcioEvent {}
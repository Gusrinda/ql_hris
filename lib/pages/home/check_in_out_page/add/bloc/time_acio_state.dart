part of 'time_acio_bloc.dart';

abstract class TimeAcioState extends Equatable {
  const TimeAcioState();
  
  @override
  List<Object> get props => [];
}

class TimeAcioInitial extends TimeAcioState {}

class TimeAcioLoadSuccess extends TimeAcioState {
  DateTime dateTime;

  TimeAcioLoadSuccess({
    required this.dateTime,
  });

  @override
  List<Object> get props => [dateTime];
}

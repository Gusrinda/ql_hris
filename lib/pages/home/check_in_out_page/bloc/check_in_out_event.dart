part of 'check_in_out_bloc.dart';

abstract class CheckInOutEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AttendanceStateChecked extends CheckInOutEvent {}

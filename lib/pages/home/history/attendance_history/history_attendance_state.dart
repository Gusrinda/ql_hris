part of 'history_attendance_bloc.dart';

abstract class HistoryAttendanceState extends Equatable {
  const HistoryAttendanceState();

  @override
  List<Object> get props => [];
}

class HitoryAttendanceInitial extends HistoryAttendanceState {}

class HistoryAttendanceLoading extends HistoryAttendanceState {}

class HistorySuccessInBackground extends HistoryAttendanceState {
  List<DataPresensi> dataHistory;

  HistorySuccessInBackground({
    required this.dataHistory,
  });

  @override
  List<Object> get props => [dataHistory];
}

class HistoryFailedInBackground extends HistoryAttendanceState {
  String message;
  HistoryFailedInBackground({required this.message});
}

class HistoryAttendanceFailed extends HistoryAttendanceState {
  String message;

  HistoryAttendanceFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class HistoryFailedUserExpired extends HistoryAttendanceState {
  String message;

  HistoryFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

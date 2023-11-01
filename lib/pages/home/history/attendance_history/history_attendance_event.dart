part of 'history_attendance_bloc.dart';

class HistoryAttendanceEvent extends Equatable {
  const HistoryAttendanceEvent();

  @override
  List<Object> get props => [];
}

class GetAttendancesHistory extends HistoryAttendanceEvent {
  DateTime date;

  GetAttendancesHistory({
    required this.date,
  });

  @override
  List<Object> get props => [date];
}

class SortByMonthAttendancesHistory extends HistoryAttendanceEvent {
  bool sortState;

  SortByMonthAttendancesHistory({
    required this.sortState,
  });

  @override
  List<Object> get props => [sortState];
}

class SortByYearAttendancesHistory extends HistoryAttendanceEvent {
  bool sortState;

  SortByYearAttendancesHistory({
    required this.sortState,
  });

  @override
  List<Object> get props => [sortState];
}

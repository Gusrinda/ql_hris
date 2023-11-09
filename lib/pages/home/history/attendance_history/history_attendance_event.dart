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

class SortByAttendancesHistory extends HistoryAttendanceEvent {
  final DateTime? selectedMonth;
  final DateTime? selectedYear;

  SortByAttendancesHistory({this.selectedYear, this.selectedMonth});

  @override
  List<Object> get props => [
        selectedMonth != null ? selectedMonth! : "",
        selectedYear != null ? selectedYear! : ""
      ];
}



// class SortByYearAttendancesHistory extends HistoryAttendanceEvent {
//   bool sortState;

//   SortByYearAttendancesHistory({
//     required this.sortState,
//   });

//   @override
//   List<Object> get props => [sortState];
// }

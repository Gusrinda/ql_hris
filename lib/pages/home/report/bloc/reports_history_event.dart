part of 'reports_history_bloc.dart';

abstract class ReportsHistoryEvent extends Equatable {
  const ReportsHistoryEvent();

  @override
  List<Object> get props => [];
}

class GetReportsHistory extends ReportsHistoryEvent {
  DateTime date;

  GetReportsHistory({
    required this.date,
  });

  @override
  List<Object> get props => [date];
}

class SortByDateReportsHistory extends ReportsHistoryEvent {
  bool sortState;

  SortByDateReportsHistory({
    required this.sortState,
  });

  @override
  List<Object> get props => [sortState];
}

class ReportStateChecked extends ReportsHistoryEvent {}

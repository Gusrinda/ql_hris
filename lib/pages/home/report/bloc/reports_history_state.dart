part of 'reports_history_bloc.dart';

abstract class ReportsHistoryState extends Equatable {
  const ReportsHistoryState();

  @override
  List<Object> get props => [];
}

class ReportsHistoryInitial extends ReportsHistoryState {}

class ReportsHistoryLoading extends ReportsHistoryState {}

class ReportsHistorySuccessInBackground extends ReportsHistoryState {
  List<ReportModel> reportsModel;

  ReportsHistorySuccessInBackground({
    required this.reportsModel,
  });

  @override
  List<Object> get props => [reportsModel];
}

class ReportsHistoryFailedInBackground extends ReportsHistoryState {}

class CheckReportHistorySuccessInBackground extends ReportsHistoryState {
  bool? isMorningReport;

  CheckReportHistorySuccessInBackground({
    this.isMorningReport,
  });

  @override
  List<Object> get props => [isMorningReport!];
}

class ReportsHistoryFailed extends ReportsHistoryState {
  String message;

  ReportsHistoryFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class ReportsHistoryFailedUserExpired extends ReportsHistoryState {
  String message;

  ReportsHistoryFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

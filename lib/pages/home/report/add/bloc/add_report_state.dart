part of 'add_report_bloc.dart';

abstract class AddReportState extends Equatable {
  const AddReportState();

  @override
  List<Object> get props => [];
}

class AddReportInitial extends AddReportState {}

class AddReportLoading extends AddReportState {}

class FetchLastReportSuccessInBackground extends AddReportState {
  ReportModel reportModel;

  FetchLastReportSuccessInBackground({
    required this.reportModel,
  });

  @override
  List<Object> get props => [reportModel];
}

class AddReportSuccess extends AddReportState {
  String message;

  AddReportSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class AddReportFailed extends AddReportState {
  String message;

  AddReportFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class FetchLastReportFailedInBackground extends AddReportState {}

class AddReportFailedInBackground extends AddReportState {}

class AddReportFailedUserExpired extends AddReportState {
  String message;

  AddReportFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

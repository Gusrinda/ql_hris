part of 'history_bloc.dart';

abstract class HistoryState extends Equatable {
  const HistoryState();

  @override
  List<Object> get props => [];
}

class HistoryInitial extends HistoryState {}

class HistoryLoading extends HistoryState {}

class HistorySuccessInBackground extends HistoryState {
  List<AttendanceModel> attendancesModel;

  HistorySuccessInBackground({
    required this.attendancesModel,
  });

  @override
  List<Object> get props => [attendancesModel];
}

class HistoryFailedInBackground extends HistoryState {}

class HistoryFailed extends HistoryState {
  String message;

  HistoryFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class HistoryFailedUserExpired extends HistoryState {
  String message;

  HistoryFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}

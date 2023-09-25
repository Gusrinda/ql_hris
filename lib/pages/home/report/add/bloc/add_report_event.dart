part of 'add_report_bloc.dart';

abstract class AddReportEvent extends Equatable {
  const AddReportEvent();

  @override
  List<Object> get props => [];
}

class AddReportSubmited extends AddReportEvent {
  String pastTask;
  String nextTask;
  String keterangan;
  bool status;

  AddReportSubmited({
    required this.pastTask,
    required this.nextTask,
    required this.status,
    required this.keterangan,
  });

  @override
  List<Object> get props => [
        pastTask,
        nextTask,
        keterangan,
        status,
      ];
}

class GetLastReport extends AddReportEvent {}

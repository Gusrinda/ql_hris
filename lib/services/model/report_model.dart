import 'package:intl/intl.dart';

class ReportModel {
  int? id;
  DateTime? date;
  String? status;
  List<ReportDetailModel>? reportDetails;
  ReportModel({
    this.id,
    this.date,
    this.status,
    this.reportDetails,
  });

  factory ReportModel.fromMap(Map<String, dynamic> json) => ReportModel(
        id: json["id"],
        date: DateFormat("yyyy-MM-dd").parse(json["date"]),
        status: json["status"],
        reportDetails: ReportDetailModel.reportDetailsFromMap(
          json["report_details"],
        ),
      );

  static List<ReportModel> reportsFromMap(List<dynamic> str) =>
      List<ReportModel>.from(
        str.map(
          (x) => ReportModel.fromMap(x),
        ),
      );
}

class ReportDetailModel {
  DateTime? time;
  String? pastTask;
  String? nextTask;
  String? keterangan;
  String? status;
  ReportDetailModel({
    this.time,
    this.pastTask,
    this.nextTask,
    this.keterangan,
    this.status,
  });

  factory ReportDetailModel.fromMap(Map<String, dynamic> json) =>
      ReportDetailModel(
        time: DateFormat("HH:mm:ss").parse(json["time"]),
        pastTask: json["past_task"],
        nextTask: json["next_task"],
        keterangan: json["keterangan"],
        status: json["status"],
      );

  static List<ReportDetailModel> reportDetailsFromMap(List<dynamic> str) =>
      List<ReportDetailModel>.from(
        str.map(
          (x) => ReportDetailModel.fromMap(x),
        ),
      );
}

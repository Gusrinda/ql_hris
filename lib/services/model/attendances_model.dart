import 'package:intl/intl.dart';

class AttendanceModel {
  int? id;
  DateTime? date;
  String? status;
  List<AttendanceDetailModel>? attendancesDetails;
  AttendanceModel({
    this.id,
    this.date,
    this.status,
    this.attendancesDetails,
  });

  factory AttendanceModel.fromMap(Map<String, dynamic> json) => AttendanceModel(
        id: json["id"],
        date: DateFormat("yyyy-MM-dd").parse(json["date"]),
        status: json["status"],
        attendancesDetails: AttendanceDetailModel.attendanceDetailsFromMap(
          json["attendances_details"],
        ),
      );

  static List<AttendanceModel> attendancesFromMap(List<dynamic> str) =>
      List<AttendanceModel>.from(
        str.map(
          (x) => AttendanceModel.fromMap(x),
        ),
      );
}

class AttendanceDetailModel {
  DateTime? time;
  String? imagePath;
  bool? onSite;
  String? status;
  AttendanceDetailModel({
    this.time,
    this.imagePath,
    this.onSite,
    this.status,
  });

  factory AttendanceDetailModel.fromMap(Map<String, dynamic> json) =>
      AttendanceDetailModel(
        time: DateFormat("HH:mm:ss").parse(json["time"]),
        imagePath: json["image_path"],
        onSite: json["on_site"] as bool,
        status: json["status"],
      );

  static List<AttendanceDetailModel> attendanceDetailsFromMap(
          List<dynamic> str) =>
      List<AttendanceDetailModel>.from(
        str.map(
          (x) => AttendanceDetailModel.fromMap(x),
        ),
      );
}

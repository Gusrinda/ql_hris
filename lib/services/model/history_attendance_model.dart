import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'history_attendance_model.freezed.dart';
part 'history_attendance_model.g.dart';

@freezed
class HistoryAttendanceModel with _$HistoryAttendanceModel {
    const factory HistoryAttendanceModel({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        List<DataPresensi>? data,
    }) = _HistoryAttendanceModel;

    factory HistoryAttendanceModel.fromJson(Map<String, dynamic> json) => _$HistoryAttendanceModelFromJson(json);
}

@freezed
class DataPresensi with _$DataPresensi {
    const factory DataPresensi({
        @JsonKey(name: "kary")
        String? kary,
        @JsonKey(name: "all_days_of_month")
        DateTime? allDaysOfMonth,
        @JsonKey(name: "date_to_idn")
        String? dateToIdn,
        @JsonKey(name: "day_name_idn")
        String? dayNameIdn,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "absensi")
        String? absensi,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "tanggal")
        DateTime? tanggal,
        @JsonKey(name: "catatan_in")
        dynamic catatanIn,
        @JsonKey(name: "catatan_out")
        dynamic catatanOut,
        @JsonKey(name: "checkin_lat")
        String? checkinLat,
        @JsonKey(name: "checkin_foto")
        String? checkinFoto,
        @JsonKey(name: "checkin_long")
        String? checkinLong,
        @JsonKey(name: "checkin_time")
        String? checkinTime,
        @JsonKey(name: "checkout_lat")
        String? checkoutLat,
        @JsonKey(name: "checkout_foto")
        String? checkoutFoto,
        @JsonKey(name: "checkout_long")
        String? checkoutLong,
        @JsonKey(name: "checkout_time")
        String? checkoutTime,
        @JsonKey(name: "checkin_region")
        String? checkinRegion,
        @JsonKey(name: "checkin_address")
        String? checkinAddress,
        @JsonKey(name: "checkout_region")
        String? checkoutRegion,
        @JsonKey(name: "checkin_on_scope")
        bool? checkinOnScope,
        @JsonKey(name: "checkout_address")
        String? checkoutAddress,
        @JsonKey(name: "checkout_on_scope")
        bool? checkoutOnScope,
        @JsonKey(name: "presensi_absensi_id")
        int? presensiAbsensiId,
    }) = _DataPresensi;

    factory DataPresensi.fromJson(Map<String, dynamic> json) => _$DataPresensiFromJson(json);
}

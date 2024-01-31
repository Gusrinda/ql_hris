// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryAttendanceModelImpl _$$HistoryAttendanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryAttendanceModelImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataPresensi.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistoryAttendanceModelImplToJson(
        _$HistoryAttendanceModelImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataPresensiImpl _$$DataPresensiImplFromJson(Map<String, dynamic> json) =>
    _$DataPresensiImpl(
      kary: json['kary'] as String?,
      allDaysOfMonth: json['all_days_of_month'] == null
          ? null
          : DateTime.parse(json['all_days_of_month'] as String),
      dateToIdn: json['date_to_idn'] as String?,
      dayNameIdn: json['day_name_idn'] as String?,
      type: json['type'] as String?,
      absensi: json['absensi'] as String?,
      status: json['status'] as String?,
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      catatanIn: json['catatan_in'],
      catatanOut: json['catatan_out'],
      checkinLat: json['checkin_lat'] as String?,
      checkinFoto: json['checkin_foto'] as String?,
      checkinLong: json['checkin_long'] as String?,
      checkinTime: json['checkin_time'] as String?,
      checkoutLat: json['checkout_lat'] as String?,
      checkoutFoto: json['checkout_foto'] as String?,
      checkoutLong: json['checkout_long'] as String?,
      checkoutTime: json['checkout_time'] as String?,
      checkinRegion: json['checkin_region'] as String?,
      checkinAddress: json['checkin_address'] as String?,
      checkoutRegion: json['checkout_region'] as String?,
      checkinOnScope: json['checkin_on_scope'] as bool?,
      checkoutAddress: json['checkout_address'] as String?,
      checkoutOnScope: json['checkout_on_scope'] as bool?,
      presensiAbsensiId: json['presensi_absensi_id'] as int?,
    );

Map<String, dynamic> _$$DataPresensiImplToJson(_$DataPresensiImpl instance) =>
    <String, dynamic>{
      'kary': instance.kary,
      'all_days_of_month': instance.allDaysOfMonth?.toIso8601String(),
      'date_to_idn': instance.dateToIdn,
      'day_name_idn': instance.dayNameIdn,
      'type': instance.type,
      'absensi': instance.absensi,
      'status': instance.status,
      'tanggal': instance.tanggal?.toIso8601String(),
      'catatan_in': instance.catatanIn,
      'catatan_out': instance.catatanOut,
      'checkin_lat': instance.checkinLat,
      'checkin_foto': instance.checkinFoto,
      'checkin_long': instance.checkinLong,
      'checkin_time': instance.checkinTime,
      'checkout_lat': instance.checkoutLat,
      'checkout_foto': instance.checkoutFoto,
      'checkout_long': instance.checkoutLong,
      'checkout_time': instance.checkoutTime,
      'checkin_region': instance.checkinRegion,
      'checkin_address': instance.checkinAddress,
      'checkout_region': instance.checkoutRegion,
      'checkin_on_scope': instance.checkinOnScope,
      'checkout_address': instance.checkoutAddress,
      'checkout_on_scope': instance.checkoutOnScope,
      'presensi_absensi_id': instance.presensiAbsensiId,
    };

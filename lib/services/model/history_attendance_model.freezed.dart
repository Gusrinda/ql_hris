// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryAttendanceModel _$HistoryAttendanceModelFromJson(
    Map<String, dynamic> json) {
  return _HistoryAttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryAttendanceModel {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataPresensi>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryAttendanceModelCopyWith<HistoryAttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryAttendanceModelCopyWith<$Res> {
  factory $HistoryAttendanceModelCopyWith(HistoryAttendanceModel value,
          $Res Function(HistoryAttendanceModel) then) =
      _$HistoryAttendanceModelCopyWithImpl<$Res, HistoryAttendanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataPresensi>? data});
}

/// @nodoc
class _$HistoryAttendanceModelCopyWithImpl<$Res,
        $Val extends HistoryAttendanceModel>
    implements $HistoryAttendanceModelCopyWith<$Res> {
  _$HistoryAttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataPresensi>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryAttendanceModelImplCopyWith<$Res>
    implements $HistoryAttendanceModelCopyWith<$Res> {
  factory _$$HistoryAttendanceModelImplCopyWith(
          _$HistoryAttendanceModelImpl value,
          $Res Function(_$HistoryAttendanceModelImpl) then) =
      __$$HistoryAttendanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataPresensi>? data});
}

/// @nodoc
class __$$HistoryAttendanceModelImplCopyWithImpl<$Res>
    extends _$HistoryAttendanceModelCopyWithImpl<$Res,
        _$HistoryAttendanceModelImpl>
    implements _$$HistoryAttendanceModelImplCopyWith<$Res> {
  __$$HistoryAttendanceModelImplCopyWithImpl(
      _$HistoryAttendanceModelImpl _value,
      $Res Function(_$HistoryAttendanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HistoryAttendanceModelImpl(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataPresensi>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryAttendanceModelImpl implements _HistoryAttendanceModel {
  const _$HistoryAttendanceModelImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DataPresensi>? data})
      : _data = data;

  factory _$HistoryAttendanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryAttendanceModelImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DataPresensi>? _data;
  @override
  @JsonKey(name: "data")
  List<DataPresensi>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryAttendanceModel(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryAttendanceModelImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, code, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryAttendanceModelImplCopyWith<_$HistoryAttendanceModelImpl>
      get copyWith => __$$HistoryAttendanceModelImplCopyWithImpl<
          _$HistoryAttendanceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryAttendanceModelImplToJson(
      this,
    );
  }
}

abstract class _HistoryAttendanceModel implements HistoryAttendanceModel {
  const factory _HistoryAttendanceModel(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DataPresensi>? data}) =
      _$HistoryAttendanceModelImpl;

  factory _HistoryAttendanceModel.fromJson(Map<String, dynamic> json) =
      _$HistoryAttendanceModelImpl.fromJson;

  @override
  @JsonKey(name: "timestamp")
  String? get timestamp;
  @override
  @JsonKey(name: "code")
  int? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<DataPresensi>? get data;
  @override
  @JsonKey(ignore: true)
  _$$HistoryAttendanceModelImplCopyWith<_$HistoryAttendanceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataPresensi _$DataPresensiFromJson(Map<String, dynamic> json) {
  return _DataPresensi.fromJson(json);
}

/// @nodoc
mixin _$DataPresensi {
  @JsonKey(name: "kary")
  String? get kary => throw _privateConstructorUsedError;
  @JsonKey(name: "all_days_of_month")
  DateTime? get allDaysOfMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "date_to_idn")
  String? get dateToIdn => throw _privateConstructorUsedError;
  @JsonKey(name: "day_name_idn")
  String? get dayNameIdn => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "absensi")
  String? get absensi => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggal")
  DateTime? get tanggal => throw _privateConstructorUsedError;
  @JsonKey(name: "catatan_in")
  dynamic get catatanIn => throw _privateConstructorUsedError;
  @JsonKey(name: "catatan_out")
  dynamic get catatanOut => throw _privateConstructorUsedError;
  @JsonKey(name: "checkin_lat")
  String? get checkinLat => throw _privateConstructorUsedError;
  @JsonKey(name: "checkin_foto")
  String? get checkinFoto => throw _privateConstructorUsedError;
  @JsonKey(name: "checkin_long")
  String? get checkinLong => throw _privateConstructorUsedError;
  @JsonKey(name: "checkin_time")
  String? get checkinTime => throw _privateConstructorUsedError;
  @JsonKey(name: "checkout_lat")
  String? get checkoutLat => throw _privateConstructorUsedError;
  @JsonKey(name: "checkout_foto")
  String? get checkoutFoto => throw _privateConstructorUsedError;
  @JsonKey(name: "checkout_long")
  String? get checkoutLong => throw _privateConstructorUsedError;
  @JsonKey(name: "checkout_time")
  String? get checkoutTime => throw _privateConstructorUsedError;
  @JsonKey(name: "checkin_region")
  String? get checkinRegion => throw _privateConstructorUsedError;
  @JsonKey(name: "checkin_address")
  String? get checkinAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "checkout_region")
  String? get checkoutRegion => throw _privateConstructorUsedError;
  @JsonKey(name: "checkin_on_scope")
  bool? get checkinOnScope => throw _privateConstructorUsedError;
  @JsonKey(name: "checkout_address")
  String? get checkoutAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "checkout_on_scope")
  bool? get checkoutOnScope => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_absensi_id")
  int? get presensiAbsensiId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPresensiCopyWith<DataPresensi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPresensiCopyWith<$Res> {
  factory $DataPresensiCopyWith(
          DataPresensi value, $Res Function(DataPresensi) then) =
      _$DataPresensiCopyWithImpl<$Res, DataPresensi>;
  @useResult
  $Res call(
      {@JsonKey(name: "kary") String? kary,
      @JsonKey(name: "all_days_of_month") DateTime? allDaysOfMonth,
      @JsonKey(name: "date_to_idn") String? dateToIdn,
      @JsonKey(name: "day_name_idn") String? dayNameIdn,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "absensi") String? absensi,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "tanggal") DateTime? tanggal,
      @JsonKey(name: "catatan_in") dynamic catatanIn,
      @JsonKey(name: "catatan_out") dynamic catatanOut,
      @JsonKey(name: "checkin_lat") String? checkinLat,
      @JsonKey(name: "checkin_foto") String? checkinFoto,
      @JsonKey(name: "checkin_long") String? checkinLong,
      @JsonKey(name: "checkin_time") String? checkinTime,
      @JsonKey(name: "checkout_lat") String? checkoutLat,
      @JsonKey(name: "checkout_foto") String? checkoutFoto,
      @JsonKey(name: "checkout_long") String? checkoutLong,
      @JsonKey(name: "checkout_time") String? checkoutTime,
      @JsonKey(name: "checkin_region") String? checkinRegion,
      @JsonKey(name: "checkin_address") String? checkinAddress,
      @JsonKey(name: "checkout_region") String? checkoutRegion,
      @JsonKey(name: "checkin_on_scope") bool? checkinOnScope,
      @JsonKey(name: "checkout_address") String? checkoutAddress,
      @JsonKey(name: "checkout_on_scope") bool? checkoutOnScope,
      @JsonKey(name: "presensi_absensi_id") int? presensiAbsensiId});
}

/// @nodoc
class _$DataPresensiCopyWithImpl<$Res, $Val extends DataPresensi>
    implements $DataPresensiCopyWith<$Res> {
  _$DataPresensiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kary = freezed,
    Object? allDaysOfMonth = freezed,
    Object? dateToIdn = freezed,
    Object? dayNameIdn = freezed,
    Object? type = freezed,
    Object? absensi = freezed,
    Object? status = freezed,
    Object? tanggal = freezed,
    Object? catatanIn = freezed,
    Object? catatanOut = freezed,
    Object? checkinLat = freezed,
    Object? checkinFoto = freezed,
    Object? checkinLong = freezed,
    Object? checkinTime = freezed,
    Object? checkoutLat = freezed,
    Object? checkoutFoto = freezed,
    Object? checkoutLong = freezed,
    Object? checkoutTime = freezed,
    Object? checkinRegion = freezed,
    Object? checkinAddress = freezed,
    Object? checkoutRegion = freezed,
    Object? checkinOnScope = freezed,
    Object? checkoutAddress = freezed,
    Object? checkoutOnScope = freezed,
    Object? presensiAbsensiId = freezed,
  }) {
    return _then(_value.copyWith(
      kary: freezed == kary
          ? _value.kary
          : kary // ignore: cast_nullable_to_non_nullable
              as String?,
      allDaysOfMonth: freezed == allDaysOfMonth
          ? _value.allDaysOfMonth
          : allDaysOfMonth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateToIdn: freezed == dateToIdn
          ? _value.dateToIdn
          : dateToIdn // ignore: cast_nullable_to_non_nullable
              as String?,
      dayNameIdn: freezed == dayNameIdn
          ? _value.dayNameIdn
          : dayNameIdn // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      absensi: freezed == absensi
          ? _value.absensi
          : absensi // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      catatanIn: freezed == catatanIn
          ? _value.catatanIn
          : catatanIn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      catatanOut: freezed == catatanOut
          ? _value.catatanOut
          : catatanOut // ignore: cast_nullable_to_non_nullable
              as dynamic,
      checkinLat: freezed == checkinLat
          ? _value.checkinLat
          : checkinLat // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinFoto: freezed == checkinFoto
          ? _value.checkinFoto
          : checkinFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinLong: freezed == checkinLong
          ? _value.checkinLong
          : checkinLong // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinTime: freezed == checkinTime
          ? _value.checkinTime
          : checkinTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutLat: freezed == checkoutLat
          ? _value.checkoutLat
          : checkoutLat // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutFoto: freezed == checkoutFoto
          ? _value.checkoutFoto
          : checkoutFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutLong: freezed == checkoutLong
          ? _value.checkoutLong
          : checkoutLong // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutTime: freezed == checkoutTime
          ? _value.checkoutTime
          : checkoutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinRegion: freezed == checkinRegion
          ? _value.checkinRegion
          : checkinRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinAddress: freezed == checkinAddress
          ? _value.checkinAddress
          : checkinAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutRegion: freezed == checkoutRegion
          ? _value.checkoutRegion
          : checkoutRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinOnScope: freezed == checkinOnScope
          ? _value.checkinOnScope
          : checkinOnScope // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkoutAddress: freezed == checkoutAddress
          ? _value.checkoutAddress
          : checkoutAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutOnScope: freezed == checkoutOnScope
          ? _value.checkoutOnScope
          : checkoutOnScope // ignore: cast_nullable_to_non_nullable
              as bool?,
      presensiAbsensiId: freezed == presensiAbsensiId
          ? _value.presensiAbsensiId
          : presensiAbsensiId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataPresensiImplCopyWith<$Res>
    implements $DataPresensiCopyWith<$Res> {
  factory _$$DataPresensiImplCopyWith(
          _$DataPresensiImpl value, $Res Function(_$DataPresensiImpl) then) =
      __$$DataPresensiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "kary") String? kary,
      @JsonKey(name: "all_days_of_month") DateTime? allDaysOfMonth,
      @JsonKey(name: "date_to_idn") String? dateToIdn,
      @JsonKey(name: "day_name_idn") String? dayNameIdn,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "absensi") String? absensi,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "tanggal") DateTime? tanggal,
      @JsonKey(name: "catatan_in") dynamic catatanIn,
      @JsonKey(name: "catatan_out") dynamic catatanOut,
      @JsonKey(name: "checkin_lat") String? checkinLat,
      @JsonKey(name: "checkin_foto") String? checkinFoto,
      @JsonKey(name: "checkin_long") String? checkinLong,
      @JsonKey(name: "checkin_time") String? checkinTime,
      @JsonKey(name: "checkout_lat") String? checkoutLat,
      @JsonKey(name: "checkout_foto") String? checkoutFoto,
      @JsonKey(name: "checkout_long") String? checkoutLong,
      @JsonKey(name: "checkout_time") String? checkoutTime,
      @JsonKey(name: "checkin_region") String? checkinRegion,
      @JsonKey(name: "checkin_address") String? checkinAddress,
      @JsonKey(name: "checkout_region") String? checkoutRegion,
      @JsonKey(name: "checkin_on_scope") bool? checkinOnScope,
      @JsonKey(name: "checkout_address") String? checkoutAddress,
      @JsonKey(name: "checkout_on_scope") bool? checkoutOnScope,
      @JsonKey(name: "presensi_absensi_id") int? presensiAbsensiId});
}

/// @nodoc
class __$$DataPresensiImplCopyWithImpl<$Res>
    extends _$DataPresensiCopyWithImpl<$Res, _$DataPresensiImpl>
    implements _$$DataPresensiImplCopyWith<$Res> {
  __$$DataPresensiImplCopyWithImpl(
      _$DataPresensiImpl _value, $Res Function(_$DataPresensiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kary = freezed,
    Object? allDaysOfMonth = freezed,
    Object? dateToIdn = freezed,
    Object? dayNameIdn = freezed,
    Object? type = freezed,
    Object? absensi = freezed,
    Object? status = freezed,
    Object? tanggal = freezed,
    Object? catatanIn = freezed,
    Object? catatanOut = freezed,
    Object? checkinLat = freezed,
    Object? checkinFoto = freezed,
    Object? checkinLong = freezed,
    Object? checkinTime = freezed,
    Object? checkoutLat = freezed,
    Object? checkoutFoto = freezed,
    Object? checkoutLong = freezed,
    Object? checkoutTime = freezed,
    Object? checkinRegion = freezed,
    Object? checkinAddress = freezed,
    Object? checkoutRegion = freezed,
    Object? checkinOnScope = freezed,
    Object? checkoutAddress = freezed,
    Object? checkoutOnScope = freezed,
    Object? presensiAbsensiId = freezed,
  }) {
    return _then(_$DataPresensiImpl(
      kary: freezed == kary
          ? _value.kary
          : kary // ignore: cast_nullable_to_non_nullable
              as String?,
      allDaysOfMonth: freezed == allDaysOfMonth
          ? _value.allDaysOfMonth
          : allDaysOfMonth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateToIdn: freezed == dateToIdn
          ? _value.dateToIdn
          : dateToIdn // ignore: cast_nullable_to_non_nullable
              as String?,
      dayNameIdn: freezed == dayNameIdn
          ? _value.dayNameIdn
          : dayNameIdn // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      absensi: freezed == absensi
          ? _value.absensi
          : absensi // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      catatanIn: freezed == catatanIn
          ? _value.catatanIn
          : catatanIn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      catatanOut: freezed == catatanOut
          ? _value.catatanOut
          : catatanOut // ignore: cast_nullable_to_non_nullable
              as dynamic,
      checkinLat: freezed == checkinLat
          ? _value.checkinLat
          : checkinLat // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinFoto: freezed == checkinFoto
          ? _value.checkinFoto
          : checkinFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinLong: freezed == checkinLong
          ? _value.checkinLong
          : checkinLong // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinTime: freezed == checkinTime
          ? _value.checkinTime
          : checkinTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutLat: freezed == checkoutLat
          ? _value.checkoutLat
          : checkoutLat // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutFoto: freezed == checkoutFoto
          ? _value.checkoutFoto
          : checkoutFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutLong: freezed == checkoutLong
          ? _value.checkoutLong
          : checkoutLong // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutTime: freezed == checkoutTime
          ? _value.checkoutTime
          : checkoutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinRegion: freezed == checkinRegion
          ? _value.checkinRegion
          : checkinRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinAddress: freezed == checkinAddress
          ? _value.checkinAddress
          : checkinAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutRegion: freezed == checkoutRegion
          ? _value.checkoutRegion
          : checkoutRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinOnScope: freezed == checkinOnScope
          ? _value.checkinOnScope
          : checkinOnScope // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkoutAddress: freezed == checkoutAddress
          ? _value.checkoutAddress
          : checkoutAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutOnScope: freezed == checkoutOnScope
          ? _value.checkoutOnScope
          : checkoutOnScope // ignore: cast_nullable_to_non_nullable
              as bool?,
      presensiAbsensiId: freezed == presensiAbsensiId
          ? _value.presensiAbsensiId
          : presensiAbsensiId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataPresensiImpl implements _DataPresensi {
  const _$DataPresensiImpl(
      {@JsonKey(name: "kary") this.kary,
      @JsonKey(name: "all_days_of_month") this.allDaysOfMonth,
      @JsonKey(name: "date_to_idn") this.dateToIdn,
      @JsonKey(name: "day_name_idn") this.dayNameIdn,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "absensi") this.absensi,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "tanggal") this.tanggal,
      @JsonKey(name: "catatan_in") this.catatanIn,
      @JsonKey(name: "catatan_out") this.catatanOut,
      @JsonKey(name: "checkin_lat") this.checkinLat,
      @JsonKey(name: "checkin_foto") this.checkinFoto,
      @JsonKey(name: "checkin_long") this.checkinLong,
      @JsonKey(name: "checkin_time") this.checkinTime,
      @JsonKey(name: "checkout_lat") this.checkoutLat,
      @JsonKey(name: "checkout_foto") this.checkoutFoto,
      @JsonKey(name: "checkout_long") this.checkoutLong,
      @JsonKey(name: "checkout_time") this.checkoutTime,
      @JsonKey(name: "checkin_region") this.checkinRegion,
      @JsonKey(name: "checkin_address") this.checkinAddress,
      @JsonKey(name: "checkout_region") this.checkoutRegion,
      @JsonKey(name: "checkin_on_scope") this.checkinOnScope,
      @JsonKey(name: "checkout_address") this.checkoutAddress,
      @JsonKey(name: "checkout_on_scope") this.checkoutOnScope,
      @JsonKey(name: "presensi_absensi_id") this.presensiAbsensiId});

  factory _$DataPresensiImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPresensiImplFromJson(json);

  @override
  @JsonKey(name: "kary")
  final String? kary;
  @override
  @JsonKey(name: "all_days_of_month")
  final DateTime? allDaysOfMonth;
  @override
  @JsonKey(name: "date_to_idn")
  final String? dateToIdn;
  @override
  @JsonKey(name: "day_name_idn")
  final String? dayNameIdn;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "absensi")
  final String? absensi;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "tanggal")
  final DateTime? tanggal;
  @override
  @JsonKey(name: "catatan_in")
  final dynamic catatanIn;
  @override
  @JsonKey(name: "catatan_out")
  final dynamic catatanOut;
  @override
  @JsonKey(name: "checkin_lat")
  final String? checkinLat;
  @override
  @JsonKey(name: "checkin_foto")
  final String? checkinFoto;
  @override
  @JsonKey(name: "checkin_long")
  final String? checkinLong;
  @override
  @JsonKey(name: "checkin_time")
  final String? checkinTime;
  @override
  @JsonKey(name: "checkout_lat")
  final String? checkoutLat;
  @override
  @JsonKey(name: "checkout_foto")
  final String? checkoutFoto;
  @override
  @JsonKey(name: "checkout_long")
  final String? checkoutLong;
  @override
  @JsonKey(name: "checkout_time")
  final String? checkoutTime;
  @override
  @JsonKey(name: "checkin_region")
  final String? checkinRegion;
  @override
  @JsonKey(name: "checkin_address")
  final String? checkinAddress;
  @override
  @JsonKey(name: "checkout_region")
  final String? checkoutRegion;
  @override
  @JsonKey(name: "checkin_on_scope")
  final bool? checkinOnScope;
  @override
  @JsonKey(name: "checkout_address")
  final String? checkoutAddress;
  @override
  @JsonKey(name: "checkout_on_scope")
  final bool? checkoutOnScope;
  @override
  @JsonKey(name: "presensi_absensi_id")
  final int? presensiAbsensiId;

  @override
  String toString() {
    return 'DataPresensi(kary: $kary, allDaysOfMonth: $allDaysOfMonth, dateToIdn: $dateToIdn, dayNameIdn: $dayNameIdn, type: $type, absensi: $absensi, status: $status, tanggal: $tanggal, catatanIn: $catatanIn, catatanOut: $catatanOut, checkinLat: $checkinLat, checkinFoto: $checkinFoto, checkinLong: $checkinLong, checkinTime: $checkinTime, checkoutLat: $checkoutLat, checkoutFoto: $checkoutFoto, checkoutLong: $checkoutLong, checkoutTime: $checkoutTime, checkinRegion: $checkinRegion, checkinAddress: $checkinAddress, checkoutRegion: $checkoutRegion, checkinOnScope: $checkinOnScope, checkoutAddress: $checkoutAddress, checkoutOnScope: $checkoutOnScope, presensiAbsensiId: $presensiAbsensiId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPresensiImpl &&
            (identical(other.kary, kary) || other.kary == kary) &&
            (identical(other.allDaysOfMonth, allDaysOfMonth) ||
                other.allDaysOfMonth == allDaysOfMonth) &&
            (identical(other.dateToIdn, dateToIdn) ||
                other.dateToIdn == dateToIdn) &&
            (identical(other.dayNameIdn, dayNameIdn) ||
                other.dayNameIdn == dayNameIdn) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.absensi, absensi) || other.absensi == absensi) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            const DeepCollectionEquality().equals(other.catatanIn, catatanIn) &&
            const DeepCollectionEquality()
                .equals(other.catatanOut, catatanOut) &&
            (identical(other.checkinLat, checkinLat) ||
                other.checkinLat == checkinLat) &&
            (identical(other.checkinFoto, checkinFoto) ||
                other.checkinFoto == checkinFoto) &&
            (identical(other.checkinLong, checkinLong) ||
                other.checkinLong == checkinLong) &&
            (identical(other.checkinTime, checkinTime) ||
                other.checkinTime == checkinTime) &&
            (identical(other.checkoutLat, checkoutLat) ||
                other.checkoutLat == checkoutLat) &&
            (identical(other.checkoutFoto, checkoutFoto) ||
                other.checkoutFoto == checkoutFoto) &&
            (identical(other.checkoutLong, checkoutLong) ||
                other.checkoutLong == checkoutLong) &&
            (identical(other.checkoutTime, checkoutTime) ||
                other.checkoutTime == checkoutTime) &&
            (identical(other.checkinRegion, checkinRegion) ||
                other.checkinRegion == checkinRegion) &&
            (identical(other.checkinAddress, checkinAddress) ||
                other.checkinAddress == checkinAddress) &&
            (identical(other.checkoutRegion, checkoutRegion) ||
                other.checkoutRegion == checkoutRegion) &&
            (identical(other.checkinOnScope, checkinOnScope) ||
                other.checkinOnScope == checkinOnScope) &&
            (identical(other.checkoutAddress, checkoutAddress) ||
                other.checkoutAddress == checkoutAddress) &&
            (identical(other.checkoutOnScope, checkoutOnScope) ||
                other.checkoutOnScope == checkoutOnScope) &&
            (identical(other.presensiAbsensiId, presensiAbsensiId) ||
                other.presensiAbsensiId == presensiAbsensiId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        kary,
        allDaysOfMonth,
        dateToIdn,
        dayNameIdn,
        type,
        absensi,
        status,
        tanggal,
        const DeepCollectionEquality().hash(catatanIn),
        const DeepCollectionEquality().hash(catatanOut),
        checkinLat,
        checkinFoto,
        checkinLong,
        checkinTime,
        checkoutLat,
        checkoutFoto,
        checkoutLong,
        checkoutTime,
        checkinRegion,
        checkinAddress,
        checkoutRegion,
        checkinOnScope,
        checkoutAddress,
        checkoutOnScope,
        presensiAbsensiId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPresensiImplCopyWith<_$DataPresensiImpl> get copyWith =>
      __$$DataPresensiImplCopyWithImpl<_$DataPresensiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPresensiImplToJson(
      this,
    );
  }
}

abstract class _DataPresensi implements DataPresensi {
  const factory _DataPresensi(
          {@JsonKey(name: "kary") final String? kary,
          @JsonKey(name: "all_days_of_month") final DateTime? allDaysOfMonth,
          @JsonKey(name: "date_to_idn") final String? dateToIdn,
          @JsonKey(name: "day_name_idn") final String? dayNameIdn,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "absensi") final String? absensi,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "tanggal") final DateTime? tanggal,
          @JsonKey(name: "catatan_in") final dynamic catatanIn,
          @JsonKey(name: "catatan_out") final dynamic catatanOut,
          @JsonKey(name: "checkin_lat") final String? checkinLat,
          @JsonKey(name: "checkin_foto") final String? checkinFoto,
          @JsonKey(name: "checkin_long") final String? checkinLong,
          @JsonKey(name: "checkin_time") final String? checkinTime,
          @JsonKey(name: "checkout_lat") final String? checkoutLat,
          @JsonKey(name: "checkout_foto") final String? checkoutFoto,
          @JsonKey(name: "checkout_long") final String? checkoutLong,
          @JsonKey(name: "checkout_time") final String? checkoutTime,
          @JsonKey(name: "checkin_region") final String? checkinRegion,
          @JsonKey(name: "checkin_address") final String? checkinAddress,
          @JsonKey(name: "checkout_region") final String? checkoutRegion,
          @JsonKey(name: "checkin_on_scope") final bool? checkinOnScope,
          @JsonKey(name: "checkout_address") final String? checkoutAddress,
          @JsonKey(name: "checkout_on_scope") final bool? checkoutOnScope,
          @JsonKey(name: "presensi_absensi_id") final int? presensiAbsensiId}) =
      _$DataPresensiImpl;

  factory _DataPresensi.fromJson(Map<String, dynamic> json) =
      _$DataPresensiImpl.fromJson;

  @override
  @JsonKey(name: "kary")
  String? get kary;
  @override
  @JsonKey(name: "all_days_of_month")
  DateTime? get allDaysOfMonth;
  @override
  @JsonKey(name: "date_to_idn")
  String? get dateToIdn;
  @override
  @JsonKey(name: "day_name_idn")
  String? get dayNameIdn;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "absensi")
  String? get absensi;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "tanggal")
  DateTime? get tanggal;
  @override
  @JsonKey(name: "catatan_in")
  dynamic get catatanIn;
  @override
  @JsonKey(name: "catatan_out")
  dynamic get catatanOut;
  @override
  @JsonKey(name: "checkin_lat")
  String? get checkinLat;
  @override
  @JsonKey(name: "checkin_foto")
  String? get checkinFoto;
  @override
  @JsonKey(name: "checkin_long")
  String? get checkinLong;
  @override
  @JsonKey(name: "checkin_time")
  String? get checkinTime;
  @override
  @JsonKey(name: "checkout_lat")
  String? get checkoutLat;
  @override
  @JsonKey(name: "checkout_foto")
  String? get checkoutFoto;
  @override
  @JsonKey(name: "checkout_long")
  String? get checkoutLong;
  @override
  @JsonKey(name: "checkout_time")
  String? get checkoutTime;
  @override
  @JsonKey(name: "checkin_region")
  String? get checkinRegion;
  @override
  @JsonKey(name: "checkin_address")
  String? get checkinAddress;
  @override
  @JsonKey(name: "checkout_region")
  String? get checkoutRegion;
  @override
  @JsonKey(name: "checkin_on_scope")
  bool? get checkinOnScope;
  @override
  @JsonKey(name: "checkout_address")
  String? get checkoutAddress;
  @override
  @JsonKey(name: "checkout_on_scope")
  bool? get checkoutOnScope;
  @override
  @JsonKey(name: "presensi_absensi_id")
  int? get presensiAbsensiId;
  @override
  @JsonKey(ignore: true)
  _$$DataPresensiImplCopyWith<_$DataPresensiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

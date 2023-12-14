// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_prestasi_karyawan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponsePrestasiKaryawan _$ResponsePrestasiKaryawanFromJson(
    Map<String, dynamic> json) {
  return _ResponsePrestasiKaryawan.fromJson(json);
}

/// @nodoc
mixin _$ResponsePrestasiKaryawan {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataPrestasi>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponsePrestasiKaryawanCopyWith<ResponsePrestasiKaryawan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePrestasiKaryawanCopyWith<$Res> {
  factory $ResponsePrestasiKaryawanCopyWith(ResponsePrestasiKaryawan value,
          $Res Function(ResponsePrestasiKaryawan) then) =
      _$ResponsePrestasiKaryawanCopyWithImpl<$Res, ResponsePrestasiKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataPrestasi>? data});
}

/// @nodoc
class _$ResponsePrestasiKaryawanCopyWithImpl<$Res,
        $Val extends ResponsePrestasiKaryawan>
    implements $ResponsePrestasiKaryawanCopyWith<$Res> {
  _$ResponsePrestasiKaryawanCopyWithImpl(this._value, this._then);

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
              as List<DataPrestasi>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponsePrestasiKaryawanImplCopyWith<$Res>
    implements $ResponsePrestasiKaryawanCopyWith<$Res> {
  factory _$$ResponsePrestasiKaryawanImplCopyWith(
          _$ResponsePrestasiKaryawanImpl value,
          $Res Function(_$ResponsePrestasiKaryawanImpl) then) =
      __$$ResponsePrestasiKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataPrestasi>? data});
}

/// @nodoc
class __$$ResponsePrestasiKaryawanImplCopyWithImpl<$Res>
    extends _$ResponsePrestasiKaryawanCopyWithImpl<$Res,
        _$ResponsePrestasiKaryawanImpl>
    implements _$$ResponsePrestasiKaryawanImplCopyWith<$Res> {
  __$$ResponsePrestasiKaryawanImplCopyWithImpl(
      _$ResponsePrestasiKaryawanImpl _value,
      $Res Function(_$ResponsePrestasiKaryawanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponsePrestasiKaryawanImpl(
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
              as List<DataPrestasi>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsePrestasiKaryawanImpl implements _ResponsePrestasiKaryawan {
  const _$ResponsePrestasiKaryawanImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DataPrestasi>? data})
      : _data = data;

  factory _$ResponsePrestasiKaryawanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsePrestasiKaryawanImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DataPrestasi>? _data;
  @override
  @JsonKey(name: "data")
  List<DataPrestasi>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponsePrestasiKaryawan(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePrestasiKaryawanImpl &&
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
  _$$ResponsePrestasiKaryawanImplCopyWith<_$ResponsePrestasiKaryawanImpl>
      get copyWith => __$$ResponsePrestasiKaryawanImplCopyWithImpl<
          _$ResponsePrestasiKaryawanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsePrestasiKaryawanImplToJson(
      this,
    );
  }
}

abstract class _ResponsePrestasiKaryawan implements ResponsePrestasiKaryawan {
  const factory _ResponsePrestasiKaryawan(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DataPrestasi>? data}) =
      _$ResponsePrestasiKaryawanImpl;

  factory _ResponsePrestasiKaryawan.fromJson(Map<String, dynamic> json) =
      _$ResponsePrestasiKaryawanImpl.fromJson;

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
  List<DataPrestasi>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponsePrestasiKaryawanImplCopyWith<_$ResponsePrestasiKaryawanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataPrestasi _$DataPrestasiFromJson(Map<String, dynamic> json) {
  return _DataPrestasi.fromJson(json);
}

/// @nodoc
mixin _$DataPrestasi {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_pres")
  String? get namaPres => throw _privateConstructorUsedError;
  @JsonKey(name: "tahun")
  int? get tahun => throw _privateConstructorUsedError;
  @JsonKey(name: "tingkat_pres_id")
  int? get tingkatPresId => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  int? get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tingkat_prestasi")
  String? get tingkatPrestasi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPrestasiCopyWith<DataPrestasi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPrestasiCopyWith<$Res> {
  factory $DataPrestasiCopyWith(
          DataPrestasi value, $Res Function(DataPrestasi) then) =
      _$DataPrestasiCopyWithImpl<$Res, DataPrestasi>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "nama_pres") String? namaPres,
      @JsonKey(name: "tahun") int? tahun,
      @JsonKey(name: "tingkat_pres_id") int? tingkatPresId,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "tingkat_prestasi") String? tingkatPrestasi});
}

/// @nodoc
class _$DataPrestasiCopyWithImpl<$Res, $Val extends DataPrestasi>
    implements $DataPrestasiCopyWith<$Res> {
  _$DataPrestasiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? mKaryId = freezed,
    Object? namaPres = freezed,
    Object? tahun = freezed,
    Object? tingkatPresId = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tingkatPrestasi = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPres: freezed == namaPres
          ? _value.namaPres
          : namaPres // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun: freezed == tahun
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as int?,
      tingkatPresId: freezed == tingkatPresId
          ? _value.tingkatPresId
          : tingkatPresId // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorId: freezed == lastEditorId
          ? _value.lastEditorId
          : lastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tingkatPrestasi: freezed == tingkatPrestasi
          ? _value.tingkatPrestasi
          : tingkatPrestasi // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataPrestasiImplCopyWith<$Res>
    implements $DataPrestasiCopyWith<$Res> {
  factory _$$DataPrestasiImplCopyWith(
          _$DataPrestasiImpl value, $Res Function(_$DataPrestasiImpl) then) =
      __$$DataPrestasiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "nama_pres") String? namaPres,
      @JsonKey(name: "tahun") int? tahun,
      @JsonKey(name: "tingkat_pres_id") int? tingkatPresId,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "tingkat_prestasi") String? tingkatPrestasi});
}

/// @nodoc
class __$$DataPrestasiImplCopyWithImpl<$Res>
    extends _$DataPrestasiCopyWithImpl<$Res, _$DataPrestasiImpl>
    implements _$$DataPrestasiImplCopyWith<$Res> {
  __$$DataPrestasiImplCopyWithImpl(
      _$DataPrestasiImpl _value, $Res Function(_$DataPrestasiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? mKaryId = freezed,
    Object? namaPres = freezed,
    Object? tahun = freezed,
    Object? tingkatPresId = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tingkatPrestasi = freezed,
  }) {
    return _then(_$DataPrestasiImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPres: freezed == namaPres
          ? _value.namaPres
          : namaPres // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun: freezed == tahun
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as int?,
      tingkatPresId: freezed == tingkatPresId
          ? _value.tingkatPresId
          : tingkatPresId // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorId: freezed == lastEditorId
          ? _value.lastEditorId
          : lastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tingkatPrestasi: freezed == tingkatPrestasi
          ? _value.tingkatPrestasi
          : tingkatPrestasi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataPrestasiImpl implements _DataPrestasi {
  const _$DataPrestasiImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "m_kary_id") this.mKaryId,
      @JsonKey(name: "nama_pres") this.namaPres,
      @JsonKey(name: "tahun") this.tahun,
      @JsonKey(name: "tingkat_pres_id") this.tingkatPresId,
      @JsonKey(name: "desc") this.desc,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "tingkat_prestasi") this.tingkatPrestasi});

  factory _$DataPrestasiImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPrestasiImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "m_comp_id")
  final int? mCompId;
  @override
  @JsonKey(name: "m_dir_id")
  final int? mDirId;
  @override
  @JsonKey(name: "m_kary_id")
  final int? mKaryId;
  @override
  @JsonKey(name: "nama_pres")
  final String? namaPres;
  @override
  @JsonKey(name: "tahun")
  final int? tahun;
  @override
  @JsonKey(name: "tingkat_pres_id")
  final int? tingkatPresId;
  @override
  @JsonKey(name: "desc")
  final String? desc;
  @override
  @JsonKey(name: "creator_id")
  final int? creatorId;
  @override
  @JsonKey(name: "last_editor_id")
  final int? lastEditorId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "tingkat_prestasi")
  final String? tingkatPrestasi;

  @override
  String toString() {
    return 'DataPrestasi(id: $id, mCompId: $mCompId, mDirId: $mDirId, mKaryId: $mKaryId, namaPres: $namaPres, tahun: $tahun, tingkatPresId: $tingkatPresId, desc: $desc, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, tingkatPrestasi: $tingkatPrestasi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPrestasiImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mCompId, mCompId) || other.mCompId == mCompId) &&
            (identical(other.mDirId, mDirId) || other.mDirId == mDirId) &&
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            (identical(other.namaPres, namaPres) ||
                other.namaPres == namaPres) &&
            (identical(other.tahun, tahun) || other.tahun == tahun) &&
            (identical(other.tingkatPresId, tingkatPresId) ||
                other.tingkatPresId == tingkatPresId) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.lastEditorId, lastEditorId) ||
                other.lastEditorId == lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.tingkatPrestasi, tingkatPrestasi) ||
                other.tingkatPrestasi == tingkatPrestasi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mCompId,
      mDirId,
      mKaryId,
      namaPres,
      tahun,
      tingkatPresId,
      desc,
      creatorId,
      lastEditorId,
      createdAt,
      updatedAt,
      tingkatPrestasi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPrestasiImplCopyWith<_$DataPrestasiImpl> get copyWith =>
      __$$DataPrestasiImplCopyWithImpl<_$DataPrestasiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPrestasiImplToJson(
      this,
    );
  }
}

abstract class _DataPrestasi implements DataPrestasi {
  const factory _DataPrestasi(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "m_comp_id") final int? mCompId,
          @JsonKey(name: "m_dir_id") final int? mDirId,
          @JsonKey(name: "m_kary_id") final int? mKaryId,
          @JsonKey(name: "nama_pres") final String? namaPres,
          @JsonKey(name: "tahun") final int? tahun,
          @JsonKey(name: "tingkat_pres_id") final int? tingkatPresId,
          @JsonKey(name: "desc") final String? desc,
          @JsonKey(name: "creator_id") final int? creatorId,
          @JsonKey(name: "last_editor_id") final int? lastEditorId,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          @JsonKey(name: "tingkat_prestasi") final String? tingkatPrestasi}) =
      _$DataPrestasiImpl;

  factory _DataPrestasi.fromJson(Map<String, dynamic> json) =
      _$DataPrestasiImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "m_comp_id")
  int? get mCompId;
  @override
  @JsonKey(name: "m_dir_id")
  int? get mDirId;
  @override
  @JsonKey(name: "m_kary_id")
  int? get mKaryId;
  @override
  @JsonKey(name: "nama_pres")
  String? get namaPres;
  @override
  @JsonKey(name: "tahun")
  int? get tahun;
  @override
  @JsonKey(name: "tingkat_pres_id")
  int? get tingkatPresId;
  @override
  @JsonKey(name: "desc")
  String? get desc;
  @override
  @JsonKey(name: "creator_id")
  int? get creatorId;
  @override
  @JsonKey(name: "last_editor_id")
  int? get lastEditorId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "tingkat_prestasi")
  String? get tingkatPrestasi;
  @override
  @JsonKey(ignore: true)
  _$$DataPrestasiImplCopyWith<_$DataPrestasiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

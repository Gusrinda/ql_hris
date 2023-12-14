// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_keluarga_karyawan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseKeluargaKaryawan _$ResponseKeluargaKaryawanFromJson(
    Map<String, dynamic> json) {
  return _ResponseKeluargaKaryawan.fromJson(json);
}

/// @nodoc
mixin _$ResponseKeluargaKaryawan {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataKeluarga>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseKeluargaKaryawanCopyWith<ResponseKeluargaKaryawan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseKeluargaKaryawanCopyWith<$Res> {
  factory $ResponseKeluargaKaryawanCopyWith(ResponseKeluargaKaryawan value,
          $Res Function(ResponseKeluargaKaryawan) then) =
      _$ResponseKeluargaKaryawanCopyWithImpl<$Res, ResponseKeluargaKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataKeluarga>? data});
}

/// @nodoc
class _$ResponseKeluargaKaryawanCopyWithImpl<$Res,
        $Val extends ResponseKeluargaKaryawan>
    implements $ResponseKeluargaKaryawanCopyWith<$Res> {
  _$ResponseKeluargaKaryawanCopyWithImpl(this._value, this._then);

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
              as List<DataKeluarga>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseKeluargaKaryawanImplCopyWith<$Res>
    implements $ResponseKeluargaKaryawanCopyWith<$Res> {
  factory _$$ResponseKeluargaKaryawanImplCopyWith(
          _$ResponseKeluargaKaryawanImpl value,
          $Res Function(_$ResponseKeluargaKaryawanImpl) then) =
      __$$ResponseKeluargaKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataKeluarga>? data});
}

/// @nodoc
class __$$ResponseKeluargaKaryawanImplCopyWithImpl<$Res>
    extends _$ResponseKeluargaKaryawanCopyWithImpl<$Res,
        _$ResponseKeluargaKaryawanImpl>
    implements _$$ResponseKeluargaKaryawanImplCopyWith<$Res> {
  __$$ResponseKeluargaKaryawanImplCopyWithImpl(
      _$ResponseKeluargaKaryawanImpl _value,
      $Res Function(_$ResponseKeluargaKaryawanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseKeluargaKaryawanImpl(
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
              as List<DataKeluarga>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseKeluargaKaryawanImpl implements _ResponseKeluargaKaryawan {
  const _$ResponseKeluargaKaryawanImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DataKeluarga>? data})
      : _data = data;

  factory _$ResponseKeluargaKaryawanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseKeluargaKaryawanImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DataKeluarga>? _data;
  @override
  @JsonKey(name: "data")
  List<DataKeluarga>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseKeluargaKaryawan(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseKeluargaKaryawanImpl &&
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
  _$$ResponseKeluargaKaryawanImplCopyWith<_$ResponseKeluargaKaryawanImpl>
      get copyWith => __$$ResponseKeluargaKaryawanImplCopyWithImpl<
          _$ResponseKeluargaKaryawanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseKeluargaKaryawanImplToJson(
      this,
    );
  }
}

abstract class _ResponseKeluargaKaryawan implements ResponseKeluargaKaryawan {
  const factory _ResponseKeluargaKaryawan(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DataKeluarga>? data}) =
      _$ResponseKeluargaKaryawanImpl;

  factory _ResponseKeluargaKaryawan.fromJson(Map<String, dynamic> json) =
      _$ResponseKeluargaKaryawanImpl.fromJson;

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
  List<DataKeluarga>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseKeluargaKaryawanImplCopyWith<_$ResponseKeluargaKaryawanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataKeluarga _$DataKeluargaFromJson(Map<String, dynamic> json) {
  return _DataKeluarga.fromJson(json);
}

/// @nodoc
mixin _$DataKeluarga {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "keluarga_id")
  int? get keluargaId => throw _privateConstructorUsedError;
  @JsonKey(name: "nama")
  String? get nama => throw _privateConstructorUsedError;
  @JsonKey(name: "pend_terakhir_id")
  int? get pendTerakhirId => throw _privateConstructorUsedError;
  @JsonKey(name: "jk_id")
  int? get jkId => throw _privateConstructorUsedError;
  @JsonKey(name: "pekerjaan_id")
  int? get pekerjaanId => throw _privateConstructorUsedError;
  @JsonKey(name: "usia")
  int? get usia => throw _privateConstructorUsedError;
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
  @JsonKey(name: "keluarga")
  String? get keluarga => throw _privateConstructorUsedError;
  @JsonKey(name: "pendidikan")
  String? get pendidikan => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_kelamin")
  String? get jenisKelamin => throw _privateConstructorUsedError;
  @JsonKey(name: "pekerjaan")
  String? get pekerjaan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataKeluargaCopyWith<DataKeluarga> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataKeluargaCopyWith<$Res> {
  factory $DataKeluargaCopyWith(
          DataKeluarga value, $Res Function(DataKeluarga) then) =
      _$DataKeluargaCopyWithImpl<$Res, DataKeluarga>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "keluarga_id") int? keluargaId,
      @JsonKey(name: "nama") String? nama,
      @JsonKey(name: "pend_terakhir_id") int? pendTerakhirId,
      @JsonKey(name: "jk_id") int? jkId,
      @JsonKey(name: "pekerjaan_id") int? pekerjaanId,
      @JsonKey(name: "usia") int? usia,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "keluarga") String? keluarga,
      @JsonKey(name: "pendidikan") String? pendidikan,
      @JsonKey(name: "jenis_kelamin") String? jenisKelamin,
      @JsonKey(name: "pekerjaan") String? pekerjaan});
}

/// @nodoc
class _$DataKeluargaCopyWithImpl<$Res, $Val extends DataKeluarga>
    implements $DataKeluargaCopyWith<$Res> {
  _$DataKeluargaCopyWithImpl(this._value, this._then);

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
    Object? keluargaId = freezed,
    Object? nama = freezed,
    Object? pendTerakhirId = freezed,
    Object? jkId = freezed,
    Object? pekerjaanId = freezed,
    Object? usia = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? keluarga = freezed,
    Object? pendidikan = freezed,
    Object? jenisKelamin = freezed,
    Object? pekerjaan = freezed,
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
      keluargaId: freezed == keluargaId
          ? _value.keluargaId
          : keluargaId // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      pendTerakhirId: freezed == pendTerakhirId
          ? _value.pendTerakhirId
          : pendTerakhirId // ignore: cast_nullable_to_non_nullable
              as int?,
      jkId: freezed == jkId
          ? _value.jkId
          : jkId // ignore: cast_nullable_to_non_nullable
              as int?,
      pekerjaanId: freezed == pekerjaanId
          ? _value.pekerjaanId
          : pekerjaanId // ignore: cast_nullable_to_non_nullable
              as int?,
      usia: freezed == usia
          ? _value.usia
          : usia // ignore: cast_nullable_to_non_nullable
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
      keluarga: freezed == keluarga
          ? _value.keluarga
          : keluarga // ignore: cast_nullable_to_non_nullable
              as String?,
      pendidikan: freezed == pendidikan
          ? _value.pendidikan
          : pendidikan // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKelamin: freezed == jenisKelamin
          ? _value.jenisKelamin
          : jenisKelamin // ignore: cast_nullable_to_non_nullable
              as String?,
      pekerjaan: freezed == pekerjaan
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataKeluargaImplCopyWith<$Res>
    implements $DataKeluargaCopyWith<$Res> {
  factory _$$DataKeluargaImplCopyWith(
          _$DataKeluargaImpl value, $Res Function(_$DataKeluargaImpl) then) =
      __$$DataKeluargaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "keluarga_id") int? keluargaId,
      @JsonKey(name: "nama") String? nama,
      @JsonKey(name: "pend_terakhir_id") int? pendTerakhirId,
      @JsonKey(name: "jk_id") int? jkId,
      @JsonKey(name: "pekerjaan_id") int? pekerjaanId,
      @JsonKey(name: "usia") int? usia,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "keluarga") String? keluarga,
      @JsonKey(name: "pendidikan") String? pendidikan,
      @JsonKey(name: "jenis_kelamin") String? jenisKelamin,
      @JsonKey(name: "pekerjaan") String? pekerjaan});
}

/// @nodoc
class __$$DataKeluargaImplCopyWithImpl<$Res>
    extends _$DataKeluargaCopyWithImpl<$Res, _$DataKeluargaImpl>
    implements _$$DataKeluargaImplCopyWith<$Res> {
  __$$DataKeluargaImplCopyWithImpl(
      _$DataKeluargaImpl _value, $Res Function(_$DataKeluargaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? mKaryId = freezed,
    Object? keluargaId = freezed,
    Object? nama = freezed,
    Object? pendTerakhirId = freezed,
    Object? jkId = freezed,
    Object? pekerjaanId = freezed,
    Object? usia = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? keluarga = freezed,
    Object? pendidikan = freezed,
    Object? jenisKelamin = freezed,
    Object? pekerjaan = freezed,
  }) {
    return _then(_$DataKeluargaImpl(
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
      keluargaId: freezed == keluargaId
          ? _value.keluargaId
          : keluargaId // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      pendTerakhirId: freezed == pendTerakhirId
          ? _value.pendTerakhirId
          : pendTerakhirId // ignore: cast_nullable_to_non_nullable
              as int?,
      jkId: freezed == jkId
          ? _value.jkId
          : jkId // ignore: cast_nullable_to_non_nullable
              as int?,
      pekerjaanId: freezed == pekerjaanId
          ? _value.pekerjaanId
          : pekerjaanId // ignore: cast_nullable_to_non_nullable
              as int?,
      usia: freezed == usia
          ? _value.usia
          : usia // ignore: cast_nullable_to_non_nullable
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
      keluarga: freezed == keluarga
          ? _value.keluarga
          : keluarga // ignore: cast_nullable_to_non_nullable
              as String?,
      pendidikan: freezed == pendidikan
          ? _value.pendidikan
          : pendidikan // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKelamin: freezed == jenisKelamin
          ? _value.jenisKelamin
          : jenisKelamin // ignore: cast_nullable_to_non_nullable
              as String?,
      pekerjaan: freezed == pekerjaan
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataKeluargaImpl implements _DataKeluarga {
  const _$DataKeluargaImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "m_kary_id") this.mKaryId,
      @JsonKey(name: "keluarga_id") this.keluargaId,
      @JsonKey(name: "nama") this.nama,
      @JsonKey(name: "pend_terakhir_id") this.pendTerakhirId,
      @JsonKey(name: "jk_id") this.jkId,
      @JsonKey(name: "pekerjaan_id") this.pekerjaanId,
      @JsonKey(name: "usia") this.usia,
      @JsonKey(name: "desc") this.desc,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "keluarga") this.keluarga,
      @JsonKey(name: "pendidikan") this.pendidikan,
      @JsonKey(name: "jenis_kelamin") this.jenisKelamin,
      @JsonKey(name: "pekerjaan") this.pekerjaan});

  factory _$DataKeluargaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataKeluargaImplFromJson(json);

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
  @JsonKey(name: "keluarga_id")
  final int? keluargaId;
  @override
  @JsonKey(name: "nama")
  final String? nama;
  @override
  @JsonKey(name: "pend_terakhir_id")
  final int? pendTerakhirId;
  @override
  @JsonKey(name: "jk_id")
  final int? jkId;
  @override
  @JsonKey(name: "pekerjaan_id")
  final int? pekerjaanId;
  @override
  @JsonKey(name: "usia")
  final int? usia;
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
  @JsonKey(name: "keluarga")
  final String? keluarga;
  @override
  @JsonKey(name: "pendidikan")
  final String? pendidikan;
  @override
  @JsonKey(name: "jenis_kelamin")
  final String? jenisKelamin;
  @override
  @JsonKey(name: "pekerjaan")
  final String? pekerjaan;

  @override
  String toString() {
    return 'DataKeluarga(id: $id, mCompId: $mCompId, mDirId: $mDirId, mKaryId: $mKaryId, keluargaId: $keluargaId, nama: $nama, pendTerakhirId: $pendTerakhirId, jkId: $jkId, pekerjaanId: $pekerjaanId, usia: $usia, desc: $desc, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, keluarga: $keluarga, pendidikan: $pendidikan, jenisKelamin: $jenisKelamin, pekerjaan: $pekerjaan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataKeluargaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mCompId, mCompId) || other.mCompId == mCompId) &&
            (identical(other.mDirId, mDirId) || other.mDirId == mDirId) &&
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            (identical(other.keluargaId, keluargaId) ||
                other.keluargaId == keluargaId) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.pendTerakhirId, pendTerakhirId) ||
                other.pendTerakhirId == pendTerakhirId) &&
            (identical(other.jkId, jkId) || other.jkId == jkId) &&
            (identical(other.pekerjaanId, pekerjaanId) ||
                other.pekerjaanId == pekerjaanId) &&
            (identical(other.usia, usia) || other.usia == usia) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.lastEditorId, lastEditorId) ||
                other.lastEditorId == lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.keluarga, keluarga) ||
                other.keluarga == keluarga) &&
            (identical(other.pendidikan, pendidikan) ||
                other.pendidikan == pendidikan) &&
            (identical(other.jenisKelamin, jenisKelamin) ||
                other.jenisKelamin == jenisKelamin) &&
            (identical(other.pekerjaan, pekerjaan) ||
                other.pekerjaan == pekerjaan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        mCompId,
        mDirId,
        mKaryId,
        keluargaId,
        nama,
        pendTerakhirId,
        jkId,
        pekerjaanId,
        usia,
        desc,
        creatorId,
        lastEditorId,
        createdAt,
        updatedAt,
        keluarga,
        pendidikan,
        jenisKelamin,
        pekerjaan
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataKeluargaImplCopyWith<_$DataKeluargaImpl> get copyWith =>
      __$$DataKeluargaImplCopyWithImpl<_$DataKeluargaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataKeluargaImplToJson(
      this,
    );
  }
}

abstract class _DataKeluarga implements DataKeluarga {
  const factory _DataKeluarga(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "m_comp_id") final int? mCompId,
          @JsonKey(name: "m_dir_id") final int? mDirId,
          @JsonKey(name: "m_kary_id") final int? mKaryId,
          @JsonKey(name: "keluarga_id") final int? keluargaId,
          @JsonKey(name: "nama") final String? nama,
          @JsonKey(name: "pend_terakhir_id") final int? pendTerakhirId,
          @JsonKey(name: "jk_id") final int? jkId,
          @JsonKey(name: "pekerjaan_id") final int? pekerjaanId,
          @JsonKey(name: "usia") final int? usia,
          @JsonKey(name: "desc") final String? desc,
          @JsonKey(name: "creator_id") final int? creatorId,
          @JsonKey(name: "last_editor_id") final int? lastEditorId,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          @JsonKey(name: "keluarga") final String? keluarga,
          @JsonKey(name: "pendidikan") final String? pendidikan,
          @JsonKey(name: "jenis_kelamin") final String? jenisKelamin,
          @JsonKey(name: "pekerjaan") final String? pekerjaan}) =
      _$DataKeluargaImpl;

  factory _DataKeluarga.fromJson(Map<String, dynamic> json) =
      _$DataKeluargaImpl.fromJson;

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
  @JsonKey(name: "keluarga_id")
  int? get keluargaId;
  @override
  @JsonKey(name: "nama")
  String? get nama;
  @override
  @JsonKey(name: "pend_terakhir_id")
  int? get pendTerakhirId;
  @override
  @JsonKey(name: "jk_id")
  int? get jkId;
  @override
  @JsonKey(name: "pekerjaan_id")
  int? get pekerjaanId;
  @override
  @JsonKey(name: "usia")
  int? get usia;
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
  @JsonKey(name: "keluarga")
  String? get keluarga;
  @override
  @JsonKey(name: "pendidikan")
  String? get pendidikan;
  @override
  @JsonKey(name: "jenis_kelamin")
  String? get jenisKelamin;
  @override
  @JsonKey(name: "pekerjaan")
  String? get pekerjaan;
  @override
  @JsonKey(ignore: true)
  _$$DataKeluargaImplCopyWith<_$DataKeluargaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

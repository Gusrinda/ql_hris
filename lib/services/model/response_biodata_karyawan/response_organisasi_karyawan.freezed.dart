// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_organisasi_karyawan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseOrganisasiKaryawan _$ResponseOrganisasiKaryawanFromJson(
    Map<String, dynamic> json) {
  return _ResponseOrganisasiKaryawan.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrganisasiKaryawan {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataOrganisasi>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseOrganisasiKaryawanCopyWith<ResponseOrganisasiKaryawan>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrganisasiKaryawanCopyWith<$Res> {
  factory $ResponseOrganisasiKaryawanCopyWith(ResponseOrganisasiKaryawan value,
          $Res Function(ResponseOrganisasiKaryawan) then) =
      _$ResponseOrganisasiKaryawanCopyWithImpl<$Res,
          ResponseOrganisasiKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataOrganisasi>? data});
}

/// @nodoc
class _$ResponseOrganisasiKaryawanCopyWithImpl<$Res,
        $Val extends ResponseOrganisasiKaryawan>
    implements $ResponseOrganisasiKaryawanCopyWith<$Res> {
  _$ResponseOrganisasiKaryawanCopyWithImpl(this._value, this._then);

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
              as List<DataOrganisasi>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseOrganisasiKaryawanImplCopyWith<$Res>
    implements $ResponseOrganisasiKaryawanCopyWith<$Res> {
  factory _$$ResponseOrganisasiKaryawanImplCopyWith(
          _$ResponseOrganisasiKaryawanImpl value,
          $Res Function(_$ResponseOrganisasiKaryawanImpl) then) =
      __$$ResponseOrganisasiKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataOrganisasi>? data});
}

/// @nodoc
class __$$ResponseOrganisasiKaryawanImplCopyWithImpl<$Res>
    extends _$ResponseOrganisasiKaryawanCopyWithImpl<$Res,
        _$ResponseOrganisasiKaryawanImpl>
    implements _$$ResponseOrganisasiKaryawanImplCopyWith<$Res> {
  __$$ResponseOrganisasiKaryawanImplCopyWithImpl(
      _$ResponseOrganisasiKaryawanImpl _value,
      $Res Function(_$ResponseOrganisasiKaryawanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseOrganisasiKaryawanImpl(
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
              as List<DataOrganisasi>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseOrganisasiKaryawanImpl implements _ResponseOrganisasiKaryawan {
  const _$ResponseOrganisasiKaryawanImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DataOrganisasi>? data})
      : _data = data;

  factory _$ResponseOrganisasiKaryawanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseOrganisasiKaryawanImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DataOrganisasi>? _data;
  @override
  @JsonKey(name: "data")
  List<DataOrganisasi>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseOrganisasiKaryawan(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrganisasiKaryawanImpl &&
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
  _$$ResponseOrganisasiKaryawanImplCopyWith<_$ResponseOrganisasiKaryawanImpl>
      get copyWith => __$$ResponseOrganisasiKaryawanImplCopyWithImpl<
          _$ResponseOrganisasiKaryawanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrganisasiKaryawanImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrganisasiKaryawan
    implements ResponseOrganisasiKaryawan {
  const factory _ResponseOrganisasiKaryawan(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DataOrganisasi>? data}) =
      _$ResponseOrganisasiKaryawanImpl;

  factory _ResponseOrganisasiKaryawan.fromJson(Map<String, dynamic> json) =
      _$ResponseOrganisasiKaryawanImpl.fromJson;

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
  List<DataOrganisasi>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseOrganisasiKaryawanImplCopyWith<_$ResponseOrganisasiKaryawanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataOrganisasi _$DataOrganisasiFromJson(Map<String, dynamic> json) {
  return _DataOrganisasi.fromJson(json);
}

/// @nodoc
mixin _$DataOrganisasi {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "nama")
  String? get nama => throw _privateConstructorUsedError;
  @JsonKey(name: "tahun")
  int? get tahun => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_org_id")
  int? get jenisOrgId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_id")
  int? get kotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "posisi")
  String? get posisi => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  dynamic get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  int? get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_organisasi")
  String? get jenisOrganisasi => throw _privateConstructorUsedError;
  @JsonKey(name: "kota")
  String? get kota => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataOrganisasiCopyWith<DataOrganisasi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataOrganisasiCopyWith<$Res> {
  factory $DataOrganisasiCopyWith(
          DataOrganisasi value, $Res Function(DataOrganisasi) then) =
      _$DataOrganisasiCopyWithImpl<$Res, DataOrganisasi>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "nama") String? nama,
      @JsonKey(name: "tahun") int? tahun,
      @JsonKey(name: "jenis_org_id") int? jenisOrgId,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "posisi") String? posisi,
      @JsonKey(name: "desc") dynamic desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "jenis_organisasi") String? jenisOrganisasi,
      @JsonKey(name: "kota") String? kota});
}

/// @nodoc
class _$DataOrganisasiCopyWithImpl<$Res, $Val extends DataOrganisasi>
    implements $DataOrganisasiCopyWith<$Res> {
  _$DataOrganisasiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mKaryId = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? nama = freezed,
    Object? tahun = freezed,
    Object? jenisOrgId = freezed,
    Object? kotaId = freezed,
    Object? posisi = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? jenisOrganisasi = freezed,
    Object? kota = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun: freezed == tahun
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisOrgId: freezed == jenisOrgId
          ? _value.jenisOrgId
          : jenisOrgId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      posisi: freezed == posisi
          ? _value.posisi
          : posisi // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      jenisOrganisasi: freezed == jenisOrganisasi
          ? _value.jenisOrganisasi
          : jenisOrganisasi // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataOrganisasiImplCopyWith<$Res>
    implements $DataOrganisasiCopyWith<$Res> {
  factory _$$DataOrganisasiImplCopyWith(_$DataOrganisasiImpl value,
          $Res Function(_$DataOrganisasiImpl) then) =
      __$$DataOrganisasiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "nama") String? nama,
      @JsonKey(name: "tahun") int? tahun,
      @JsonKey(name: "jenis_org_id") int? jenisOrgId,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "posisi") String? posisi,
      @JsonKey(name: "desc") dynamic desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "jenis_organisasi") String? jenisOrganisasi,
      @JsonKey(name: "kota") String? kota});
}

/// @nodoc
class __$$DataOrganisasiImplCopyWithImpl<$Res>
    extends _$DataOrganisasiCopyWithImpl<$Res, _$DataOrganisasiImpl>
    implements _$$DataOrganisasiImplCopyWith<$Res> {
  __$$DataOrganisasiImplCopyWithImpl(
      _$DataOrganisasiImpl _value, $Res Function(_$DataOrganisasiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mKaryId = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? nama = freezed,
    Object? tahun = freezed,
    Object? jenisOrgId = freezed,
    Object? kotaId = freezed,
    Object? posisi = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? jenisOrganisasi = freezed,
    Object? kota = freezed,
  }) {
    return _then(_$DataOrganisasiImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun: freezed == tahun
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisOrgId: freezed == jenisOrgId
          ? _value.jenisOrgId
          : jenisOrgId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      posisi: freezed == posisi
          ? _value.posisi
          : posisi // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      jenisOrganisasi: freezed == jenisOrganisasi
          ? _value.jenisOrganisasi
          : jenisOrganisasi // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataOrganisasiImpl implements _DataOrganisasi {
  const _$DataOrganisasiImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "m_kary_id") this.mKaryId,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "nama") this.nama,
      @JsonKey(name: "tahun") this.tahun,
      @JsonKey(name: "jenis_org_id") this.jenisOrgId,
      @JsonKey(name: "kota_id") this.kotaId,
      @JsonKey(name: "posisi") this.posisi,
      @JsonKey(name: "desc") this.desc,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "jenis_organisasi") this.jenisOrganisasi,
      @JsonKey(name: "kota") this.kota});

  factory _$DataOrganisasiImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataOrganisasiImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "m_kary_id")
  final int? mKaryId;
  @override
  @JsonKey(name: "m_comp_id")
  final int? mCompId;
  @override
  @JsonKey(name: "m_dir_id")
  final int? mDirId;
  @override
  @JsonKey(name: "nama")
  final String? nama;
  @override
  @JsonKey(name: "tahun")
  final int? tahun;
  @override
  @JsonKey(name: "jenis_org_id")
  final int? jenisOrgId;
  @override
  @JsonKey(name: "kota_id")
  final int? kotaId;
  @override
  @JsonKey(name: "posisi")
  final String? posisi;
  @override
  @JsonKey(name: "desc")
  final dynamic desc;
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
  @JsonKey(name: "jenis_organisasi")
  final String? jenisOrganisasi;
  @override
  @JsonKey(name: "kota")
  final String? kota;

  @override
  String toString() {
    return 'DataOrganisasi(id: $id, mKaryId: $mKaryId, mCompId: $mCompId, mDirId: $mDirId, nama: $nama, tahun: $tahun, jenisOrgId: $jenisOrgId, kotaId: $kotaId, posisi: $posisi, desc: $desc, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, jenisOrganisasi: $jenisOrganisasi, kota: $kota)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataOrganisasiImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            (identical(other.mCompId, mCompId) || other.mCompId == mCompId) &&
            (identical(other.mDirId, mDirId) || other.mDirId == mDirId) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.tahun, tahun) || other.tahun == tahun) &&
            (identical(other.jenisOrgId, jenisOrgId) ||
                other.jenisOrgId == jenisOrgId) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.posisi, posisi) || other.posisi == posisi) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.lastEditorId, lastEditorId) ||
                other.lastEditorId == lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.jenisOrganisasi, jenisOrganisasi) ||
                other.jenisOrganisasi == jenisOrganisasi) &&
            (identical(other.kota, kota) || other.kota == kota));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mKaryId,
      mCompId,
      mDirId,
      nama,
      tahun,
      jenisOrgId,
      kotaId,
      posisi,
      const DeepCollectionEquality().hash(desc),
      creatorId,
      lastEditorId,
      createdAt,
      updatedAt,
      jenisOrganisasi,
      kota);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataOrganisasiImplCopyWith<_$DataOrganisasiImpl> get copyWith =>
      __$$DataOrganisasiImplCopyWithImpl<_$DataOrganisasiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataOrganisasiImplToJson(
      this,
    );
  }
}

abstract class _DataOrganisasi implements DataOrganisasi {
  const factory _DataOrganisasi(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_kary_id") final int? mKaryId,
      @JsonKey(name: "m_comp_id") final int? mCompId,
      @JsonKey(name: "m_dir_id") final int? mDirId,
      @JsonKey(name: "nama") final String? nama,
      @JsonKey(name: "tahun") final int? tahun,
      @JsonKey(name: "jenis_org_id") final int? jenisOrgId,
      @JsonKey(name: "kota_id") final int? kotaId,
      @JsonKey(name: "posisi") final String? posisi,
      @JsonKey(name: "desc") final dynamic desc,
      @JsonKey(name: "creator_id") final int? creatorId,
      @JsonKey(name: "last_editor_id") final int? lastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "jenis_organisasi") final String? jenisOrganisasi,
      @JsonKey(name: "kota") final String? kota}) = _$DataOrganisasiImpl;

  factory _DataOrganisasi.fromJson(Map<String, dynamic> json) =
      _$DataOrganisasiImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "m_kary_id")
  int? get mKaryId;
  @override
  @JsonKey(name: "m_comp_id")
  int? get mCompId;
  @override
  @JsonKey(name: "m_dir_id")
  int? get mDirId;
  @override
  @JsonKey(name: "nama")
  String? get nama;
  @override
  @JsonKey(name: "tahun")
  int? get tahun;
  @override
  @JsonKey(name: "jenis_org_id")
  int? get jenisOrgId;
  @override
  @JsonKey(name: "kota_id")
  int? get kotaId;
  @override
  @JsonKey(name: "posisi")
  String? get posisi;
  @override
  @JsonKey(name: "desc")
  dynamic get desc;
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
  @JsonKey(name: "jenis_organisasi")
  String? get jenisOrganisasi;
  @override
  @JsonKey(name: "kota")
  String? get kota;
  @override
  @JsonKey(ignore: true)
  _$$DataOrganisasiImplCopyWith<_$DataOrganisasiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

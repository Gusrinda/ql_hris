// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_pelatihan_karyawan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponsePelatihanKaryawan _$ResponsePelatihanKaryawanFromJson(
    Map<String, dynamic> json) {
  return _ResponsePelatihanKaryawan.fromJson(json);
}

/// @nodoc
mixin _$ResponsePelatihanKaryawan {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataPelatihan>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponsePelatihanKaryawanCopyWith<ResponsePelatihanKaryawan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePelatihanKaryawanCopyWith<$Res> {
  factory $ResponsePelatihanKaryawanCopyWith(ResponsePelatihanKaryawan value,
          $Res Function(ResponsePelatihanKaryawan) then) =
      _$ResponsePelatihanKaryawanCopyWithImpl<$Res, ResponsePelatihanKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataPelatihan>? data});
}

/// @nodoc
class _$ResponsePelatihanKaryawanCopyWithImpl<$Res,
        $Val extends ResponsePelatihanKaryawan>
    implements $ResponsePelatihanKaryawanCopyWith<$Res> {
  _$ResponsePelatihanKaryawanCopyWithImpl(this._value, this._then);

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
              as List<DataPelatihan>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponsePelatihanKaryawanImplCopyWith<$Res>
    implements $ResponsePelatihanKaryawanCopyWith<$Res> {
  factory _$$ResponsePelatihanKaryawanImplCopyWith(
          _$ResponsePelatihanKaryawanImpl value,
          $Res Function(_$ResponsePelatihanKaryawanImpl) then) =
      __$$ResponsePelatihanKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataPelatihan>? data});
}

/// @nodoc
class __$$ResponsePelatihanKaryawanImplCopyWithImpl<$Res>
    extends _$ResponsePelatihanKaryawanCopyWithImpl<$Res,
        _$ResponsePelatihanKaryawanImpl>
    implements _$$ResponsePelatihanKaryawanImplCopyWith<$Res> {
  __$$ResponsePelatihanKaryawanImplCopyWithImpl(
      _$ResponsePelatihanKaryawanImpl _value,
      $Res Function(_$ResponsePelatihanKaryawanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponsePelatihanKaryawanImpl(
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
              as List<DataPelatihan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsePelatihanKaryawanImpl implements _ResponsePelatihanKaryawan {
  const _$ResponsePelatihanKaryawanImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DataPelatihan>? data})
      : _data = data;

  factory _$ResponsePelatihanKaryawanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsePelatihanKaryawanImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DataPelatihan>? _data;
  @override
  @JsonKey(name: "data")
  List<DataPelatihan>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponsePelatihanKaryawan(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePelatihanKaryawanImpl &&
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
  _$$ResponsePelatihanKaryawanImplCopyWith<_$ResponsePelatihanKaryawanImpl>
      get copyWith => __$$ResponsePelatihanKaryawanImplCopyWithImpl<
          _$ResponsePelatihanKaryawanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsePelatihanKaryawanImplToJson(
      this,
    );
  }
}

abstract class _ResponsePelatihanKaryawan implements ResponsePelatihanKaryawan {
  const factory _ResponsePelatihanKaryawan(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DataPelatihan>? data}) =
      _$ResponsePelatihanKaryawanImpl;

  factory _ResponsePelatihanKaryawan.fromJson(Map<String, dynamic> json) =
      _$ResponsePelatihanKaryawanImpl.fromJson;

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
  List<DataPelatihan>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponsePelatihanKaryawanImplCopyWith<_$ResponsePelatihanKaryawanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataPelatihan _$DataPelatihanFromJson(Map<String, dynamic> json) {
  return _DataPelatihan.fromJson(json);
}

/// @nodoc
mixin _$DataPelatihan {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_pel")
  String? get namaPel => throw _privateConstructorUsedError;
  @JsonKey(name: "tahun")
  int? get tahun => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_lem")
  String? get namaLem => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_id")
  int? get kotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  int? get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "kota")
  String? get kota => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPelatihanCopyWith<DataPelatihan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPelatihanCopyWith<$Res> {
  factory $DataPelatihanCopyWith(
          DataPelatihan value, $Res Function(DataPelatihan) then) =
      _$DataPelatihanCopyWithImpl<$Res, DataPelatihan>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "nama_pel") String? namaPel,
      @JsonKey(name: "tahun") int? tahun,
      @JsonKey(name: "nama_lem") String? namaLem,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "kota") String? kota});
}

/// @nodoc
class _$DataPelatihanCopyWithImpl<$Res, $Val extends DataPelatihan>
    implements $DataPelatihanCopyWith<$Res> {
  _$DataPelatihanCopyWithImpl(this._value, this._then);

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
    Object? namaPel = freezed,
    Object? tahun = freezed,
    Object? namaLem = freezed,
    Object? kotaId = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      namaPel: freezed == namaPel
          ? _value.namaPel
          : namaPel // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun: freezed == tahun
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as int?,
      namaLem: freezed == namaLem
          ? _value.namaLem
          : namaLem // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataPelatihanImplCopyWith<$Res>
    implements $DataPelatihanCopyWith<$Res> {
  factory _$$DataPelatihanImplCopyWith(
          _$DataPelatihanImpl value, $Res Function(_$DataPelatihanImpl) then) =
      __$$DataPelatihanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "nama_pel") String? namaPel,
      @JsonKey(name: "tahun") int? tahun,
      @JsonKey(name: "nama_lem") String? namaLem,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "kota") String? kota});
}

/// @nodoc
class __$$DataPelatihanImplCopyWithImpl<$Res>
    extends _$DataPelatihanCopyWithImpl<$Res, _$DataPelatihanImpl>
    implements _$$DataPelatihanImplCopyWith<$Res> {
  __$$DataPelatihanImplCopyWithImpl(
      _$DataPelatihanImpl _value, $Res Function(_$DataPelatihanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mKaryId = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? namaPel = freezed,
    Object? tahun = freezed,
    Object? namaLem = freezed,
    Object? kotaId = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? kota = freezed,
  }) {
    return _then(_$DataPelatihanImpl(
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
      namaPel: freezed == namaPel
          ? _value.namaPel
          : namaPel // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun: freezed == tahun
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as int?,
      namaLem: freezed == namaLem
          ? _value.namaLem
          : namaLem // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataPelatihanImpl implements _DataPelatihan {
  const _$DataPelatihanImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "m_kary_id") this.mKaryId,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "nama_pel") this.namaPel,
      @JsonKey(name: "tahun") this.tahun,
      @JsonKey(name: "nama_lem") this.namaLem,
      @JsonKey(name: "kota_id") this.kotaId,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "kota") this.kota});

  factory _$DataPelatihanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPelatihanImplFromJson(json);

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
  @JsonKey(name: "nama_pel")
  final String? namaPel;
  @override
  @JsonKey(name: "tahun")
  final int? tahun;
  @override
  @JsonKey(name: "nama_lem")
  final String? namaLem;
  @override
  @JsonKey(name: "kota_id")
  final int? kotaId;
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
  @JsonKey(name: "kota")
  final String? kota;

  @override
  String toString() {
    return 'DataPelatihan(id: $id, mKaryId: $mKaryId, mCompId: $mCompId, mDirId: $mDirId, namaPel: $namaPel, tahun: $tahun, namaLem: $namaLem, kotaId: $kotaId, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, kota: $kota)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPelatihanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            (identical(other.mCompId, mCompId) || other.mCompId == mCompId) &&
            (identical(other.mDirId, mDirId) || other.mDirId == mDirId) &&
            (identical(other.namaPel, namaPel) || other.namaPel == namaPel) &&
            (identical(other.tahun, tahun) || other.tahun == tahun) &&
            (identical(other.namaLem, namaLem) || other.namaLem == namaLem) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.lastEditorId, lastEditorId) ||
                other.lastEditorId == lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
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
      namaPel,
      tahun,
      namaLem,
      kotaId,
      creatorId,
      lastEditorId,
      createdAt,
      updatedAt,
      kota);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPelatihanImplCopyWith<_$DataPelatihanImpl> get copyWith =>
      __$$DataPelatihanImplCopyWithImpl<_$DataPelatihanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPelatihanImplToJson(
      this,
    );
  }
}

abstract class _DataPelatihan implements DataPelatihan {
  const factory _DataPelatihan(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_kary_id") final int? mKaryId,
      @JsonKey(name: "m_comp_id") final int? mCompId,
      @JsonKey(name: "m_dir_id") final int? mDirId,
      @JsonKey(name: "nama_pel") final String? namaPel,
      @JsonKey(name: "tahun") final int? tahun,
      @JsonKey(name: "nama_lem") final String? namaLem,
      @JsonKey(name: "kota_id") final int? kotaId,
      @JsonKey(name: "creator_id") final int? creatorId,
      @JsonKey(name: "last_editor_id") final int? lastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "kota") final String? kota}) = _$DataPelatihanImpl;

  factory _DataPelatihan.fromJson(Map<String, dynamic> json) =
      _$DataPelatihanImpl.fromJson;

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
  @JsonKey(name: "nama_pel")
  String? get namaPel;
  @override
  @JsonKey(name: "tahun")
  int? get tahun;
  @override
  @JsonKey(name: "nama_lem")
  String? get namaLem;
  @override
  @JsonKey(name: "kota_id")
  int? get kotaId;
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
  @JsonKey(name: "kota")
  String? get kota;
  @override
  @JsonKey(ignore: true)
  _$$DataPelatihanImplCopyWith<_$DataPelatihanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_pengalaman_karyawan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponsePengalamaniKaryawan _$ResponsePengalamaniKaryawanFromJson(
    Map<String, dynamic> json) {
  return _ResponsePengalamaniKaryawan.fromJson(json);
}

/// @nodoc
mixin _$ResponsePengalamaniKaryawan {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataPengalaman>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponsePengalamaniKaryawanCopyWith<ResponsePengalamaniKaryawan>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePengalamaniKaryawanCopyWith<$Res> {
  factory $ResponsePengalamaniKaryawanCopyWith(
          ResponsePengalamaniKaryawan value,
          $Res Function(ResponsePengalamaniKaryawan) then) =
      _$ResponsePengalamaniKaryawanCopyWithImpl<$Res,
          ResponsePengalamaniKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataPengalaman>? data});
}

/// @nodoc
class _$ResponsePengalamaniKaryawanCopyWithImpl<$Res,
        $Val extends ResponsePengalamaniKaryawan>
    implements $ResponsePengalamaniKaryawanCopyWith<$Res> {
  _$ResponsePengalamaniKaryawanCopyWithImpl(this._value, this._then);

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
              as List<DataPengalaman>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponsePengalamaniKaryawanImplCopyWith<$Res>
    implements $ResponsePengalamaniKaryawanCopyWith<$Res> {
  factory _$$ResponsePengalamaniKaryawanImplCopyWith(
          _$ResponsePengalamaniKaryawanImpl value,
          $Res Function(_$ResponsePengalamaniKaryawanImpl) then) =
      __$$ResponsePengalamaniKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataPengalaman>? data});
}

/// @nodoc
class __$$ResponsePengalamaniKaryawanImplCopyWithImpl<$Res>
    extends _$ResponsePengalamaniKaryawanCopyWithImpl<$Res,
        _$ResponsePengalamaniKaryawanImpl>
    implements _$$ResponsePengalamaniKaryawanImplCopyWith<$Res> {
  __$$ResponsePengalamaniKaryawanImplCopyWithImpl(
      _$ResponsePengalamaniKaryawanImpl _value,
      $Res Function(_$ResponsePengalamaniKaryawanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponsePengalamaniKaryawanImpl(
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
              as List<DataPengalaman>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsePengalamaniKaryawanImpl
    implements _ResponsePengalamaniKaryawan {
  const _$ResponsePengalamaniKaryawanImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DataPengalaman>? data})
      : _data = data;

  factory _$ResponsePengalamaniKaryawanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponsePengalamaniKaryawanImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DataPengalaman>? _data;
  @override
  @JsonKey(name: "data")
  List<DataPengalaman>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponsePengalamaniKaryawan(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePengalamaniKaryawanImpl &&
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
  _$$ResponsePengalamaniKaryawanImplCopyWith<_$ResponsePengalamaniKaryawanImpl>
      get copyWith => __$$ResponsePengalamaniKaryawanImplCopyWithImpl<
          _$ResponsePengalamaniKaryawanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsePengalamaniKaryawanImplToJson(
      this,
    );
  }
}

abstract class _ResponsePengalamaniKaryawan
    implements ResponsePengalamaniKaryawan {
  const factory _ResponsePengalamaniKaryawan(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DataPengalaman>? data}) =
      _$ResponsePengalamaniKaryawanImpl;

  factory _ResponsePengalamaniKaryawan.fromJson(Map<String, dynamic> json) =
      _$ResponsePengalamaniKaryawanImpl.fromJson;

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
  List<DataPengalaman>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponsePengalamaniKaryawanImplCopyWith<_$ResponsePengalamaniKaryawanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataPengalaman _$DataPengalamanFromJson(Map<String, dynamic> json) {
  return _DataPengalaman.fromJson(json);
}

/// @nodoc
mixin _$DataPengalaman {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "instansi")
  String? get instansi => throw _privateConstructorUsedError;
  @JsonKey(name: "bidang_usaha")
  String? get bidangUsaha => throw _privateConstructorUsedError;
  @JsonKey(name: "no_tlp")
  String? get noTlp => throw _privateConstructorUsedError;
  @JsonKey(name: "posisi")
  String? get posisi => throw _privateConstructorUsedError;
  @JsonKey(name: "thn_masuk")
  int? get thnMasuk => throw _privateConstructorUsedError;
  @JsonKey(name: "thn_keluar")
  int? get thnKeluar => throw _privateConstructorUsedError;
  @JsonKey(name: "alamat_kantor")
  String? get alamatKantor => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_id")
  int? get kotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "surat_referensi")
  String? get suratReferensi => throw _privateConstructorUsedError;
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
  $DataPengalamanCopyWith<DataPengalaman> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPengalamanCopyWith<$Res> {
  factory $DataPengalamanCopyWith(
          DataPengalaman value, $Res Function(DataPengalaman) then) =
      _$DataPengalamanCopyWithImpl<$Res, DataPengalaman>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "instansi") String? instansi,
      @JsonKey(name: "bidang_usaha") String? bidangUsaha,
      @JsonKey(name: "no_tlp") String? noTlp,
      @JsonKey(name: "posisi") String? posisi,
      @JsonKey(name: "thn_masuk") int? thnMasuk,
      @JsonKey(name: "thn_keluar") int? thnKeluar,
      @JsonKey(name: "alamat_kantor") String? alamatKantor,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "surat_referensi") String? suratReferensi,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "kota") String? kota});
}

/// @nodoc
class _$DataPengalamanCopyWithImpl<$Res, $Val extends DataPengalaman>
    implements $DataPengalamanCopyWith<$Res> {
  _$DataPengalamanCopyWithImpl(this._value, this._then);

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
    Object? instansi = freezed,
    Object? bidangUsaha = freezed,
    Object? noTlp = freezed,
    Object? posisi = freezed,
    Object? thnMasuk = freezed,
    Object? thnKeluar = freezed,
    Object? alamatKantor = freezed,
    Object? kotaId = freezed,
    Object? suratReferensi = freezed,
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
      instansi: freezed == instansi
          ? _value.instansi
          : instansi // ignore: cast_nullable_to_non_nullable
              as String?,
      bidangUsaha: freezed == bidangUsaha
          ? _value.bidangUsaha
          : bidangUsaha // ignore: cast_nullable_to_non_nullable
              as String?,
      noTlp: freezed == noTlp
          ? _value.noTlp
          : noTlp // ignore: cast_nullable_to_non_nullable
              as String?,
      posisi: freezed == posisi
          ? _value.posisi
          : posisi // ignore: cast_nullable_to_non_nullable
              as String?,
      thnMasuk: freezed == thnMasuk
          ? _value.thnMasuk
          : thnMasuk // ignore: cast_nullable_to_non_nullable
              as int?,
      thnKeluar: freezed == thnKeluar
          ? _value.thnKeluar
          : thnKeluar // ignore: cast_nullable_to_non_nullable
              as int?,
      alamatKantor: freezed == alamatKantor
          ? _value.alamatKantor
          : alamatKantor // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      suratReferensi: freezed == suratReferensi
          ? _value.suratReferensi
          : suratReferensi // ignore: cast_nullable_to_non_nullable
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
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataPengalamanImplCopyWith<$Res>
    implements $DataPengalamanCopyWith<$Res> {
  factory _$$DataPengalamanImplCopyWith(_$DataPengalamanImpl value,
          $Res Function(_$DataPengalamanImpl) then) =
      __$$DataPengalamanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "instansi") String? instansi,
      @JsonKey(name: "bidang_usaha") String? bidangUsaha,
      @JsonKey(name: "no_tlp") String? noTlp,
      @JsonKey(name: "posisi") String? posisi,
      @JsonKey(name: "thn_masuk") int? thnMasuk,
      @JsonKey(name: "thn_keluar") int? thnKeluar,
      @JsonKey(name: "alamat_kantor") String? alamatKantor,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "surat_referensi") String? suratReferensi,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "kota") String? kota});
}

/// @nodoc
class __$$DataPengalamanImplCopyWithImpl<$Res>
    extends _$DataPengalamanCopyWithImpl<$Res, _$DataPengalamanImpl>
    implements _$$DataPengalamanImplCopyWith<$Res> {
  __$$DataPengalamanImplCopyWithImpl(
      _$DataPengalamanImpl _value, $Res Function(_$DataPengalamanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? mKaryId = freezed,
    Object? instansi = freezed,
    Object? bidangUsaha = freezed,
    Object? noTlp = freezed,
    Object? posisi = freezed,
    Object? thnMasuk = freezed,
    Object? thnKeluar = freezed,
    Object? alamatKantor = freezed,
    Object? kotaId = freezed,
    Object? suratReferensi = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? kota = freezed,
  }) {
    return _then(_$DataPengalamanImpl(
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
      instansi: freezed == instansi
          ? _value.instansi
          : instansi // ignore: cast_nullable_to_non_nullable
              as String?,
      bidangUsaha: freezed == bidangUsaha
          ? _value.bidangUsaha
          : bidangUsaha // ignore: cast_nullable_to_non_nullable
              as String?,
      noTlp: freezed == noTlp
          ? _value.noTlp
          : noTlp // ignore: cast_nullable_to_non_nullable
              as String?,
      posisi: freezed == posisi
          ? _value.posisi
          : posisi // ignore: cast_nullable_to_non_nullable
              as String?,
      thnMasuk: freezed == thnMasuk
          ? _value.thnMasuk
          : thnMasuk // ignore: cast_nullable_to_non_nullable
              as int?,
      thnKeluar: freezed == thnKeluar
          ? _value.thnKeluar
          : thnKeluar // ignore: cast_nullable_to_non_nullable
              as int?,
      alamatKantor: freezed == alamatKantor
          ? _value.alamatKantor
          : alamatKantor // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      suratReferensi: freezed == suratReferensi
          ? _value.suratReferensi
          : suratReferensi // ignore: cast_nullable_to_non_nullable
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
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataPengalamanImpl implements _DataPengalaman {
  const _$DataPengalamanImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "m_kary_id") this.mKaryId,
      @JsonKey(name: "instansi") this.instansi,
      @JsonKey(name: "bidang_usaha") this.bidangUsaha,
      @JsonKey(name: "no_tlp") this.noTlp,
      @JsonKey(name: "posisi") this.posisi,
      @JsonKey(name: "thn_masuk") this.thnMasuk,
      @JsonKey(name: "thn_keluar") this.thnKeluar,
      @JsonKey(name: "alamat_kantor") this.alamatKantor,
      @JsonKey(name: "kota_id") this.kotaId,
      @JsonKey(name: "surat_referensi") this.suratReferensi,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "kota") this.kota});

  factory _$DataPengalamanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPengalamanImplFromJson(json);

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
  @JsonKey(name: "instansi")
  final String? instansi;
  @override
  @JsonKey(name: "bidang_usaha")
  final String? bidangUsaha;
  @override
  @JsonKey(name: "no_tlp")
  final String? noTlp;
  @override
  @JsonKey(name: "posisi")
  final String? posisi;
  @override
  @JsonKey(name: "thn_masuk")
  final int? thnMasuk;
  @override
  @JsonKey(name: "thn_keluar")
  final int? thnKeluar;
  @override
  @JsonKey(name: "alamat_kantor")
  final String? alamatKantor;
  @override
  @JsonKey(name: "kota_id")
  final int? kotaId;
  @override
  @JsonKey(name: "surat_referensi")
  final String? suratReferensi;
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
    return 'DataPengalaman(id: $id, mCompId: $mCompId, mDirId: $mDirId, mKaryId: $mKaryId, instansi: $instansi, bidangUsaha: $bidangUsaha, noTlp: $noTlp, posisi: $posisi, thnMasuk: $thnMasuk, thnKeluar: $thnKeluar, alamatKantor: $alamatKantor, kotaId: $kotaId, suratReferensi: $suratReferensi, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, kota: $kota)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPengalamanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mCompId, mCompId) || other.mCompId == mCompId) &&
            (identical(other.mDirId, mDirId) || other.mDirId == mDirId) &&
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            (identical(other.instansi, instansi) ||
                other.instansi == instansi) &&
            (identical(other.bidangUsaha, bidangUsaha) ||
                other.bidangUsaha == bidangUsaha) &&
            (identical(other.noTlp, noTlp) || other.noTlp == noTlp) &&
            (identical(other.posisi, posisi) || other.posisi == posisi) &&
            (identical(other.thnMasuk, thnMasuk) ||
                other.thnMasuk == thnMasuk) &&
            (identical(other.thnKeluar, thnKeluar) ||
                other.thnKeluar == thnKeluar) &&
            (identical(other.alamatKantor, alamatKantor) ||
                other.alamatKantor == alamatKantor) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.suratReferensi, suratReferensi) ||
                other.suratReferensi == suratReferensi) &&
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
      mCompId,
      mDirId,
      mKaryId,
      instansi,
      bidangUsaha,
      noTlp,
      posisi,
      thnMasuk,
      thnKeluar,
      alamatKantor,
      kotaId,
      suratReferensi,
      creatorId,
      lastEditorId,
      createdAt,
      updatedAt,
      kota);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPengalamanImplCopyWith<_$DataPengalamanImpl> get copyWith =>
      __$$DataPengalamanImplCopyWithImpl<_$DataPengalamanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPengalamanImplToJson(
      this,
    );
  }
}

abstract class _DataPengalaman implements DataPengalaman {
  const factory _DataPengalaman(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_comp_id") final int? mCompId,
      @JsonKey(name: "m_dir_id") final int? mDirId,
      @JsonKey(name: "m_kary_id") final int? mKaryId,
      @JsonKey(name: "instansi") final String? instansi,
      @JsonKey(name: "bidang_usaha") final String? bidangUsaha,
      @JsonKey(name: "no_tlp") final String? noTlp,
      @JsonKey(name: "posisi") final String? posisi,
      @JsonKey(name: "thn_masuk") final int? thnMasuk,
      @JsonKey(name: "thn_keluar") final int? thnKeluar,
      @JsonKey(name: "alamat_kantor") final String? alamatKantor,
      @JsonKey(name: "kota_id") final int? kotaId,
      @JsonKey(name: "surat_referensi") final String? suratReferensi,
      @JsonKey(name: "creator_id") final int? creatorId,
      @JsonKey(name: "last_editor_id") final int? lastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "kota") final String? kota}) = _$DataPengalamanImpl;

  factory _DataPengalaman.fromJson(Map<String, dynamic> json) =
      _$DataPengalamanImpl.fromJson;

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
  @JsonKey(name: "instansi")
  String? get instansi;
  @override
  @JsonKey(name: "bidang_usaha")
  String? get bidangUsaha;
  @override
  @JsonKey(name: "no_tlp")
  String? get noTlp;
  @override
  @JsonKey(name: "posisi")
  String? get posisi;
  @override
  @JsonKey(name: "thn_masuk")
  int? get thnMasuk;
  @override
  @JsonKey(name: "thn_keluar")
  int? get thnKeluar;
  @override
  @JsonKey(name: "alamat_kantor")
  String? get alamatKantor;
  @override
  @JsonKey(name: "kota_id")
  int? get kotaId;
  @override
  @JsonKey(name: "surat_referensi")
  String? get suratReferensi;
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
  _$$DataPengalamanImplCopyWith<_$DataPengalamanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

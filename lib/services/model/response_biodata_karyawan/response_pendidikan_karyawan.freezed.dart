// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_pendidikan_karyawan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponsePendidikanKaryawan _$ResponsePendidikanKaryawanFromJson(
    Map<String, dynamic> json) {
  return _ResponsePendidikanKaryawan.fromJson(json);
}

/// @nodoc
mixin _$ResponsePendidikanKaryawan {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ListDataPendidikan>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponsePendidikanKaryawanCopyWith<ResponsePendidikanKaryawan>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePendidikanKaryawanCopyWith<$Res> {
  factory $ResponsePendidikanKaryawanCopyWith(ResponsePendidikanKaryawan value,
          $Res Function(ResponsePendidikanKaryawan) then) =
      _$ResponsePendidikanKaryawanCopyWithImpl<$Res,
          ResponsePendidikanKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<ListDataPendidikan>? data});
}

/// @nodoc
class _$ResponsePendidikanKaryawanCopyWithImpl<$Res,
        $Val extends ResponsePendidikanKaryawan>
    implements $ResponsePendidikanKaryawanCopyWith<$Res> {
  _$ResponsePendidikanKaryawanCopyWithImpl(this._value, this._then);

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
              as List<ListDataPendidikan>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponsePendidikanKaryawanImplCopyWith<$Res>
    implements $ResponsePendidikanKaryawanCopyWith<$Res> {
  factory _$$ResponsePendidikanKaryawanImplCopyWith(
          _$ResponsePendidikanKaryawanImpl value,
          $Res Function(_$ResponsePendidikanKaryawanImpl) then) =
      __$$ResponsePendidikanKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<ListDataPendidikan>? data});
}

/// @nodoc
class __$$ResponsePendidikanKaryawanImplCopyWithImpl<$Res>
    extends _$ResponsePendidikanKaryawanCopyWithImpl<$Res,
        _$ResponsePendidikanKaryawanImpl>
    implements _$$ResponsePendidikanKaryawanImplCopyWith<$Res> {
  __$$ResponsePendidikanKaryawanImplCopyWithImpl(
      _$ResponsePendidikanKaryawanImpl _value,
      $Res Function(_$ResponsePendidikanKaryawanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponsePendidikanKaryawanImpl(
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
              as List<ListDataPendidikan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsePendidikanKaryawanImpl implements _ResponsePendidikanKaryawan {
  const _$ResponsePendidikanKaryawanImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<ListDataPendidikan>? data})
      : _data = data;

  factory _$ResponsePendidikanKaryawanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponsePendidikanKaryawanImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<ListDataPendidikan>? _data;
  @override
  @JsonKey(name: "data")
  List<ListDataPendidikan>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponsePendidikanKaryawan(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePendidikanKaryawanImpl &&
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
  _$$ResponsePendidikanKaryawanImplCopyWith<_$ResponsePendidikanKaryawanImpl>
      get copyWith => __$$ResponsePendidikanKaryawanImplCopyWithImpl<
          _$ResponsePendidikanKaryawanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsePendidikanKaryawanImplToJson(
      this,
    );
  }
}

abstract class _ResponsePendidikanKaryawan
    implements ResponsePendidikanKaryawan {
  const factory _ResponsePendidikanKaryawan(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<ListDataPendidikan>? data}) =
      _$ResponsePendidikanKaryawanImpl;

  factory _ResponsePendidikanKaryawan.fromJson(Map<String, dynamic> json) =
      _$ResponsePendidikanKaryawanImpl.fromJson;

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
  List<ListDataPendidikan>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponsePendidikanKaryawanImplCopyWith<_$ResponsePendidikanKaryawanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ListDataPendidikan _$ListDataPendidikanFromJson(Map<String, dynamic> json) {
  return _ListDataPendidikan.fromJson(json);
}

/// @nodoc
mixin _$ListDataPendidikan {
  @JsonKey(name: "karyawan")
  String? get karyawan => throw _privateConstructorUsedError;
  @JsonKey(name: "tingkat")
  String? get tingkat => throw _privateConstructorUsedError;
  @JsonKey(name: "kota")
  String? get kota => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  dynamic get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  dynamic get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "tingkat_id")
  int? get tingkatId => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_sekolah")
  String? get namaSekolah => throw _privateConstructorUsedError;
  @JsonKey(name: "thn_masuk")
  int? get thnMasuk => throw _privateConstructorUsedError;
  @JsonKey(name: "thn_lulus")
  int? get thnLulus => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_id")
  int? get kotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "nilai")
  double? get nilai => throw _privateConstructorUsedError;
  @JsonKey(name: "jurusan")
  String? get jurusan => throw _privateConstructorUsedError;
  @JsonKey(name: "is_pend_terakhir")
  bool? get isPendTerakhir => throw _privateConstructorUsedError;
  @JsonKey(name: "ijazah_no")
  String? get ijazahNo => throw _privateConstructorUsedError;
  @JsonKey(name: "ijazah_foto")
  String? get ijazahFoto => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  dynamic get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListDataPendidikanCopyWith<ListDataPendidikan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDataPendidikanCopyWith<$Res> {
  factory $ListDataPendidikanCopyWith(
          ListDataPendidikan value, $Res Function(ListDataPendidikan) then) =
      _$ListDataPendidikanCopyWithImpl<$Res, ListDataPendidikan>;
  @useResult
  $Res call(
      {@JsonKey(name: "karyawan") String? karyawan,
      @JsonKey(name: "tingkat") String? tingkat,
      @JsonKey(name: "kota") String? kota,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "m_comp_id") dynamic mCompId,
      @JsonKey(name: "m_dir_id") dynamic mDirId,
      @JsonKey(name: "tingkat_id") int? tingkatId,
      @JsonKey(name: "nama_sekolah") String? namaSekolah,
      @JsonKey(name: "thn_masuk") int? thnMasuk,
      @JsonKey(name: "thn_lulus") int? thnLulus,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "nilai") double? nilai,
      @JsonKey(name: "jurusan") String? jurusan,
      @JsonKey(name: "is_pend_terakhir") bool? isPendTerakhir,
      @JsonKey(name: "ijazah_no") String? ijazahNo,
      @JsonKey(name: "ijazah_foto") String? ijazahFoto,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$ListDataPendidikanCopyWithImpl<$Res, $Val extends ListDataPendidikan>
    implements $ListDataPendidikanCopyWith<$Res> {
  _$ListDataPendidikanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? karyawan = freezed,
    Object? tingkat = freezed,
    Object? kota = freezed,
    Object? id = freezed,
    Object? mKaryId = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? tingkatId = freezed,
    Object? namaSekolah = freezed,
    Object? thnMasuk = freezed,
    Object? thnLulus = freezed,
    Object? kotaId = freezed,
    Object? nilai = freezed,
    Object? jurusan = freezed,
    Object? isPendTerakhir = freezed,
    Object? ijazahNo = freezed,
    Object? ijazahFoto = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      karyawan: freezed == karyawan
          ? _value.karyawan
          : karyawan // ignore: cast_nullable_to_non_nullable
              as String?,
      tingkat: freezed == tingkat
          ? _value.tingkat
          : tingkat // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tingkatId: freezed == tingkatId
          ? _value.tingkatId
          : tingkatId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaSekolah: freezed == namaSekolah
          ? _value.namaSekolah
          : namaSekolah // ignore: cast_nullable_to_non_nullable
              as String?,
      thnMasuk: freezed == thnMasuk
          ? _value.thnMasuk
          : thnMasuk // ignore: cast_nullable_to_non_nullable
              as int?,
      thnLulus: freezed == thnLulus
          ? _value.thnLulus
          : thnLulus // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      nilai: freezed == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as double?,
      jurusan: freezed == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String?,
      isPendTerakhir: freezed == isPendTerakhir
          ? _value.isPendTerakhir
          : isPendTerakhir // ignore: cast_nullable_to_non_nullable
              as bool?,
      ijazahNo: freezed == ijazahNo
          ? _value.ijazahNo
          : ijazahNo // ignore: cast_nullable_to_non_nullable
              as String?,
      ijazahFoto: freezed == ijazahFoto
          ? _value.ijazahFoto
          : ijazahFoto // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListDataPendidikanImplCopyWith<$Res>
    implements $ListDataPendidikanCopyWith<$Res> {
  factory _$$ListDataPendidikanImplCopyWith(_$ListDataPendidikanImpl value,
          $Res Function(_$ListDataPendidikanImpl) then) =
      __$$ListDataPendidikanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "karyawan") String? karyawan,
      @JsonKey(name: "tingkat") String? tingkat,
      @JsonKey(name: "kota") String? kota,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "m_comp_id") dynamic mCompId,
      @JsonKey(name: "m_dir_id") dynamic mDirId,
      @JsonKey(name: "tingkat_id") int? tingkatId,
      @JsonKey(name: "nama_sekolah") String? namaSekolah,
      @JsonKey(name: "thn_masuk") int? thnMasuk,
      @JsonKey(name: "thn_lulus") int? thnLulus,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "nilai") double? nilai,
      @JsonKey(name: "jurusan") String? jurusan,
      @JsonKey(name: "is_pend_terakhir") bool? isPendTerakhir,
      @JsonKey(name: "ijazah_no") String? ijazahNo,
      @JsonKey(name: "ijazah_foto") String? ijazahFoto,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$ListDataPendidikanImplCopyWithImpl<$Res>
    extends _$ListDataPendidikanCopyWithImpl<$Res, _$ListDataPendidikanImpl>
    implements _$$ListDataPendidikanImplCopyWith<$Res> {
  __$$ListDataPendidikanImplCopyWithImpl(_$ListDataPendidikanImpl _value,
      $Res Function(_$ListDataPendidikanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? karyawan = freezed,
    Object? tingkat = freezed,
    Object? kota = freezed,
    Object? id = freezed,
    Object? mKaryId = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? tingkatId = freezed,
    Object? namaSekolah = freezed,
    Object? thnMasuk = freezed,
    Object? thnLulus = freezed,
    Object? kotaId = freezed,
    Object? nilai = freezed,
    Object? jurusan = freezed,
    Object? isPendTerakhir = freezed,
    Object? ijazahNo = freezed,
    Object? ijazahFoto = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ListDataPendidikanImpl(
      karyawan: freezed == karyawan
          ? _value.karyawan
          : karyawan // ignore: cast_nullable_to_non_nullable
              as String?,
      tingkat: freezed == tingkat
          ? _value.tingkat
          : tingkat // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tingkatId: freezed == tingkatId
          ? _value.tingkatId
          : tingkatId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaSekolah: freezed == namaSekolah
          ? _value.namaSekolah
          : namaSekolah // ignore: cast_nullable_to_non_nullable
              as String?,
      thnMasuk: freezed == thnMasuk
          ? _value.thnMasuk
          : thnMasuk // ignore: cast_nullable_to_non_nullable
              as int?,
      thnLulus: freezed == thnLulus
          ? _value.thnLulus
          : thnLulus // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      nilai: freezed == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as double?,
      jurusan: freezed == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String?,
      isPendTerakhir: freezed == isPendTerakhir
          ? _value.isPendTerakhir
          : isPendTerakhir // ignore: cast_nullable_to_non_nullable
              as bool?,
      ijazahNo: freezed == ijazahNo
          ? _value.ijazahNo
          : ijazahNo // ignore: cast_nullable_to_non_nullable
              as String?,
      ijazahFoto: freezed == ijazahFoto
          ? _value.ijazahFoto
          : ijazahFoto // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListDataPendidikanImpl implements _ListDataPendidikan {
  const _$ListDataPendidikanImpl(
      {@JsonKey(name: "karyawan") this.karyawan,
      @JsonKey(name: "tingkat") this.tingkat,
      @JsonKey(name: "kota") this.kota,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "m_kary_id") this.mKaryId,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "tingkat_id") this.tingkatId,
      @JsonKey(name: "nama_sekolah") this.namaSekolah,
      @JsonKey(name: "thn_masuk") this.thnMasuk,
      @JsonKey(name: "thn_lulus") this.thnLulus,
      @JsonKey(name: "kota_id") this.kotaId,
      @JsonKey(name: "nilai") this.nilai,
      @JsonKey(name: "jurusan") this.jurusan,
      @JsonKey(name: "is_pend_terakhir") this.isPendTerakhir,
      @JsonKey(name: "ijazah_no") this.ijazahNo,
      @JsonKey(name: "ijazah_foto") this.ijazahFoto,
      @JsonKey(name: "desc") this.desc,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$ListDataPendidikanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListDataPendidikanImplFromJson(json);

  @override
  @JsonKey(name: "karyawan")
  final String? karyawan;
  @override
  @JsonKey(name: "tingkat")
  final String? tingkat;
  @override
  @JsonKey(name: "kota")
  final String? kota;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "m_kary_id")
  final int? mKaryId;
  @override
  @JsonKey(name: "m_comp_id")
  final dynamic mCompId;
  @override
  @JsonKey(name: "m_dir_id")
  final dynamic mDirId;
  @override
  @JsonKey(name: "tingkat_id")
  final int? tingkatId;
  @override
  @JsonKey(name: "nama_sekolah")
  final String? namaSekolah;
  @override
  @JsonKey(name: "thn_masuk")
  final int? thnMasuk;
  @override
  @JsonKey(name: "thn_lulus")
  final int? thnLulus;
  @override
  @JsonKey(name: "kota_id")
  final int? kotaId;
  @override
  @JsonKey(name: "nilai")
  final double? nilai;
  @override
  @JsonKey(name: "jurusan")
  final String? jurusan;
  @override
  @JsonKey(name: "is_pend_terakhir")
  final bool? isPendTerakhir;
  @override
  @JsonKey(name: "ijazah_no")
  final String? ijazahNo;
  @override
  @JsonKey(name: "ijazah_foto")
  final String? ijazahFoto;
  @override
  @JsonKey(name: "desc")
  final String? desc;
  @override
  @JsonKey(name: "creator_id")
  final int? creatorId;
  @override
  @JsonKey(name: "last_editor_id")
  final dynamic lastEditorId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'ListDataPendidikan(karyawan: $karyawan, tingkat: $tingkat, kota: $kota, id: $id, mKaryId: $mKaryId, mCompId: $mCompId, mDirId: $mDirId, tingkatId: $tingkatId, namaSekolah: $namaSekolah, thnMasuk: $thnMasuk, thnLulus: $thnLulus, kotaId: $kotaId, nilai: $nilai, jurusan: $jurusan, isPendTerakhir: $isPendTerakhir, ijazahNo: $ijazahNo, ijazahFoto: $ijazahFoto, desc: $desc, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDataPendidikanImpl &&
            (identical(other.karyawan, karyawan) ||
                other.karyawan == karyawan) &&
            (identical(other.tingkat, tingkat) || other.tingkat == tingkat) &&
            (identical(other.kota, kota) || other.kota == kota) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            const DeepCollectionEquality().equals(other.mCompId, mCompId) &&
            const DeepCollectionEquality().equals(other.mDirId, mDirId) &&
            (identical(other.tingkatId, tingkatId) ||
                other.tingkatId == tingkatId) &&
            (identical(other.namaSekolah, namaSekolah) ||
                other.namaSekolah == namaSekolah) &&
            (identical(other.thnMasuk, thnMasuk) ||
                other.thnMasuk == thnMasuk) &&
            (identical(other.thnLulus, thnLulus) ||
                other.thnLulus == thnLulus) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.nilai, nilai) || other.nilai == nilai) &&
            (identical(other.jurusan, jurusan) || other.jurusan == jurusan) &&
            (identical(other.isPendTerakhir, isPendTerakhir) ||
                other.isPendTerakhir == isPendTerakhir) &&
            (identical(other.ijazahNo, ijazahNo) ||
                other.ijazahNo == ijazahNo) &&
            (identical(other.ijazahFoto, ijazahFoto) ||
                other.ijazahFoto == ijazahFoto) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality()
                .equals(other.lastEditorId, lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        karyawan,
        tingkat,
        kota,
        id,
        mKaryId,
        const DeepCollectionEquality().hash(mCompId),
        const DeepCollectionEquality().hash(mDirId),
        tingkatId,
        namaSekolah,
        thnMasuk,
        thnLulus,
        kotaId,
        nilai,
        jurusan,
        isPendTerakhir,
        ijazahNo,
        ijazahFoto,
        desc,
        creatorId,
        const DeepCollectionEquality().hash(lastEditorId),
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListDataPendidikanImplCopyWith<_$ListDataPendidikanImpl> get copyWith =>
      __$$ListDataPendidikanImplCopyWithImpl<_$ListDataPendidikanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListDataPendidikanImplToJson(
      this,
    );
  }
}

abstract class _ListDataPendidikan implements ListDataPendidikan {
  const factory _ListDataPendidikan(
          {@JsonKey(name: "karyawan") final String? karyawan,
          @JsonKey(name: "tingkat") final String? tingkat,
          @JsonKey(name: "kota") final String? kota,
          @JsonKey(name: "id") final int? id,
          @JsonKey(name: "m_kary_id") final int? mKaryId,
          @JsonKey(name: "m_comp_id") final dynamic mCompId,
          @JsonKey(name: "m_dir_id") final dynamic mDirId,
          @JsonKey(name: "tingkat_id") final int? tingkatId,
          @JsonKey(name: "nama_sekolah") final String? namaSekolah,
          @JsonKey(name: "thn_masuk") final int? thnMasuk,
          @JsonKey(name: "thn_lulus") final int? thnLulus,
          @JsonKey(name: "kota_id") final int? kotaId,
          @JsonKey(name: "nilai") final double? nilai,
          @JsonKey(name: "jurusan") final String? jurusan,
          @JsonKey(name: "is_pend_terakhir") final bool? isPendTerakhir,
          @JsonKey(name: "ijazah_no") final String? ijazahNo,
          @JsonKey(name: "ijazah_foto") final String? ijazahFoto,
          @JsonKey(name: "desc") final String? desc,
          @JsonKey(name: "creator_id") final int? creatorId,
          @JsonKey(name: "last_editor_id") final dynamic lastEditorId,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$ListDataPendidikanImpl;

  factory _ListDataPendidikan.fromJson(Map<String, dynamic> json) =
      _$ListDataPendidikanImpl.fromJson;

  @override
  @JsonKey(name: "karyawan")
  String? get karyawan;
  @override
  @JsonKey(name: "tingkat")
  String? get tingkat;
  @override
  @JsonKey(name: "kota")
  String? get kota;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "m_kary_id")
  int? get mKaryId;
  @override
  @JsonKey(name: "m_comp_id")
  dynamic get mCompId;
  @override
  @JsonKey(name: "m_dir_id")
  dynamic get mDirId;
  @override
  @JsonKey(name: "tingkat_id")
  int? get tingkatId;
  @override
  @JsonKey(name: "nama_sekolah")
  String? get namaSekolah;
  @override
  @JsonKey(name: "thn_masuk")
  int? get thnMasuk;
  @override
  @JsonKey(name: "thn_lulus")
  int? get thnLulus;
  @override
  @JsonKey(name: "kota_id")
  int? get kotaId;
  @override
  @JsonKey(name: "nilai")
  double? get nilai;
  @override
  @JsonKey(name: "jurusan")
  String? get jurusan;
  @override
  @JsonKey(name: "is_pend_terakhir")
  bool? get isPendTerakhir;
  @override
  @JsonKey(name: "ijazah_no")
  String? get ijazahNo;
  @override
  @JsonKey(name: "ijazah_foto")
  String? get ijazahFoto;
  @override
  @JsonKey(name: "desc")
  String? get desc;
  @override
  @JsonKey(name: "creator_id")
  int? get creatorId;
  @override
  @JsonKey(name: "last_editor_id")
  dynamic get lastEditorId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ListDataPendidikanImplCopyWith<_$ListDataPendidikanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

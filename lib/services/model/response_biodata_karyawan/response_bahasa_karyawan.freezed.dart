// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_bahasa_karyawan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseBahasaKaryawan _$ResponseBahasaKaryawanFromJson(
    Map<String, dynamic> json) {
  return _ResponseBahasaKaryawan.fromJson(json);
}

/// @nodoc
mixin _$ResponseBahasaKaryawan {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataBahasa>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBahasaKaryawanCopyWith<ResponseBahasaKaryawan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBahasaKaryawanCopyWith<$Res> {
  factory $ResponseBahasaKaryawanCopyWith(ResponseBahasaKaryawan value,
          $Res Function(ResponseBahasaKaryawan) then) =
      _$ResponseBahasaKaryawanCopyWithImpl<$Res, ResponseBahasaKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataBahasa>? data});
}

/// @nodoc
class _$ResponseBahasaKaryawanCopyWithImpl<$Res,
        $Val extends ResponseBahasaKaryawan>
    implements $ResponseBahasaKaryawanCopyWith<$Res> {
  _$ResponseBahasaKaryawanCopyWithImpl(this._value, this._then);

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
              as List<DataBahasa>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseBahasaKaryawanImplCopyWith<$Res>
    implements $ResponseBahasaKaryawanCopyWith<$Res> {
  factory _$$ResponseBahasaKaryawanImplCopyWith(
          _$ResponseBahasaKaryawanImpl value,
          $Res Function(_$ResponseBahasaKaryawanImpl) then) =
      __$$ResponseBahasaKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataBahasa>? data});
}

/// @nodoc
class __$$ResponseBahasaKaryawanImplCopyWithImpl<$Res>
    extends _$ResponseBahasaKaryawanCopyWithImpl<$Res,
        _$ResponseBahasaKaryawanImpl>
    implements _$$ResponseBahasaKaryawanImplCopyWith<$Res> {
  __$$ResponseBahasaKaryawanImplCopyWithImpl(
      _$ResponseBahasaKaryawanImpl _value,
      $Res Function(_$ResponseBahasaKaryawanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseBahasaKaryawanImpl(
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
              as List<DataBahasa>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBahasaKaryawanImpl implements _ResponseBahasaKaryawan {
  const _$ResponseBahasaKaryawanImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DataBahasa>? data})
      : _data = data;

  factory _$ResponseBahasaKaryawanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBahasaKaryawanImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DataBahasa>? _data;
  @override
  @JsonKey(name: "data")
  List<DataBahasa>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseBahasaKaryawan(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBahasaKaryawanImpl &&
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
  _$$ResponseBahasaKaryawanImplCopyWith<_$ResponseBahasaKaryawanImpl>
      get copyWith => __$$ResponseBahasaKaryawanImplCopyWithImpl<
          _$ResponseBahasaKaryawanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBahasaKaryawanImplToJson(
      this,
    );
  }
}

abstract class _ResponseBahasaKaryawan implements ResponseBahasaKaryawan {
  const factory _ResponseBahasaKaryawan(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DataBahasa>? data}) =
      _$ResponseBahasaKaryawanImpl;

  factory _ResponseBahasaKaryawan.fromJson(Map<String, dynamic> json) =
      _$ResponseBahasaKaryawanImpl.fromJson;

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
  List<DataBahasa>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBahasaKaryawanImplCopyWith<_$ResponseBahasaKaryawanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataBahasa _$DataBahasaFromJson(Map<String, dynamic> json) {
  return _DataBahasa.fromJson(json);
}

/// @nodoc
mixin _$DataBahasa {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "bhs_dikuasai")
  String? get bhsDikuasai => throw _privateConstructorUsedError;
  @JsonKey(name: "nilai_lisan")
  int? get nilaiLisan => throw _privateConstructorUsedError;
  @JsonKey(name: "nilai_tertulis")
  int? get nilaiTertulis => throw _privateConstructorUsedError;
  @JsonKey(name: "level_lisan")
  dynamic get levelLisan => throw _privateConstructorUsedError;
  @JsonKey(name: "level_tertulis")
  dynamic get levelTertulis => throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBahasaCopyWith<DataBahasa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBahasaCopyWith<$Res> {
  factory $DataBahasaCopyWith(
          DataBahasa value, $Res Function(DataBahasa) then) =
      _$DataBahasaCopyWithImpl<$Res, DataBahasa>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "bhs_dikuasai") String? bhsDikuasai,
      @JsonKey(name: "nilai_lisan") int? nilaiLisan,
      @JsonKey(name: "nilai_tertulis") int? nilaiTertulis,
      @JsonKey(name: "level_lisan") dynamic levelLisan,
      @JsonKey(name: "level_tertulis") dynamic levelTertulis,
      @JsonKey(name: "desc") dynamic desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$DataBahasaCopyWithImpl<$Res, $Val extends DataBahasa>
    implements $DataBahasaCopyWith<$Res> {
  _$DataBahasaCopyWithImpl(this._value, this._then);

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
    Object? bhsDikuasai = freezed,
    Object? nilaiLisan = freezed,
    Object? nilaiTertulis = freezed,
    Object? levelLisan = freezed,
    Object? levelTertulis = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      bhsDikuasai: freezed == bhsDikuasai
          ? _value.bhsDikuasai
          : bhsDikuasai // ignore: cast_nullable_to_non_nullable
              as String?,
      nilaiLisan: freezed == nilaiLisan
          ? _value.nilaiLisan
          : nilaiLisan // ignore: cast_nullable_to_non_nullable
              as int?,
      nilaiTertulis: freezed == nilaiTertulis
          ? _value.nilaiTertulis
          : nilaiTertulis // ignore: cast_nullable_to_non_nullable
              as int?,
      levelLisan: freezed == levelLisan
          ? _value.levelLisan
          : levelLisan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      levelTertulis: freezed == levelTertulis
          ? _value.levelTertulis
          : levelTertulis // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataBahasaImplCopyWith<$Res>
    implements $DataBahasaCopyWith<$Res> {
  factory _$$DataBahasaImplCopyWith(
          _$DataBahasaImpl value, $Res Function(_$DataBahasaImpl) then) =
      __$$DataBahasaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "bhs_dikuasai") String? bhsDikuasai,
      @JsonKey(name: "nilai_lisan") int? nilaiLisan,
      @JsonKey(name: "nilai_tertulis") int? nilaiTertulis,
      @JsonKey(name: "level_lisan") dynamic levelLisan,
      @JsonKey(name: "level_tertulis") dynamic levelTertulis,
      @JsonKey(name: "desc") dynamic desc,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$DataBahasaImplCopyWithImpl<$Res>
    extends _$DataBahasaCopyWithImpl<$Res, _$DataBahasaImpl>
    implements _$$DataBahasaImplCopyWith<$Res> {
  __$$DataBahasaImplCopyWithImpl(
      _$DataBahasaImpl _value, $Res Function(_$DataBahasaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mKaryId = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? bhsDikuasai = freezed,
    Object? nilaiLisan = freezed,
    Object? nilaiTertulis = freezed,
    Object? levelLisan = freezed,
    Object? levelTertulis = freezed,
    Object? desc = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataBahasaImpl(
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
      bhsDikuasai: freezed == bhsDikuasai
          ? _value.bhsDikuasai
          : bhsDikuasai // ignore: cast_nullable_to_non_nullable
              as String?,
      nilaiLisan: freezed == nilaiLisan
          ? _value.nilaiLisan
          : nilaiLisan // ignore: cast_nullable_to_non_nullable
              as int?,
      nilaiTertulis: freezed == nilaiTertulis
          ? _value.nilaiTertulis
          : nilaiTertulis // ignore: cast_nullable_to_non_nullable
              as int?,
      levelLisan: freezed == levelLisan
          ? _value.levelLisan
          : levelLisan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      levelTertulis: freezed == levelTertulis
          ? _value.levelTertulis
          : levelTertulis // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataBahasaImpl implements _DataBahasa {
  const _$DataBahasaImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "m_kary_id") this.mKaryId,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "bhs_dikuasai") this.bhsDikuasai,
      @JsonKey(name: "nilai_lisan") this.nilaiLisan,
      @JsonKey(name: "nilai_tertulis") this.nilaiTertulis,
      @JsonKey(name: "level_lisan") this.levelLisan,
      @JsonKey(name: "level_tertulis") this.levelTertulis,
      @JsonKey(name: "desc") this.desc,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$DataBahasaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataBahasaImplFromJson(json);

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
  @JsonKey(name: "bhs_dikuasai")
  final String? bhsDikuasai;
  @override
  @JsonKey(name: "nilai_lisan")
  final int? nilaiLisan;
  @override
  @JsonKey(name: "nilai_tertulis")
  final int? nilaiTertulis;
  @override
  @JsonKey(name: "level_lisan")
  final dynamic levelLisan;
  @override
  @JsonKey(name: "level_tertulis")
  final dynamic levelTertulis;
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
  String toString() {
    return 'DataBahasa(id: $id, mKaryId: $mKaryId, mCompId: $mCompId, mDirId: $mDirId, bhsDikuasai: $bhsDikuasai, nilaiLisan: $nilaiLisan, nilaiTertulis: $nilaiTertulis, levelLisan: $levelLisan, levelTertulis: $levelTertulis, desc: $desc, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBahasaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            (identical(other.mCompId, mCompId) || other.mCompId == mCompId) &&
            (identical(other.mDirId, mDirId) || other.mDirId == mDirId) &&
            (identical(other.bhsDikuasai, bhsDikuasai) ||
                other.bhsDikuasai == bhsDikuasai) &&
            (identical(other.nilaiLisan, nilaiLisan) ||
                other.nilaiLisan == nilaiLisan) &&
            (identical(other.nilaiTertulis, nilaiTertulis) ||
                other.nilaiTertulis == nilaiTertulis) &&
            const DeepCollectionEquality()
                .equals(other.levelLisan, levelLisan) &&
            const DeepCollectionEquality()
                .equals(other.levelTertulis, levelTertulis) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.lastEditorId, lastEditorId) ||
                other.lastEditorId == lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mKaryId,
      mCompId,
      mDirId,
      bhsDikuasai,
      nilaiLisan,
      nilaiTertulis,
      const DeepCollectionEquality().hash(levelLisan),
      const DeepCollectionEquality().hash(levelTertulis),
      const DeepCollectionEquality().hash(desc),
      creatorId,
      lastEditorId,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataBahasaImplCopyWith<_$DataBahasaImpl> get copyWith =>
      __$$DataBahasaImplCopyWithImpl<_$DataBahasaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataBahasaImplToJson(
      this,
    );
  }
}

abstract class _DataBahasa implements DataBahasa {
  const factory _DataBahasa(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_kary_id") final int? mKaryId,
      @JsonKey(name: "m_comp_id") final int? mCompId,
      @JsonKey(name: "m_dir_id") final int? mDirId,
      @JsonKey(name: "bhs_dikuasai") final String? bhsDikuasai,
      @JsonKey(name: "nilai_lisan") final int? nilaiLisan,
      @JsonKey(name: "nilai_tertulis") final int? nilaiTertulis,
      @JsonKey(name: "level_lisan") final dynamic levelLisan,
      @JsonKey(name: "level_tertulis") final dynamic levelTertulis,
      @JsonKey(name: "desc") final dynamic desc,
      @JsonKey(name: "creator_id") final int? creatorId,
      @JsonKey(name: "last_editor_id") final int? lastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$DataBahasaImpl;

  factory _DataBahasa.fromJson(Map<String, dynamic> json) =
      _$DataBahasaImpl.fromJson;

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
  @JsonKey(name: "bhs_dikuasai")
  String? get bhsDikuasai;
  @override
  @JsonKey(name: "nilai_lisan")
  int? get nilaiLisan;
  @override
  @JsonKey(name: "nilai_tertulis")
  int? get nilaiTertulis;
  @override
  @JsonKey(name: "level_lisan")
  dynamic get levelLisan;
  @override
  @JsonKey(name: "level_tertulis")
  dynamic get levelTertulis;
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
  @JsonKey(ignore: true)
  _$$DataBahasaImplCopyWith<_$DataBahasaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

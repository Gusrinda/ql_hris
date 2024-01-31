// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseCheckVersion _$ResponseCheckVersionFromJson(Map<String, dynamic> json) {
  return _ResponseCheckVersion.fromJson(json);
}

/// @nodoc
mixin _$ResponseCheckVersion {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataVersion? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCheckVersionCopyWith<ResponseCheckVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCheckVersionCopyWith<$Res> {
  factory $ResponseCheckVersionCopyWith(ResponseCheckVersion value,
          $Res Function(ResponseCheckVersion) then) =
      _$ResponseCheckVersionCopyWithImpl<$Res, ResponseCheckVersion>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataVersion? data});

  $DataVersionCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseCheckVersionCopyWithImpl<$Res,
        $Val extends ResponseCheckVersion>
    implements $ResponseCheckVersionCopyWith<$Res> {
  _$ResponseCheckVersionCopyWithImpl(this._value, this._then);

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
              as DataVersion?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataVersionCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataVersionCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseCheckVersionImplCopyWith<$Res>
    implements $ResponseCheckVersionCopyWith<$Res> {
  factory _$$ResponseCheckVersionImplCopyWith(_$ResponseCheckVersionImpl value,
          $Res Function(_$ResponseCheckVersionImpl) then) =
      __$$ResponseCheckVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataVersion? data});

  @override
  $DataVersionCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseCheckVersionImplCopyWithImpl<$Res>
    extends _$ResponseCheckVersionCopyWithImpl<$Res, _$ResponseCheckVersionImpl>
    implements _$$ResponseCheckVersionImplCopyWith<$Res> {
  __$$ResponseCheckVersionImplCopyWithImpl(_$ResponseCheckVersionImpl _value,
      $Res Function(_$ResponseCheckVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseCheckVersionImpl(
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
              as DataVersion?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCheckVersionImpl implements _ResponseCheckVersion {
  const _$ResponseCheckVersionImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$ResponseCheckVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCheckVersionImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final DataVersion? data;

  @override
  String toString() {
    return 'ResponseCheckVersion(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCheckVersionImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCheckVersionImplCopyWith<_$ResponseCheckVersionImpl>
      get copyWith =>
          __$$ResponseCheckVersionImplCopyWithImpl<_$ResponseCheckVersionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCheckVersionImplToJson(
      this,
    );
  }
}

abstract class _ResponseCheckVersion implements ResponseCheckVersion {
  const factory _ResponseCheckVersion(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataVersion? data}) =
      _$ResponseCheckVersionImpl;

  factory _ResponseCheckVersion.fromJson(Map<String, dynamic> json) =
      _$ResponseCheckVersionImpl.fromJson;

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
  DataVersion? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseCheckVersionImplCopyWith<_$ResponseCheckVersionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataVersion _$DataVersionFromJson(Map<String, dynamic> json) {
  return _DataVersion.fromJson(json);
}

/// @nodoc
mixin _$DataVersion {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "comp_id")
  int? get compId => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  dynamic get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataVersionCopyWith<DataVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataVersionCopyWith<$Res> {
  factory $DataVersionCopyWith(
          DataVersion value, $Res Function(DataVersion) then) =
      _$DataVersionCopyWithImpl<$Res, DataVersion>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "comp_id") int? compId,
      @JsonKey(name: "version") String? version,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "link") String? link,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") dynamic updatedAt});
}

/// @nodoc
class _$DataVersionCopyWithImpl<$Res, $Val extends DataVersion>
    implements $DataVersionCopyWith<$Res> {
  _$DataVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? compId = freezed,
    Object? version = freezed,
    Object? note = freezed,
    Object? link = freezed,
    Object? type = freezed,
    Object? isActive = freezed,
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
      compId: freezed == compId
          ? _value.compId
          : compId // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataVersionImplCopyWith<$Res>
    implements $DataVersionCopyWith<$Res> {
  factory _$$DataVersionImplCopyWith(
          _$DataVersionImpl value, $Res Function(_$DataVersionImpl) then) =
      __$$DataVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "comp_id") int? compId,
      @JsonKey(name: "version") String? version,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "link") String? link,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") dynamic updatedAt});
}

/// @nodoc
class __$$DataVersionImplCopyWithImpl<$Res>
    extends _$DataVersionCopyWithImpl<$Res, _$DataVersionImpl>
    implements _$$DataVersionImplCopyWith<$Res> {
  __$$DataVersionImplCopyWithImpl(
      _$DataVersionImpl _value, $Res Function(_$DataVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? compId = freezed,
    Object? version = freezed,
    Object? note = freezed,
    Object? link = freezed,
    Object? type = freezed,
    Object? isActive = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataVersionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      compId: freezed == compId
          ? _value.compId
          : compId // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataVersionImpl implements _DataVersion {
  const _$DataVersionImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "comp_id") this.compId,
      @JsonKey(name: "version") this.version,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "link") this.link,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$DataVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataVersionImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "comp_id")
  final int? compId;
  @override
  @JsonKey(name: "version")
  final String? version;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "link")
  final String? link;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
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
  final dynamic updatedAt;

  @override
  String toString() {
    return 'DataVersion(id: $id, compId: $compId, version: $version, note: $note, link: $link, type: $type, isActive: $isActive, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataVersionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.compId, compId) || other.compId == compId) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality()
                .equals(other.lastEditorId, lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      compId,
      version,
      note,
      link,
      type,
      isActive,
      creatorId,
      const DeepCollectionEquality().hash(lastEditorId),
      createdAt,
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataVersionImplCopyWith<_$DataVersionImpl> get copyWith =>
      __$$DataVersionImplCopyWithImpl<_$DataVersionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataVersionImplToJson(
      this,
    );
  }
}

abstract class _DataVersion implements DataVersion {
  const factory _DataVersion(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "comp_id") final int? compId,
          @JsonKey(name: "version") final String? version,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "link") final String? link,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "is_active") final bool? isActive,
          @JsonKey(name: "creator_id") final int? creatorId,
          @JsonKey(name: "last_editor_id") final dynamic lastEditorId,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final dynamic updatedAt}) =
      _$DataVersionImpl;

  factory _DataVersion.fromJson(Map<String, dynamic> json) =
      _$DataVersionImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "comp_id")
  int? get compId;
  @override
  @JsonKey(name: "version")
  String? get version;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "link")
  String? get link;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
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
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataVersionImplCopyWith<_$DataVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

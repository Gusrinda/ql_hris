// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_cuti_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCutiModel _$AddCutiModelFromJson(Map<String, dynamic> json) {
  return _AddCutiModel.fromJson(json);
}

/// @nodoc
mixin _$AddCutiModel {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "success")
  List<String>? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "errors")
  List<dynamic>? get errors => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "processed_time")
  double? get processedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCutiModelCopyWith<AddCutiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCutiModelCopyWith<$Res> {
  factory $AddCutiModelCopyWith(
          AddCutiModel value, $Res Function(AddCutiModel) then) =
      _$AddCutiModelCopyWithImpl<$Res, AddCutiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "success") List<String>? success,
      @JsonKey(name: "errors") List<dynamic>? errors,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "processed_time") double? processedTime});
}

/// @nodoc
class _$AddCutiModelCopyWithImpl<$Res, $Val extends AddCutiModel>
    implements $AddCutiModelCopyWith<$Res> {
  _$AddCutiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? success = freezed,
    Object? errors = freezed,
    Object? id = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCutiModelImplCopyWith<$Res>
    implements $AddCutiModelCopyWith<$Res> {
  factory _$$AddCutiModelImplCopyWith(
          _$AddCutiModelImpl value, $Res Function(_$AddCutiModelImpl) then) =
      __$$AddCutiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "success") List<String>? success,
      @JsonKey(name: "errors") List<dynamic>? errors,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "processed_time") double? processedTime});
}

/// @nodoc
class __$$AddCutiModelImplCopyWithImpl<$Res>
    extends _$AddCutiModelCopyWithImpl<$Res, _$AddCutiModelImpl>
    implements _$$AddCutiModelImplCopyWith<$Res> {
  __$$AddCutiModelImplCopyWithImpl(
      _$AddCutiModelImpl _value, $Res Function(_$AddCutiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? success = freezed,
    Object? errors = freezed,
    Object? id = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_$AddCutiModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value._success
          : success // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCutiModelImpl implements _AddCutiModel {
  const _$AddCutiModelImpl(
      {@JsonKey(name: "message") this.message,
      @JsonKey(name: "success") final List<String>? success,
      @JsonKey(name: "errors") final List<dynamic>? errors,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "processed_time") this.processedTime})
      : _success = success,
        _errors = errors;

  factory _$AddCutiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCutiModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  final List<String>? _success;
  @override
  @JsonKey(name: "success")
  List<String>? get success {
    final value = _success;
    if (value == null) return null;
    if (_success is EqualUnmodifiableListView) return _success;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _errors;
  @override
  @JsonKey(name: "errors")
  List<dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "processed_time")
  final double? processedTime;

  @override
  String toString() {
    return 'AddCutiModel(message: $message, success: $success, errors: $errors, id: $id, processedTime: $processedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCutiModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._success, _success) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.processedTime, processedTime) ||
                other.processedTime == processedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_success),
      const DeepCollectionEquality().hash(_errors),
      id,
      processedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCutiModelImplCopyWith<_$AddCutiModelImpl> get copyWith =>
      __$$AddCutiModelImplCopyWithImpl<_$AddCutiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCutiModelImplToJson(
      this,
    );
  }
}

abstract class _AddCutiModel implements AddCutiModel {
  const factory _AddCutiModel(
          {@JsonKey(name: "message") final String? message,
          @JsonKey(name: "success") final List<String>? success,
          @JsonKey(name: "errors") final List<dynamic>? errors,
          @JsonKey(name: "id") final int? id,
          @JsonKey(name: "processed_time") final double? processedTime}) =
      _$AddCutiModelImpl;

  factory _AddCutiModel.fromJson(Map<String, dynamic> json) =
      _$AddCutiModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "success")
  List<String>? get success;
  @override
  @JsonKey(name: "errors")
  List<dynamic>? get errors;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "processed_time")
  double? get processedTime;
  @override
  @JsonKey(ignore: true)
  _$$AddCutiModelImplCopyWith<_$AddCutiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

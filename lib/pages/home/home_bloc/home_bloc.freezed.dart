// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetBirthday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetBirthday value) onGetBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetBirthday value)? onGetBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetBirthday value)? onGetBirthday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGetBirthdayImplCopyWith<$Res> {
  factory _$$OnGetBirthdayImplCopyWith(
          _$OnGetBirthdayImpl value, $Res Function(_$OnGetBirthdayImpl) then) =
      __$$OnGetBirthdayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetBirthdayImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnGetBirthdayImpl>
    implements _$$OnGetBirthdayImplCopyWith<$Res> {
  __$$OnGetBirthdayImplCopyWithImpl(
      _$OnGetBirthdayImpl _value, $Res Function(_$OnGetBirthdayImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGetBirthdayImpl implements OnGetBirthday {
  const _$OnGetBirthdayImpl();

  @override
  String toString() {
    return 'HomeEvent.onGetBirthday()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetBirthdayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetBirthday,
  }) {
    return onGetBirthday();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetBirthday,
  }) {
    return onGetBirthday?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetBirthday,
    required TResult orElse(),
  }) {
    if (onGetBirthday != null) {
      return onGetBirthday();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetBirthday value) onGetBirthday,
  }) {
    return onGetBirthday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetBirthday value)? onGetBirthday,
  }) {
    return onGetBirthday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetBirthday value)? onGetBirthday,
    required TResult orElse(),
  }) {
    if (onGetBirthday != null) {
      return onGetBirthday(this);
    }
    return orElse();
  }
}

abstract class OnGetBirthday implements HomeEvent {
  const factory OnGetBirthday() = _$OnGetBirthdayImpl;
}

/// @nodoc
mixin _$HomeState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  ResponseAllKaryawan? get responseDataKaryawan =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      ResponseAllKaryawan? responseDataKaryawan,
      String? errorMessage});

  $ResponseAllKaryawanCopyWith<$Res>? get responseDataKaryawan;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? responseDataKaryawan = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      responseDataKaryawan: freezed == responseDataKaryawan
          ? _value.responseDataKaryawan
          : responseDataKaryawan // ignore: cast_nullable_to_non_nullable
              as ResponseAllKaryawan?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseAllKaryawanCopyWith<$Res>? get responseDataKaryawan {
    if (_value.responseDataKaryawan == null) {
      return null;
    }

    return $ResponseAllKaryawanCopyWith<$Res>(_value.responseDataKaryawan!,
        (value) {
      return _then(_value.copyWith(responseDataKaryawan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      ResponseAllKaryawan? responseDataKaryawan,
      String? errorMessage});

  @override
  $ResponseAllKaryawanCopyWith<$Res>? get responseDataKaryawan;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? responseDataKaryawan = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      responseDataKaryawan: freezed == responseDataKaryawan
          ? _value.responseDataKaryawan
          : responseDataKaryawan // ignore: cast_nullable_to_non_nullable
              as ResponseAllKaryawan?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.status = FormzSubmissionStatus.initial,
      this.responseDataKaryawan,
      this.errorMessage});

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  final ResponseAllKaryawan? responseDataKaryawan;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeState(status: $status, responseDataKaryawan: $responseDataKaryawan, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.responseDataKaryawan, responseDataKaryawan) ||
                other.responseDataKaryawan == responseDataKaryawan) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, responseDataKaryawan, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final FormzSubmissionStatus status,
      final ResponseAllKaryawan? responseDataKaryawan,
      final String? errorMessage}) = _$HomeStateImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  ResponseAllKaryawan? get responseDataKaryawan;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

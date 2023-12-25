// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_detail_approval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseDetailApproval _$ResponseDetailApprovalFromJson(
    Map<String, dynamic> json) {
  return _ResponseDetailApproval.fromJson(json);
}

/// @nodoc
mixin _$ResponseDetailApproval {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataDetailApproval? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDetailApprovalCopyWith<ResponseDetailApproval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDetailApprovalCopyWith<$Res> {
  factory $ResponseDetailApprovalCopyWith(ResponseDetailApproval value,
          $Res Function(ResponseDetailApproval) then) =
      _$ResponseDetailApprovalCopyWithImpl<$Res, ResponseDetailApproval>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataDetailApproval? data});

  $DataDetailApprovalCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseDetailApprovalCopyWithImpl<$Res,
        $Val extends ResponseDetailApproval>
    implements $ResponseDetailApprovalCopyWith<$Res> {
  _$ResponseDetailApprovalCopyWithImpl(this._value, this._then);

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
              as DataDetailApproval?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDetailApprovalCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataDetailApprovalCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDetailApprovalImplCopyWith<$Res>
    implements $ResponseDetailApprovalCopyWith<$Res> {
  factory _$$ResponseDetailApprovalImplCopyWith(
          _$ResponseDetailApprovalImpl value,
          $Res Function(_$ResponseDetailApprovalImpl) then) =
      __$$ResponseDetailApprovalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataDetailApproval? data});

  @override
  $DataDetailApprovalCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseDetailApprovalImplCopyWithImpl<$Res>
    extends _$ResponseDetailApprovalCopyWithImpl<$Res,
        _$ResponseDetailApprovalImpl>
    implements _$$ResponseDetailApprovalImplCopyWith<$Res> {
  __$$ResponseDetailApprovalImplCopyWithImpl(
      _$ResponseDetailApprovalImpl _value,
      $Res Function(_$ResponseDetailApprovalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDetailApprovalImpl(
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
              as DataDetailApproval?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDetailApprovalImpl implements _ResponseDetailApproval {
  const _$ResponseDetailApprovalImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$ResponseDetailApprovalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDetailApprovalImplFromJson(json);

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
  final DataDetailApproval? data;

  @override
  String toString() {
    return 'ResponseDetailApproval(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDetailApprovalImpl &&
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
  _$$ResponseDetailApprovalImplCopyWith<_$ResponseDetailApprovalImpl>
      get copyWith => __$$ResponseDetailApprovalImplCopyWithImpl<
          _$ResponseDetailApprovalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDetailApprovalImplToJson(
      this,
    );
  }
}

abstract class _ResponseDetailApproval implements ResponseDetailApproval {
  const factory _ResponseDetailApproval(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataDetailApproval? data}) =
      _$ResponseDetailApprovalImpl;

  factory _ResponseDetailApproval.fromJson(Map<String, dynamic> json) =
      _$ResponseDetailApprovalImpl.fromJson;

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
  DataDetailApproval? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDetailApprovalImplCopyWith<_$ResponseDetailApprovalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataDetailApproval _$DataDetailApprovalFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$DataDetailApproval {
  @JsonKey(name: "approval")
  Approval? get approval => throw _privateConstructorUsedError;
  @JsonKey(name: "approval_log")
  List<ApprovalLog>? get approvalLog => throw _privateConstructorUsedError;
  @JsonKey(name: "trx")
  Trx? get trx => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDetailApprovalCopyWith<DataDetailApproval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDetailApprovalCopyWith<$Res> {
  factory $DataDetailApprovalCopyWith(
          DataDetailApproval value, $Res Function(DataDetailApproval) then) =
      _$DataDetailApprovalCopyWithImpl<$Res, DataDetailApproval>;
  @useResult
  $Res call(
      {@JsonKey(name: "approval") Approval? approval,
      @JsonKey(name: "approval_log") List<ApprovalLog>? approvalLog,
      @JsonKey(name: "trx") Trx? trx});

  $ApprovalCopyWith<$Res>? get approval;
  $TrxCopyWith<$Res>? get trx;
}

/// @nodoc
class _$DataDetailApprovalCopyWithImpl<$Res, $Val extends DataDetailApproval>
    implements $DataDetailApprovalCopyWith<$Res> {
  _$DataDetailApprovalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approval = freezed,
    Object? approvalLog = freezed,
    Object? trx = freezed,
  }) {
    return _then(_value.copyWith(
      approval: freezed == approval
          ? _value.approval
          : approval // ignore: cast_nullable_to_non_nullable
              as Approval?,
      approvalLog: freezed == approvalLog
          ? _value.approvalLog
          : approvalLog // ignore: cast_nullable_to_non_nullable
              as List<ApprovalLog>?,
      trx: freezed == trx
          ? _value.trx
          : trx // ignore: cast_nullable_to_non_nullable
              as Trx?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApprovalCopyWith<$Res>? get approval {
    if (_value.approval == null) {
      return null;
    }

    return $ApprovalCopyWith<$Res>(_value.approval!, (value) {
      return _then(_value.copyWith(approval: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TrxCopyWith<$Res>? get trx {
    if (_value.trx == null) {
      return null;
    }

    return $TrxCopyWith<$Res>(_value.trx!, (value) {
      return _then(_value.copyWith(trx: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $DataDetailApprovalCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "approval") Approval? approval,
      @JsonKey(name: "approval_log") List<ApprovalLog>? approvalLog,
      @JsonKey(name: "trx") Trx? trx});

  @override
  $ApprovalCopyWith<$Res>? get approval;
  @override
  $TrxCopyWith<$Res>? get trx;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataDetailApprovalCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approval = freezed,
    Object? approvalLog = freezed,
    Object? trx = freezed,
  }) {
    return _then(_$DataImpl(
      approval: freezed == approval
          ? _value.approval
          : approval // ignore: cast_nullable_to_non_nullable
              as Approval?,
      approvalLog: freezed == approvalLog
          ? _value._approvalLog
          : approvalLog // ignore: cast_nullable_to_non_nullable
              as List<ApprovalLog>?,
      trx: freezed == trx
          ? _value.trx
          : trx // ignore: cast_nullable_to_non_nullable
              as Trx?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "approval") this.approval,
      @JsonKey(name: "approval_log") final List<ApprovalLog>? approvalLog,
      @JsonKey(name: "trx") this.trx})
      : _approvalLog = approvalLog;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "approval")
  final Approval? approval;
  final List<ApprovalLog>? _approvalLog;
  @override
  @JsonKey(name: "approval_log")
  List<ApprovalLog>? get approvalLog {
    final value = _approvalLog;
    if (value == null) return null;
    if (_approvalLog is EqualUnmodifiableListView) return _approvalLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "trx")
  final Trx? trx;

  @override
  String toString() {
    return 'DataDetailApproval(approval: $approval, approvalLog: $approvalLog, trx: $trx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.approval, approval) ||
                other.approval == approval) &&
            const DeepCollectionEquality()
                .equals(other._approvalLog, _approvalLog) &&
            (identical(other.trx, trx) || other.trx == trx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, approval,
      const DeepCollectionEquality().hash(_approvalLog), trx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements DataDetailApproval {
  const factory _Data(
      {@JsonKey(name: "approval") final Approval? approval,
      @JsonKey(name: "approval_log") final List<ApprovalLog>? approvalLog,
      @JsonKey(name: "trx") final Trx? trx}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "approval")
  Approval? get approval;
  @override
  @JsonKey(name: "approval_log")
  List<ApprovalLog>? get approvalLog;
  @override
  @JsonKey(name: "trx")
  Trx? get trx;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Approval _$ApprovalFromJson(Map<String, dynamic> json) {
  return _Approval.fromJson(json);
}

/// @nodoc
mixin _$Approval {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "nomor")
  String? get nomor => throw _privateConstructorUsedError;
  @JsonKey(name: "m_approval_id")
  int? get mApprovalId => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_id")
  int? get trxId => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_name")
  String? get trxName => throw _privateConstructorUsedError;
  @JsonKey(name: "form_name")
  String? get formName => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_table")
  String? get trxTable => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_nomor")
  String? get trxNomor => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_date")
  DateTime? get trxDate => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_object")
  dynamic get trxObject => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_creator_id")
  int? get trxCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  dynamic get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "creator")
  String? get creator => throw _privateConstructorUsedError;
  @JsonKey(name: "tahap_saat_ini")
  int? get tahapSaatIni => throw _privateConstructorUsedError;
  @JsonKey(name: "tahap_total")
  int? get tahapTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApprovalCopyWith<Approval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalCopyWith<$Res> {
  factory $ApprovalCopyWith(Approval value, $Res Function(Approval) then) =
      _$ApprovalCopyWithImpl<$Res, Approval>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "m_approval_id") int? mApprovalId,
      @JsonKey(name: "trx_id") int? trxId,
      @JsonKey(name: "trx_name") String? trxName,
      @JsonKey(name: "form_name") String? formName,
      @JsonKey(name: "trx_table") String? trxTable,
      @JsonKey(name: "trx_nomor") String? trxNomor,
      @JsonKey(name: "trx_date") DateTime? trxDate,
      @JsonKey(name: "trx_object") dynamic trxObject,
      @JsonKey(name: "trx_creator_id") int? trxCreatorId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "creator") String? creator,
      @JsonKey(name: "tahap_saat_ini") int? tahapSaatIni,
      @JsonKey(name: "tahap_total") int? tahapTotal});
}

/// @nodoc
class _$ApprovalCopyWithImpl<$Res, $Val extends Approval>
    implements $ApprovalCopyWith<$Res> {
  _$ApprovalCopyWithImpl(this._value, this._then);

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
    Object? nomor = freezed,
    Object? mApprovalId = freezed,
    Object? trxId = freezed,
    Object? trxName = freezed,
    Object? formName = freezed,
    Object? trxTable = freezed,
    Object? trxNomor = freezed,
    Object? trxDate = freezed,
    Object? trxObject = freezed,
    Object? trxCreatorId = freezed,
    Object? status = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? creator = freezed,
    Object? tahapSaatIni = freezed,
    Object? tahapTotal = freezed,
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
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      mApprovalId: freezed == mApprovalId
          ? _value.mApprovalId
          : mApprovalId // ignore: cast_nullable_to_non_nullable
              as int?,
      trxId: freezed == trxId
          ? _value.trxId
          : trxId // ignore: cast_nullable_to_non_nullable
              as int?,
      trxName: freezed == trxName
          ? _value.trxName
          : trxName // ignore: cast_nullable_to_non_nullable
              as String?,
      formName: freezed == formName
          ? _value.formName
          : formName // ignore: cast_nullable_to_non_nullable
              as String?,
      trxTable: freezed == trxTable
          ? _value.trxTable
          : trxTable // ignore: cast_nullable_to_non_nullable
              as String?,
      trxNomor: freezed == trxNomor
          ? _value.trxNomor
          : trxNomor // ignore: cast_nullable_to_non_nullable
              as String?,
      trxDate: freezed == trxDate
          ? _value.trxDate
          : trxDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trxObject: freezed == trxObject
          ? _value.trxObject
          : trxObject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trxCreatorId: freezed == trxCreatorId
          ? _value.trxCreatorId
          : trxCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      tahapSaatIni: freezed == tahapSaatIni
          ? _value.tahapSaatIni
          : tahapSaatIni // ignore: cast_nullable_to_non_nullable
              as int?,
      tahapTotal: freezed == tahapTotal
          ? _value.tahapTotal
          : tahapTotal // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApprovalImplCopyWith<$Res>
    implements $ApprovalCopyWith<$Res> {
  factory _$$ApprovalImplCopyWith(
          _$ApprovalImpl value, $Res Function(_$ApprovalImpl) then) =
      __$$ApprovalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "m_approval_id") int? mApprovalId,
      @JsonKey(name: "trx_id") int? trxId,
      @JsonKey(name: "trx_name") String? trxName,
      @JsonKey(name: "form_name") String? formName,
      @JsonKey(name: "trx_table") String? trxTable,
      @JsonKey(name: "trx_nomor") String? trxNomor,
      @JsonKey(name: "trx_date") DateTime? trxDate,
      @JsonKey(name: "trx_object") dynamic trxObject,
      @JsonKey(name: "trx_creator_id") int? trxCreatorId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "creator") String? creator,
      @JsonKey(name: "tahap_saat_ini") int? tahapSaatIni,
      @JsonKey(name: "tahap_total") int? tahapTotal});
}

/// @nodoc
class __$$ApprovalImplCopyWithImpl<$Res>
    extends _$ApprovalCopyWithImpl<$Res, _$ApprovalImpl>
    implements _$$ApprovalImplCopyWith<$Res> {
  __$$ApprovalImplCopyWithImpl(
      _$ApprovalImpl _value, $Res Function(_$ApprovalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? nomor = freezed,
    Object? mApprovalId = freezed,
    Object? trxId = freezed,
    Object? trxName = freezed,
    Object? formName = freezed,
    Object? trxTable = freezed,
    Object? trxNomor = freezed,
    Object? trxDate = freezed,
    Object? trxObject = freezed,
    Object? trxCreatorId = freezed,
    Object? status = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? creator = freezed,
    Object? tahapSaatIni = freezed,
    Object? tahapTotal = freezed,
  }) {
    return _then(_$ApprovalImpl(
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
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      mApprovalId: freezed == mApprovalId
          ? _value.mApprovalId
          : mApprovalId // ignore: cast_nullable_to_non_nullable
              as int?,
      trxId: freezed == trxId
          ? _value.trxId
          : trxId // ignore: cast_nullable_to_non_nullable
              as int?,
      trxName: freezed == trxName
          ? _value.trxName
          : trxName // ignore: cast_nullable_to_non_nullable
              as String?,
      formName: freezed == formName
          ? _value.formName
          : formName // ignore: cast_nullable_to_non_nullable
              as String?,
      trxTable: freezed == trxTable
          ? _value.trxTable
          : trxTable // ignore: cast_nullable_to_non_nullable
              as String?,
      trxNomor: freezed == trxNomor
          ? _value.trxNomor
          : trxNomor // ignore: cast_nullable_to_non_nullable
              as String?,
      trxDate: freezed == trxDate
          ? _value.trxDate
          : trxDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trxObject: freezed == trxObject
          ? _value.trxObject
          : trxObject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trxCreatorId: freezed == trxCreatorId
          ? _value.trxCreatorId
          : trxCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      tahapSaatIni: freezed == tahapSaatIni
          ? _value.tahapSaatIni
          : tahapSaatIni // ignore: cast_nullable_to_non_nullable
              as int?,
      tahapTotal: freezed == tahapTotal
          ? _value.tahapTotal
          : tahapTotal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApprovalImpl implements _Approval {
  const _$ApprovalImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "nomor") this.nomor,
      @JsonKey(name: "m_approval_id") this.mApprovalId,
      @JsonKey(name: "trx_id") this.trxId,
      @JsonKey(name: "trx_name") this.trxName,
      @JsonKey(name: "form_name") this.formName,
      @JsonKey(name: "trx_table") this.trxTable,
      @JsonKey(name: "trx_nomor") this.trxNomor,
      @JsonKey(name: "trx_date") this.trxDate,
      @JsonKey(name: "trx_object") this.trxObject,
      @JsonKey(name: "trx_creator_id") this.trxCreatorId,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "creator") this.creator,
      @JsonKey(name: "tahap_saat_ini") this.tahapSaatIni,
      @JsonKey(name: "tahap_total") this.tahapTotal});

  factory _$ApprovalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalImplFromJson(json);

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
  @JsonKey(name: "nomor")
  final String? nomor;
  @override
  @JsonKey(name: "m_approval_id")
  final int? mApprovalId;
  @override
  @JsonKey(name: "trx_id")
  final int? trxId;
  @override
  @JsonKey(name: "trx_name")
  final String? trxName;
  @override
  @JsonKey(name: "form_name")
  final String? formName;
  @override
  @JsonKey(name: "trx_table")
  final String? trxTable;
  @override
  @JsonKey(name: "trx_nomor")
  final String? trxNomor;
  @override
  @JsonKey(name: "trx_date")
  final DateTime? trxDate;
  @override
  @JsonKey(name: "trx_object")
  final dynamic trxObject;
  @override
  @JsonKey(name: "trx_creator_id")
  final int? trxCreatorId;
  @override
  @JsonKey(name: "status")
  final String? status;
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
  @JsonKey(name: "creator")
  final String? creator;
  @override
  @JsonKey(name: "tahap_saat_ini")
  final int? tahapSaatIni;
  @override
  @JsonKey(name: "tahap_total")
  final int? tahapTotal;

  @override
  String toString() {
    return 'Approval(id: $id, mCompId: $mCompId, mDirId: $mDirId, nomor: $nomor, mApprovalId: $mApprovalId, trxId: $trxId, trxName: $trxName, formName: $formName, trxTable: $trxTable, trxNomor: $trxNomor, trxDate: $trxDate, trxObject: $trxObject, trxCreatorId: $trxCreatorId, status: $status, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, creator: $creator, tahapSaatIni: $tahapSaatIni, tahapTotal: $tahapTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mCompId, mCompId) || other.mCompId == mCompId) &&
            (identical(other.mDirId, mDirId) || other.mDirId == mDirId) &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.mApprovalId, mApprovalId) ||
                other.mApprovalId == mApprovalId) &&
            (identical(other.trxId, trxId) || other.trxId == trxId) &&
            (identical(other.trxName, trxName) || other.trxName == trxName) &&
            (identical(other.formName, formName) ||
                other.formName == formName) &&
            (identical(other.trxTable, trxTable) ||
                other.trxTable == trxTable) &&
            (identical(other.trxNomor, trxNomor) ||
                other.trxNomor == trxNomor) &&
            (identical(other.trxDate, trxDate) || other.trxDate == trxDate) &&
            const DeepCollectionEquality().equals(other.trxObject, trxObject) &&
            (identical(other.trxCreatorId, trxCreatorId) ||
                other.trxCreatorId == trxCreatorId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality()
                .equals(other.lastEditorId, lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.tahapSaatIni, tahapSaatIni) ||
                other.tahapSaatIni == tahapSaatIni) &&
            (identical(other.tahapTotal, tahapTotal) ||
                other.tahapTotal == tahapTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        mCompId,
        mDirId,
        nomor,
        mApprovalId,
        trxId,
        trxName,
        formName,
        trxTable,
        trxNomor,
        trxDate,
        const DeepCollectionEquality().hash(trxObject),
        trxCreatorId,
        status,
        creatorId,
        const DeepCollectionEquality().hash(lastEditorId),
        createdAt,
        updatedAt,
        creator,
        tahapSaatIni,
        tahapTotal
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalImplCopyWith<_$ApprovalImpl> get copyWith =>
      __$$ApprovalImplCopyWithImpl<_$ApprovalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalImplToJson(
      this,
    );
  }
}

abstract class _Approval implements Approval {
  const factory _Approval(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_comp_id") final int? mCompId,
      @JsonKey(name: "m_dir_id") final int? mDirId,
      @JsonKey(name: "nomor") final String? nomor,
      @JsonKey(name: "m_approval_id") final int? mApprovalId,
      @JsonKey(name: "trx_id") final int? trxId,
      @JsonKey(name: "trx_name") final String? trxName,
      @JsonKey(name: "form_name") final String? formName,
      @JsonKey(name: "trx_table") final String? trxTable,
      @JsonKey(name: "trx_nomor") final String? trxNomor,
      @JsonKey(name: "trx_date") final DateTime? trxDate,
      @JsonKey(name: "trx_object") final dynamic trxObject,
      @JsonKey(name: "trx_creator_id") final int? trxCreatorId,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "creator_id") final int? creatorId,
      @JsonKey(name: "last_editor_id") final dynamic lastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "creator") final String? creator,
      @JsonKey(name: "tahap_saat_ini") final int? tahapSaatIni,
      @JsonKey(name: "tahap_total") final int? tahapTotal}) = _$ApprovalImpl;

  factory _Approval.fromJson(Map<String, dynamic> json) =
      _$ApprovalImpl.fromJson;

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
  @JsonKey(name: "nomor")
  String? get nomor;
  @override
  @JsonKey(name: "m_approval_id")
  int? get mApprovalId;
  @override
  @JsonKey(name: "trx_id")
  int? get trxId;
  @override
  @JsonKey(name: "trx_name")
  String? get trxName;
  @override
  @JsonKey(name: "form_name")
  String? get formName;
  @override
  @JsonKey(name: "trx_table")
  String? get trxTable;
  @override
  @JsonKey(name: "trx_nomor")
  String? get trxNomor;
  @override
  @JsonKey(name: "trx_date")
  DateTime? get trxDate;
  @override
  @JsonKey(name: "trx_object")
  dynamic get trxObject;
  @override
  @JsonKey(name: "trx_creator_id")
  int? get trxCreatorId;
  @override
  @JsonKey(name: "status")
  String? get status;
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
  @JsonKey(name: "creator")
  String? get creator;
  @override
  @JsonKey(name: "tahap_saat_ini")
  int? get tahapSaatIni;
  @override
  @JsonKey(name: "tahap_total")
  int? get tahapTotal;
  @override
  @JsonKey(ignore: true)
  _$$ApprovalImplCopyWith<_$ApprovalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApprovalLog _$ApprovalLogFromJson(Map<String, dynamic> json) {
  return _ApprovalLog.fromJson(json);
}

/// @nodoc
mixin _$ApprovalLog {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  dynamic get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  dynamic get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "nomor")
  String? get nomor => throw _privateConstructorUsedError;
  @JsonKey(name: "generate_approval_id")
  int? get generateApprovalId => throw _privateConstructorUsedError;
  @JsonKey(name: "generate_approval_det_id")
  int? get generateApprovalDetId => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_table")
  String? get trxTable => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_id")
  int? get trxId => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_name")
  String? get trxName => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_nomor")
  String? get trxNomor => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_date")
  DateTime? get trxDate => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_object")
  dynamic get trxObject => throw _privateConstructorUsedError;
  @JsonKey(name: "trx_creator_id")
  int? get trxCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "action_type")
  String? get actionType => throw _privateConstructorUsedError;
  @JsonKey(name: "action_user_id")
  int? get actionUserId => throw _privateConstructorUsedError;
  @JsonKey(name: "action_at")
  String? get actionAt => throw _privateConstructorUsedError;
  @JsonKey(name: "action_note")
  String? get actionNote => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  dynamic get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "action_user")
  String? get actionUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApprovalLogCopyWith<ApprovalLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalLogCopyWith<$Res> {
  factory $ApprovalLogCopyWith(
          ApprovalLog value, $Res Function(ApprovalLog) then) =
      _$ApprovalLogCopyWithImpl<$Res, ApprovalLog>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") dynamic mCompId,
      @JsonKey(name: "m_dir_id") dynamic mDirId,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "generate_approval_id") int? generateApprovalId,
      @JsonKey(name: "generate_approval_det_id") int? generateApprovalDetId,
      @JsonKey(name: "trx_table") String? trxTable,
      @JsonKey(name: "trx_id") int? trxId,
      @JsonKey(name: "trx_name") String? trxName,
      @JsonKey(name: "trx_nomor") String? trxNomor,
      @JsonKey(name: "trx_date") DateTime? trxDate,
      @JsonKey(name: "trx_object") dynamic trxObject,
      @JsonKey(name: "trx_creator_id") int? trxCreatorId,
      @JsonKey(name: "action_type") String? actionType,
      @JsonKey(name: "action_user_id") int? actionUserId,
      @JsonKey(name: "action_at") String? actionAt,
      @JsonKey(name: "action_note") String? actionNote,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "action_user") String? actionUser});
}

/// @nodoc
class _$ApprovalLogCopyWithImpl<$Res, $Val extends ApprovalLog>
    implements $ApprovalLogCopyWith<$Res> {
  _$ApprovalLogCopyWithImpl(this._value, this._then);

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
    Object? nomor = freezed,
    Object? generateApprovalId = freezed,
    Object? generateApprovalDetId = freezed,
    Object? trxTable = freezed,
    Object? trxId = freezed,
    Object? trxName = freezed,
    Object? trxNomor = freezed,
    Object? trxDate = freezed,
    Object? trxObject = freezed,
    Object? trxCreatorId = freezed,
    Object? actionType = freezed,
    Object? actionUserId = freezed,
    Object? actionAt = freezed,
    Object? actionNote = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? actionUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      generateApprovalId: freezed == generateApprovalId
          ? _value.generateApprovalId
          : generateApprovalId // ignore: cast_nullable_to_non_nullable
              as int?,
      generateApprovalDetId: freezed == generateApprovalDetId
          ? _value.generateApprovalDetId
          : generateApprovalDetId // ignore: cast_nullable_to_non_nullable
              as int?,
      trxTable: freezed == trxTable
          ? _value.trxTable
          : trxTable // ignore: cast_nullable_to_non_nullable
              as String?,
      trxId: freezed == trxId
          ? _value.trxId
          : trxId // ignore: cast_nullable_to_non_nullable
              as int?,
      trxName: freezed == trxName
          ? _value.trxName
          : trxName // ignore: cast_nullable_to_non_nullable
              as String?,
      trxNomor: freezed == trxNomor
          ? _value.trxNomor
          : trxNomor // ignore: cast_nullable_to_non_nullable
              as String?,
      trxDate: freezed == trxDate
          ? _value.trxDate
          : trxDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trxObject: freezed == trxObject
          ? _value.trxObject
          : trxObject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trxCreatorId: freezed == trxCreatorId
          ? _value.trxCreatorId
          : trxCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String?,
      actionUserId: freezed == actionUserId
          ? _value.actionUserId
          : actionUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      actionAt: freezed == actionAt
          ? _value.actionAt
          : actionAt // ignore: cast_nullable_to_non_nullable
              as String?,
      actionNote: freezed == actionNote
          ? _value.actionNote
          : actionNote // ignore: cast_nullable_to_non_nullable
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
      actionUser: freezed == actionUser
          ? _value.actionUser
          : actionUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApprovalLogImplCopyWith<$Res>
    implements $ApprovalLogCopyWith<$Res> {
  factory _$$ApprovalLogImplCopyWith(
          _$ApprovalLogImpl value, $Res Function(_$ApprovalLogImpl) then) =
      __$$ApprovalLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") dynamic mCompId,
      @JsonKey(name: "m_dir_id") dynamic mDirId,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "generate_approval_id") int? generateApprovalId,
      @JsonKey(name: "generate_approval_det_id") int? generateApprovalDetId,
      @JsonKey(name: "trx_table") String? trxTable,
      @JsonKey(name: "trx_id") int? trxId,
      @JsonKey(name: "trx_name") String? trxName,
      @JsonKey(name: "trx_nomor") String? trxNomor,
      @JsonKey(name: "trx_date") DateTime? trxDate,
      @JsonKey(name: "trx_object") dynamic trxObject,
      @JsonKey(name: "trx_creator_id") int? trxCreatorId,
      @JsonKey(name: "action_type") String? actionType,
      @JsonKey(name: "action_user_id") int? actionUserId,
      @JsonKey(name: "action_at") String? actionAt,
      @JsonKey(name: "action_note") String? actionNote,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "action_user") String? actionUser});
}

/// @nodoc
class __$$ApprovalLogImplCopyWithImpl<$Res>
    extends _$ApprovalLogCopyWithImpl<$Res, _$ApprovalLogImpl>
    implements _$$ApprovalLogImplCopyWith<$Res> {
  __$$ApprovalLogImplCopyWithImpl(
      _$ApprovalLogImpl _value, $Res Function(_$ApprovalLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? nomor = freezed,
    Object? generateApprovalId = freezed,
    Object? generateApprovalDetId = freezed,
    Object? trxTable = freezed,
    Object? trxId = freezed,
    Object? trxName = freezed,
    Object? trxNomor = freezed,
    Object? trxDate = freezed,
    Object? trxObject = freezed,
    Object? trxCreatorId = freezed,
    Object? actionType = freezed,
    Object? actionUserId = freezed,
    Object? actionAt = freezed,
    Object? actionNote = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? actionUser = freezed,
  }) {
    return _then(_$ApprovalLogImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      generateApprovalId: freezed == generateApprovalId
          ? _value.generateApprovalId
          : generateApprovalId // ignore: cast_nullable_to_non_nullable
              as int?,
      generateApprovalDetId: freezed == generateApprovalDetId
          ? _value.generateApprovalDetId
          : generateApprovalDetId // ignore: cast_nullable_to_non_nullable
              as int?,
      trxTable: freezed == trxTable
          ? _value.trxTable
          : trxTable // ignore: cast_nullable_to_non_nullable
              as String?,
      trxId: freezed == trxId
          ? _value.trxId
          : trxId // ignore: cast_nullable_to_non_nullable
              as int?,
      trxName: freezed == trxName
          ? _value.trxName
          : trxName // ignore: cast_nullable_to_non_nullable
              as String?,
      trxNomor: freezed == trxNomor
          ? _value.trxNomor
          : trxNomor // ignore: cast_nullable_to_non_nullable
              as String?,
      trxDate: freezed == trxDate
          ? _value.trxDate
          : trxDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trxObject: freezed == trxObject
          ? _value.trxObject
          : trxObject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trxCreatorId: freezed == trxCreatorId
          ? _value.trxCreatorId
          : trxCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String?,
      actionUserId: freezed == actionUserId
          ? _value.actionUserId
          : actionUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      actionAt: freezed == actionAt
          ? _value.actionAt
          : actionAt // ignore: cast_nullable_to_non_nullable
              as String?,
      actionNote: freezed == actionNote
          ? _value.actionNote
          : actionNote // ignore: cast_nullable_to_non_nullable
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
      actionUser: freezed == actionUser
          ? _value.actionUser
          : actionUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApprovalLogImpl implements _ApprovalLog {
  const _$ApprovalLogImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "nomor") this.nomor,
      @JsonKey(name: "generate_approval_id") this.generateApprovalId,
      @JsonKey(name: "generate_approval_det_id") this.generateApprovalDetId,
      @JsonKey(name: "trx_table") this.trxTable,
      @JsonKey(name: "trx_id") this.trxId,
      @JsonKey(name: "trx_name") this.trxName,
      @JsonKey(name: "trx_nomor") this.trxNomor,
      @JsonKey(name: "trx_date") this.trxDate,
      @JsonKey(name: "trx_object") this.trxObject,
      @JsonKey(name: "trx_creator_id") this.trxCreatorId,
      @JsonKey(name: "action_type") this.actionType,
      @JsonKey(name: "action_user_id") this.actionUserId,
      @JsonKey(name: "action_at") this.actionAt,
      @JsonKey(name: "action_note") this.actionNote,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "action_user") this.actionUser});

  factory _$ApprovalLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalLogImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "m_comp_id")
  final dynamic mCompId;
  @override
  @JsonKey(name: "m_dir_id")
  final dynamic mDirId;
  @override
  @JsonKey(name: "nomor")
  final String? nomor;
  @override
  @JsonKey(name: "generate_approval_id")
  final int? generateApprovalId;
  @override
  @JsonKey(name: "generate_approval_det_id")
  final int? generateApprovalDetId;
  @override
  @JsonKey(name: "trx_table")
  final String? trxTable;
  @override
  @JsonKey(name: "trx_id")
  final int? trxId;
  @override
  @JsonKey(name: "trx_name")
  final String? trxName;
  @override
  @JsonKey(name: "trx_nomor")
  final String? trxNomor;
  @override
  @JsonKey(name: "trx_date")
  final DateTime? trxDate;
  @override
  @JsonKey(name: "trx_object")
  final dynamic trxObject;
  @override
  @JsonKey(name: "trx_creator_id")
  final int? trxCreatorId;
  @override
  @JsonKey(name: "action_type")
  final String? actionType;
  @override
  @JsonKey(name: "action_user_id")
  final int? actionUserId;
  @override
  @JsonKey(name: "action_at")
  final String? actionAt;
  @override
  @JsonKey(name: "action_note")
  final String? actionNote;
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
  @JsonKey(name: "action_user")
  final String? actionUser;

  @override
  String toString() {
    return 'ApprovalLog(id: $id, mCompId: $mCompId, mDirId: $mDirId, nomor: $nomor, generateApprovalId: $generateApprovalId, generateApprovalDetId: $generateApprovalDetId, trxTable: $trxTable, trxId: $trxId, trxName: $trxName, trxNomor: $trxNomor, trxDate: $trxDate, trxObject: $trxObject, trxCreatorId: $trxCreatorId, actionType: $actionType, actionUserId: $actionUserId, actionAt: $actionAt, actionNote: $actionNote, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, actionUser: $actionUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.mCompId, mCompId) &&
            const DeepCollectionEquality().equals(other.mDirId, mDirId) &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.generateApprovalId, generateApprovalId) ||
                other.generateApprovalId == generateApprovalId) &&
            (identical(other.generateApprovalDetId, generateApprovalDetId) ||
                other.generateApprovalDetId == generateApprovalDetId) &&
            (identical(other.trxTable, trxTable) ||
                other.trxTable == trxTable) &&
            (identical(other.trxId, trxId) || other.trxId == trxId) &&
            (identical(other.trxName, trxName) || other.trxName == trxName) &&
            (identical(other.trxNomor, trxNomor) ||
                other.trxNomor == trxNomor) &&
            (identical(other.trxDate, trxDate) || other.trxDate == trxDate) &&
            const DeepCollectionEquality().equals(other.trxObject, trxObject) &&
            (identical(other.trxCreatorId, trxCreatorId) ||
                other.trxCreatorId == trxCreatorId) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.actionUserId, actionUserId) ||
                other.actionUserId == actionUserId) &&
            (identical(other.actionAt, actionAt) ||
                other.actionAt == actionAt) &&
            (identical(other.actionNote, actionNote) ||
                other.actionNote == actionNote) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality()
                .equals(other.lastEditorId, lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.actionUser, actionUser) ||
                other.actionUser == actionUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(mCompId),
        const DeepCollectionEquality().hash(mDirId),
        nomor,
        generateApprovalId,
        generateApprovalDetId,
        trxTable,
        trxId,
        trxName,
        trxNomor,
        trxDate,
        const DeepCollectionEquality().hash(trxObject),
        trxCreatorId,
        actionType,
        actionUserId,
        actionAt,
        actionNote,
        creatorId,
        const DeepCollectionEquality().hash(lastEditorId),
        createdAt,
        updatedAt,
        actionUser
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalLogImplCopyWith<_$ApprovalLogImpl> get copyWith =>
      __$$ApprovalLogImplCopyWithImpl<_$ApprovalLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalLogImplToJson(
      this,
    );
  }
}

abstract class _ApprovalLog implements ApprovalLog {
  const factory _ApprovalLog(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "m_comp_id") final dynamic mCompId,
          @JsonKey(name: "m_dir_id") final dynamic mDirId,
          @JsonKey(name: "nomor") final String? nomor,
          @JsonKey(name: "generate_approval_id") final int? generateApprovalId,
          @JsonKey(name: "generate_approval_det_id")
          final int? generateApprovalDetId,
          @JsonKey(name: "trx_table") final String? trxTable,
          @JsonKey(name: "trx_id") final int? trxId,
          @JsonKey(name: "trx_name") final String? trxName,
          @JsonKey(name: "trx_nomor") final String? trxNomor,
          @JsonKey(name: "trx_date") final DateTime? trxDate,
          @JsonKey(name: "trx_object") final dynamic trxObject,
          @JsonKey(name: "trx_creator_id") final int? trxCreatorId,
          @JsonKey(name: "action_type") final String? actionType,
          @JsonKey(name: "action_user_id") final int? actionUserId,
          @JsonKey(name: "action_at") final String? actionAt,
          @JsonKey(name: "action_note") final String? actionNote,
          @JsonKey(name: "creator_id") final int? creatorId,
          @JsonKey(name: "last_editor_id") final dynamic lastEditorId,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          @JsonKey(name: "action_user") final String? actionUser}) =
      _$ApprovalLogImpl;

  factory _ApprovalLog.fromJson(Map<String, dynamic> json) =
      _$ApprovalLogImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "m_comp_id")
  dynamic get mCompId;
  @override
  @JsonKey(name: "m_dir_id")
  dynamic get mDirId;
  @override
  @JsonKey(name: "nomor")
  String? get nomor;
  @override
  @JsonKey(name: "generate_approval_id")
  int? get generateApprovalId;
  @override
  @JsonKey(name: "generate_approval_det_id")
  int? get generateApprovalDetId;
  @override
  @JsonKey(name: "trx_table")
  String? get trxTable;
  @override
  @JsonKey(name: "trx_id")
  int? get trxId;
  @override
  @JsonKey(name: "trx_name")
  String? get trxName;
  @override
  @JsonKey(name: "trx_nomor")
  String? get trxNomor;
  @override
  @JsonKey(name: "trx_date")
  DateTime? get trxDate;
  @override
  @JsonKey(name: "trx_object")
  dynamic get trxObject;
  @override
  @JsonKey(name: "trx_creator_id")
  int? get trxCreatorId;
  @override
  @JsonKey(name: "action_type")
  String? get actionType;
  @override
  @JsonKey(name: "action_user_id")
  int? get actionUserId;
  @override
  @JsonKey(name: "action_at")
  String? get actionAt;
  @override
  @JsonKey(name: "action_note")
  String? get actionNote;
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
  @JsonKey(name: "action_user")
  String? get actionUser;
  @override
  @JsonKey(ignore: true)
  _$$ApprovalLogImplCopyWith<_$ApprovalLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Trx _$TrxFromJson(Map<String, dynamic> json) {
  return _Trx.fromJson(json);
}

/// @nodoc
mixin _$Trx {
  @JsonKey(name: "nomor")
  String? get nomor => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggal")
  DateTime? get tanggal => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_acara_awal")
  DateTime? get tglAcaraAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_acara_akhir")
  DateTime? get tglAcaraAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd_id")
  int? get jenisSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd")
  String? get jenisSpd => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal_id")
  int? get mZonaAsalId => throw _privateConstructorUsedError;
  @JsonKey(name: "zona_asal")
  String? get zonaAsal => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan_id")
  int? get mZonaTujuanId => throw _privateConstructorUsedError;
  @JsonKey(name: "zona_tujuan")
  String? get zonaTujuan => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan_id")
  int? get mLokasiTujuanId => throw _privateConstructorUsedError;
  @JsonKey(name: "lokasi")
  String? get lokasi => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_kary")
  dynamic get namaKary => throw _privateConstructorUsedError;
  @JsonKey(name: "pic_id")
  int? get picId => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_pic")
  dynamic get namaPic => throw _privateConstructorUsedError;
  @JsonKey(name: "total_biaya")
  String? get totalBiaya => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti")
  String? get tipeCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan_cuti")
  String? get alasanCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "kegiatan")
  String? get kegiatan => throw _privateConstructorUsedError;
  @JsonKey(name: "keterangan")
  String? get keterangan => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan_id")
  int? get alasanId => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan")
  String? get alasan => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti_id")
  int? get tipeCutiId => throw _privateConstructorUsedError;
  @JsonKey(name: "date_from")
  DateTime? get dateFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "date_to")
  DateTime? get dateTo => throw _privateConstructorUsedError;
  @JsonKey(name: "jam_mulai")
  String? get jamMulai => throw _privateConstructorUsedError;
  @JsonKey(name: "jam_selesai")
  String? get jamSelesai => throw _privateConstructorUsedError;
  @JsonKey(name: "no_doc")
  String? get noDoc => throw _privateConstructorUsedError;
  @JsonKey(name: "doc")
  dynamic get doc => throw _privateConstructorUsedError;
  @JsonKey(name: "interval")
  int? get interval => throw _privateConstructorUsedError;
  @JsonKey(name: "interval_min")
  int? get intervalMin => throw _privateConstructorUsedError;
  @JsonKey(name: "time_from")
  dynamic get timeFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "time_to")
  dynamic get timeTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrxCopyWith<Trx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrxCopyWith<$Res> {
  factory $TrxCopyWith(Trx value, $Res Function(Trx) then) =
      _$TrxCopyWithImpl<$Res, Trx>;
  @useResult
  $Res call(
      {@JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "tanggal") DateTime? tanggal,
      @JsonKey(name: "tgl_acara_awal") DateTime? tglAcaraAwal,
      @JsonKey(name: "tgl_acara_akhir") DateTime? tglAcaraAkhir,
      @JsonKey(name: "jenis_spd_id") int? jenisSpdId,
      @JsonKey(name: "jenis_spd") String? jenisSpd,
      @JsonKey(name: "m_zona_asal_id") int? mZonaAsalId,
      @JsonKey(name: "zona_asal") String? zonaAsal,
      @JsonKey(name: "m_zona_tujuan_id") int? mZonaTujuanId,
      @JsonKey(name: "zona_tujuan") String? zonaTujuan,
      @JsonKey(name: "m_lokasi_tujuan_id") int? mLokasiTujuanId,
      @JsonKey(name: "lokasi") String? lokasi,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "nama_kary") dynamic namaKary,
      @JsonKey(name: "pic_id") int? picId,
      @JsonKey(name: "nama_pic") dynamic namaPic,
      @JsonKey(name: "total_biaya") String? totalBiaya,
      @JsonKey(name: "tipe_cuti") String? tipeCuti,
      @JsonKey(name: "alasan_cuti") String? alasanCuti,
      @JsonKey(name: "kegiatan") String? kegiatan,
      @JsonKey(name: "keterangan") String? keterangan,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "alasan_id") int? alasanId,
      @JsonKey(name: "alasan") String? alasan,
      @JsonKey(name: "tipe_cuti_id") int? tipeCutiId,
      @JsonKey(name: "date_from") DateTime? dateFrom,
      @JsonKey(name: "date_to") DateTime? dateTo,
      @JsonKey(name: "jam_mulai") String? jamMulai,
      @JsonKey(name: "jam_selesai") String? jamSelesai,
      @JsonKey(name: "no_doc") String? noDoc,
      @JsonKey(name: "doc") dynamic doc,
      @JsonKey(name: "interval") int? interval,
      @JsonKey(name: "interval_min") int? intervalMin,
      @JsonKey(name: "time_from") dynamic timeFrom,
      @JsonKey(name: "time_to") dynamic timeTo});
}

/// @nodoc
class _$TrxCopyWithImpl<$Res, $Val extends Trx> implements $TrxCopyWith<$Res> {
  _$TrxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = freezed,
    Object? tanggal = freezed,
    Object? tglAcaraAwal = freezed,
    Object? tglAcaraAkhir = freezed,
    Object? jenisSpdId = freezed,
    Object? jenisSpd = freezed,
    Object? mZonaAsalId = freezed,
    Object? zonaAsal = freezed,
    Object? mZonaTujuanId = freezed,
    Object? zonaTujuan = freezed,
    Object? mLokasiTujuanId = freezed,
    Object? lokasi = freezed,
    Object? mKaryId = freezed,
    Object? namaKary = freezed,
    Object? picId = freezed,
    Object? namaPic = freezed,
    Object? totalBiaya = freezed,
    Object? tipeCuti = freezed,
    Object? alasanCuti = freezed,
    Object? kegiatan = freezed,
    Object? keterangan = freezed,
    Object? status = freezed,
    Object? alasanId = freezed,
    Object? alasan = freezed,
    Object? tipeCutiId = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? jamMulai = freezed,
    Object? jamSelesai = freezed,
    Object? noDoc = freezed,
    Object? doc = freezed,
    Object? interval = freezed,
    Object? intervalMin = freezed,
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
  }) {
    return _then(_value.copyWith(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tglAcaraAwal: freezed == tglAcaraAwal
          ? _value.tglAcaraAwal
          : tglAcaraAwal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tglAcaraAkhir: freezed == tglAcaraAkhir
          ? _value.tglAcaraAkhir
          : tglAcaraAkhir // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jenisSpdId: freezed == jenisSpdId
          ? _value.jenisSpdId
          : jenisSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSpd: freezed == jenisSpd
          ? _value.jenisSpd
          : jenisSpd // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalId: freezed == mZonaAsalId
          ? _value.mZonaAsalId
          : mZonaAsalId // ignore: cast_nullable_to_non_nullable
              as int?,
      zonaAsal: freezed == zonaAsal
          ? _value.zonaAsal
          : zonaAsal // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanId: freezed == mZonaTujuanId
          ? _value.mZonaTujuanId
          : mZonaTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      zonaTujuan: freezed == zonaTujuan
          ? _value.zonaTujuan
          : zonaTujuan // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanId: freezed == mLokasiTujuanId
          ? _value.mLokasiTujuanId
          : mLokasiTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      lokasi: freezed == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaKary: freezed == namaKary
          ? _value.namaKary
          : namaKary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picId: freezed == picId
          ? _value.picId
          : picId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPic: freezed == namaPic
          ? _value.namaPic
          : namaPic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalBiaya: freezed == totalBiaya
          ? _value.totalBiaya
          : totalBiaya // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCuti: freezed == tipeCuti
          ? _value.tipeCuti
          : tipeCuti // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanCuti: freezed == alasanCuti
          ? _value.alasanCuti
          : alasanCuti // ignore: cast_nullable_to_non_nullable
              as String?,
      kegiatan: freezed == kegiatan
          ? _value.kegiatan
          : kegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanId: freezed == alasanId
          ? _value.alasanId
          : alasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      alasan: freezed == alasan
          ? _value.alasan
          : alasan // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiId: freezed == tipeCutiId
          ? _value.tipeCutiId
          : tipeCutiId // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jamMulai: freezed == jamMulai
          ? _value.jamMulai
          : jamMulai // ignore: cast_nullable_to_non_nullable
              as String?,
      jamSelesai: freezed == jamSelesai
          ? _value.jamSelesai
          : jamSelesai // ignore: cast_nullable_to_non_nullable
              as String?,
      noDoc: freezed == noDoc
          ? _value.noDoc
          : noDoc // ignore: cast_nullable_to_non_nullable
              as String?,
      doc: freezed == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalMin: freezed == intervalMin
          ? _value.intervalMin
          : intervalMin // ignore: cast_nullable_to_non_nullable
              as int?,
      timeFrom: freezed == timeFrom
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrxImplCopyWith<$Res> implements $TrxCopyWith<$Res> {
  factory _$$TrxImplCopyWith(_$TrxImpl value, $Res Function(_$TrxImpl) then) =
      __$$TrxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "tanggal") DateTime? tanggal,
      @JsonKey(name: "tgl_acara_awal") DateTime? tglAcaraAwal,
      @JsonKey(name: "tgl_acara_akhir") DateTime? tglAcaraAkhir,
      @JsonKey(name: "jenis_spd_id") int? jenisSpdId,
      @JsonKey(name: "jenis_spd") String? jenisSpd,
      @JsonKey(name: "m_zona_asal_id") int? mZonaAsalId,
      @JsonKey(name: "zona_asal") String? zonaAsal,
      @JsonKey(name: "m_zona_tujuan_id") int? mZonaTujuanId,
      @JsonKey(name: "zona_tujuan") String? zonaTujuan,
      @JsonKey(name: "m_lokasi_tujuan_id") int? mLokasiTujuanId,
      @JsonKey(name: "lokasi") String? lokasi,
      @JsonKey(name: "m_kary_id") int? mKaryId,
      @JsonKey(name: "nama_kary") dynamic namaKary,
      @JsonKey(name: "pic_id") int? picId,
      @JsonKey(name: "nama_pic") dynamic namaPic,
      @JsonKey(name: "total_biaya") String? totalBiaya,
      @JsonKey(name: "tipe_cuti") String? tipeCuti,
      @JsonKey(name: "alasan_cuti") String? alasanCuti,
      @JsonKey(name: "kegiatan") String? kegiatan,
      @JsonKey(name: "keterangan") String? keterangan,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "alasan_id") int? alasanId,
      @JsonKey(name: "alasan") String? alasan,
      @JsonKey(name: "tipe_cuti_id") int? tipeCutiId,
      @JsonKey(name: "date_from") DateTime? dateFrom,
      @JsonKey(name: "date_to") DateTime? dateTo,
      @JsonKey(name: "jam_mulai") String? jamMulai,
      @JsonKey(name: "jam_selesai") String? jamSelesai,
      @JsonKey(name: "no_doc") String? noDoc,
      @JsonKey(name: "doc") dynamic doc,
      @JsonKey(name: "interval") int? interval,
      @JsonKey(name: "interval_min") int? intervalMin,
      @JsonKey(name: "time_from") dynamic timeFrom,
      @JsonKey(name: "time_to") dynamic timeTo});
}

/// @nodoc
class __$$TrxImplCopyWithImpl<$Res> extends _$TrxCopyWithImpl<$Res, _$TrxImpl>
    implements _$$TrxImplCopyWith<$Res> {
  __$$TrxImplCopyWithImpl(_$TrxImpl _value, $Res Function(_$TrxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = freezed,
    Object? tanggal = freezed,
    Object? tglAcaraAwal = freezed,
    Object? tglAcaraAkhir = freezed,
    Object? jenisSpdId = freezed,
    Object? jenisSpd = freezed,
    Object? mZonaAsalId = freezed,
    Object? zonaAsal = freezed,
    Object? mZonaTujuanId = freezed,
    Object? zonaTujuan = freezed,
    Object? mLokasiTujuanId = freezed,
    Object? lokasi = freezed,
    Object? mKaryId = freezed,
    Object? namaKary = freezed,
    Object? picId = freezed,
    Object? namaPic = freezed,
    Object? totalBiaya = freezed,
    Object? tipeCuti = freezed,
    Object? alasanCuti = freezed,
    Object? kegiatan = freezed,
    Object? keterangan = freezed,
    Object? status = freezed,
    Object? alasanId = freezed,
    Object? alasan = freezed,
    Object? tipeCutiId = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? jamMulai = freezed,
    Object? jamSelesai = freezed,
    Object? noDoc = freezed,
    Object? doc = freezed,
    Object? interval = freezed,
    Object? intervalMin = freezed,
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
  }) {
    return _then(_$TrxImpl(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tglAcaraAwal: freezed == tglAcaraAwal
          ? _value.tglAcaraAwal
          : tglAcaraAwal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tglAcaraAkhir: freezed == tglAcaraAkhir
          ? _value.tglAcaraAkhir
          : tglAcaraAkhir // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jenisSpdId: freezed == jenisSpdId
          ? _value.jenisSpdId
          : jenisSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSpd: freezed == jenisSpd
          ? _value.jenisSpd
          : jenisSpd // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalId: freezed == mZonaAsalId
          ? _value.mZonaAsalId
          : mZonaAsalId // ignore: cast_nullable_to_non_nullable
              as int?,
      zonaAsal: freezed == zonaAsal
          ? _value.zonaAsal
          : zonaAsal // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanId: freezed == mZonaTujuanId
          ? _value.mZonaTujuanId
          : mZonaTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      zonaTujuan: freezed == zonaTujuan
          ? _value.zonaTujuan
          : zonaTujuan // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanId: freezed == mLokasiTujuanId
          ? _value.mLokasiTujuanId
          : mLokasiTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      lokasi: freezed == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaKary: freezed == namaKary
          ? _value.namaKary
          : namaKary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picId: freezed == picId
          ? _value.picId
          : picId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPic: freezed == namaPic
          ? _value.namaPic
          : namaPic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalBiaya: freezed == totalBiaya
          ? _value.totalBiaya
          : totalBiaya // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCuti: freezed == tipeCuti
          ? _value.tipeCuti
          : tipeCuti // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanCuti: freezed == alasanCuti
          ? _value.alasanCuti
          : alasanCuti // ignore: cast_nullable_to_non_nullable
              as String?,
      kegiatan: freezed == kegiatan
          ? _value.kegiatan
          : kegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanId: freezed == alasanId
          ? _value.alasanId
          : alasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      alasan: freezed == alasan
          ? _value.alasan
          : alasan // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiId: freezed == tipeCutiId
          ? _value.tipeCutiId
          : tipeCutiId // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jamMulai: freezed == jamMulai
          ? _value.jamMulai
          : jamMulai // ignore: cast_nullable_to_non_nullable
              as String?,
      jamSelesai: freezed == jamSelesai
          ? _value.jamSelesai
          : jamSelesai // ignore: cast_nullable_to_non_nullable
              as String?,
      noDoc: freezed == noDoc
          ? _value.noDoc
          : noDoc // ignore: cast_nullable_to_non_nullable
              as String?,
      doc: freezed == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalMin: freezed == intervalMin
          ? _value.intervalMin
          : intervalMin // ignore: cast_nullable_to_non_nullable
              as int?,
      timeFrom: freezed == timeFrom
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrxImpl implements _Trx {
  const _$TrxImpl(
      {@JsonKey(name: "nomor") this.nomor,
      @JsonKey(name: "tanggal") this.tanggal,
      @JsonKey(name: "tgl_acara_awal") this.tglAcaraAwal,
      @JsonKey(name: "tgl_acara_akhir") this.tglAcaraAkhir,
      @JsonKey(name: "jenis_spd_id") this.jenisSpdId,
      @JsonKey(name: "jenis_spd") this.jenisSpd,
      @JsonKey(name: "m_zona_asal_id") this.mZonaAsalId,
      @JsonKey(name: "zona_asal") this.zonaAsal,
      @JsonKey(name: "m_zona_tujuan_id") this.mZonaTujuanId,
      @JsonKey(name: "zona_tujuan") this.zonaTujuan,
      @JsonKey(name: "m_lokasi_tujuan_id") this.mLokasiTujuanId,
      @JsonKey(name: "lokasi") this.lokasi,
      @JsonKey(name: "m_kary_id") this.mKaryId,
      @JsonKey(name: "nama_kary") this.namaKary,
      @JsonKey(name: "pic_id") this.picId,
      @JsonKey(name: "nama_pic") this.namaPic,
      @JsonKey(name: "total_biaya") this.totalBiaya,
      @JsonKey(name: "tipe_cuti") this.tipeCuti,
      @JsonKey(name: "alasan_cuti") this.alasanCuti,
      @JsonKey(name: "kegiatan") this.kegiatan,
      @JsonKey(name: "keterangan") this.keterangan,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "alasan_id") this.alasanId,
      @JsonKey(name: "alasan") this.alasan,
      @JsonKey(name: "tipe_cuti_id") this.tipeCutiId,
      @JsonKey(name: "date_from") this.dateFrom,
      @JsonKey(name: "date_to") this.dateTo,
      @JsonKey(name: "jam_mulai") this.jamMulai,
      @JsonKey(name: "jam_selesai") this.jamSelesai,
      @JsonKey(name: "no_doc") this.noDoc,
      @JsonKey(name: "doc") this.doc,
      @JsonKey(name: "interval") this.interval,
      @JsonKey(name: "interval_min") this.intervalMin,
      @JsonKey(name: "time_from") this.timeFrom,
      @JsonKey(name: "time_to") this.timeTo});

  factory _$TrxImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrxImplFromJson(json);

  @override
  @JsonKey(name: "nomor")
  final String? nomor;
  @override
  @JsonKey(name: "tanggal")
  final DateTime? tanggal;
  @override
  @JsonKey(name: "tgl_acara_awal")
  final DateTime? tglAcaraAwal;
  @override
  @JsonKey(name: "tgl_acara_akhir")
  final DateTime? tglAcaraAkhir;
  @override
  @JsonKey(name: "jenis_spd_id")
  final int? jenisSpdId;
  @override
  @JsonKey(name: "jenis_spd")
  final String? jenisSpd;
  @override
  @JsonKey(name: "m_zona_asal_id")
  final int? mZonaAsalId;
  @override
  @JsonKey(name: "zona_asal")
  final String? zonaAsal;
  @override
  @JsonKey(name: "m_zona_tujuan_id")
  final int? mZonaTujuanId;
  @override
  @JsonKey(name: "zona_tujuan")
  final String? zonaTujuan;
  @override
  @JsonKey(name: "m_lokasi_tujuan_id")
  final int? mLokasiTujuanId;
  @override
  @JsonKey(name: "lokasi")
  final String? lokasi;
  @override
  @JsonKey(name: "m_kary_id")
  final int? mKaryId;
  @override
  @JsonKey(name: "nama_kary")
  final dynamic namaKary;
  @override
  @JsonKey(name: "pic_id")
  final int? picId;
  @override
  @JsonKey(name: "nama_pic")
  final dynamic namaPic;
  @override
  @JsonKey(name: "total_biaya")
  final String? totalBiaya;
  @override
  @JsonKey(name: "tipe_cuti")
  final String? tipeCuti;
  @override
  @JsonKey(name: "alasan_cuti")
  final String? alasanCuti;
  @override
  @JsonKey(name: "kegiatan")
  final String? kegiatan;
  @override
  @JsonKey(name: "keterangan")
  final String? keterangan;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "alasan_id")
  final int? alasanId;
  @override
  @JsonKey(name: "alasan")
  final String? alasan;
  @override
  @JsonKey(name: "tipe_cuti_id")
  final int? tipeCutiId;
  @override
  @JsonKey(name: "date_from")
  final DateTime? dateFrom;
  @override
  @JsonKey(name: "date_to")
  final DateTime? dateTo;
  @override
  @JsonKey(name: "jam_mulai")
  final String? jamMulai;
  @override
  @JsonKey(name: "jam_selesai")
  final String? jamSelesai;
  @override
  @JsonKey(name: "no_doc")
  final String? noDoc;
  @override
  @JsonKey(name: "doc")
  final dynamic doc;
  @override
  @JsonKey(name: "interval")
  final int? interval;
  @override
  @JsonKey(name: "interval_min")
  final int? intervalMin;
  @override
  @JsonKey(name: "time_from")
  final dynamic timeFrom;
  @override
  @JsonKey(name: "time_to")
  final dynamic timeTo;

  @override
  String toString() {
    return 'Trx(nomor: $nomor, tanggal: $tanggal, tglAcaraAwal: $tglAcaraAwal, tglAcaraAkhir: $tglAcaraAkhir, jenisSpdId: $jenisSpdId, jenisSpd: $jenisSpd, mZonaAsalId: $mZonaAsalId, zonaAsal: $zonaAsal, mZonaTujuanId: $mZonaTujuanId, zonaTujuan: $zonaTujuan, mLokasiTujuanId: $mLokasiTujuanId, lokasi: $lokasi, mKaryId: $mKaryId, namaKary: $namaKary, picId: $picId, namaPic: $namaPic, totalBiaya: $totalBiaya, tipeCuti: $tipeCuti, alasanCuti: $alasanCuti, kegiatan: $kegiatan, keterangan: $keterangan, status: $status, alasanId: $alasanId, alasan: $alasan, tipeCutiId: $tipeCutiId, dateFrom: $dateFrom, dateTo: $dateTo, jamMulai: $jamMulai, jamSelesai: $jamSelesai, noDoc: $noDoc, doc: $doc, interval: $interval, intervalMin: $intervalMin, timeFrom: $timeFrom, timeTo: $timeTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrxImpl &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.tglAcaraAwal, tglAcaraAwal) ||
                other.tglAcaraAwal == tglAcaraAwal) &&
            (identical(other.tglAcaraAkhir, tglAcaraAkhir) ||
                other.tglAcaraAkhir == tglAcaraAkhir) &&
            (identical(other.jenisSpdId, jenisSpdId) ||
                other.jenisSpdId == jenisSpdId) &&
            (identical(other.jenisSpd, jenisSpd) ||
                other.jenisSpd == jenisSpd) &&
            (identical(other.mZonaAsalId, mZonaAsalId) ||
                other.mZonaAsalId == mZonaAsalId) &&
            (identical(other.zonaAsal, zonaAsal) ||
                other.zonaAsal == zonaAsal) &&
            (identical(other.mZonaTujuanId, mZonaTujuanId) ||
                other.mZonaTujuanId == mZonaTujuanId) &&
            (identical(other.zonaTujuan, zonaTujuan) ||
                other.zonaTujuan == zonaTujuan) &&
            (identical(other.mLokasiTujuanId, mLokasiTujuanId) ||
                other.mLokasiTujuanId == mLokasiTujuanId) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi) &&
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            const DeepCollectionEquality().equals(other.namaKary, namaKary) &&
            (identical(other.picId, picId) || other.picId == picId) &&
            const DeepCollectionEquality().equals(other.namaPic, namaPic) &&
            (identical(other.totalBiaya, totalBiaya) ||
                other.totalBiaya == totalBiaya) &&
            (identical(other.tipeCuti, tipeCuti) ||
                other.tipeCuti == tipeCuti) &&
            (identical(other.alasanCuti, alasanCuti) ||
                other.alasanCuti == alasanCuti) &&
            (identical(other.kegiatan, kegiatan) ||
                other.kegiatan == kegiatan) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.alasanId, alasanId) ||
                other.alasanId == alasanId) &&
            (identical(other.alasan, alasan) || other.alasan == alasan) &&
            (identical(other.tipeCutiId, tipeCutiId) ||
                other.tipeCutiId == tipeCutiId) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.jamMulai, jamMulai) ||
                other.jamMulai == jamMulai) &&
            (identical(other.jamSelesai, jamSelesai) ||
                other.jamSelesai == jamSelesai) &&
            (identical(other.noDoc, noDoc) || other.noDoc == noDoc) &&
            const DeepCollectionEquality().equals(other.doc, doc) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.intervalMin, intervalMin) ||
                other.intervalMin == intervalMin) &&
            const DeepCollectionEquality().equals(other.timeFrom, timeFrom) &&
            const DeepCollectionEquality().equals(other.timeTo, timeTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        nomor,
        tanggal,
        tglAcaraAwal,
        tglAcaraAkhir,
        jenisSpdId,
        jenisSpd,
        mZonaAsalId,
        zonaAsal,
        mZonaTujuanId,
        zonaTujuan,
        mLokasiTujuanId,
        lokasi,
        mKaryId,
        const DeepCollectionEquality().hash(namaKary),
        picId,
        const DeepCollectionEquality().hash(namaPic),
        totalBiaya,
        tipeCuti,
        alasanCuti,
        kegiatan,
        keterangan,
        status,
        alasanId,
        alasan,
        tipeCutiId,
        dateFrom,
        dateTo,
        jamMulai,
        jamSelesai,
        noDoc,
        const DeepCollectionEquality().hash(doc),
        interval,
        intervalMin,
        const DeepCollectionEquality().hash(timeFrom),
        const DeepCollectionEquality().hash(timeTo)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrxImplCopyWith<_$TrxImpl> get copyWith =>
      __$$TrxImplCopyWithImpl<_$TrxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrxImplToJson(
      this,
    );
  }
}

abstract class _Trx implements Trx {
  const factory _Trx(
      {@JsonKey(name: "nomor") final String? nomor,
      @JsonKey(name: "tanggal") final DateTime? tanggal,
      @JsonKey(name: "tgl_acara_awal") final DateTime? tglAcaraAwal,
      @JsonKey(name: "tgl_acara_akhir") final DateTime? tglAcaraAkhir,
      @JsonKey(name: "jenis_spd_id") final int? jenisSpdId,
      @JsonKey(name: "jenis_spd") final String? jenisSpd,
      @JsonKey(name: "m_zona_asal_id") final int? mZonaAsalId,
      @JsonKey(name: "zona_asal") final String? zonaAsal,
      @JsonKey(name: "m_zona_tujuan_id") final int? mZonaTujuanId,
      @JsonKey(name: "zona_tujuan") final String? zonaTujuan,
      @JsonKey(name: "m_lokasi_tujuan_id") final int? mLokasiTujuanId,
      @JsonKey(name: "lokasi") final String? lokasi,
      @JsonKey(name: "m_kary_id") final int? mKaryId,
      @JsonKey(name: "nama_kary") final dynamic namaKary,
      @JsonKey(name: "pic_id") final int? picId,
      @JsonKey(name: "nama_pic") final dynamic namaPic,
      @JsonKey(name: "total_biaya") final String? totalBiaya,
      @JsonKey(name: "tipe_cuti") final String? tipeCuti,
      @JsonKey(name: "alasan_cuti") final String? alasanCuti,
      @JsonKey(name: "kegiatan") final String? kegiatan,
      @JsonKey(name: "keterangan") final String? keterangan,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "alasan_id") final int? alasanId,
      @JsonKey(name: "alasan") final String? alasan,
      @JsonKey(name: "tipe_cuti_id") final int? tipeCutiId,
      @JsonKey(name: "date_from") final DateTime? dateFrom,
      @JsonKey(name: "date_to") final DateTime? dateTo,
      @JsonKey(name: "jam_mulai") final String? jamMulai,
      @JsonKey(name: "jam_selesai") final String? jamSelesai,
      @JsonKey(name: "no_doc") final String? noDoc,
      @JsonKey(name: "doc") final dynamic doc,
      @JsonKey(name: "interval") final int? interval,
      @JsonKey(name: "interval_min") final int? intervalMin,
      @JsonKey(name: "time_from") final dynamic timeFrom,
      @JsonKey(name: "time_to") final dynamic timeTo}) = _$TrxImpl;

  factory _Trx.fromJson(Map<String, dynamic> json) = _$TrxImpl.fromJson;

  @override
  @JsonKey(name: "nomor")
  String? get nomor;
  @override
  @JsonKey(name: "tanggal")
  DateTime? get tanggal;
  @override
  @JsonKey(name: "tgl_acara_awal")
  DateTime? get tglAcaraAwal;
  @override
  @JsonKey(name: "tgl_acara_akhir")
  DateTime? get tglAcaraAkhir;
  @override
  @JsonKey(name: "jenis_spd_id")
  int? get jenisSpdId;
  @override
  @JsonKey(name: "jenis_spd")
  String? get jenisSpd;
  @override
  @JsonKey(name: "m_zona_asal_id")
  int? get mZonaAsalId;
  @override
  @JsonKey(name: "zona_asal")
  String? get zonaAsal;
  @override
  @JsonKey(name: "m_zona_tujuan_id")
  int? get mZonaTujuanId;
  @override
  @JsonKey(name: "zona_tujuan")
  String? get zonaTujuan;
  @override
  @JsonKey(name: "m_lokasi_tujuan_id")
  int? get mLokasiTujuanId;
  @override
  @JsonKey(name: "lokasi")
  String? get lokasi;
  @override
  @JsonKey(name: "m_kary_id")
  int? get mKaryId;
  @override
  @JsonKey(name: "nama_kary")
  dynamic get namaKary;
  @override
  @JsonKey(name: "pic_id")
  int? get picId;
  @override
  @JsonKey(name: "nama_pic")
  dynamic get namaPic;
  @override
  @JsonKey(name: "total_biaya")
  String? get totalBiaya;
  @override
  @JsonKey(name: "tipe_cuti")
  String? get tipeCuti;
  @override
  @JsonKey(name: "alasan_cuti")
  String? get alasanCuti;
  @override
  @JsonKey(name: "kegiatan")
  String? get kegiatan;
  @override
  @JsonKey(name: "keterangan")
  String? get keterangan;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "alasan_id")
  int? get alasanId;
  @override
  @JsonKey(name: "alasan")
  String? get alasan;
  @override
  @JsonKey(name: "tipe_cuti_id")
  int? get tipeCutiId;
  @override
  @JsonKey(name: "date_from")
  DateTime? get dateFrom;
  @override
  @JsonKey(name: "date_to")
  DateTime? get dateTo;
  @override
  @JsonKey(name: "jam_mulai")
  String? get jamMulai;
  @override
  @JsonKey(name: "jam_selesai")
  String? get jamSelesai;
  @override
  @JsonKey(name: "no_doc")
  String? get noDoc;
  @override
  @JsonKey(name: "doc")
  dynamic get doc;
  @override
  @JsonKey(name: "interval")
  int? get interval;
  @override
  @JsonKey(name: "interval_min")
  int? get intervalMin;
  @override
  @JsonKey(name: "time_from")
  dynamic get timeFrom;
  @override
  @JsonKey(name: "time_to")
  dynamic get timeTo;
  @override
  @JsonKey(ignore: true)
  _$$TrxImplCopyWith<_$TrxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

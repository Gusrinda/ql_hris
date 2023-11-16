// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifikasi_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotifikasiModel _$NotifikasiModelFromJson(Map<String, dynamic> json) {
  return _NotifikasiModel.fromJson(json);
}

/// @nodoc
mixin _$NotifikasiModel {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataNotif>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotifikasiModelCopyWith<NotifikasiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifikasiModelCopyWith<$Res> {
  factory $NotifikasiModelCopyWith(
          NotifikasiModel value, $Res Function(NotifikasiModel) then) =
      _$NotifikasiModelCopyWithImpl<$Res, NotifikasiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<DataNotif>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$NotifikasiModelCopyWithImpl<$Res, $Val extends NotifikasiModel>
    implements $NotifikasiModelCopyWith<$Res> {
  _$NotifikasiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataNotif>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotifikasiModelImplCopyWith<$Res>
    implements $NotifikasiModelCopyWith<$Res> {
  factory _$$NotifikasiModelImplCopyWith(_$NotifikasiModelImpl value,
          $Res Function(_$NotifikasiModelImpl) then) =
      __$$NotifikasiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<DataNotif>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$NotifikasiModelImplCopyWithImpl<$Res>
    extends _$NotifikasiModelCopyWithImpl<$Res, _$NotifikasiModelImpl>
    implements _$$NotifikasiModelImplCopyWith<$Res> {
  __$$NotifikasiModelImplCopyWithImpl(
      _$NotifikasiModelImpl _value, $Res Function(_$NotifikasiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$NotifikasiModelImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataNotif>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotifikasiModelImpl implements _NotifikasiModel {
  const _$NotifikasiModelImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<DataNotif>? data,
      @JsonKey(name: "first_page_url") this.firstPageUrl,
      @JsonKey(name: "from") this.from,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "last_page_url") this.lastPageUrl,
      @JsonKey(name: "links") final List<Link>? links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      @JsonKey(name: "path") this.path,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      @JsonKey(name: "to") this.to,
      @JsonKey(name: "total") this.total})
      : _data = data,
        _links = links;

  factory _$NotifikasiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotifikasiModelImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<DataNotif>? _data;
  @override
  @JsonKey(name: "data")
  List<DataNotif>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String? firstPageUrl;
  @override
  @JsonKey(name: "from")
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  @JsonKey(name: "links")
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "next_page_url")
  final dynamic nextPageUrl;
  @override
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final dynamic prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'NotifikasiModel(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifikasiModelImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(nextPageUrl),
      path,
      perPage,
      const DeepCollectionEquality().hash(prevPageUrl),
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifikasiModelImplCopyWith<_$NotifikasiModelImpl> get copyWith =>
      __$$NotifikasiModelImplCopyWithImpl<_$NotifikasiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifikasiModelImplToJson(
      this,
    );
  }
}

abstract class _NotifikasiModel implements NotifikasiModel {
  const factory _NotifikasiModel(
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "data") final List<DataNotif>? data,
      @JsonKey(name: "first_page_url") final String? firstPageUrl,
      @JsonKey(name: "from") final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      @JsonKey(name: "links") final List<Link>? links,
      @JsonKey(name: "next_page_url") final dynamic nextPageUrl,
      @JsonKey(name: "path") final String? path,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "prev_page_url") final dynamic prevPageUrl,
      @JsonKey(name: "to") final int? to,
      @JsonKey(name: "total") final int? total}) = _$NotifikasiModelImpl;

  factory _NotifikasiModel.fromJson(Map<String, dynamic> json) =
      _$NotifikasiModelImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<DataNotif>? get data;
  @override
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl;
  @override
  @JsonKey(name: "from")
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl;
  @override
  @JsonKey(name: "links")
  List<Link>? get links;
  @override
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$NotifikasiModelImplCopyWith<_$NotifikasiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataNotif _$DataNotifFromJson(Map<String, dynamic> json) {
  return _DataNotif.fromJson(json);
}

/// @nodoc
mixin _$DataNotif {
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
  dynamic get generateApprovalDetId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "text")
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataNotifCopyWith<DataNotif> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataNotifCopyWith<$Res> {
  factory $DataNotifCopyWith(DataNotif value, $Res Function(DataNotif) then) =
      _$DataNotifCopyWithImpl<$Res, DataNotif>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") dynamic mCompId,
      @JsonKey(name: "m_dir_id") dynamic mDirId,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "generate_approval_id") int? generateApprovalId,
      @JsonKey(name: "generate_approval_det_id") dynamic generateApprovalDetId,
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
      @JsonKey(name: "text") String? text});
}

/// @nodoc
class _$DataNotifCopyWithImpl<$Res, $Val extends DataNotif>
    implements $DataNotifCopyWith<$Res> {
  _$DataNotifCopyWithImpl(this._value, this._then);

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
    Object? text = freezed,
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
              as dynamic,
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
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataNotifImplCopyWith<$Res>
    implements $DataNotifCopyWith<$Res> {
  factory _$$DataNotifImplCopyWith(
          _$DataNotifImpl value, $Res Function(_$DataNotifImpl) then) =
      __$$DataNotifImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") dynamic mCompId,
      @JsonKey(name: "m_dir_id") dynamic mDirId,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "generate_approval_id") int? generateApprovalId,
      @JsonKey(name: "generate_approval_det_id") dynamic generateApprovalDetId,
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
      @JsonKey(name: "text") String? text});
}

/// @nodoc
class __$$DataNotifImplCopyWithImpl<$Res>
    extends _$DataNotifCopyWithImpl<$Res, _$DataNotifImpl>
    implements _$$DataNotifImplCopyWith<$Res> {
  __$$DataNotifImplCopyWithImpl(
      _$DataNotifImpl _value, $Res Function(_$DataNotifImpl) _then)
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
    Object? text = freezed,
  }) {
    return _then(_$DataNotifImpl(
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
              as dynamic,
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
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataNotifImpl implements _DataNotif {
  const _$DataNotifImpl(
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
      @JsonKey(name: "text") this.text});

  factory _$DataNotifImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataNotifImplFromJson(json);

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
  final dynamic generateApprovalDetId;
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
  @JsonKey(name: "text")
  final String? text;

  @override
  String toString() {
    return 'DataNotif(id: $id, mCompId: $mCompId, mDirId: $mDirId, nomor: $nomor, generateApprovalId: $generateApprovalId, generateApprovalDetId: $generateApprovalDetId, trxTable: $trxTable, trxId: $trxId, trxName: $trxName, trxNomor: $trxNomor, trxDate: $trxDate, trxObject: $trxObject, trxCreatorId: $trxCreatorId, actionType: $actionType, actionUserId: $actionUserId, actionAt: $actionAt, actionNote: $actionNote, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataNotifImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.mCompId, mCompId) &&
            const DeepCollectionEquality().equals(other.mDirId, mDirId) &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.generateApprovalId, generateApprovalId) ||
                other.generateApprovalId == generateApprovalId) &&
            const DeepCollectionEquality()
                .equals(other.generateApprovalDetId, generateApprovalDetId) &&
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
            (identical(other.text, text) || other.text == text));
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
        const DeepCollectionEquality().hash(generateApprovalDetId),
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
        text
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataNotifImplCopyWith<_$DataNotifImpl> get copyWith =>
      __$$DataNotifImplCopyWithImpl<_$DataNotifImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataNotifImplToJson(
      this,
    );
  }
}

abstract class _DataNotif implements DataNotif {
  const factory _DataNotif(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_comp_id") final dynamic mCompId,
      @JsonKey(name: "m_dir_id") final dynamic mDirId,
      @JsonKey(name: "nomor") final String? nomor,
      @JsonKey(name: "generate_approval_id") final int? generateApprovalId,
      @JsonKey(name: "generate_approval_det_id")
      final dynamic generateApprovalDetId,
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
      @JsonKey(name: "text") final String? text}) = _$DataNotifImpl;

  factory _DataNotif.fromJson(Map<String, dynamic> json) =
      _$DataNotifImpl.fromJson;

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
  dynamic get generateApprovalDetId;
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
  @JsonKey(name: "text")
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$DataNotifImplCopyWith<_$DataNotifImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "active") bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "active") bool? active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl(
      {@JsonKey(name: "url") this.url,
      @JsonKey(name: "label") this.label,
      @JsonKey(name: "active") this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "active")
  final bool? active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {@JsonKey(name: "url") final String? url,
      @JsonKey(name: "label") final String? label,
      @JsonKey(name: "active") final bool? active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "active")
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

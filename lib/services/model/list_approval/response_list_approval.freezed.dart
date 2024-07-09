// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_list_approval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseListApproval _$ResponseListApprovalFromJson(Map<String, dynamic> json) {
  return _ResponseListApproval.fromJson(json);
}

/// @nodoc
mixin _$ResponseListApproval {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataApproval>? get data => throw _privateConstructorUsedError;
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
  $ResponseListApprovalCopyWith<ResponseListApproval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseListApprovalCopyWith<$Res> {
  factory $ResponseListApprovalCopyWith(ResponseListApproval value,
          $Res Function(ResponseListApproval) then) =
      _$ResponseListApprovalCopyWithImpl<$Res, ResponseListApproval>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<DataApproval>? data,
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
class _$ResponseListApprovalCopyWithImpl<$Res,
        $Val extends ResponseListApproval>
    implements $ResponseListApprovalCopyWith<$Res> {
  _$ResponseListApprovalCopyWithImpl(this._value, this._then);

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
              as List<DataApproval>?,
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
abstract class _$$ResponseListApprovalImplCopyWith<$Res>
    implements $ResponseListApprovalCopyWith<$Res> {
  factory _$$ResponseListApprovalImplCopyWith(_$ResponseListApprovalImpl value,
          $Res Function(_$ResponseListApprovalImpl) then) =
      __$$ResponseListApprovalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<DataApproval>? data,
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
class __$$ResponseListApprovalImplCopyWithImpl<$Res>
    extends _$ResponseListApprovalCopyWithImpl<$Res, _$ResponseListApprovalImpl>
    implements _$$ResponseListApprovalImplCopyWith<$Res> {
  __$$ResponseListApprovalImplCopyWithImpl(_$ResponseListApprovalImpl _value,
      $Res Function(_$ResponseListApprovalImpl) _then)
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
    return _then(_$ResponseListApprovalImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataApproval>?,
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
class _$ResponseListApprovalImpl implements _ResponseListApproval {
  const _$ResponseListApprovalImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<DataApproval>? data,
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

  factory _$ResponseListApprovalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseListApprovalImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<DataApproval>? _data;
  @override
  @JsonKey(name: "data")
  List<DataApproval>? get data {
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
    return 'ResponseListApproval(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseListApprovalImpl &&
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
  _$$ResponseListApprovalImplCopyWith<_$ResponseListApprovalImpl>
      get copyWith =>
          __$$ResponseListApprovalImplCopyWithImpl<_$ResponseListApprovalImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseListApprovalImplToJson(
      this,
    );
  }
}

abstract class _ResponseListApproval implements ResponseListApproval {
  const factory _ResponseListApproval(
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "data") final List<DataApproval>? data,
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
      @JsonKey(name: "total") final int? total}) = _$ResponseListApprovalImpl;

  factory _ResponseListApproval.fromJson(Map<String, dynamic> json) =
      _$ResponseListApprovalImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<DataApproval>? get data;
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
  _$$ResponseListApprovalImplCopyWith<_$ResponseListApprovalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataApproval _$DataApprovalFromJson(Map<String, dynamic> json) {
  return _DataApproval.fromJson(json);
}

/// @nodoc
mixin _$DataApproval {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataApprovalCopyWith<DataApproval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataApprovalCopyWith<$Res> {
  factory $DataApprovalCopyWith(
          DataApproval value, $Res Function(DataApproval) then) =
      _$DataApprovalCopyWithImpl<$Res, DataApproval>;
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
      @JsonKey(name: "creator") String? creator});
}

/// @nodoc
class _$DataApprovalCopyWithImpl<$Res, $Val extends DataApproval>
    implements $DataApprovalCopyWith<$Res> {
  _$DataApprovalCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataApprovalImplCopyWith<$Res>
    implements $DataApprovalCopyWith<$Res> {
  factory _$$DataApprovalImplCopyWith(
          _$DataApprovalImpl value, $Res Function(_$DataApprovalImpl) then) =
      __$$DataApprovalImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "creator") String? creator});
}

/// @nodoc
class __$$DataApprovalImplCopyWithImpl<$Res>
    extends _$DataApprovalCopyWithImpl<$Res, _$DataApprovalImpl>
    implements _$$DataApprovalImplCopyWith<$Res> {
  __$$DataApprovalImplCopyWithImpl(
      _$DataApprovalImpl _value, $Res Function(_$DataApprovalImpl) _then)
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
  }) {
    return _then(_$DataApprovalImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataApprovalImpl implements _DataApproval {
  const _$DataApprovalImpl(
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
      @JsonKey(name: "creator") this.creator});

  factory _$DataApprovalImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataApprovalImplFromJson(json);

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
  String toString() {
    return 'DataApproval(id: $id, mCompId: $mCompId, mDirId: $mDirId, nomor: $nomor, mApprovalId: $mApprovalId, trxId: $trxId, trxName: $trxName, formName: $formName, trxTable: $trxTable, trxNomor: $trxNomor, trxDate: $trxDate, trxObject: $trxObject, trxCreatorId: $trxCreatorId, status: $status, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, creator: $creator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataApprovalImpl &&
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
            (identical(other.creator, creator) || other.creator == creator));
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
        creator
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataApprovalImplCopyWith<_$DataApprovalImpl> get copyWith =>
      __$$DataApprovalImplCopyWithImpl<_$DataApprovalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataApprovalImplToJson(
      this,
    );
  }
}

abstract class _DataApproval implements DataApproval {
  const factory _DataApproval(
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
      @JsonKey(name: "creator") final String? creator}) = _$DataApprovalImpl;

  factory _DataApproval.fromJson(Map<String, dynamic> json) =
      _$DataApprovalImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$DataApprovalImplCopyWith<_$DataApprovalImpl> get copyWith =>
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

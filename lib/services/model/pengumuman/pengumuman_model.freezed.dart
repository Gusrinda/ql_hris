// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pengumuman_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PengumumanModel _$PengumumanModelFromJson(Map<String, dynamic> json) {
  return _PengumumanModel.fromJson(json);
}

/// @nodoc
mixin _$PengumumanModel {
  @JsonKey(name: "data")
  List<DataPengumuman>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "has_next")
  bool? get hasNext => throw _privateConstructorUsedError;
  @JsonKey(name: "prev")
  dynamic get prev => throw _privateConstructorUsedError;
  @JsonKey(name: "next")
  dynamic get next => throw _privateConstructorUsedError;
  @JsonKey(name: "processed_time")
  double? get processedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PengumumanModelCopyWith<PengumumanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PengumumanModelCopyWith<$Res> {
  factory $PengumumanModelCopyWith(
          PengumumanModel value, $Res Function(PengumumanModel) then) =
      _$PengumumanModelCopyWithImpl<$Res, PengumumanModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataPengumuman>? data,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "has_next") bool? hasNext,
      @JsonKey(name: "prev") dynamic prev,
      @JsonKey(name: "next") dynamic next,
      @JsonKey(name: "processed_time") double? processedTime});
}

/// @nodoc
class _$PengumumanModelCopyWithImpl<$Res, $Val extends PengumumanModel>
    implements $PengumumanModelCopyWith<$Res> {
  _$PengumumanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? lastPage = freezed,
    Object? hasNext = freezed,
    Object? prev = freezed,
    Object? next = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataPengumuman>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PengumumanModelImplCopyWith<$Res>
    implements $PengumumanModelCopyWith<$Res> {
  factory _$$PengumumanModelImplCopyWith(_$PengumumanModelImpl value,
          $Res Function(_$PengumumanModelImpl) then) =
      __$$PengumumanModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataPengumuman>? data,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "has_next") bool? hasNext,
      @JsonKey(name: "prev") dynamic prev,
      @JsonKey(name: "next") dynamic next,
      @JsonKey(name: "processed_time") double? processedTime});
}

/// @nodoc
class __$$PengumumanModelImplCopyWithImpl<$Res>
    extends _$PengumumanModelCopyWithImpl<$Res, _$PengumumanModelImpl>
    implements _$$PengumumanModelImplCopyWith<$Res> {
  __$$PengumumanModelImplCopyWithImpl(
      _$PengumumanModelImpl _value, $Res Function(_$PengumumanModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? lastPage = freezed,
    Object? hasNext = freezed,
    Object? prev = freezed,
    Object? next = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_$PengumumanModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataPengumuman>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PengumumanModelImpl implements _PengumumanModel {
  const _$PengumumanModelImpl(
      {@JsonKey(name: "data") final List<DataPengumuman>? data,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "from") this.from,
      @JsonKey(name: "to") this.to,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "has_next") this.hasNext,
      @JsonKey(name: "prev") this.prev,
      @JsonKey(name: "next") this.next,
      @JsonKey(name: "processed_time") this.processedTime})
      : _data = data;

  factory _$PengumumanModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PengumumanModelImplFromJson(json);

  final List<DataPengumuman>? _data;
  @override
  @JsonKey(name: "data")
  List<DataPengumuman>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "from")
  final int? from;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "has_next")
  final bool? hasNext;
  @override
  @JsonKey(name: "prev")
  final dynamic prev;
  @override
  @JsonKey(name: "next")
  final dynamic next;
  @override
  @JsonKey(name: "processed_time")
  final double? processedTime;

  @override
  String toString() {
    return 'PengumumanModel(data: $data, total: $total, currentPage: $currentPage, perPage: $perPage, from: $from, to: $to, lastPage: $lastPage, hasNext: $hasNext, prev: $prev, next: $next, processedTime: $processedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PengumumanModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            const DeepCollectionEquality().equals(other.prev, prev) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            (identical(other.processedTime, processedTime) ||
                other.processedTime == processedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      total,
      currentPage,
      perPage,
      from,
      to,
      lastPage,
      hasNext,
      const DeepCollectionEquality().hash(prev),
      const DeepCollectionEquality().hash(next),
      processedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PengumumanModelImplCopyWith<_$PengumumanModelImpl> get copyWith =>
      __$$PengumumanModelImplCopyWithImpl<_$PengumumanModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PengumumanModelImplToJson(
      this,
    );
  }
}

abstract class _PengumumanModel implements PengumumanModel {
  const factory _PengumumanModel(
          {@JsonKey(name: "data") final List<DataPengumuman>? data,
          @JsonKey(name: "total") final int? total,
          @JsonKey(name: "current_page") final int? currentPage,
          @JsonKey(name: "per_page") final int? perPage,
          @JsonKey(name: "from") final int? from,
          @JsonKey(name: "to") final int? to,
          @JsonKey(name: "last_page") final int? lastPage,
          @JsonKey(name: "has_next") final bool? hasNext,
          @JsonKey(name: "prev") final dynamic prev,
          @JsonKey(name: "next") final dynamic next,
          @JsonKey(name: "processed_time") final double? processedTime}) =
      _$PengumumanModelImpl;

  factory _PengumumanModel.fromJson(Map<String, dynamic> json) =
      _$PengumumanModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<DataPengumuman>? get data;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "from")
  int? get from;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "has_next")
  bool? get hasNext;
  @override
  @JsonKey(name: "prev")
  dynamic get prev;
  @override
  @JsonKey(name: "next")
  dynamic get next;
  @override
  @JsonKey(name: "processed_time")
  double? get processedTime;
  @override
  @JsonKey(ignore: true)
  _$$PengumumanModelImplCopyWith<_$PengumumanModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataPengumuman _$DataPengumumanFromJson(Map<String, dynamic> json) {
  return _DataPengumuman.fromJson(json);
}

/// @nodoc
mixin _$DataPengumuman {
  @JsonKey(name: "meta_read")
  bool? get metaRead => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_delete")
  bool? get metaDelete => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_update")
  bool? get metaUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_create")
  bool? get metaCreate => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "judul")
  String? get judul => throw _privateConstructorUsedError;
  @JsonKey(name: "thumb")
  String? get thumb => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  dynamic get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "tag")
  String? get tag => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  dynamic get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  dynamic get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPengumumanCopyWith<DataPengumuman> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPengumumanCopyWith<$Res> {
  factory $DataPengumumanCopyWith(
          DataPengumuman value, $Res Function(DataPengumuman) then) =
      _$DataPengumumanCopyWithImpl<$Res, DataPengumuman>;
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "judul") String? judul,
      @JsonKey(name: "thumb") String? thumb,
      @JsonKey(name: "slug") dynamic slug,
      @JsonKey(name: "tag") String? tag,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") dynamic creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$DataPengumumanCopyWithImpl<$Res, $Val extends DataPengumuman>
    implements $DataPengumumanCopyWith<$Res> {
  _$DataPengumumanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRead = freezed,
    Object? metaDelete = freezed,
    Object? metaUpdate = freezed,
    Object? metaCreate = freezed,
    Object? id = freezed,
    Object? judul = freezed,
    Object? thumb = freezed,
    Object? slug = freezed,
    Object? tag = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      metaRead: freezed == metaRead
          ? _value.metaRead
          : metaRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaDelete: freezed == metaDelete
          ? _value.metaDelete
          : metaDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaUpdate: freezed == metaUpdate
          ? _value.metaUpdate
          : metaUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaCreate: freezed == metaCreate
          ? _value.metaCreate
          : metaCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$DataPengumumanImplCopyWith<$Res>
    implements $DataPengumumanCopyWith<$Res> {
  factory _$$DataPengumumanImplCopyWith(_$DataPengumumanImpl value,
          $Res Function(_$DataPengumumanImpl) then) =
      __$$DataPengumumanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "judul") String? judul,
      @JsonKey(name: "thumb") String? thumb,
      @JsonKey(name: "slug") dynamic slug,
      @JsonKey(name: "tag") String? tag,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") dynamic creatorId,
      @JsonKey(name: "last_editor_id") dynamic lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$DataPengumumanImplCopyWithImpl<$Res>
    extends _$DataPengumumanCopyWithImpl<$Res, _$DataPengumumanImpl>
    implements _$$DataPengumumanImplCopyWith<$Res> {
  __$$DataPengumumanImplCopyWithImpl(
      _$DataPengumumanImpl _value, $Res Function(_$DataPengumumanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRead = freezed,
    Object? metaDelete = freezed,
    Object? metaUpdate = freezed,
    Object? metaCreate = freezed,
    Object? id = freezed,
    Object? judul = freezed,
    Object? thumb = freezed,
    Object? slug = freezed,
    Object? tag = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataPengumumanImpl(
      metaRead: freezed == metaRead
          ? _value.metaRead
          : metaRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaDelete: freezed == metaDelete
          ? _value.metaDelete
          : metaDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaUpdate: freezed == metaUpdate
          ? _value.metaUpdate
          : metaUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaCreate: freezed == metaCreate
          ? _value.metaCreate
          : metaCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$DataPengumumanImpl implements _DataPengumuman {
  const _$DataPengumumanImpl(
      {@JsonKey(name: "meta_read") this.metaRead,
      @JsonKey(name: "meta_delete") this.metaDelete,
      @JsonKey(name: "meta_update") this.metaUpdate,
      @JsonKey(name: "meta_create") this.metaCreate,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "judul") this.judul,
      @JsonKey(name: "thumb") this.thumb,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "tag") this.tag,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$DataPengumumanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPengumumanImplFromJson(json);

  @override
  @JsonKey(name: "meta_read")
  final bool? metaRead;
  @override
  @JsonKey(name: "meta_delete")
  final bool? metaDelete;
  @override
  @JsonKey(name: "meta_update")
  final bool? metaUpdate;
  @override
  @JsonKey(name: "meta_create")
  final bool? metaCreate;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "judul")
  final String? judul;
  @override
  @JsonKey(name: "thumb")
  final String? thumb;
  @override
  @JsonKey(name: "slug")
  final dynamic slug;
  @override
  @JsonKey(name: "tag")
  final String? tag;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "creator_id")
  final dynamic creatorId;
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
    return 'DataPengumuman(metaRead: $metaRead, metaDelete: $metaDelete, metaUpdate: $metaUpdate, metaCreate: $metaCreate, id: $id, judul: $judul, thumb: $thumb, slug: $slug, tag: $tag, content: $content, isActive: $isActive, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPengumumanImpl &&
            (identical(other.metaRead, metaRead) ||
                other.metaRead == metaRead) &&
            (identical(other.metaDelete, metaDelete) ||
                other.metaDelete == metaDelete) &&
            (identical(other.metaUpdate, metaUpdate) ||
                other.metaUpdate == metaUpdate) &&
            (identical(other.metaCreate, metaCreate) ||
                other.metaCreate == metaCreate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            const DeepCollectionEquality()
                .equals(other.lastEditorId, lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      metaRead,
      metaDelete,
      metaUpdate,
      metaCreate,
      id,
      judul,
      thumb,
      const DeepCollectionEquality().hash(slug),
      tag,
      content,
      isActive,
      const DeepCollectionEquality().hash(creatorId),
      const DeepCollectionEquality().hash(lastEditorId),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPengumumanImplCopyWith<_$DataPengumumanImpl> get copyWith =>
      __$$DataPengumumanImplCopyWithImpl<_$DataPengumumanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPengumumanImplToJson(
      this,
    );
  }
}

abstract class _DataPengumuman implements DataPengumuman {
  const factory _DataPengumuman(
          {@JsonKey(name: "meta_read") final bool? metaRead,
          @JsonKey(name: "meta_delete") final bool? metaDelete,
          @JsonKey(name: "meta_update") final bool? metaUpdate,
          @JsonKey(name: "meta_create") final bool? metaCreate,
          @JsonKey(name: "id") final int? id,
          @JsonKey(name: "judul") final String? judul,
          @JsonKey(name: "thumb") final String? thumb,
          @JsonKey(name: "slug") final dynamic slug,
          @JsonKey(name: "tag") final String? tag,
          @JsonKey(name: "content") final String? content,
          @JsonKey(name: "is_active") final bool? isActive,
          @JsonKey(name: "creator_id") final dynamic creatorId,
          @JsonKey(name: "last_editor_id") final dynamic lastEditorId,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$DataPengumumanImpl;

  factory _DataPengumuman.fromJson(Map<String, dynamic> json) =
      _$DataPengumumanImpl.fromJson;

  @override
  @JsonKey(name: "meta_read")
  bool? get metaRead;
  @override
  @JsonKey(name: "meta_delete")
  bool? get metaDelete;
  @override
  @JsonKey(name: "meta_update")
  bool? get metaUpdate;
  @override
  @JsonKey(name: "meta_create")
  bool? get metaCreate;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "judul")
  String? get judul;
  @override
  @JsonKey(name: "thumb")
  String? get thumb;
  @override
  @JsonKey(name: "slug")
  dynamic get slug;
  @override
  @JsonKey(name: "tag")
  String? get tag;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "creator_id")
  dynamic get creatorId;
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
  _$$DataPengumumanImplCopyWith<_$DataPengumumanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

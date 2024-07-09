// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_kode_presensi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseKodePresensi _$ResponseKodePresensiFromJson(Map<String, dynamic> json) {
  return _ResponseKodePresensi.fromJson(json);
}

/// @nodoc
mixin _$ResponseKodePresensi {
  @JsonKey(name: "data")
  List<DataKodePresensi>? get data => throw _privateConstructorUsedError;
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
  $ResponseKodePresensiCopyWith<ResponseKodePresensi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseKodePresensiCopyWith<$Res> {
  factory $ResponseKodePresensiCopyWith(ResponseKodePresensi value,
          $Res Function(ResponseKodePresensi) then) =
      _$ResponseKodePresensiCopyWithImpl<$Res, ResponseKodePresensi>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataKodePresensi>? data,
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
class _$ResponseKodePresensiCopyWithImpl<$Res,
        $Val extends ResponseKodePresensi>
    implements $ResponseKodePresensiCopyWith<$Res> {
  _$ResponseKodePresensiCopyWithImpl(this._value, this._then);

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
              as List<DataKodePresensi>?,
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
abstract class _$$ResponseKodePresensiImplCopyWith<$Res>
    implements $ResponseKodePresensiCopyWith<$Res> {
  factory _$$ResponseKodePresensiImplCopyWith(_$ResponseKodePresensiImpl value,
          $Res Function(_$ResponseKodePresensiImpl) then) =
      __$$ResponseKodePresensiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataKodePresensi>? data,
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
class __$$ResponseKodePresensiImplCopyWithImpl<$Res>
    extends _$ResponseKodePresensiCopyWithImpl<$Res, _$ResponseKodePresensiImpl>
    implements _$$ResponseKodePresensiImplCopyWith<$Res> {
  __$$ResponseKodePresensiImplCopyWithImpl(_$ResponseKodePresensiImpl _value,
      $Res Function(_$ResponseKodePresensiImpl) _then)
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
    return _then(_$ResponseKodePresensiImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataKodePresensi>?,
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
class _$ResponseKodePresensiImpl implements _ResponseKodePresensi {
  const _$ResponseKodePresensiImpl(
      {@JsonKey(name: "data") final List<DataKodePresensi>? data,
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

  factory _$ResponseKodePresensiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseKodePresensiImplFromJson(json);

  final List<DataKodePresensi>? _data;
  @override
  @JsonKey(name: "data")
  List<DataKodePresensi>? get data {
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
    return 'ResponseKodePresensi(data: $data, total: $total, currentPage: $currentPage, perPage: $perPage, from: $from, to: $to, lastPage: $lastPage, hasNext: $hasNext, prev: $prev, next: $next, processedTime: $processedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseKodePresensiImpl &&
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
  _$$ResponseKodePresensiImplCopyWith<_$ResponseKodePresensiImpl>
      get copyWith =>
          __$$ResponseKodePresensiImplCopyWithImpl<_$ResponseKodePresensiImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseKodePresensiImplToJson(
      this,
    );
  }
}

abstract class _ResponseKodePresensi implements ResponseKodePresensi {
  const factory _ResponseKodePresensi(
          {@JsonKey(name: "data") final List<DataKodePresensi>? data,
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
      _$ResponseKodePresensiImpl;

  factory _ResponseKodePresensi.fromJson(Map<String, dynamic> json) =
      _$ResponseKodePresensiImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<DataKodePresensi>? get data;
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
  _$$ResponseKodePresensiImplCopyWith<_$ResponseKodePresensiImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataKodePresensi _$DataKodePresensiFromJson(Map<String, dynamic> json) {
  return _DataKodePresensi.fromJson(json);
}

/// @nodoc
mixin _$DataKodePresensi {
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
  @JsonKey(name: "m_comp_id")
  int? get datumMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get datumMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "kode")
  String? get kode => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja_id")
  int? get datumTipeJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "waktu_mulai")
  String? get waktuMulai => throw _privateConstructorUsedError;
  @JsonKey(name: "waktu_akhir")
  String? get waktuAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "is_hari_berikutnya")
  bool? get isHariBerikutnya => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get datumCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  int? get datumLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.id")
  int? get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.nama")
  String? get mCompNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.is_active")
  bool? get mCompIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.desc")
  dynamic get mCompDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.creator_id")
  dynamic get mCompCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.last_editor_id")
  dynamic get mCompLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.created_at")
  dynamic get mCompCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.updated_at")
  dynamic get mCompUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.id")
  dynamic get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.m_comp_id")
  dynamic get mDirMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.nama")
  dynamic get mDirNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.desc")
  dynamic get mDirDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.is_active")
  dynamic get mDirIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.creator_id")
  dynamic get mDirCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.last_editor_id")
  dynamic get mDirLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.created_at")
  dynamic get mDirCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.updated_at")
  dynamic get mDirUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.id")
  int? get tipeJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.m_comp_id")
  int? get tipeJamKerjaMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.m_dir_id")
  dynamic get tipeJamKerjaMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.group")
  String? get tipeJamKerjaGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.key")
  String? get tipeJamKerjaKey => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.code")
  String? get tipeJamKerjaCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.value")
  String? get tipeJamKerjaValue => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.is_active")
  bool? get tipeJamKerjaIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.creator_id")
  dynamic get tipeJamKerjaCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.last_editor_id")
  dynamic get tipeJamKerjaLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.created_at")
  String? get tipeJamKerjaCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.updated_at")
  String? get tipeJamKerjaUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.value_2")
  dynamic get tipeJamKerjaValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.value_3")
  dynamic get tipeJamKerjaValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.id")
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.name")
  String? get creatorName => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.email")
  String? get creatorEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.username")
  String? get creatorUsername => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.email_verified_at")
  dynamic get creatorEmailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.password")
  String? get creatorPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.m_comp_id")
  int? get creatorMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.m_dir_id")
  int? get creatorMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.is_active")
  bool? get creatorIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.creator_id")
  dynamic get creatorCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.last_editor_id")
  int? get creatorLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.remember_token")
  dynamic get creatorRememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.created_at")
  String? get creatorCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.updated_at")
  String? get creatorUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.profil_image")
  String? get creatorProfilImage => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.telp")
  dynamic get creatorTelp => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.m_kary_id")
  int? get creatorMKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.id")
  int? get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.name")
  String? get lastEditorName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.email")
  String? get lastEditorEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.username")
  String? get lastEditorUsername => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.email_verified_at")
  dynamic get lastEditorEmailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.password")
  String? get lastEditorPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.m_comp_id")
  int? get lastEditorMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.m_dir_id")
  int? get lastEditorMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.is_active")
  bool? get lastEditorIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.creator_id")
  dynamic get lastEditorCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.last_editor_id")
  int? get lastEditorLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.remember_token")
  dynamic get lastEditorRememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.created_at")
  String? get lastEditorCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.updated_at")
  String? get lastEditorUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.profil_image")
  String? get lastEditorProfilImage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.telp")
  dynamic get lastEditorTelp => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.m_kary_id")
  int? get lastEditorMKaryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataKodePresensiCopyWith<DataKodePresensi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataKodePresensiCopyWith<$Res> {
  factory $DataKodePresensiCopyWith(
          DataKodePresensi value, $Res Function(DataKodePresensi) then) =
      _$DataKodePresensiCopyWithImpl<$Res, DataKodePresensi>;
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? datumMCompId,
      @JsonKey(name: "m_dir_id") int? datumMDirId,
      @JsonKey(name: "kode") String? kode,
      @JsonKey(name: "tipe_jam_kerja_id") int? datumTipeJamKerjaId,
      @JsonKey(name: "waktu_mulai") String? waktuMulai,
      @JsonKey(name: "waktu_akhir") String? waktuAkhir,
      @JsonKey(name: "is_hari_berikutnya") bool? isHariBerikutnya,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") int? datumCreatorId,
      @JsonKey(name: "last_editor_id") int? datumLastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "m_comp.id") int? mCompId,
      @JsonKey(name: "m_comp.nama") String? mCompNama,
      @JsonKey(name: "m_comp.is_active") bool? mCompIsActive,
      @JsonKey(name: "m_comp.desc") dynamic mCompDesc,
      @JsonKey(name: "m_comp.creator_id") dynamic mCompCreatorId,
      @JsonKey(name: "m_comp.last_editor_id") dynamic mCompLastEditorId,
      @JsonKey(name: "m_comp.created_at") dynamic mCompCreatedAt,
      @JsonKey(name: "m_comp.updated_at") dynamic mCompUpdatedAt,
      @JsonKey(name: "m_dir.id") dynamic mDirId,
      @JsonKey(name: "m_dir.m_comp_id") dynamic mDirMCompId,
      @JsonKey(name: "m_dir.nama") dynamic mDirNama,
      @JsonKey(name: "m_dir.desc") dynamic mDirDesc,
      @JsonKey(name: "m_dir.is_active") dynamic mDirIsActive,
      @JsonKey(name: "m_dir.creator_id") dynamic mDirCreatorId,
      @JsonKey(name: "m_dir.last_editor_id") dynamic mDirLastEditorId,
      @JsonKey(name: "m_dir.created_at") dynamic mDirCreatedAt,
      @JsonKey(name: "m_dir.updated_at") dynamic mDirUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.id") int? tipeJamKerjaId,
      @JsonKey(name: "tipe_jam_kerja.m_comp_id") int? tipeJamKerjaMCompId,
      @JsonKey(name: "tipe_jam_kerja.m_dir_id") dynamic tipeJamKerjaMDirId,
      @JsonKey(name: "tipe_jam_kerja.group") String? tipeJamKerjaGroup,
      @JsonKey(name: "tipe_jam_kerja.key") String? tipeJamKerjaKey,
      @JsonKey(name: "tipe_jam_kerja.code") String? tipeJamKerjaCode,
      @JsonKey(name: "tipe_jam_kerja.value") String? tipeJamKerjaValue,
      @JsonKey(name: "tipe_jam_kerja.is_active") bool? tipeJamKerjaIsActive,
      @JsonKey(name: "tipe_jam_kerja.creator_id") dynamic tipeJamKerjaCreatorId,
      @JsonKey(name: "tipe_jam_kerja.last_editor_id")
      dynamic tipeJamKerjaLastEditorId,
      @JsonKey(name: "tipe_jam_kerja.created_at") String? tipeJamKerjaCreatedAt,
      @JsonKey(name: "tipe_jam_kerja.updated_at") String? tipeJamKerjaUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.value_2") dynamic tipeJamKerjaValue2,
      @JsonKey(name: "tipe_jam_kerja.value_3") dynamic tipeJamKerjaValue3,
      @JsonKey(name: "creator.id") int? creatorId,
      @JsonKey(name: "creator.name") String? creatorName,
      @JsonKey(name: "creator.email") String? creatorEmail,
      @JsonKey(name: "creator.username") String? creatorUsername,
      @JsonKey(name: "creator.email_verified_at")
      dynamic creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") String? creatorPassword,
      @JsonKey(name: "creator.m_comp_id") int? creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") int? creatorMDirId,
      @JsonKey(name: "creator.is_active") bool? creatorIsActive,
      @JsonKey(name: "creator.creator_id") dynamic creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id") int? creatorLastEditorId,
      @JsonKey(name: "creator.remember_token") dynamic creatorRememberToken,
      @JsonKey(name: "creator.created_at") String? creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") String? creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") String? creatorProfilImage,
      @JsonKey(name: "creator.telp") dynamic creatorTelp,
      @JsonKey(name: "creator.m_kary_id") int? creatorMKaryId,
      @JsonKey(name: "last_editor.id") int? lastEditorId,
      @JsonKey(name: "last_editor.name") String? lastEditorName,
      @JsonKey(name: "last_editor.email") String? lastEditorEmail,
      @JsonKey(name: "last_editor.username") String? lastEditorUsername,
      @JsonKey(name: "last_editor.email_verified_at")
      dynamic lastEditorEmailVerifiedAt,
      @JsonKey(name: "last_editor.password") String? lastEditorPassword,
      @JsonKey(name: "last_editor.m_comp_id") int? lastEditorMCompId,
      @JsonKey(name: "last_editor.m_dir_id") int? lastEditorMDirId,
      @JsonKey(name: "last_editor.is_active") bool? lastEditorIsActive,
      @JsonKey(name: "last_editor.creator_id") dynamic lastEditorCreatorId,
      @JsonKey(name: "last_editor.last_editor_id") int? lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at") String? lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at") String? lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image") String? lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") int? lastEditorMKaryId});
}

/// @nodoc
class _$DataKodePresensiCopyWithImpl<$Res, $Val extends DataKodePresensi>
    implements $DataKodePresensiCopyWith<$Res> {
  _$DataKodePresensiCopyWithImpl(this._value, this._then);

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
    Object? datumMCompId = freezed,
    Object? datumMDirId = freezed,
    Object? kode = freezed,
    Object? datumTipeJamKerjaId = freezed,
    Object? waktuMulai = freezed,
    Object? waktuAkhir = freezed,
    Object? isHariBerikutnya = freezed,
    Object? desc = freezed,
    Object? isActive = freezed,
    Object? datumCreatorId = freezed,
    Object? datumLastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mCompId = freezed,
    Object? mCompNama = freezed,
    Object? mCompIsActive = freezed,
    Object? mCompDesc = freezed,
    Object? mCompCreatorId = freezed,
    Object? mCompLastEditorId = freezed,
    Object? mCompCreatedAt = freezed,
    Object? mCompUpdatedAt = freezed,
    Object? mDirId = freezed,
    Object? mDirMCompId = freezed,
    Object? mDirNama = freezed,
    Object? mDirDesc = freezed,
    Object? mDirIsActive = freezed,
    Object? mDirCreatorId = freezed,
    Object? mDirLastEditorId = freezed,
    Object? mDirCreatedAt = freezed,
    Object? mDirUpdatedAt = freezed,
    Object? tipeJamKerjaId = freezed,
    Object? tipeJamKerjaMCompId = freezed,
    Object? tipeJamKerjaMDirId = freezed,
    Object? tipeJamKerjaGroup = freezed,
    Object? tipeJamKerjaKey = freezed,
    Object? tipeJamKerjaCode = freezed,
    Object? tipeJamKerjaValue = freezed,
    Object? tipeJamKerjaIsActive = freezed,
    Object? tipeJamKerjaCreatorId = freezed,
    Object? tipeJamKerjaLastEditorId = freezed,
    Object? tipeJamKerjaCreatedAt = freezed,
    Object? tipeJamKerjaUpdatedAt = freezed,
    Object? tipeJamKerjaValue2 = freezed,
    Object? tipeJamKerjaValue3 = freezed,
    Object? creatorId = freezed,
    Object? creatorName = freezed,
    Object? creatorEmail = freezed,
    Object? creatorUsername = freezed,
    Object? creatorEmailVerifiedAt = freezed,
    Object? creatorPassword = freezed,
    Object? creatorMCompId = freezed,
    Object? creatorMDirId = freezed,
    Object? creatorIsActive = freezed,
    Object? creatorCreatorId = freezed,
    Object? creatorLastEditorId = freezed,
    Object? creatorRememberToken = freezed,
    Object? creatorCreatedAt = freezed,
    Object? creatorUpdatedAt = freezed,
    Object? creatorProfilImage = freezed,
    Object? creatorTelp = freezed,
    Object? creatorMKaryId = freezed,
    Object? lastEditorId = freezed,
    Object? lastEditorName = freezed,
    Object? lastEditorEmail = freezed,
    Object? lastEditorUsername = freezed,
    Object? lastEditorEmailVerifiedAt = freezed,
    Object? lastEditorPassword = freezed,
    Object? lastEditorMCompId = freezed,
    Object? lastEditorMDirId = freezed,
    Object? lastEditorIsActive = freezed,
    Object? lastEditorCreatorId = freezed,
    Object? lastEditorLastEditorId = freezed,
    Object? lastEditorRememberToken = freezed,
    Object? lastEditorCreatedAt = freezed,
    Object? lastEditorUpdatedAt = freezed,
    Object? lastEditorProfilImage = freezed,
    Object? lastEditorTelp = freezed,
    Object? lastEditorMKaryId = freezed,
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
      datumMCompId: freezed == datumMCompId
          ? _value.datumMCompId
          : datumMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDirId: freezed == datumMDirId
          ? _value.datumMDirId
          : datumMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      datumTipeJamKerjaId: freezed == datumTipeJamKerjaId
          ? _value.datumTipeJamKerjaId
          : datumTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as int?,
      waktuMulai: freezed == waktuMulai
          ? _value.waktuMulai
          : waktuMulai // ignore: cast_nullable_to_non_nullable
              as String?,
      waktuAkhir: freezed == waktuAkhir
          ? _value.waktuAkhir
          : waktuAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      isHariBerikutnya: freezed == isHariBerikutnya
          ? _value.isHariBerikutnya
          : isHariBerikutnya // ignore: cast_nullable_to_non_nullable
              as bool?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      datumCreatorId: freezed == datumCreatorId
          ? _value.datumCreatorId
          : datumCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumLastEditorId: freezed == datumLastEditorId
          ? _value.datumLastEditorId
          : datumLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCompNama: freezed == mCompNama
          ? _value.mCompNama
          : mCompNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mCompIsActive: freezed == mCompIsActive
          ? _value.mCompIsActive
          : mCompIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mCompDesc: freezed == mCompDesc
          ? _value.mCompDesc
          : mCompDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompCreatorId: freezed == mCompCreatorId
          ? _value.mCompCreatorId
          : mCompCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompLastEditorId: freezed == mCompLastEditorId
          ? _value.mCompLastEditorId
          : mCompLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompCreatedAt: freezed == mCompCreatedAt
          ? _value.mCompCreatedAt
          : mCompCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompUpdatedAt: freezed == mCompUpdatedAt
          ? _value.mCompUpdatedAt
          : mCompUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirMCompId: freezed == mDirMCompId
          ? _value.mDirMCompId
          : mDirMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirNama: freezed == mDirNama
          ? _value.mDirNama
          : mDirNama // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirDesc: freezed == mDirDesc
          ? _value.mDirDesc
          : mDirDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirIsActive: freezed == mDirIsActive
          ? _value.mDirIsActive
          : mDirIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirCreatorId: freezed == mDirCreatorId
          ? _value.mDirCreatorId
          : mDirCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirLastEditorId: freezed == mDirLastEditorId
          ? _value.mDirLastEditorId
          : mDirLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirCreatedAt: freezed == mDirCreatedAt
          ? _value.mDirCreatedAt
          : mDirCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirUpdatedAt: freezed == mDirUpdatedAt
          ? _value.mDirUpdatedAt
          : mDirUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaId: freezed == tipeJamKerjaId
          ? _value.tipeJamKerjaId
          : tipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeJamKerjaMCompId: freezed == tipeJamKerjaMCompId
          ? _value.tipeJamKerjaMCompId
          : tipeJamKerjaMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeJamKerjaMDirId: freezed == tipeJamKerjaMDirId
          ? _value.tipeJamKerjaMDirId
          : tipeJamKerjaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaGroup: freezed == tipeJamKerjaGroup
          ? _value.tipeJamKerjaGroup
          : tipeJamKerjaGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaKey: freezed == tipeJamKerjaKey
          ? _value.tipeJamKerjaKey
          : tipeJamKerjaKey // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaCode: freezed == tipeJamKerjaCode
          ? _value.tipeJamKerjaCode
          : tipeJamKerjaCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaValue: freezed == tipeJamKerjaValue
          ? _value.tipeJamKerjaValue
          : tipeJamKerjaValue // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaIsActive: freezed == tipeJamKerjaIsActive
          ? _value.tipeJamKerjaIsActive
          : tipeJamKerjaIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tipeJamKerjaCreatorId: freezed == tipeJamKerjaCreatorId
          ? _value.tipeJamKerjaCreatorId
          : tipeJamKerjaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaLastEditorId: freezed == tipeJamKerjaLastEditorId
          ? _value.tipeJamKerjaLastEditorId
          : tipeJamKerjaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaCreatedAt: freezed == tipeJamKerjaCreatedAt
          ? _value.tipeJamKerjaCreatedAt
          : tipeJamKerjaCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaUpdatedAt: freezed == tipeJamKerjaUpdatedAt
          ? _value.tipeJamKerjaUpdatedAt
          : tipeJamKerjaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaValue2: freezed == tipeJamKerjaValue2
          ? _value.tipeJamKerjaValue2
          : tipeJamKerjaValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaValue3: freezed == tipeJamKerjaValue3
          ? _value.tipeJamKerjaValue3
          : tipeJamKerjaValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorName: freezed == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorEmail: freezed == creatorEmail
          ? _value.creatorEmail
          : creatorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorUsername: freezed == creatorUsername
          ? _value.creatorUsername
          : creatorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorEmailVerifiedAt: freezed == creatorEmailVerifiedAt
          ? _value.creatorEmailVerifiedAt
          : creatorEmailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorPassword: freezed == creatorPassword
          ? _value.creatorPassword
          : creatorPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorMCompId: freezed == creatorMCompId
          ? _value.creatorMCompId
          : creatorMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorMDirId: freezed == creatorMDirId
          ? _value.creatorMDirId
          : creatorMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorIsActive: freezed == creatorIsActive
          ? _value.creatorIsActive
          : creatorIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      creatorCreatorId: freezed == creatorCreatorId
          ? _value.creatorCreatorId
          : creatorCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorLastEditorId: freezed == creatorLastEditorId
          ? _value.creatorLastEditorId
          : creatorLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorRememberToken: freezed == creatorRememberToken
          ? _value.creatorRememberToken
          : creatorRememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorCreatedAt: freezed == creatorCreatedAt
          ? _value.creatorCreatedAt
          : creatorCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorUpdatedAt: freezed == creatorUpdatedAt
          ? _value.creatorUpdatedAt
          : creatorUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorProfilImage: freezed == creatorProfilImage
          ? _value.creatorProfilImage
          : creatorProfilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorTelp: freezed == creatorTelp
          ? _value.creatorTelp
          : creatorTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorMKaryId: freezed == creatorMKaryId
          ? _value.creatorMKaryId
          : creatorMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorId: freezed == lastEditorId
          ? _value.lastEditorId
          : lastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorName: freezed == lastEditorName
          ? _value.lastEditorName
          : lastEditorName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorEmail: freezed == lastEditorEmail
          ? _value.lastEditorEmail
          : lastEditorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorUsername: freezed == lastEditorUsername
          ? _value.lastEditorUsername
          : lastEditorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorEmailVerifiedAt: freezed == lastEditorEmailVerifiedAt
          ? _value.lastEditorEmailVerifiedAt
          : lastEditorEmailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorPassword: freezed == lastEditorPassword
          ? _value.lastEditorPassword
          : lastEditorPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorMCompId: freezed == lastEditorMCompId
          ? _value.lastEditorMCompId
          : lastEditorMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorMDirId: freezed == lastEditorMDirId
          ? _value.lastEditorMDirId
          : lastEditorMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorIsActive: freezed == lastEditorIsActive
          ? _value.lastEditorIsActive
          : lastEditorIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastEditorCreatorId: freezed == lastEditorCreatorId
          ? _value.lastEditorCreatorId
          : lastEditorCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorLastEditorId: freezed == lastEditorLastEditorId
          ? _value.lastEditorLastEditorId
          : lastEditorLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorRememberToken: freezed == lastEditorRememberToken
          ? _value.lastEditorRememberToken
          : lastEditorRememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorCreatedAt: freezed == lastEditorCreatedAt
          ? _value.lastEditorCreatedAt
          : lastEditorCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorUpdatedAt: freezed == lastEditorUpdatedAt
          ? _value.lastEditorUpdatedAt
          : lastEditorUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorProfilImage: freezed == lastEditorProfilImage
          ? _value.lastEditorProfilImage
          : lastEditorProfilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorTelp: freezed == lastEditorTelp
          ? _value.lastEditorTelp
          : lastEditorTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorMKaryId: freezed == lastEditorMKaryId
          ? _value.lastEditorMKaryId
          : lastEditorMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataKodePresensiImplCopyWith<$Res>
    implements $DataKodePresensiCopyWith<$Res> {
  factory _$$DataKodePresensiImplCopyWith(_$DataKodePresensiImpl value,
          $Res Function(_$DataKodePresensiImpl) then) =
      __$$DataKodePresensiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? datumMCompId,
      @JsonKey(name: "m_dir_id") int? datumMDirId,
      @JsonKey(name: "kode") String? kode,
      @JsonKey(name: "tipe_jam_kerja_id") int? datumTipeJamKerjaId,
      @JsonKey(name: "waktu_mulai") String? waktuMulai,
      @JsonKey(name: "waktu_akhir") String? waktuAkhir,
      @JsonKey(name: "is_hari_berikutnya") bool? isHariBerikutnya,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") int? datumCreatorId,
      @JsonKey(name: "last_editor_id") int? datumLastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "m_comp.id") int? mCompId,
      @JsonKey(name: "m_comp.nama") String? mCompNama,
      @JsonKey(name: "m_comp.is_active") bool? mCompIsActive,
      @JsonKey(name: "m_comp.desc") dynamic mCompDesc,
      @JsonKey(name: "m_comp.creator_id") dynamic mCompCreatorId,
      @JsonKey(name: "m_comp.last_editor_id") dynamic mCompLastEditorId,
      @JsonKey(name: "m_comp.created_at") dynamic mCompCreatedAt,
      @JsonKey(name: "m_comp.updated_at") dynamic mCompUpdatedAt,
      @JsonKey(name: "m_dir.id") dynamic mDirId,
      @JsonKey(name: "m_dir.m_comp_id") dynamic mDirMCompId,
      @JsonKey(name: "m_dir.nama") dynamic mDirNama,
      @JsonKey(name: "m_dir.desc") dynamic mDirDesc,
      @JsonKey(name: "m_dir.is_active") dynamic mDirIsActive,
      @JsonKey(name: "m_dir.creator_id") dynamic mDirCreatorId,
      @JsonKey(name: "m_dir.last_editor_id") dynamic mDirLastEditorId,
      @JsonKey(name: "m_dir.created_at") dynamic mDirCreatedAt,
      @JsonKey(name: "m_dir.updated_at") dynamic mDirUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.id") int? tipeJamKerjaId,
      @JsonKey(name: "tipe_jam_kerja.m_comp_id") int? tipeJamKerjaMCompId,
      @JsonKey(name: "tipe_jam_kerja.m_dir_id") dynamic tipeJamKerjaMDirId,
      @JsonKey(name: "tipe_jam_kerja.group") String? tipeJamKerjaGroup,
      @JsonKey(name: "tipe_jam_kerja.key") String? tipeJamKerjaKey,
      @JsonKey(name: "tipe_jam_kerja.code") String? tipeJamKerjaCode,
      @JsonKey(name: "tipe_jam_kerja.value") String? tipeJamKerjaValue,
      @JsonKey(name: "tipe_jam_kerja.is_active") bool? tipeJamKerjaIsActive,
      @JsonKey(name: "tipe_jam_kerja.creator_id") dynamic tipeJamKerjaCreatorId,
      @JsonKey(name: "tipe_jam_kerja.last_editor_id")
      dynamic tipeJamKerjaLastEditorId,
      @JsonKey(name: "tipe_jam_kerja.created_at") String? tipeJamKerjaCreatedAt,
      @JsonKey(name: "tipe_jam_kerja.updated_at") String? tipeJamKerjaUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.value_2") dynamic tipeJamKerjaValue2,
      @JsonKey(name: "tipe_jam_kerja.value_3") dynamic tipeJamKerjaValue3,
      @JsonKey(name: "creator.id") int? creatorId,
      @JsonKey(name: "creator.name") String? creatorName,
      @JsonKey(name: "creator.email") String? creatorEmail,
      @JsonKey(name: "creator.username") String? creatorUsername,
      @JsonKey(name: "creator.email_verified_at")
      dynamic creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") String? creatorPassword,
      @JsonKey(name: "creator.m_comp_id") int? creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") int? creatorMDirId,
      @JsonKey(name: "creator.is_active") bool? creatorIsActive,
      @JsonKey(name: "creator.creator_id") dynamic creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id") int? creatorLastEditorId,
      @JsonKey(name: "creator.remember_token") dynamic creatorRememberToken,
      @JsonKey(name: "creator.created_at") String? creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") String? creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") String? creatorProfilImage,
      @JsonKey(name: "creator.telp") dynamic creatorTelp,
      @JsonKey(name: "creator.m_kary_id") int? creatorMKaryId,
      @JsonKey(name: "last_editor.id") int? lastEditorId,
      @JsonKey(name: "last_editor.name") String? lastEditorName,
      @JsonKey(name: "last_editor.email") String? lastEditorEmail,
      @JsonKey(name: "last_editor.username") String? lastEditorUsername,
      @JsonKey(name: "last_editor.email_verified_at")
      dynamic lastEditorEmailVerifiedAt,
      @JsonKey(name: "last_editor.password") String? lastEditorPassword,
      @JsonKey(name: "last_editor.m_comp_id") int? lastEditorMCompId,
      @JsonKey(name: "last_editor.m_dir_id") int? lastEditorMDirId,
      @JsonKey(name: "last_editor.is_active") bool? lastEditorIsActive,
      @JsonKey(name: "last_editor.creator_id") dynamic lastEditorCreatorId,
      @JsonKey(name: "last_editor.last_editor_id") int? lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at") String? lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at") String? lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image") String? lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") int? lastEditorMKaryId});
}

/// @nodoc
class __$$DataKodePresensiImplCopyWithImpl<$Res>
    extends _$DataKodePresensiCopyWithImpl<$Res, _$DataKodePresensiImpl>
    implements _$$DataKodePresensiImplCopyWith<$Res> {
  __$$DataKodePresensiImplCopyWithImpl(_$DataKodePresensiImpl _value,
      $Res Function(_$DataKodePresensiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRead = freezed,
    Object? metaDelete = freezed,
    Object? metaUpdate = freezed,
    Object? metaCreate = freezed,
    Object? id = freezed,
    Object? datumMCompId = freezed,
    Object? datumMDirId = freezed,
    Object? kode = freezed,
    Object? datumTipeJamKerjaId = freezed,
    Object? waktuMulai = freezed,
    Object? waktuAkhir = freezed,
    Object? isHariBerikutnya = freezed,
    Object? desc = freezed,
    Object? isActive = freezed,
    Object? datumCreatorId = freezed,
    Object? datumLastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mCompId = freezed,
    Object? mCompNama = freezed,
    Object? mCompIsActive = freezed,
    Object? mCompDesc = freezed,
    Object? mCompCreatorId = freezed,
    Object? mCompLastEditorId = freezed,
    Object? mCompCreatedAt = freezed,
    Object? mCompUpdatedAt = freezed,
    Object? mDirId = freezed,
    Object? mDirMCompId = freezed,
    Object? mDirNama = freezed,
    Object? mDirDesc = freezed,
    Object? mDirIsActive = freezed,
    Object? mDirCreatorId = freezed,
    Object? mDirLastEditorId = freezed,
    Object? mDirCreatedAt = freezed,
    Object? mDirUpdatedAt = freezed,
    Object? tipeJamKerjaId = freezed,
    Object? tipeJamKerjaMCompId = freezed,
    Object? tipeJamKerjaMDirId = freezed,
    Object? tipeJamKerjaGroup = freezed,
    Object? tipeJamKerjaKey = freezed,
    Object? tipeJamKerjaCode = freezed,
    Object? tipeJamKerjaValue = freezed,
    Object? tipeJamKerjaIsActive = freezed,
    Object? tipeJamKerjaCreatorId = freezed,
    Object? tipeJamKerjaLastEditorId = freezed,
    Object? tipeJamKerjaCreatedAt = freezed,
    Object? tipeJamKerjaUpdatedAt = freezed,
    Object? tipeJamKerjaValue2 = freezed,
    Object? tipeJamKerjaValue3 = freezed,
    Object? creatorId = freezed,
    Object? creatorName = freezed,
    Object? creatorEmail = freezed,
    Object? creatorUsername = freezed,
    Object? creatorEmailVerifiedAt = freezed,
    Object? creatorPassword = freezed,
    Object? creatorMCompId = freezed,
    Object? creatorMDirId = freezed,
    Object? creatorIsActive = freezed,
    Object? creatorCreatorId = freezed,
    Object? creatorLastEditorId = freezed,
    Object? creatorRememberToken = freezed,
    Object? creatorCreatedAt = freezed,
    Object? creatorUpdatedAt = freezed,
    Object? creatorProfilImage = freezed,
    Object? creatorTelp = freezed,
    Object? creatorMKaryId = freezed,
    Object? lastEditorId = freezed,
    Object? lastEditorName = freezed,
    Object? lastEditorEmail = freezed,
    Object? lastEditorUsername = freezed,
    Object? lastEditorEmailVerifiedAt = freezed,
    Object? lastEditorPassword = freezed,
    Object? lastEditorMCompId = freezed,
    Object? lastEditorMDirId = freezed,
    Object? lastEditorIsActive = freezed,
    Object? lastEditorCreatorId = freezed,
    Object? lastEditorLastEditorId = freezed,
    Object? lastEditorRememberToken = freezed,
    Object? lastEditorCreatedAt = freezed,
    Object? lastEditorUpdatedAt = freezed,
    Object? lastEditorProfilImage = freezed,
    Object? lastEditorTelp = freezed,
    Object? lastEditorMKaryId = freezed,
  }) {
    return _then(_$DataKodePresensiImpl(
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
      datumMCompId: freezed == datumMCompId
          ? _value.datumMCompId
          : datumMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDirId: freezed == datumMDirId
          ? _value.datumMDirId
          : datumMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      datumTipeJamKerjaId: freezed == datumTipeJamKerjaId
          ? _value.datumTipeJamKerjaId
          : datumTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as int?,
      waktuMulai: freezed == waktuMulai
          ? _value.waktuMulai
          : waktuMulai // ignore: cast_nullable_to_non_nullable
              as String?,
      waktuAkhir: freezed == waktuAkhir
          ? _value.waktuAkhir
          : waktuAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      isHariBerikutnya: freezed == isHariBerikutnya
          ? _value.isHariBerikutnya
          : isHariBerikutnya // ignore: cast_nullable_to_non_nullable
              as bool?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      datumCreatorId: freezed == datumCreatorId
          ? _value.datumCreatorId
          : datumCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumLastEditorId: freezed == datumLastEditorId
          ? _value.datumLastEditorId
          : datumLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCompNama: freezed == mCompNama
          ? _value.mCompNama
          : mCompNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mCompIsActive: freezed == mCompIsActive
          ? _value.mCompIsActive
          : mCompIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mCompDesc: freezed == mCompDesc
          ? _value.mCompDesc
          : mCompDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompCreatorId: freezed == mCompCreatorId
          ? _value.mCompCreatorId
          : mCompCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompLastEditorId: freezed == mCompLastEditorId
          ? _value.mCompLastEditorId
          : mCompLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompCreatedAt: freezed == mCompCreatedAt
          ? _value.mCompCreatedAt
          : mCompCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompUpdatedAt: freezed == mCompUpdatedAt
          ? _value.mCompUpdatedAt
          : mCompUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirId: freezed == mDirId
          ? _value.mDirId
          : mDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirMCompId: freezed == mDirMCompId
          ? _value.mDirMCompId
          : mDirMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirNama: freezed == mDirNama
          ? _value.mDirNama
          : mDirNama // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirDesc: freezed == mDirDesc
          ? _value.mDirDesc
          : mDirDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirIsActive: freezed == mDirIsActive
          ? _value.mDirIsActive
          : mDirIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirCreatorId: freezed == mDirCreatorId
          ? _value.mDirCreatorId
          : mDirCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirLastEditorId: freezed == mDirLastEditorId
          ? _value.mDirLastEditorId
          : mDirLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirCreatedAt: freezed == mDirCreatedAt
          ? _value.mDirCreatedAt
          : mDirCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirUpdatedAt: freezed == mDirUpdatedAt
          ? _value.mDirUpdatedAt
          : mDirUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaId: freezed == tipeJamKerjaId
          ? _value.tipeJamKerjaId
          : tipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeJamKerjaMCompId: freezed == tipeJamKerjaMCompId
          ? _value.tipeJamKerjaMCompId
          : tipeJamKerjaMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeJamKerjaMDirId: freezed == tipeJamKerjaMDirId
          ? _value.tipeJamKerjaMDirId
          : tipeJamKerjaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaGroup: freezed == tipeJamKerjaGroup
          ? _value.tipeJamKerjaGroup
          : tipeJamKerjaGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaKey: freezed == tipeJamKerjaKey
          ? _value.tipeJamKerjaKey
          : tipeJamKerjaKey // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaCode: freezed == tipeJamKerjaCode
          ? _value.tipeJamKerjaCode
          : tipeJamKerjaCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaValue: freezed == tipeJamKerjaValue
          ? _value.tipeJamKerjaValue
          : tipeJamKerjaValue // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaIsActive: freezed == tipeJamKerjaIsActive
          ? _value.tipeJamKerjaIsActive
          : tipeJamKerjaIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tipeJamKerjaCreatorId: freezed == tipeJamKerjaCreatorId
          ? _value.tipeJamKerjaCreatorId
          : tipeJamKerjaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaLastEditorId: freezed == tipeJamKerjaLastEditorId
          ? _value.tipeJamKerjaLastEditorId
          : tipeJamKerjaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaCreatedAt: freezed == tipeJamKerjaCreatedAt
          ? _value.tipeJamKerjaCreatedAt
          : tipeJamKerjaCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaUpdatedAt: freezed == tipeJamKerjaUpdatedAt
          ? _value.tipeJamKerjaUpdatedAt
          : tipeJamKerjaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeJamKerjaValue2: freezed == tipeJamKerjaValue2
          ? _value.tipeJamKerjaValue2
          : tipeJamKerjaValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaValue3: freezed == tipeJamKerjaValue3
          ? _value.tipeJamKerjaValue3
          : tipeJamKerjaValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorName: freezed == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorEmail: freezed == creatorEmail
          ? _value.creatorEmail
          : creatorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorUsername: freezed == creatorUsername
          ? _value.creatorUsername
          : creatorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorEmailVerifiedAt: freezed == creatorEmailVerifiedAt
          ? _value.creatorEmailVerifiedAt
          : creatorEmailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorPassword: freezed == creatorPassword
          ? _value.creatorPassword
          : creatorPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorMCompId: freezed == creatorMCompId
          ? _value.creatorMCompId
          : creatorMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorMDirId: freezed == creatorMDirId
          ? _value.creatorMDirId
          : creatorMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorIsActive: freezed == creatorIsActive
          ? _value.creatorIsActive
          : creatorIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      creatorCreatorId: freezed == creatorCreatorId
          ? _value.creatorCreatorId
          : creatorCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorLastEditorId: freezed == creatorLastEditorId
          ? _value.creatorLastEditorId
          : creatorLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorRememberToken: freezed == creatorRememberToken
          ? _value.creatorRememberToken
          : creatorRememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorCreatedAt: freezed == creatorCreatedAt
          ? _value.creatorCreatedAt
          : creatorCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorUpdatedAt: freezed == creatorUpdatedAt
          ? _value.creatorUpdatedAt
          : creatorUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorProfilImage: freezed == creatorProfilImage
          ? _value.creatorProfilImage
          : creatorProfilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorTelp: freezed == creatorTelp
          ? _value.creatorTelp
          : creatorTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorMKaryId: freezed == creatorMKaryId
          ? _value.creatorMKaryId
          : creatorMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorId: freezed == lastEditorId
          ? _value.lastEditorId
          : lastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorName: freezed == lastEditorName
          ? _value.lastEditorName
          : lastEditorName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorEmail: freezed == lastEditorEmail
          ? _value.lastEditorEmail
          : lastEditorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorUsername: freezed == lastEditorUsername
          ? _value.lastEditorUsername
          : lastEditorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorEmailVerifiedAt: freezed == lastEditorEmailVerifiedAt
          ? _value.lastEditorEmailVerifiedAt
          : lastEditorEmailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorPassword: freezed == lastEditorPassword
          ? _value.lastEditorPassword
          : lastEditorPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorMCompId: freezed == lastEditorMCompId
          ? _value.lastEditorMCompId
          : lastEditorMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorMDirId: freezed == lastEditorMDirId
          ? _value.lastEditorMDirId
          : lastEditorMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorIsActive: freezed == lastEditorIsActive
          ? _value.lastEditorIsActive
          : lastEditorIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastEditorCreatorId: freezed == lastEditorCreatorId
          ? _value.lastEditorCreatorId
          : lastEditorCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorLastEditorId: freezed == lastEditorLastEditorId
          ? _value.lastEditorLastEditorId
          : lastEditorLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorRememberToken: freezed == lastEditorRememberToken
          ? _value.lastEditorRememberToken
          : lastEditorRememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorCreatedAt: freezed == lastEditorCreatedAt
          ? _value.lastEditorCreatedAt
          : lastEditorCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorUpdatedAt: freezed == lastEditorUpdatedAt
          ? _value.lastEditorUpdatedAt
          : lastEditorUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorProfilImage: freezed == lastEditorProfilImage
          ? _value.lastEditorProfilImage
          : lastEditorProfilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditorTelp: freezed == lastEditorTelp
          ? _value.lastEditorTelp
          : lastEditorTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorMKaryId: freezed == lastEditorMKaryId
          ? _value.lastEditorMKaryId
          : lastEditorMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataKodePresensiImpl implements _DataKodePresensi {
  const _$DataKodePresensiImpl(
      {@JsonKey(name: "meta_read") this.metaRead,
      @JsonKey(name: "meta_delete") this.metaDelete,
      @JsonKey(name: "meta_update") this.metaUpdate,
      @JsonKey(name: "meta_create") this.metaCreate,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "m_comp_id") this.datumMCompId,
      @JsonKey(name: "m_dir_id") this.datumMDirId,
      @JsonKey(name: "kode") this.kode,
      @JsonKey(name: "tipe_jam_kerja_id") this.datumTipeJamKerjaId,
      @JsonKey(name: "waktu_mulai") this.waktuMulai,
      @JsonKey(name: "waktu_akhir") this.waktuAkhir,
      @JsonKey(name: "is_hari_berikutnya") this.isHariBerikutnya,
      @JsonKey(name: "desc") this.desc,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "creator_id") this.datumCreatorId,
      @JsonKey(name: "last_editor_id") this.datumLastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "m_comp.id") this.mCompId,
      @JsonKey(name: "m_comp.nama") this.mCompNama,
      @JsonKey(name: "m_comp.is_active") this.mCompIsActive,
      @JsonKey(name: "m_comp.desc") this.mCompDesc,
      @JsonKey(name: "m_comp.creator_id") this.mCompCreatorId,
      @JsonKey(name: "m_comp.last_editor_id") this.mCompLastEditorId,
      @JsonKey(name: "m_comp.created_at") this.mCompCreatedAt,
      @JsonKey(name: "m_comp.updated_at") this.mCompUpdatedAt,
      @JsonKey(name: "m_dir.id") this.mDirId,
      @JsonKey(name: "m_dir.m_comp_id") this.mDirMCompId,
      @JsonKey(name: "m_dir.nama") this.mDirNama,
      @JsonKey(name: "m_dir.desc") this.mDirDesc,
      @JsonKey(name: "m_dir.is_active") this.mDirIsActive,
      @JsonKey(name: "m_dir.creator_id") this.mDirCreatorId,
      @JsonKey(name: "m_dir.last_editor_id") this.mDirLastEditorId,
      @JsonKey(name: "m_dir.created_at") this.mDirCreatedAt,
      @JsonKey(name: "m_dir.updated_at") this.mDirUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.id") this.tipeJamKerjaId,
      @JsonKey(name: "tipe_jam_kerja.m_comp_id") this.tipeJamKerjaMCompId,
      @JsonKey(name: "tipe_jam_kerja.m_dir_id") this.tipeJamKerjaMDirId,
      @JsonKey(name: "tipe_jam_kerja.group") this.tipeJamKerjaGroup,
      @JsonKey(name: "tipe_jam_kerja.key") this.tipeJamKerjaKey,
      @JsonKey(name: "tipe_jam_kerja.code") this.tipeJamKerjaCode,
      @JsonKey(name: "tipe_jam_kerja.value") this.tipeJamKerjaValue,
      @JsonKey(name: "tipe_jam_kerja.is_active") this.tipeJamKerjaIsActive,
      @JsonKey(name: "tipe_jam_kerja.creator_id") this.tipeJamKerjaCreatorId,
      @JsonKey(name: "tipe_jam_kerja.last_editor_id")
      this.tipeJamKerjaLastEditorId,
      @JsonKey(name: "tipe_jam_kerja.created_at") this.tipeJamKerjaCreatedAt,
      @JsonKey(name: "tipe_jam_kerja.updated_at") this.tipeJamKerjaUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.value_2") this.tipeJamKerjaValue2,
      @JsonKey(name: "tipe_jam_kerja.value_3") this.tipeJamKerjaValue3,
      @JsonKey(name: "creator.id") this.creatorId,
      @JsonKey(name: "creator.name") this.creatorName,
      @JsonKey(name: "creator.email") this.creatorEmail,
      @JsonKey(name: "creator.username") this.creatorUsername,
      @JsonKey(name: "creator.email_verified_at") this.creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") this.creatorPassword,
      @JsonKey(name: "creator.m_comp_id") this.creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") this.creatorMDirId,
      @JsonKey(name: "creator.is_active") this.creatorIsActive,
      @JsonKey(name: "creator.creator_id") this.creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id") this.creatorLastEditorId,
      @JsonKey(name: "creator.remember_token") this.creatorRememberToken,
      @JsonKey(name: "creator.created_at") this.creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") this.creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") this.creatorProfilImage,
      @JsonKey(name: "creator.telp") this.creatorTelp,
      @JsonKey(name: "creator.m_kary_id") this.creatorMKaryId,
      @JsonKey(name: "last_editor.id") this.lastEditorId,
      @JsonKey(name: "last_editor.name") this.lastEditorName,
      @JsonKey(name: "last_editor.email") this.lastEditorEmail,
      @JsonKey(name: "last_editor.username") this.lastEditorUsername,
      @JsonKey(name: "last_editor.email_verified_at")
      this.lastEditorEmailVerifiedAt,
      @JsonKey(name: "last_editor.password") this.lastEditorPassword,
      @JsonKey(name: "last_editor.m_comp_id") this.lastEditorMCompId,
      @JsonKey(name: "last_editor.m_dir_id") this.lastEditorMDirId,
      @JsonKey(name: "last_editor.is_active") this.lastEditorIsActive,
      @JsonKey(name: "last_editor.creator_id") this.lastEditorCreatorId,
      @JsonKey(name: "last_editor.last_editor_id") this.lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token") this.lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at") this.lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at") this.lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image") this.lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") this.lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") this.lastEditorMKaryId});

  factory _$DataKodePresensiImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataKodePresensiImplFromJson(json);

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
  @JsonKey(name: "m_comp_id")
  final int? datumMCompId;
  @override
  @JsonKey(name: "m_dir_id")
  final int? datumMDirId;
  @override
  @JsonKey(name: "kode")
  final String? kode;
  @override
  @JsonKey(name: "tipe_jam_kerja_id")
  final int? datumTipeJamKerjaId;
  @override
  @JsonKey(name: "waktu_mulai")
  final String? waktuMulai;
  @override
  @JsonKey(name: "waktu_akhir")
  final String? waktuAkhir;
  @override
  @JsonKey(name: "is_hari_berikutnya")
  final bool? isHariBerikutnya;
  @override
  @JsonKey(name: "desc")
  final String? desc;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "creator_id")
  final int? datumCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  final int? datumLastEditorId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "m_comp.id")
  final int? mCompId;
  @override
  @JsonKey(name: "m_comp.nama")
  final String? mCompNama;
  @override
  @JsonKey(name: "m_comp.is_active")
  final bool? mCompIsActive;
  @override
  @JsonKey(name: "m_comp.desc")
  final dynamic mCompDesc;
  @override
  @JsonKey(name: "m_comp.creator_id")
  final dynamic mCompCreatorId;
  @override
  @JsonKey(name: "m_comp.last_editor_id")
  final dynamic mCompLastEditorId;
  @override
  @JsonKey(name: "m_comp.created_at")
  final dynamic mCompCreatedAt;
  @override
  @JsonKey(name: "m_comp.updated_at")
  final dynamic mCompUpdatedAt;
  @override
  @JsonKey(name: "m_dir.id")
  final dynamic mDirId;
  @override
  @JsonKey(name: "m_dir.m_comp_id")
  final dynamic mDirMCompId;
  @override
  @JsonKey(name: "m_dir.nama")
  final dynamic mDirNama;
  @override
  @JsonKey(name: "m_dir.desc")
  final dynamic mDirDesc;
  @override
  @JsonKey(name: "m_dir.is_active")
  final dynamic mDirIsActive;
  @override
  @JsonKey(name: "m_dir.creator_id")
  final dynamic mDirCreatorId;
  @override
  @JsonKey(name: "m_dir.last_editor_id")
  final dynamic mDirLastEditorId;
  @override
  @JsonKey(name: "m_dir.created_at")
  final dynamic mDirCreatedAt;
  @override
  @JsonKey(name: "m_dir.updated_at")
  final dynamic mDirUpdatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.id")
  final int? tipeJamKerjaId;
  @override
  @JsonKey(name: "tipe_jam_kerja.m_comp_id")
  final int? tipeJamKerjaMCompId;
  @override
  @JsonKey(name: "tipe_jam_kerja.m_dir_id")
  final dynamic tipeJamKerjaMDirId;
  @override
  @JsonKey(name: "tipe_jam_kerja.group")
  final String? tipeJamKerjaGroup;
  @override
  @JsonKey(name: "tipe_jam_kerja.key")
  final String? tipeJamKerjaKey;
  @override
  @JsonKey(name: "tipe_jam_kerja.code")
  final String? tipeJamKerjaCode;
  @override
  @JsonKey(name: "tipe_jam_kerja.value")
  final String? tipeJamKerjaValue;
  @override
  @JsonKey(name: "tipe_jam_kerja.is_active")
  final bool? tipeJamKerjaIsActive;
  @override
  @JsonKey(name: "tipe_jam_kerja.creator_id")
  final dynamic tipeJamKerjaCreatorId;
  @override
  @JsonKey(name: "tipe_jam_kerja.last_editor_id")
  final dynamic tipeJamKerjaLastEditorId;
  @override
  @JsonKey(name: "tipe_jam_kerja.created_at")
  final String? tipeJamKerjaCreatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.updated_at")
  final String? tipeJamKerjaUpdatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.value_2")
  final dynamic tipeJamKerjaValue2;
  @override
  @JsonKey(name: "tipe_jam_kerja.value_3")
  final dynamic tipeJamKerjaValue3;
  @override
  @JsonKey(name: "creator.id")
  final int? creatorId;
  @override
  @JsonKey(name: "creator.name")
  final String? creatorName;
  @override
  @JsonKey(name: "creator.email")
  final String? creatorEmail;
  @override
  @JsonKey(name: "creator.username")
  final String? creatorUsername;
  @override
  @JsonKey(name: "creator.email_verified_at")
  final dynamic creatorEmailVerifiedAt;
  @override
  @JsonKey(name: "creator.password")
  final String? creatorPassword;
  @override
  @JsonKey(name: "creator.m_comp_id")
  final int? creatorMCompId;
  @override
  @JsonKey(name: "creator.m_dir_id")
  final int? creatorMDirId;
  @override
  @JsonKey(name: "creator.is_active")
  final bool? creatorIsActive;
  @override
  @JsonKey(name: "creator.creator_id")
  final dynamic creatorCreatorId;
  @override
  @JsonKey(name: "creator.last_editor_id")
  final int? creatorLastEditorId;
  @override
  @JsonKey(name: "creator.remember_token")
  final dynamic creatorRememberToken;
  @override
  @JsonKey(name: "creator.created_at")
  final String? creatorCreatedAt;
  @override
  @JsonKey(name: "creator.updated_at")
  final String? creatorUpdatedAt;
  @override
  @JsonKey(name: "creator.profil_image")
  final String? creatorProfilImage;
  @override
  @JsonKey(name: "creator.telp")
  final dynamic creatorTelp;
  @override
  @JsonKey(name: "creator.m_kary_id")
  final int? creatorMKaryId;
  @override
  @JsonKey(name: "last_editor.id")
  final int? lastEditorId;
  @override
  @JsonKey(name: "last_editor.name")
  final String? lastEditorName;
  @override
  @JsonKey(name: "last_editor.email")
  final String? lastEditorEmail;
  @override
  @JsonKey(name: "last_editor.username")
  final String? lastEditorUsername;
  @override
  @JsonKey(name: "last_editor.email_verified_at")
  final dynamic lastEditorEmailVerifiedAt;
  @override
  @JsonKey(name: "last_editor.password")
  final String? lastEditorPassword;
  @override
  @JsonKey(name: "last_editor.m_comp_id")
  final int? lastEditorMCompId;
  @override
  @JsonKey(name: "last_editor.m_dir_id")
  final int? lastEditorMDirId;
  @override
  @JsonKey(name: "last_editor.is_active")
  final bool? lastEditorIsActive;
  @override
  @JsonKey(name: "last_editor.creator_id")
  final dynamic lastEditorCreatorId;
  @override
  @JsonKey(name: "last_editor.last_editor_id")
  final int? lastEditorLastEditorId;
  @override
  @JsonKey(name: "last_editor.remember_token")
  final dynamic lastEditorRememberToken;
  @override
  @JsonKey(name: "last_editor.created_at")
  final String? lastEditorCreatedAt;
  @override
  @JsonKey(name: "last_editor.updated_at")
  final String? lastEditorUpdatedAt;
  @override
  @JsonKey(name: "last_editor.profil_image")
  final String? lastEditorProfilImage;
  @override
  @JsonKey(name: "last_editor.telp")
  final dynamic lastEditorTelp;
  @override
  @JsonKey(name: "last_editor.m_kary_id")
  final int? lastEditorMKaryId;

  @override
  String toString() {
    return 'DataKodePresensi(metaRead: $metaRead, metaDelete: $metaDelete, metaUpdate: $metaUpdate, metaCreate: $metaCreate, id: $id, datumMCompId: $datumMCompId, datumMDirId: $datumMDirId, kode: $kode, datumTipeJamKerjaId: $datumTipeJamKerjaId, waktuMulai: $waktuMulai, waktuAkhir: $waktuAkhir, isHariBerikutnya: $isHariBerikutnya, desc: $desc, isActive: $isActive, datumCreatorId: $datumCreatorId, datumLastEditorId: $datumLastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, mCompId: $mCompId, mCompNama: $mCompNama, mCompIsActive: $mCompIsActive, mCompDesc: $mCompDesc, mCompCreatorId: $mCompCreatorId, mCompLastEditorId: $mCompLastEditorId, mCompCreatedAt: $mCompCreatedAt, mCompUpdatedAt: $mCompUpdatedAt, mDirId: $mDirId, mDirMCompId: $mDirMCompId, mDirNama: $mDirNama, mDirDesc: $mDirDesc, mDirIsActive: $mDirIsActive, mDirCreatorId: $mDirCreatorId, mDirLastEditorId: $mDirLastEditorId, mDirCreatedAt: $mDirCreatedAt, mDirUpdatedAt: $mDirUpdatedAt, tipeJamKerjaId: $tipeJamKerjaId, tipeJamKerjaMCompId: $tipeJamKerjaMCompId, tipeJamKerjaMDirId: $tipeJamKerjaMDirId, tipeJamKerjaGroup: $tipeJamKerjaGroup, tipeJamKerjaKey: $tipeJamKerjaKey, tipeJamKerjaCode: $tipeJamKerjaCode, tipeJamKerjaValue: $tipeJamKerjaValue, tipeJamKerjaIsActive: $tipeJamKerjaIsActive, tipeJamKerjaCreatorId: $tipeJamKerjaCreatorId, tipeJamKerjaLastEditorId: $tipeJamKerjaLastEditorId, tipeJamKerjaCreatedAt: $tipeJamKerjaCreatedAt, tipeJamKerjaUpdatedAt: $tipeJamKerjaUpdatedAt, tipeJamKerjaValue2: $tipeJamKerjaValue2, tipeJamKerjaValue3: $tipeJamKerjaValue3, creatorId: $creatorId, creatorName: $creatorName, creatorEmail: $creatorEmail, creatorUsername: $creatorUsername, creatorEmailVerifiedAt: $creatorEmailVerifiedAt, creatorPassword: $creatorPassword, creatorMCompId: $creatorMCompId, creatorMDirId: $creatorMDirId, creatorIsActive: $creatorIsActive, creatorCreatorId: $creatorCreatorId, creatorLastEditorId: $creatorLastEditorId, creatorRememberToken: $creatorRememberToken, creatorCreatedAt: $creatorCreatedAt, creatorUpdatedAt: $creatorUpdatedAt, creatorProfilImage: $creatorProfilImage, creatorTelp: $creatorTelp, creatorMKaryId: $creatorMKaryId, lastEditorId: $lastEditorId, lastEditorName: $lastEditorName, lastEditorEmail: $lastEditorEmail, lastEditorUsername: $lastEditorUsername, lastEditorEmailVerifiedAt: $lastEditorEmailVerifiedAt, lastEditorPassword: $lastEditorPassword, lastEditorMCompId: $lastEditorMCompId, lastEditorMDirId: $lastEditorMDirId, lastEditorIsActive: $lastEditorIsActive, lastEditorCreatorId: $lastEditorCreatorId, lastEditorLastEditorId: $lastEditorLastEditorId, lastEditorRememberToken: $lastEditorRememberToken, lastEditorCreatedAt: $lastEditorCreatedAt, lastEditorUpdatedAt: $lastEditorUpdatedAt, lastEditorProfilImage: $lastEditorProfilImage, lastEditorTelp: $lastEditorTelp, lastEditorMKaryId: $lastEditorMKaryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataKodePresensiImpl &&
            (identical(other.metaRead, metaRead) ||
                other.metaRead == metaRead) &&
            (identical(other.metaDelete, metaDelete) ||
                other.metaDelete == metaDelete) &&
            (identical(other.metaUpdate, metaUpdate) ||
                other.metaUpdate == metaUpdate) &&
            (identical(other.metaCreate, metaCreate) ||
                other.metaCreate == metaCreate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.datumMCompId, datumMCompId) ||
                other.datumMCompId == datumMCompId) &&
            (identical(other.datumMDirId, datumMDirId) ||
                other.datumMDirId == datumMDirId) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.datumTipeJamKerjaId, datumTipeJamKerjaId) ||
                other.datumTipeJamKerjaId == datumTipeJamKerjaId) &&
            (identical(other.waktuMulai, waktuMulai) ||
                other.waktuMulai == waktuMulai) &&
            (identical(other.waktuAkhir, waktuAkhir) ||
                other.waktuAkhir == waktuAkhir) &&
            (identical(other.isHariBerikutnya, isHariBerikutnya) ||
                other.isHariBerikutnya == isHariBerikutnya) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.datumCreatorId, datumCreatorId) ||
                other.datumCreatorId == datumCreatorId) &&
            (identical(other.datumLastEditorId, datumLastEditorId) ||
                other.datumLastEditorId == datumLastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.mCompId, mCompId) || other.mCompId == mCompId) &&
            (identical(other.mCompNama, mCompNama) ||
                other.mCompNama == mCompNama) &&
            (identical(other.mCompIsActive, mCompIsActive) ||
                other.mCompIsActive == mCompIsActive) &&
            const DeepCollectionEquality().equals(other.mCompDesc, mCompDesc) &&
            const DeepCollectionEquality()
                .equals(other.mCompCreatorId, mCompCreatorId) &&
            const DeepCollectionEquality()
                .equals(other.mCompLastEditorId, mCompLastEditorId) &&
            const DeepCollectionEquality()
                .equals(other.mCompCreatedAt, mCompCreatedAt) &&
            const DeepCollectionEquality()
                .equals(other.mCompUpdatedAt, mCompUpdatedAt) &&
            const DeepCollectionEquality().equals(other.mDirId, mDirId) &&
            const DeepCollectionEquality()
                .equals(other.mDirMCompId, mDirMCompId) &&
            const DeepCollectionEquality().equals(other.mDirNama, mDirNama) &&
            const DeepCollectionEquality().equals(other.mDirDesc, mDirDesc) &&
            const DeepCollectionEquality()
                .equals(other.mDirIsActive, mDirIsActive) &&
            const DeepCollectionEquality()
                .equals(other.mDirCreatorId, mDirCreatorId) &&
            const DeepCollectionEquality()
                .equals(other.mDirLastEditorId, mDirLastEditorId) &&
            const DeepCollectionEquality()
                .equals(other.mDirCreatedAt, mDirCreatedAt) &&
            const DeepCollectionEquality()
                .equals(other.mDirUpdatedAt, mDirUpdatedAt) &&
            (identical(other.tipeJamKerjaId, tipeJamKerjaId) ||
                other.tipeJamKerjaId == tipeJamKerjaId) &&
            (identical(other.tipeJamKerjaMCompId, tipeJamKerjaMCompId) ||
                other.tipeJamKerjaMCompId == tipeJamKerjaMCompId) &&
            const DeepCollectionEquality()
                .equals(other.tipeJamKerjaMDirId, tipeJamKerjaMDirId) &&
            (identical(other.tipeJamKerjaGroup, tipeJamKerjaGroup) ||
                other.tipeJamKerjaGroup == tipeJamKerjaGroup) &&
            (identical(other.tipeJamKerjaKey, tipeJamKerjaKey) ||
                other.tipeJamKerjaKey == tipeJamKerjaKey) &&
            (identical(other.tipeJamKerjaCode, tipeJamKerjaCode) ||
                other.tipeJamKerjaCode == tipeJamKerjaCode) &&
            (identical(other.tipeJamKerjaValue, tipeJamKerjaValue) ||
                other.tipeJamKerjaValue == tipeJamKerjaValue) &&
            (identical(other.tipeJamKerjaIsActive, tipeJamKerjaIsActive) ||
                other.tipeJamKerjaIsActive == tipeJamKerjaIsActive) &&
            const DeepCollectionEquality()
                .equals(other.tipeJamKerjaCreatorId, tipeJamKerjaCreatorId) &&
            const DeepCollectionEquality().equals(
                other.tipeJamKerjaLastEditorId, tipeJamKerjaLastEditorId) &&
            (identical(other.tipeJamKerjaCreatedAt, tipeJamKerjaCreatedAt) ||
                other.tipeJamKerjaCreatedAt == tipeJamKerjaCreatedAt) &&
            (identical(other.tipeJamKerjaUpdatedAt, tipeJamKerjaUpdatedAt) ||
                other.tipeJamKerjaUpdatedAt == tipeJamKerjaUpdatedAt) &&
            const DeepCollectionEquality()
                .equals(other.tipeJamKerjaValue2, tipeJamKerjaValue2) &&
            const DeepCollectionEquality()
                .equals(other.tipeJamKerjaValue3, tipeJamKerjaValue3) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creatorName, creatorName) || other.creatorName == creatorName) &&
            (identical(other.creatorEmail, creatorEmail) || other.creatorEmail == creatorEmail) &&
            (identical(other.creatorUsername, creatorUsername) || other.creatorUsername == creatorUsername) &&
            const DeepCollectionEquality().equals(other.creatorEmailVerifiedAt, creatorEmailVerifiedAt) &&
            (identical(other.creatorPassword, creatorPassword) || other.creatorPassword == creatorPassword) &&
            (identical(other.creatorMCompId, creatorMCompId) || other.creatorMCompId == creatorMCompId) &&
            (identical(other.creatorMDirId, creatorMDirId) || other.creatorMDirId == creatorMDirId) &&
            (identical(other.creatorIsActive, creatorIsActive) || other.creatorIsActive == creatorIsActive) &&
            const DeepCollectionEquality().equals(other.creatorCreatorId, creatorCreatorId) &&
            (identical(other.creatorLastEditorId, creatorLastEditorId) || other.creatorLastEditorId == creatorLastEditorId) &&
            const DeepCollectionEquality().equals(other.creatorRememberToken, creatorRememberToken) &&
            (identical(other.creatorCreatedAt, creatorCreatedAt) || other.creatorCreatedAt == creatorCreatedAt) &&
            (identical(other.creatorUpdatedAt, creatorUpdatedAt) || other.creatorUpdatedAt == creatorUpdatedAt) &&
            (identical(other.creatorProfilImage, creatorProfilImage) || other.creatorProfilImage == creatorProfilImage) &&
            const DeepCollectionEquality().equals(other.creatorTelp, creatorTelp) &&
            (identical(other.creatorMKaryId, creatorMKaryId) || other.creatorMKaryId == creatorMKaryId) &&
            (identical(other.lastEditorId, lastEditorId) || other.lastEditorId == lastEditorId) &&
            (identical(other.lastEditorName, lastEditorName) || other.lastEditorName == lastEditorName) &&
            (identical(other.lastEditorEmail, lastEditorEmail) || other.lastEditorEmail == lastEditorEmail) &&
            (identical(other.lastEditorUsername, lastEditorUsername) || other.lastEditorUsername == lastEditorUsername) &&
            const DeepCollectionEquality().equals(other.lastEditorEmailVerifiedAt, lastEditorEmailVerifiedAt) &&
            (identical(other.lastEditorPassword, lastEditorPassword) || other.lastEditorPassword == lastEditorPassword) &&
            (identical(other.lastEditorMCompId, lastEditorMCompId) || other.lastEditorMCompId == lastEditorMCompId) &&
            (identical(other.lastEditorMDirId, lastEditorMDirId) || other.lastEditorMDirId == lastEditorMDirId) &&
            (identical(other.lastEditorIsActive, lastEditorIsActive) || other.lastEditorIsActive == lastEditorIsActive) &&
            const DeepCollectionEquality().equals(other.lastEditorCreatorId, lastEditorCreatorId) &&
            (identical(other.lastEditorLastEditorId, lastEditorLastEditorId) || other.lastEditorLastEditorId == lastEditorLastEditorId) &&
            const DeepCollectionEquality().equals(other.lastEditorRememberToken, lastEditorRememberToken) &&
            (identical(other.lastEditorCreatedAt, lastEditorCreatedAt) || other.lastEditorCreatedAt == lastEditorCreatedAt) &&
            (identical(other.lastEditorUpdatedAt, lastEditorUpdatedAt) || other.lastEditorUpdatedAt == lastEditorUpdatedAt) &&
            (identical(other.lastEditorProfilImage, lastEditorProfilImage) || other.lastEditorProfilImage == lastEditorProfilImage) &&
            const DeepCollectionEquality().equals(other.lastEditorTelp, lastEditorTelp) &&
            (identical(other.lastEditorMKaryId, lastEditorMKaryId) || other.lastEditorMKaryId == lastEditorMKaryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        metaRead,
        metaDelete,
        metaUpdate,
        metaCreate,
        id,
        datumMCompId,
        datumMDirId,
        kode,
        datumTipeJamKerjaId,
        waktuMulai,
        waktuAkhir,
        isHariBerikutnya,
        desc,
        isActive,
        datumCreatorId,
        datumLastEditorId,
        createdAt,
        updatedAt,
        mCompId,
        mCompNama,
        mCompIsActive,
        const DeepCollectionEquality().hash(mCompDesc),
        const DeepCollectionEquality().hash(mCompCreatorId),
        const DeepCollectionEquality().hash(mCompLastEditorId),
        const DeepCollectionEquality().hash(mCompCreatedAt),
        const DeepCollectionEquality().hash(mCompUpdatedAt),
        const DeepCollectionEquality().hash(mDirId),
        const DeepCollectionEquality().hash(mDirMCompId),
        const DeepCollectionEquality().hash(mDirNama),
        const DeepCollectionEquality().hash(mDirDesc),
        const DeepCollectionEquality().hash(mDirIsActive),
        const DeepCollectionEquality().hash(mDirCreatorId),
        const DeepCollectionEquality().hash(mDirLastEditorId),
        const DeepCollectionEquality().hash(mDirCreatedAt),
        const DeepCollectionEquality().hash(mDirUpdatedAt),
        tipeJamKerjaId,
        tipeJamKerjaMCompId,
        const DeepCollectionEquality().hash(tipeJamKerjaMDirId),
        tipeJamKerjaGroup,
        tipeJamKerjaKey,
        tipeJamKerjaCode,
        tipeJamKerjaValue,
        tipeJamKerjaIsActive,
        const DeepCollectionEquality().hash(tipeJamKerjaCreatorId),
        const DeepCollectionEquality().hash(tipeJamKerjaLastEditorId),
        tipeJamKerjaCreatedAt,
        tipeJamKerjaUpdatedAt,
        const DeepCollectionEquality().hash(tipeJamKerjaValue2),
        const DeepCollectionEquality().hash(tipeJamKerjaValue3),
        creatorId,
        creatorName,
        creatorEmail,
        creatorUsername,
        const DeepCollectionEquality().hash(creatorEmailVerifiedAt),
        creatorPassword,
        creatorMCompId,
        creatorMDirId,
        creatorIsActive,
        const DeepCollectionEquality().hash(creatorCreatorId),
        creatorLastEditorId,
        const DeepCollectionEquality().hash(creatorRememberToken),
        creatorCreatedAt,
        creatorUpdatedAt,
        creatorProfilImage,
        const DeepCollectionEquality().hash(creatorTelp),
        creatorMKaryId,
        lastEditorId,
        lastEditorName,
        lastEditorEmail,
        lastEditorUsername,
        const DeepCollectionEquality().hash(lastEditorEmailVerifiedAt),
        lastEditorPassword,
        lastEditorMCompId,
        lastEditorMDirId,
        lastEditorIsActive,
        const DeepCollectionEquality().hash(lastEditorCreatorId),
        lastEditorLastEditorId,
        const DeepCollectionEquality().hash(lastEditorRememberToken),
        lastEditorCreatedAt,
        lastEditorUpdatedAt,
        lastEditorProfilImage,
        const DeepCollectionEquality().hash(lastEditorTelp),
        lastEditorMKaryId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataKodePresensiImplCopyWith<_$DataKodePresensiImpl> get copyWith =>
      __$$DataKodePresensiImplCopyWithImpl<_$DataKodePresensiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataKodePresensiImplToJson(
      this,
    );
  }
}

abstract class _DataKodePresensi implements DataKodePresensi {
  const factory _DataKodePresensi(
      {@JsonKey(name: "meta_read") final bool? metaRead,
      @JsonKey(name: "meta_delete") final bool? metaDelete,
      @JsonKey(name: "meta_update") final bool? metaUpdate,
      @JsonKey(name: "meta_create") final bool? metaCreate,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_comp_id") final int? datumMCompId,
      @JsonKey(name: "m_dir_id") final int? datumMDirId,
      @JsonKey(name: "kode") final String? kode,
      @JsonKey(name: "tipe_jam_kerja_id") final int? datumTipeJamKerjaId,
      @JsonKey(name: "waktu_mulai") final String? waktuMulai,
      @JsonKey(name: "waktu_akhir") final String? waktuAkhir,
      @JsonKey(name: "is_hari_berikutnya") final bool? isHariBerikutnya,
      @JsonKey(name: "desc") final String? desc,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "creator_id") final int? datumCreatorId,
      @JsonKey(name: "last_editor_id") final int? datumLastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "m_comp.id") final int? mCompId,
      @JsonKey(name: "m_comp.nama") final String? mCompNama,
      @JsonKey(name: "m_comp.is_active") final bool? mCompIsActive,
      @JsonKey(name: "m_comp.desc") final dynamic mCompDesc,
      @JsonKey(name: "m_comp.creator_id") final dynamic mCompCreatorId,
      @JsonKey(name: "m_comp.last_editor_id") final dynamic mCompLastEditorId,
      @JsonKey(name: "m_comp.created_at") final dynamic mCompCreatedAt,
      @JsonKey(name: "m_comp.updated_at") final dynamic mCompUpdatedAt,
      @JsonKey(name: "m_dir.id") final dynamic mDirId,
      @JsonKey(name: "m_dir.m_comp_id") final dynamic mDirMCompId,
      @JsonKey(name: "m_dir.nama") final dynamic mDirNama,
      @JsonKey(name: "m_dir.desc") final dynamic mDirDesc,
      @JsonKey(name: "m_dir.is_active") final dynamic mDirIsActive,
      @JsonKey(name: "m_dir.creator_id") final dynamic mDirCreatorId,
      @JsonKey(name: "m_dir.last_editor_id") final dynamic mDirLastEditorId,
      @JsonKey(name: "m_dir.created_at") final dynamic mDirCreatedAt,
      @JsonKey(name: "m_dir.updated_at") final dynamic mDirUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.id") final int? tipeJamKerjaId,
      @JsonKey(name: "tipe_jam_kerja.m_comp_id") final int? tipeJamKerjaMCompId,
      @JsonKey(name: "tipe_jam_kerja.m_dir_id")
      final dynamic tipeJamKerjaMDirId,
      @JsonKey(name: "tipe_jam_kerja.group") final String? tipeJamKerjaGroup,
      @JsonKey(name: "tipe_jam_kerja.key") final String? tipeJamKerjaKey,
      @JsonKey(name: "tipe_jam_kerja.code") final String? tipeJamKerjaCode,
      @JsonKey(name: "tipe_jam_kerja.value") final String? tipeJamKerjaValue,
      @JsonKey(name: "tipe_jam_kerja.is_active")
      final bool? tipeJamKerjaIsActive,
      @JsonKey(name: "tipe_jam_kerja.creator_id")
      final dynamic tipeJamKerjaCreatorId,
      @JsonKey(name: "tipe_jam_kerja.last_editor_id")
      final dynamic tipeJamKerjaLastEditorId,
      @JsonKey(name: "tipe_jam_kerja.created_at")
      final String? tipeJamKerjaCreatedAt,
      @JsonKey(name: "tipe_jam_kerja.updated_at")
      final String? tipeJamKerjaUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.value_2") final dynamic tipeJamKerjaValue2,
      @JsonKey(name: "tipe_jam_kerja.value_3") final dynamic tipeJamKerjaValue3,
      @JsonKey(name: "creator.id") final int? creatorId,
      @JsonKey(name: "creator.name") final String? creatorName,
      @JsonKey(name: "creator.email") final String? creatorEmail,
      @JsonKey(name: "creator.username") final String? creatorUsername,
      @JsonKey(name: "creator.email_verified_at")
      final dynamic creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") final String? creatorPassword,
      @JsonKey(name: "creator.m_comp_id") final int? creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") final int? creatorMDirId,
      @JsonKey(name: "creator.is_active") final bool? creatorIsActive,
      @JsonKey(name: "creator.creator_id") final dynamic creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id") final int? creatorLastEditorId,
      @JsonKey(name: "creator.remember_token")
      final dynamic creatorRememberToken,
      @JsonKey(name: "creator.created_at") final String? creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") final String? creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") final String? creatorProfilImage,
      @JsonKey(name: "creator.telp") final dynamic creatorTelp,
      @JsonKey(name: "creator.m_kary_id") final int? creatorMKaryId,
      @JsonKey(name: "last_editor.id") final int? lastEditorId,
      @JsonKey(name: "last_editor.name") final String? lastEditorName,
      @JsonKey(name: "last_editor.email") final String? lastEditorEmail,
      @JsonKey(name: "last_editor.username") final String? lastEditorUsername,
      @JsonKey(name: "last_editor.email_verified_at")
      final dynamic lastEditorEmailVerifiedAt,
      @JsonKey(name: "last_editor.password") final String? lastEditorPassword,
      @JsonKey(name: "last_editor.m_comp_id") final int? lastEditorMCompId,
      @JsonKey(name: "last_editor.m_dir_id") final int? lastEditorMDirId,
      @JsonKey(name: "last_editor.is_active") final bool? lastEditorIsActive,
      @JsonKey(name: "last_editor.creator_id")
      final dynamic lastEditorCreatorId,
      @JsonKey(name: "last_editor.last_editor_id")
      final int? lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      final dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at")
      final String? lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at")
      final String? lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image")
      final String? lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") final dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id")
      final int? lastEditorMKaryId}) = _$DataKodePresensiImpl;

  factory _DataKodePresensi.fromJson(Map<String, dynamic> json) =
      _$DataKodePresensiImpl.fromJson;

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
  @JsonKey(name: "m_comp_id")
  int? get datumMCompId;
  @override
  @JsonKey(name: "m_dir_id")
  int? get datumMDirId;
  @override
  @JsonKey(name: "kode")
  String? get kode;
  @override
  @JsonKey(name: "tipe_jam_kerja_id")
  int? get datumTipeJamKerjaId;
  @override
  @JsonKey(name: "waktu_mulai")
  String? get waktuMulai;
  @override
  @JsonKey(name: "waktu_akhir")
  String? get waktuAkhir;
  @override
  @JsonKey(name: "is_hari_berikutnya")
  bool? get isHariBerikutnya;
  @override
  @JsonKey(name: "desc")
  String? get desc;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "creator_id")
  int? get datumCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  int? get datumLastEditorId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "m_comp.id")
  int? get mCompId;
  @override
  @JsonKey(name: "m_comp.nama")
  String? get mCompNama;
  @override
  @JsonKey(name: "m_comp.is_active")
  bool? get mCompIsActive;
  @override
  @JsonKey(name: "m_comp.desc")
  dynamic get mCompDesc;
  @override
  @JsonKey(name: "m_comp.creator_id")
  dynamic get mCompCreatorId;
  @override
  @JsonKey(name: "m_comp.last_editor_id")
  dynamic get mCompLastEditorId;
  @override
  @JsonKey(name: "m_comp.created_at")
  dynamic get mCompCreatedAt;
  @override
  @JsonKey(name: "m_comp.updated_at")
  dynamic get mCompUpdatedAt;
  @override
  @JsonKey(name: "m_dir.id")
  dynamic get mDirId;
  @override
  @JsonKey(name: "m_dir.m_comp_id")
  dynamic get mDirMCompId;
  @override
  @JsonKey(name: "m_dir.nama")
  dynamic get mDirNama;
  @override
  @JsonKey(name: "m_dir.desc")
  dynamic get mDirDesc;
  @override
  @JsonKey(name: "m_dir.is_active")
  dynamic get mDirIsActive;
  @override
  @JsonKey(name: "m_dir.creator_id")
  dynamic get mDirCreatorId;
  @override
  @JsonKey(name: "m_dir.last_editor_id")
  dynamic get mDirLastEditorId;
  @override
  @JsonKey(name: "m_dir.created_at")
  dynamic get mDirCreatedAt;
  @override
  @JsonKey(name: "m_dir.updated_at")
  dynamic get mDirUpdatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.id")
  int? get tipeJamKerjaId;
  @override
  @JsonKey(name: "tipe_jam_kerja.m_comp_id")
  int? get tipeJamKerjaMCompId;
  @override
  @JsonKey(name: "tipe_jam_kerja.m_dir_id")
  dynamic get tipeJamKerjaMDirId;
  @override
  @JsonKey(name: "tipe_jam_kerja.group")
  String? get tipeJamKerjaGroup;
  @override
  @JsonKey(name: "tipe_jam_kerja.key")
  String? get tipeJamKerjaKey;
  @override
  @JsonKey(name: "tipe_jam_kerja.code")
  String? get tipeJamKerjaCode;
  @override
  @JsonKey(name: "tipe_jam_kerja.value")
  String? get tipeJamKerjaValue;
  @override
  @JsonKey(name: "tipe_jam_kerja.is_active")
  bool? get tipeJamKerjaIsActive;
  @override
  @JsonKey(name: "tipe_jam_kerja.creator_id")
  dynamic get tipeJamKerjaCreatorId;
  @override
  @JsonKey(name: "tipe_jam_kerja.last_editor_id")
  dynamic get tipeJamKerjaLastEditorId;
  @override
  @JsonKey(name: "tipe_jam_kerja.created_at")
  String? get tipeJamKerjaCreatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.updated_at")
  String? get tipeJamKerjaUpdatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.value_2")
  dynamic get tipeJamKerjaValue2;
  @override
  @JsonKey(name: "tipe_jam_kerja.value_3")
  dynamic get tipeJamKerjaValue3;
  @override
  @JsonKey(name: "creator.id")
  int? get creatorId;
  @override
  @JsonKey(name: "creator.name")
  String? get creatorName;
  @override
  @JsonKey(name: "creator.email")
  String? get creatorEmail;
  @override
  @JsonKey(name: "creator.username")
  String? get creatorUsername;
  @override
  @JsonKey(name: "creator.email_verified_at")
  dynamic get creatorEmailVerifiedAt;
  @override
  @JsonKey(name: "creator.password")
  String? get creatorPassword;
  @override
  @JsonKey(name: "creator.m_comp_id")
  int? get creatorMCompId;
  @override
  @JsonKey(name: "creator.m_dir_id")
  int? get creatorMDirId;
  @override
  @JsonKey(name: "creator.is_active")
  bool? get creatorIsActive;
  @override
  @JsonKey(name: "creator.creator_id")
  dynamic get creatorCreatorId;
  @override
  @JsonKey(name: "creator.last_editor_id")
  int? get creatorLastEditorId;
  @override
  @JsonKey(name: "creator.remember_token")
  dynamic get creatorRememberToken;
  @override
  @JsonKey(name: "creator.created_at")
  String? get creatorCreatedAt;
  @override
  @JsonKey(name: "creator.updated_at")
  String? get creatorUpdatedAt;
  @override
  @JsonKey(name: "creator.profil_image")
  String? get creatorProfilImage;
  @override
  @JsonKey(name: "creator.telp")
  dynamic get creatorTelp;
  @override
  @JsonKey(name: "creator.m_kary_id")
  int? get creatorMKaryId;
  @override
  @JsonKey(name: "last_editor.id")
  int? get lastEditorId;
  @override
  @JsonKey(name: "last_editor.name")
  String? get lastEditorName;
  @override
  @JsonKey(name: "last_editor.email")
  String? get lastEditorEmail;
  @override
  @JsonKey(name: "last_editor.username")
  String? get lastEditorUsername;
  @override
  @JsonKey(name: "last_editor.email_verified_at")
  dynamic get lastEditorEmailVerifiedAt;
  @override
  @JsonKey(name: "last_editor.password")
  String? get lastEditorPassword;
  @override
  @JsonKey(name: "last_editor.m_comp_id")
  int? get lastEditorMCompId;
  @override
  @JsonKey(name: "last_editor.m_dir_id")
  int? get lastEditorMDirId;
  @override
  @JsonKey(name: "last_editor.is_active")
  bool? get lastEditorIsActive;
  @override
  @JsonKey(name: "last_editor.creator_id")
  dynamic get lastEditorCreatorId;
  @override
  @JsonKey(name: "last_editor.last_editor_id")
  int? get lastEditorLastEditorId;
  @override
  @JsonKey(name: "last_editor.remember_token")
  dynamic get lastEditorRememberToken;
  @override
  @JsonKey(name: "last_editor.created_at")
  String? get lastEditorCreatedAt;
  @override
  @JsonKey(name: "last_editor.updated_at")
  String? get lastEditorUpdatedAt;
  @override
  @JsonKey(name: "last_editor.profil_image")
  String? get lastEditorProfilImage;
  @override
  @JsonKey(name: "last_editor.telp")
  dynamic get lastEditorTelp;
  @override
  @JsonKey(name: "last_editor.m_kary_id")
  int? get lastEditorMKaryId;
  @override
  @JsonKey(ignore: true)
  _$$DataKodePresensiImplCopyWith<_$DataKodePresensiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_standar_gaji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseStandarGaji _$ResponseStandarGajiFromJson(Map<String, dynamic> json) {
  return _ResponseStandarGaji.fromJson(json);
}

/// @nodoc
mixin _$ResponseStandarGaji {
  @JsonKey(name: "data")
  List<DataStandarGaji>? get data => throw _privateConstructorUsedError;
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
  $ResponseStandarGajiCopyWith<ResponseStandarGaji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseStandarGajiCopyWith<$Res> {
  factory $ResponseStandarGajiCopyWith(
          ResponseStandarGaji value, $Res Function(ResponseStandarGaji) then) =
      _$ResponseStandarGajiCopyWithImpl<$Res, ResponseStandarGaji>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataStandarGaji>? data,
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
class _$ResponseStandarGajiCopyWithImpl<$Res, $Val extends ResponseStandarGaji>
    implements $ResponseStandarGajiCopyWith<$Res> {
  _$ResponseStandarGajiCopyWithImpl(this._value, this._then);

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
              as List<DataStandarGaji>?,
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
abstract class _$$ResponseStandarGajiImplCopyWith<$Res>
    implements $ResponseStandarGajiCopyWith<$Res> {
  factory _$$ResponseStandarGajiImplCopyWith(_$ResponseStandarGajiImpl value,
          $Res Function(_$ResponseStandarGajiImpl) then) =
      __$$ResponseStandarGajiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataStandarGaji>? data,
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
class __$$ResponseStandarGajiImplCopyWithImpl<$Res>
    extends _$ResponseStandarGajiCopyWithImpl<$Res, _$ResponseStandarGajiImpl>
    implements _$$ResponseStandarGajiImplCopyWith<$Res> {
  __$$ResponseStandarGajiImplCopyWithImpl(_$ResponseStandarGajiImpl _value,
      $Res Function(_$ResponseStandarGajiImpl) _then)
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
    return _then(_$ResponseStandarGajiImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataStandarGaji>?,
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
class _$ResponseStandarGajiImpl implements _ResponseStandarGaji {
  const _$ResponseStandarGajiImpl(
      {@JsonKey(name: "data") final List<DataStandarGaji>? data,
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

  factory _$ResponseStandarGajiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseStandarGajiImplFromJson(json);

  final List<DataStandarGaji>? _data;
  @override
  @JsonKey(name: "data")
  List<DataStandarGaji>? get data {
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
    return 'ResponseStandarGaji(data: $data, total: $total, currentPage: $currentPage, perPage: $perPage, from: $from, to: $to, lastPage: $lastPage, hasNext: $hasNext, prev: $prev, next: $next, processedTime: $processedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseStandarGajiImpl &&
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
  _$$ResponseStandarGajiImplCopyWith<_$ResponseStandarGajiImpl> get copyWith =>
      __$$ResponseStandarGajiImplCopyWithImpl<_$ResponseStandarGajiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseStandarGajiImplToJson(
      this,
    );
  }
}

abstract class _ResponseStandarGaji implements ResponseStandarGaji {
  const factory _ResponseStandarGaji(
          {@JsonKey(name: "data") final List<DataStandarGaji>? data,
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
      _$ResponseStandarGajiImpl;

  factory _ResponseStandarGaji.fromJson(Map<String, dynamic> json) =
      _$ResponseStandarGajiImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<DataStandarGaji>? get data;
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
  _$$ResponseStandarGajiImplCopyWith<_$ResponseStandarGajiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataStandarGaji _$DataStandarGajiFromJson(Map<String, dynamic> json) {
  return _DataStandarGaji.fromJson(json);
}

/// @nodoc
mixin _$DataStandarGaji {
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
  @JsonKey(name: "m_divisi_id")
  int? get datumMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept_id")
  int? get datumMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_id")
  int? get datumMZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi_id")
  int? get datumMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading_id")
  int? get datumGradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "gaji_pokok")
  int? get gajiPokok => throw _privateConstructorUsedError;
  @JsonKey(name: "gaji_pokok_periode")
  String? get gajiPokokPeriode => throw _privateConstructorUsedError;
  @JsonKey(name: "uang_saku")
  int? get uangSaku => throw _privateConstructorUsedError;
  @JsonKey(name: "uang_saku_periode")
  String? get uangSakuPeriode => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_posisi")
  int? get tunjanganPosisi => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_posisi_periode")
  String? get tunjanganPosisiPeriode => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan_id")
  int? get datumTunjanganKemahalanId => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan_periode")
  String? get tunjanganKemahalanPeriode => throw _privateConstructorUsedError;
  @JsonKey(name: "uang_makan")
  int? get uangMakan => throw _privateConstructorUsedError;
  @JsonKey(name: "uang_makan_periode")
  String? get uangMakanPeriode => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_tetap")
  int? get tunjanganTetap => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_tetap_periode")
  String? get tunjanganTetapPeriode => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  dynamic get datumCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  dynamic get datumLastEditorId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "m_divisi.id")
  int? get mDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.m_comp_id")
  int? get mDivisiMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.m_dir_id")
  int? get mDivisiMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.nama")
  String? get mDivisiNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.desc")
  String? get mDivisiDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.is_active")
  bool? get mDivisiIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.creator_id")
  int? get mDivisiCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.last_editor_id")
  int? get mDivisiLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.created_at")
  String? get mDivisiCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.updated_at")
  String? get mDivisiUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.id")
  int? get mDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.m_dir_id")
  int? get mDeptMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.m_divisi_id")
  int? get mDeptMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.nama")
  String? get mDeptNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.desc")
  String? get mDeptDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.is_active")
  bool? get mDeptIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.creator_id")
  dynamic get mDeptCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.last_editor_id")
  dynamic get mDeptLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.created_at")
  String? get mDeptCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.updated_at")
  String? get mDeptUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.id")
  int? get mZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.m_comp_id")
  int? get mZonaMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.m_dir_id")
  int? get mZonaMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.m_tunj_kemahalan_id")
  int? get mZonaMTunjKemahalanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.kode")
  String? get mZonaKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.nama")
  String? get mZonaNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.desc")
  String? get mZonaDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.is_active")
  bool? get mZonaIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.creator_id")
  dynamic get mZonaCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.last_editor_id")
  dynamic get mZonaLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.created_at")
  String? get mZonaCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.updated_at")
  String? get mZonaUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.id")
  int? get mPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.m_comp_id")
  int? get mPosisiMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.m_dir_id")
  int? get mPosisiMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.kode")
  String? get mPosisiKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.desc_kerja")
  String? get mPosisiDescKerja => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.desc_kerja_1")
  String? get mPosisiDescKerja1 => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.desc_kerja_2")
  String? get mPosisiDescKerja2 => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.min_pengalaman")
  String? get mPosisiMinPengalaman => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.min_pendidikan_id")
  int? get mPosisiMinPendidikanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.min_gaji_pokok")
  String? get mPosisiMinGajiPokok => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.max_gaji_pokok")
  String? get mPosisiMaxGajiPokok => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.biaya")
  dynamic get mPosisiBiaya => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.tipe_bpjs_id")
  int? get mPosisiTipeBpjsId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.potongan_bpjs")
  String? get mPosisiPotonganBpjs => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.desc")
  dynamic get mPosisiDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.is_active")
  bool? get mPosisiIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.creator_id")
  dynamic get mPosisiCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.last_editor_id")
  dynamic get mPosisiLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.created_at")
  String? get mPosisiCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.updated_at")
  String? get mPosisiUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.id")
  int? get gradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.m_comp_id")
  int? get gradingMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.m_dir_id")
  dynamic get gradingMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.group")
  String? get gradingGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.key")
  String? get gradingKey => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.code")
  String? get gradingCode => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.value")
  String? get gradingValue => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.is_active")
  bool? get gradingIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.creator_id")
  dynamic get gradingCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.last_editor_id")
  dynamic get gradingLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.created_at")
  String? get gradingCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.updated_at")
  String? get gradingUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.value_2")
  dynamic get gradingValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.value_3")
  dynamic get gradingValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.id")
  int? get tunjanganKemahalanId => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.m_comp_id")
  int? get tunjanganKemahalanMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.m_dir_id")
  int? get tunjanganKemahalanMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.kode")
  String? get tunjanganKemahalanKode => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.m_divisi_id")
  int? get tunjanganKemahalanMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.m_dept_id")
  int? get tunjanganKemahalanMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.m_zona_id")
  dynamic get tunjanganKemahalanMZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.m_posisi_id")
  int? get tunjanganKemahalanMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.besaran")
  String? get tunjanganKemahalanBesaran => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.desc")
  String? get tunjanganKemahalanDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.is_active")
  bool? get tunjanganKemahalanIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.creator_id")
  dynamic get tunjanganKemahalanCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.last_editor_id")
  dynamic get tunjanganKemahalanLastEditorId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.created_at")
  String? get tunjanganKemahalanCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tunjangan_kemahalan.updated_at")
  String? get tunjanganKemahalanUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.id")
  dynamic get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.name")
  dynamic get creatorName => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.email")
  dynamic get creatorEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.username")
  dynamic get creatorUsername => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.email_verified_at")
  dynamic get creatorEmailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.password")
  dynamic get creatorPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.m_comp_id")
  dynamic get creatorMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.m_dir_id")
  dynamic get creatorMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.is_active")
  dynamic get creatorIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.creator_id")
  dynamic get creatorCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.last_editor_id")
  dynamic get creatorLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.remember_token")
  dynamic get creatorRememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.created_at")
  dynamic get creatorCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.updated_at")
  dynamic get creatorUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.profil_image")
  dynamic get creatorProfilImage => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.telp")
  dynamic get creatorTelp => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.m_kary_id")
  dynamic get creatorMKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.id")
  dynamic get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.name")
  dynamic get lastEditorName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.email")
  dynamic get lastEditorEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.username")
  dynamic get lastEditorUsername => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.email_verified_at")
  dynamic get lastEditorEmailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.password")
  dynamic get lastEditorPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.m_comp_id")
  dynamic get lastEditorMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.m_dir_id")
  dynamic get lastEditorMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.is_active")
  dynamic get lastEditorIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.creator_id")
  dynamic get lastEditorCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.last_editor_id")
  dynamic get lastEditorLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.remember_token")
  dynamic get lastEditorRememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.created_at")
  dynamic get lastEditorCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.updated_at")
  dynamic get lastEditorUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.profil_image")
  dynamic get lastEditorProfilImage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.telp")
  dynamic get lastEditorTelp => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor.m_kary_id")
  dynamic get lastEditorMKaryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataStandarGajiCopyWith<DataStandarGaji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStandarGajiCopyWith<$Res> {
  factory $DataStandarGajiCopyWith(
          DataStandarGaji value, $Res Function(DataStandarGaji) then) =
      _$DataStandarGajiCopyWithImpl<$Res, DataStandarGaji>;
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
      @JsonKey(name: "m_divisi_id") int? datumMDivisiId,
      @JsonKey(name: "m_dept_id") int? datumMDeptId,
      @JsonKey(name: "m_zona_id") int? datumMZonaId,
      @JsonKey(name: "m_posisi_id") int? datumMPosisiId,
      @JsonKey(name: "grading_id") int? datumGradingId,
      @JsonKey(name: "gaji_pokok") int? gajiPokok,
      @JsonKey(name: "gaji_pokok_periode") String? gajiPokokPeriode,
      @JsonKey(name: "uang_saku") int? uangSaku,
      @JsonKey(name: "uang_saku_periode") String? uangSakuPeriode,
      @JsonKey(name: "tunjangan_posisi") int? tunjanganPosisi,
      @JsonKey(name: "tunjangan_posisi_periode") String? tunjanganPosisiPeriode,
      @JsonKey(name: "tunjangan_kemahalan_id") int? datumTunjanganKemahalanId,
      @JsonKey(name: "tunjangan_kemahalan_periode")
      String? tunjanganKemahalanPeriode,
      @JsonKey(name: "uang_makan") int? uangMakan,
      @JsonKey(name: "uang_makan_periode") String? uangMakanPeriode,
      @JsonKey(name: "tunjangan_tetap") int? tunjanganTetap,
      @JsonKey(name: "tunjangan_tetap_periode") String? tunjanganTetapPeriode,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") dynamic datumCreatorId,
      @JsonKey(name: "last_editor_id") dynamic datumLastEditorId,
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
      @JsonKey(name: "m_divisi.id") int? mDivisiId,
      @JsonKey(name: "m_divisi.m_comp_id") int? mDivisiMCompId,
      @JsonKey(name: "m_divisi.m_dir_id") int? mDivisiMDirId,
      @JsonKey(name: "m_divisi.nama") String? mDivisiNama,
      @JsonKey(name: "m_divisi.desc") String? mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") bool? mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") int? mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id") int? mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") String? mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") String? mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") int? mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") int? mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") int? mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") String? mDeptNama,
      @JsonKey(name: "m_dept.desc") String? mDeptDesc,
      @JsonKey(name: "m_dept.is_active") bool? mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") dynamic mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") dynamic mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") String? mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") String? mDeptUpdatedAt,
      @JsonKey(name: "m_zona.id") int? mZonaId,
      @JsonKey(name: "m_zona.m_comp_id") int? mZonaMCompId,
      @JsonKey(name: "m_zona.m_dir_id") int? mZonaMDirId,
      @JsonKey(name: "m_zona.m_tunj_kemahalan_id") int? mZonaMTunjKemahalanId,
      @JsonKey(name: "m_zona.kode") String? mZonaKode,
      @JsonKey(name: "m_zona.nama") String? mZonaNama,
      @JsonKey(name: "m_zona.desc") String? mZonaDesc,
      @JsonKey(name: "m_zona.is_active") bool? mZonaIsActive,
      @JsonKey(name: "m_zona.creator_id") dynamic mZonaCreatorId,
      @JsonKey(name: "m_zona.last_editor_id") dynamic mZonaLastEditorId,
      @JsonKey(name: "m_zona.created_at") String? mZonaCreatedAt,
      @JsonKey(name: "m_zona.updated_at") String? mZonaUpdatedAt,
      @JsonKey(name: "m_posisi.id") int? mPosisiId,
      @JsonKey(name: "m_posisi.m_comp_id") int? mPosisiMCompId,
      @JsonKey(name: "m_posisi.m_dir_id") int? mPosisiMDirId,
      @JsonKey(name: "m_posisi.kode") String? mPosisiKode,
      @JsonKey(name: "m_posisi.desc_kerja") String? mPosisiDescKerja,
      @JsonKey(name: "m_posisi.desc_kerja_1") String? mPosisiDescKerja1,
      @JsonKey(name: "m_posisi.desc_kerja_2") String? mPosisiDescKerja2,
      @JsonKey(name: "m_posisi.min_pengalaman") String? mPosisiMinPengalaman,
      @JsonKey(name: "m_posisi.min_pendidikan_id") int? mPosisiMinPendidikanId,
      @JsonKey(name: "m_posisi.min_gaji_pokok") String? mPosisiMinGajiPokok,
      @JsonKey(name: "m_posisi.max_gaji_pokok") String? mPosisiMaxGajiPokok,
      @JsonKey(name: "m_posisi.biaya") dynamic mPosisiBiaya,
      @JsonKey(name: "m_posisi.tipe_bpjs_id") int? mPosisiTipeBpjsId,
      @JsonKey(name: "m_posisi.potongan_bpjs") String? mPosisiPotonganBpjs,
      @JsonKey(name: "m_posisi.desc") dynamic mPosisiDesc,
      @JsonKey(name: "m_posisi.is_active") bool? mPosisiIsActive,
      @JsonKey(name: "m_posisi.creator_id") dynamic mPosisiCreatorId,
      @JsonKey(name: "m_posisi.last_editor_id") dynamic mPosisiLastEditorId,
      @JsonKey(name: "m_posisi.created_at") String? mPosisiCreatedAt,
      @JsonKey(name: "m_posisi.updated_at") String? mPosisiUpdatedAt,
      @JsonKey(name: "grading.id") int? gradingId,
      @JsonKey(name: "grading.m_comp_id") int? gradingMCompId,
      @JsonKey(name: "grading.m_dir_id") dynamic gradingMDirId,
      @JsonKey(name: "grading.group") String? gradingGroup,
      @JsonKey(name: "grading.key") String? gradingKey,
      @JsonKey(name: "grading.code") String? gradingCode,
      @JsonKey(name: "grading.value") String? gradingValue,
      @JsonKey(name: "grading.is_active") bool? gradingIsActive,
      @JsonKey(name: "grading.creator_id") dynamic gradingCreatorId,
      @JsonKey(name: "grading.last_editor_id") dynamic gradingLastEditorId,
      @JsonKey(name: "grading.created_at") String? gradingCreatedAt,
      @JsonKey(name: "grading.updated_at") String? gradingUpdatedAt,
      @JsonKey(name: "grading.value_2") dynamic gradingValue2,
      @JsonKey(name: "grading.value_3") dynamic gradingValue3,
      @JsonKey(name: "tunjangan_kemahalan.id") int? tunjanganKemahalanId,
      @JsonKey(name: "tunjangan_kemahalan.m_comp_id")
      int? tunjanganKemahalanMCompId,
      @JsonKey(name: "tunjangan_kemahalan.m_dir_id")
      int? tunjanganKemahalanMDirId,
      @JsonKey(name: "tunjangan_kemahalan.kode") String? tunjanganKemahalanKode,
      @JsonKey(name: "tunjangan_kemahalan.m_divisi_id")
      int? tunjanganKemahalanMDivisiId,
      @JsonKey(name: "tunjangan_kemahalan.m_dept_id")
      int? tunjanganKemahalanMDeptId,
      @JsonKey(name: "tunjangan_kemahalan.m_zona_id")
      dynamic tunjanganKemahalanMZonaId,
      @JsonKey(name: "tunjangan_kemahalan.m_posisi_id")
      int? tunjanganKemahalanMPosisiId,
      @JsonKey(name: "tunjangan_kemahalan.besaran")
      String? tunjanganKemahalanBesaran,
      @JsonKey(name: "tunjangan_kemahalan.desc") String? tunjanganKemahalanDesc,
      @JsonKey(name: "tunjangan_kemahalan.is_active")
      bool? tunjanganKemahalanIsActive,
      @JsonKey(name: "tunjangan_kemahalan.creator_id")
      dynamic tunjanganKemahalanCreatorId,
      @JsonKey(name: "tunjangan_kemahalan.last_editor_id")
      dynamic tunjanganKemahalanLastEditorId,
      @JsonKey(name: "tunjangan_kemahalan.created_at")
      String? tunjanganKemahalanCreatedAt,
      @JsonKey(name: "tunjangan_kemahalan.updated_at")
      String? tunjanganKemahalanUpdatedAt,
      @JsonKey(name: "creator.id") dynamic creatorId,
      @JsonKey(name: "creator.name") dynamic creatorName,
      @JsonKey(name: "creator.email") dynamic creatorEmail,
      @JsonKey(name: "creator.username") dynamic creatorUsername,
      @JsonKey(name: "creator.email_verified_at")
      dynamic creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") dynamic creatorPassword,
      @JsonKey(name: "creator.m_comp_id") dynamic creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") dynamic creatorMDirId,
      @JsonKey(name: "creator.is_active") dynamic creatorIsActive,
      @JsonKey(name: "creator.creator_id") dynamic creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id") dynamic creatorLastEditorId,
      @JsonKey(name: "creator.remember_token") dynamic creatorRememberToken,
      @JsonKey(name: "creator.created_at") dynamic creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") dynamic creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") dynamic creatorProfilImage,
      @JsonKey(name: "creator.telp") dynamic creatorTelp,
      @JsonKey(name: "creator.m_kary_id") dynamic creatorMKaryId,
      @JsonKey(name: "last_editor.id") dynamic lastEditorId,
      @JsonKey(name: "last_editor.name") dynamic lastEditorName,
      @JsonKey(name: "last_editor.email") dynamic lastEditorEmail,
      @JsonKey(name: "last_editor.username") dynamic lastEditorUsername,
      @JsonKey(name: "last_editor.email_verified_at")
      dynamic lastEditorEmailVerifiedAt,
      @JsonKey(name: "last_editor.password") dynamic lastEditorPassword,
      @JsonKey(name: "last_editor.m_comp_id") dynamic lastEditorMCompId,
      @JsonKey(name: "last_editor.m_dir_id") dynamic lastEditorMDirId,
      @JsonKey(name: "last_editor.is_active") dynamic lastEditorIsActive,
      @JsonKey(name: "last_editor.creator_id") dynamic lastEditorCreatorId,
      @JsonKey(name: "last_editor.last_editor_id")
      dynamic lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at") dynamic lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at") dynamic lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image") dynamic lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") dynamic lastEditorMKaryId});
}

/// @nodoc
class _$DataStandarGajiCopyWithImpl<$Res, $Val extends DataStandarGaji>
    implements $DataStandarGajiCopyWith<$Res> {
  _$DataStandarGajiCopyWithImpl(this._value, this._then);

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
    Object? datumMDivisiId = freezed,
    Object? datumMDeptId = freezed,
    Object? datumMZonaId = freezed,
    Object? datumMPosisiId = freezed,
    Object? datumGradingId = freezed,
    Object? gajiPokok = freezed,
    Object? gajiPokokPeriode = freezed,
    Object? uangSaku = freezed,
    Object? uangSakuPeriode = freezed,
    Object? tunjanganPosisi = freezed,
    Object? tunjanganPosisiPeriode = freezed,
    Object? datumTunjanganKemahalanId = freezed,
    Object? tunjanganKemahalanPeriode = freezed,
    Object? uangMakan = freezed,
    Object? uangMakanPeriode = freezed,
    Object? tunjanganTetap = freezed,
    Object? tunjanganTetapPeriode = freezed,
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
    Object? mDivisiId = freezed,
    Object? mDivisiMCompId = freezed,
    Object? mDivisiMDirId = freezed,
    Object? mDivisiNama = freezed,
    Object? mDivisiDesc = freezed,
    Object? mDivisiIsActive = freezed,
    Object? mDivisiCreatorId = freezed,
    Object? mDivisiLastEditorId = freezed,
    Object? mDivisiCreatedAt = freezed,
    Object? mDivisiUpdatedAt = freezed,
    Object? mDeptId = freezed,
    Object? mDeptMDirId = freezed,
    Object? mDeptMDivisiId = freezed,
    Object? mDeptNama = freezed,
    Object? mDeptDesc = freezed,
    Object? mDeptIsActive = freezed,
    Object? mDeptCreatorId = freezed,
    Object? mDeptLastEditorId = freezed,
    Object? mDeptCreatedAt = freezed,
    Object? mDeptUpdatedAt = freezed,
    Object? mZonaId = freezed,
    Object? mZonaMCompId = freezed,
    Object? mZonaMDirId = freezed,
    Object? mZonaMTunjKemahalanId = freezed,
    Object? mZonaKode = freezed,
    Object? mZonaNama = freezed,
    Object? mZonaDesc = freezed,
    Object? mZonaIsActive = freezed,
    Object? mZonaCreatorId = freezed,
    Object? mZonaLastEditorId = freezed,
    Object? mZonaCreatedAt = freezed,
    Object? mZonaUpdatedAt = freezed,
    Object? mPosisiId = freezed,
    Object? mPosisiMCompId = freezed,
    Object? mPosisiMDirId = freezed,
    Object? mPosisiKode = freezed,
    Object? mPosisiDescKerja = freezed,
    Object? mPosisiDescKerja1 = freezed,
    Object? mPosisiDescKerja2 = freezed,
    Object? mPosisiMinPengalaman = freezed,
    Object? mPosisiMinPendidikanId = freezed,
    Object? mPosisiMinGajiPokok = freezed,
    Object? mPosisiMaxGajiPokok = freezed,
    Object? mPosisiBiaya = freezed,
    Object? mPosisiTipeBpjsId = freezed,
    Object? mPosisiPotonganBpjs = freezed,
    Object? mPosisiDesc = freezed,
    Object? mPosisiIsActive = freezed,
    Object? mPosisiCreatorId = freezed,
    Object? mPosisiLastEditorId = freezed,
    Object? mPosisiCreatedAt = freezed,
    Object? mPosisiUpdatedAt = freezed,
    Object? gradingId = freezed,
    Object? gradingMCompId = freezed,
    Object? gradingMDirId = freezed,
    Object? gradingGroup = freezed,
    Object? gradingKey = freezed,
    Object? gradingCode = freezed,
    Object? gradingValue = freezed,
    Object? gradingIsActive = freezed,
    Object? gradingCreatorId = freezed,
    Object? gradingLastEditorId = freezed,
    Object? gradingCreatedAt = freezed,
    Object? gradingUpdatedAt = freezed,
    Object? gradingValue2 = freezed,
    Object? gradingValue3 = freezed,
    Object? tunjanganKemahalanId = freezed,
    Object? tunjanganKemahalanMCompId = freezed,
    Object? tunjanganKemahalanMDirId = freezed,
    Object? tunjanganKemahalanKode = freezed,
    Object? tunjanganKemahalanMDivisiId = freezed,
    Object? tunjanganKemahalanMDeptId = freezed,
    Object? tunjanganKemahalanMZonaId = freezed,
    Object? tunjanganKemahalanMPosisiId = freezed,
    Object? tunjanganKemahalanBesaran = freezed,
    Object? tunjanganKemahalanDesc = freezed,
    Object? tunjanganKemahalanIsActive = freezed,
    Object? tunjanganKemahalanCreatorId = freezed,
    Object? tunjanganKemahalanLastEditorId = freezed,
    Object? tunjanganKemahalanCreatedAt = freezed,
    Object? tunjanganKemahalanUpdatedAt = freezed,
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
      datumMDivisiId: freezed == datumMDivisiId
          ? _value.datumMDivisiId
          : datumMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDeptId: freezed == datumMDeptId
          ? _value.datumMDeptId
          : datumMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMZonaId: freezed == datumMZonaId
          ? _value.datumMZonaId
          : datumMZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMPosisiId: freezed == datumMPosisiId
          ? _value.datumMPosisiId
          : datumMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumGradingId: freezed == datumGradingId
          ? _value.datumGradingId
          : datumGradingId // ignore: cast_nullable_to_non_nullable
              as int?,
      gajiPokok: freezed == gajiPokok
          ? _value.gajiPokok
          : gajiPokok // ignore: cast_nullable_to_non_nullable
              as int?,
      gajiPokokPeriode: freezed == gajiPokokPeriode
          ? _value.gajiPokokPeriode
          : gajiPokokPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      uangSaku: freezed == uangSaku
          ? _value.uangSaku
          : uangSaku // ignore: cast_nullable_to_non_nullable
              as int?,
      uangSakuPeriode: freezed == uangSakuPeriode
          ? _value.uangSakuPeriode
          : uangSakuPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganPosisi: freezed == tunjanganPosisi
          ? _value.tunjanganPosisi
          : tunjanganPosisi // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganPosisiPeriode: freezed == tunjanganPosisiPeriode
          ? _value.tunjanganPosisiPeriode
          : tunjanganPosisiPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      datumTunjanganKemahalanId: freezed == datumTunjanganKemahalanId
          ? _value.datumTunjanganKemahalanId
          : datumTunjanganKemahalanId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanPeriode: freezed == tunjanganKemahalanPeriode
          ? _value.tunjanganKemahalanPeriode
          : tunjanganKemahalanPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      uangMakan: freezed == uangMakan
          ? _value.uangMakan
          : uangMakan // ignore: cast_nullable_to_non_nullable
              as int?,
      uangMakanPeriode: freezed == uangMakanPeriode
          ? _value.uangMakanPeriode
          : uangMakanPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganTetap: freezed == tunjanganTetap
          ? _value.tunjanganTetap
          : tunjanganTetap // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganTetapPeriode: freezed == tunjanganTetapPeriode
          ? _value.tunjanganTetapPeriode
          : tunjanganTetapPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      datumLastEditorId: freezed == datumLastEditorId
          ? _value.datumLastEditorId
          : datumLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      mDivisiId: freezed == mDivisiId
          ? _value.mDivisiId
          : mDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiMCompId: freezed == mDivisiMCompId
          ? _value.mDivisiMCompId
          : mDivisiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiMDirId: freezed == mDivisiMDirId
          ? _value.mDivisiMDirId
          : mDivisiMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiNama: freezed == mDivisiNama
          ? _value.mDivisiNama
          : mDivisiNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mDivisiDesc: freezed == mDivisiDesc
          ? _value.mDivisiDesc
          : mDivisiDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mDivisiIsActive: freezed == mDivisiIsActive
          ? _value.mDivisiIsActive
          : mDivisiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mDivisiCreatorId: freezed == mDivisiCreatorId
          ? _value.mDivisiCreatorId
          : mDivisiCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiLastEditorId: freezed == mDivisiLastEditorId
          ? _value.mDivisiLastEditorId
          : mDivisiLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiCreatedAt: freezed == mDivisiCreatedAt
          ? _value.mDivisiCreatedAt
          : mDivisiCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mDivisiUpdatedAt: freezed == mDivisiUpdatedAt
          ? _value.mDivisiUpdatedAt
          : mDivisiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mDeptId: freezed == mDeptId
          ? _value.mDeptId
          : mDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDeptMDirId: freezed == mDeptMDirId
          ? _value.mDeptMDirId
          : mDeptMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDeptMDivisiId: freezed == mDeptMDivisiId
          ? _value.mDeptMDivisiId
          : mDeptMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDeptNama: freezed == mDeptNama
          ? _value.mDeptNama
          : mDeptNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mDeptDesc: freezed == mDeptDesc
          ? _value.mDeptDesc
          : mDeptDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mDeptIsActive: freezed == mDeptIsActive
          ? _value.mDeptIsActive
          : mDeptIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mDeptCreatorId: freezed == mDeptCreatorId
          ? _value.mDeptCreatorId
          : mDeptCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDeptLastEditorId: freezed == mDeptLastEditorId
          ? _value.mDeptLastEditorId
          : mDeptLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDeptCreatedAt: freezed == mDeptCreatedAt
          ? _value.mDeptCreatedAt
          : mDeptCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mDeptUpdatedAt: freezed == mDeptUpdatedAt
          ? _value.mDeptUpdatedAt
          : mDeptUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaId: freezed == mZonaId
          ? _value.mZonaId
          : mZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaMCompId: freezed == mZonaMCompId
          ? _value.mZonaMCompId
          : mZonaMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaMDirId: freezed == mZonaMDirId
          ? _value.mZonaMDirId
          : mZonaMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaMTunjKemahalanId: freezed == mZonaMTunjKemahalanId
          ? _value.mZonaMTunjKemahalanId
          : mZonaMTunjKemahalanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaKode: freezed == mZonaKode
          ? _value.mZonaKode
          : mZonaKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaNama: freezed == mZonaNama
          ? _value.mZonaNama
          : mZonaNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaDesc: freezed == mZonaDesc
          ? _value.mZonaDesc
          : mZonaDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaIsActive: freezed == mZonaIsActive
          ? _value.mZonaIsActive
          : mZonaIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mZonaCreatorId: freezed == mZonaCreatorId
          ? _value.mZonaCreatorId
          : mZonaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaLastEditorId: freezed == mZonaLastEditorId
          ? _value.mZonaLastEditorId
          : mZonaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaCreatedAt: freezed == mZonaCreatedAt
          ? _value.mZonaCreatedAt
          : mZonaCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaUpdatedAt: freezed == mZonaUpdatedAt
          ? _value.mZonaUpdatedAt
          : mZonaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiId: freezed == mPosisiId
          ? _value.mPosisiId
          : mPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiMCompId: freezed == mPosisiMCompId
          ? _value.mPosisiMCompId
          : mPosisiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiMDirId: freezed == mPosisiMDirId
          ? _value.mPosisiMDirId
          : mPosisiMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiKode: freezed == mPosisiKode
          ? _value.mPosisiKode
          : mPosisiKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiDescKerja: freezed == mPosisiDescKerja
          ? _value.mPosisiDescKerja
          : mPosisiDescKerja // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiDescKerja1: freezed == mPosisiDescKerja1
          ? _value.mPosisiDescKerja1
          : mPosisiDescKerja1 // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiDescKerja2: freezed == mPosisiDescKerja2
          ? _value.mPosisiDescKerja2
          : mPosisiDescKerja2 // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiMinPengalaman: freezed == mPosisiMinPengalaman
          ? _value.mPosisiMinPengalaman
          : mPosisiMinPengalaman // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiMinPendidikanId: freezed == mPosisiMinPendidikanId
          ? _value.mPosisiMinPendidikanId
          : mPosisiMinPendidikanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiMinGajiPokok: freezed == mPosisiMinGajiPokok
          ? _value.mPosisiMinGajiPokok
          : mPosisiMinGajiPokok // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiMaxGajiPokok: freezed == mPosisiMaxGajiPokok
          ? _value.mPosisiMaxGajiPokok
          : mPosisiMaxGajiPokok // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiBiaya: freezed == mPosisiBiaya
          ? _value.mPosisiBiaya
          : mPosisiBiaya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiTipeBpjsId: freezed == mPosisiTipeBpjsId
          ? _value.mPosisiTipeBpjsId
          : mPosisiTipeBpjsId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiPotonganBpjs: freezed == mPosisiPotonganBpjs
          ? _value.mPosisiPotonganBpjs
          : mPosisiPotonganBpjs // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiDesc: freezed == mPosisiDesc
          ? _value.mPosisiDesc
          : mPosisiDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiIsActive: freezed == mPosisiIsActive
          ? _value.mPosisiIsActive
          : mPosisiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mPosisiCreatorId: freezed == mPosisiCreatorId
          ? _value.mPosisiCreatorId
          : mPosisiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiLastEditorId: freezed == mPosisiLastEditorId
          ? _value.mPosisiLastEditorId
          : mPosisiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiCreatedAt: freezed == mPosisiCreatedAt
          ? _value.mPosisiCreatedAt
          : mPosisiCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiUpdatedAt: freezed == mPosisiUpdatedAt
          ? _value.mPosisiUpdatedAt
          : mPosisiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingId: freezed == gradingId
          ? _value.gradingId
          : gradingId // ignore: cast_nullable_to_non_nullable
              as int?,
      gradingMCompId: freezed == gradingMCompId
          ? _value.gradingMCompId
          : gradingMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      gradingMDirId: freezed == gradingMDirId
          ? _value.gradingMDirId
          : gradingMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingGroup: freezed == gradingGroup
          ? _value.gradingGroup
          : gradingGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingKey: freezed == gradingKey
          ? _value.gradingKey
          : gradingKey // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingCode: freezed == gradingCode
          ? _value.gradingCode
          : gradingCode // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingValue: freezed == gradingValue
          ? _value.gradingValue
          : gradingValue // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingIsActive: freezed == gradingIsActive
          ? _value.gradingIsActive
          : gradingIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gradingCreatorId: freezed == gradingCreatorId
          ? _value.gradingCreatorId
          : gradingCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingLastEditorId: freezed == gradingLastEditorId
          ? _value.gradingLastEditorId
          : gradingLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingCreatedAt: freezed == gradingCreatedAt
          ? _value.gradingCreatedAt
          : gradingCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingUpdatedAt: freezed == gradingUpdatedAt
          ? _value.gradingUpdatedAt
          : gradingUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingValue2: freezed == gradingValue2
          ? _value.gradingValue2
          : gradingValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingValue3: freezed == gradingValue3
          ? _value.gradingValue3
          : gradingValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjanganKemahalanId: freezed == tunjanganKemahalanId
          ? _value.tunjanganKemahalanId
          : tunjanganKemahalanId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanMCompId: freezed == tunjanganKemahalanMCompId
          ? _value.tunjanganKemahalanMCompId
          : tunjanganKemahalanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanMDirId: freezed == tunjanganKemahalanMDirId
          ? _value.tunjanganKemahalanMDirId
          : tunjanganKemahalanMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanKode: freezed == tunjanganKemahalanKode
          ? _value.tunjanganKemahalanKode
          : tunjanganKemahalanKode // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganKemahalanMDivisiId: freezed == tunjanganKemahalanMDivisiId
          ? _value.tunjanganKemahalanMDivisiId
          : tunjanganKemahalanMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanMDeptId: freezed == tunjanganKemahalanMDeptId
          ? _value.tunjanganKemahalanMDeptId
          : tunjanganKemahalanMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanMZonaId: freezed == tunjanganKemahalanMZonaId
          ? _value.tunjanganKemahalanMZonaId
          : tunjanganKemahalanMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjanganKemahalanMPosisiId: freezed == tunjanganKemahalanMPosisiId
          ? _value.tunjanganKemahalanMPosisiId
          : tunjanganKemahalanMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanBesaran: freezed == tunjanganKemahalanBesaran
          ? _value.tunjanganKemahalanBesaran
          : tunjanganKemahalanBesaran // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganKemahalanDesc: freezed == tunjanganKemahalanDesc
          ? _value.tunjanganKemahalanDesc
          : tunjanganKemahalanDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganKemahalanIsActive: freezed == tunjanganKemahalanIsActive
          ? _value.tunjanganKemahalanIsActive
          : tunjanganKemahalanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tunjanganKemahalanCreatorId: freezed == tunjanganKemahalanCreatorId
          ? _value.tunjanganKemahalanCreatorId
          : tunjanganKemahalanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjanganKemahalanLastEditorId: freezed == tunjanganKemahalanLastEditorId
          ? _value.tunjanganKemahalanLastEditorId
          : tunjanganKemahalanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjanganKemahalanCreatedAt: freezed == tunjanganKemahalanCreatedAt
          ? _value.tunjanganKemahalanCreatedAt
          : tunjanganKemahalanCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganKemahalanUpdatedAt: freezed == tunjanganKemahalanUpdatedAt
          ? _value.tunjanganKemahalanUpdatedAt
          : tunjanganKemahalanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorName: freezed == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorEmail: freezed == creatorEmail
          ? _value.creatorEmail
          : creatorEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorUsername: freezed == creatorUsername
          ? _value.creatorUsername
          : creatorUsername // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorEmailVerifiedAt: freezed == creatorEmailVerifiedAt
          ? _value.creatorEmailVerifiedAt
          : creatorEmailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorPassword: freezed == creatorPassword
          ? _value.creatorPassword
          : creatorPassword // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorMCompId: freezed == creatorMCompId
          ? _value.creatorMCompId
          : creatorMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorMDirId: freezed == creatorMDirId
          ? _value.creatorMDirId
          : creatorMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorIsActive: freezed == creatorIsActive
          ? _value.creatorIsActive
          : creatorIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorCreatorId: freezed == creatorCreatorId
          ? _value.creatorCreatorId
          : creatorCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorLastEditorId: freezed == creatorLastEditorId
          ? _value.creatorLastEditorId
          : creatorLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorRememberToken: freezed == creatorRememberToken
          ? _value.creatorRememberToken
          : creatorRememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorCreatedAt: freezed == creatorCreatedAt
          ? _value.creatorCreatedAt
          : creatorCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorUpdatedAt: freezed == creatorUpdatedAt
          ? _value.creatorUpdatedAt
          : creatorUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorProfilImage: freezed == creatorProfilImage
          ? _value.creatorProfilImage
          : creatorProfilImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorTelp: freezed == creatorTelp
          ? _value.creatorTelp
          : creatorTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorMKaryId: freezed == creatorMKaryId
          ? _value.creatorMKaryId
          : creatorMKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorId: freezed == lastEditorId
          ? _value.lastEditorId
          : lastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorName: freezed == lastEditorName
          ? _value.lastEditorName
          : lastEditorName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorEmail: freezed == lastEditorEmail
          ? _value.lastEditorEmail
          : lastEditorEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorUsername: freezed == lastEditorUsername
          ? _value.lastEditorUsername
          : lastEditorUsername // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorEmailVerifiedAt: freezed == lastEditorEmailVerifiedAt
          ? _value.lastEditorEmailVerifiedAt
          : lastEditorEmailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorPassword: freezed == lastEditorPassword
          ? _value.lastEditorPassword
          : lastEditorPassword // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorMCompId: freezed == lastEditorMCompId
          ? _value.lastEditorMCompId
          : lastEditorMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorMDirId: freezed == lastEditorMDirId
          ? _value.lastEditorMDirId
          : lastEditorMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorIsActive: freezed == lastEditorIsActive
          ? _value.lastEditorIsActive
          : lastEditorIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorCreatorId: freezed == lastEditorCreatorId
          ? _value.lastEditorCreatorId
          : lastEditorCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorLastEditorId: freezed == lastEditorLastEditorId
          ? _value.lastEditorLastEditorId
          : lastEditorLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorRememberToken: freezed == lastEditorRememberToken
          ? _value.lastEditorRememberToken
          : lastEditorRememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorCreatedAt: freezed == lastEditorCreatedAt
          ? _value.lastEditorCreatedAt
          : lastEditorCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorUpdatedAt: freezed == lastEditorUpdatedAt
          ? _value.lastEditorUpdatedAt
          : lastEditorUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorProfilImage: freezed == lastEditorProfilImage
          ? _value.lastEditorProfilImage
          : lastEditorProfilImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorTelp: freezed == lastEditorTelp
          ? _value.lastEditorTelp
          : lastEditorTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorMKaryId: freezed == lastEditorMKaryId
          ? _value.lastEditorMKaryId
          : lastEditorMKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataStandarGajiImplCopyWith<$Res>
    implements $DataStandarGajiCopyWith<$Res> {
  factory _$$DataStandarGajiImplCopyWith(_$DataStandarGajiImpl value,
          $Res Function(_$DataStandarGajiImpl) then) =
      __$$DataStandarGajiImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "m_divisi_id") int? datumMDivisiId,
      @JsonKey(name: "m_dept_id") int? datumMDeptId,
      @JsonKey(name: "m_zona_id") int? datumMZonaId,
      @JsonKey(name: "m_posisi_id") int? datumMPosisiId,
      @JsonKey(name: "grading_id") int? datumGradingId,
      @JsonKey(name: "gaji_pokok") int? gajiPokok,
      @JsonKey(name: "gaji_pokok_periode") String? gajiPokokPeriode,
      @JsonKey(name: "uang_saku") int? uangSaku,
      @JsonKey(name: "uang_saku_periode") String? uangSakuPeriode,
      @JsonKey(name: "tunjangan_posisi") int? tunjanganPosisi,
      @JsonKey(name: "tunjangan_posisi_periode") String? tunjanganPosisiPeriode,
      @JsonKey(name: "tunjangan_kemahalan_id") int? datumTunjanganKemahalanId,
      @JsonKey(name: "tunjangan_kemahalan_periode")
      String? tunjanganKemahalanPeriode,
      @JsonKey(name: "uang_makan") int? uangMakan,
      @JsonKey(name: "uang_makan_periode") String? uangMakanPeriode,
      @JsonKey(name: "tunjangan_tetap") int? tunjanganTetap,
      @JsonKey(name: "tunjangan_tetap_periode") String? tunjanganTetapPeriode,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") dynamic datumCreatorId,
      @JsonKey(name: "last_editor_id") dynamic datumLastEditorId,
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
      @JsonKey(name: "m_divisi.id") int? mDivisiId,
      @JsonKey(name: "m_divisi.m_comp_id") int? mDivisiMCompId,
      @JsonKey(name: "m_divisi.m_dir_id") int? mDivisiMDirId,
      @JsonKey(name: "m_divisi.nama") String? mDivisiNama,
      @JsonKey(name: "m_divisi.desc") String? mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") bool? mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") int? mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id") int? mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") String? mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") String? mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") int? mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") int? mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") int? mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") String? mDeptNama,
      @JsonKey(name: "m_dept.desc") String? mDeptDesc,
      @JsonKey(name: "m_dept.is_active") bool? mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") dynamic mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") dynamic mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") String? mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") String? mDeptUpdatedAt,
      @JsonKey(name: "m_zona.id") int? mZonaId,
      @JsonKey(name: "m_zona.m_comp_id") int? mZonaMCompId,
      @JsonKey(name: "m_zona.m_dir_id") int? mZonaMDirId,
      @JsonKey(name: "m_zona.m_tunj_kemahalan_id") int? mZonaMTunjKemahalanId,
      @JsonKey(name: "m_zona.kode") String? mZonaKode,
      @JsonKey(name: "m_zona.nama") String? mZonaNama,
      @JsonKey(name: "m_zona.desc") String? mZonaDesc,
      @JsonKey(name: "m_zona.is_active") bool? mZonaIsActive,
      @JsonKey(name: "m_zona.creator_id") dynamic mZonaCreatorId,
      @JsonKey(name: "m_zona.last_editor_id") dynamic mZonaLastEditorId,
      @JsonKey(name: "m_zona.created_at") String? mZonaCreatedAt,
      @JsonKey(name: "m_zona.updated_at") String? mZonaUpdatedAt,
      @JsonKey(name: "m_posisi.id") int? mPosisiId,
      @JsonKey(name: "m_posisi.m_comp_id") int? mPosisiMCompId,
      @JsonKey(name: "m_posisi.m_dir_id") int? mPosisiMDirId,
      @JsonKey(name: "m_posisi.kode") String? mPosisiKode,
      @JsonKey(name: "m_posisi.desc_kerja") String? mPosisiDescKerja,
      @JsonKey(name: "m_posisi.desc_kerja_1") String? mPosisiDescKerja1,
      @JsonKey(name: "m_posisi.desc_kerja_2") String? mPosisiDescKerja2,
      @JsonKey(name: "m_posisi.min_pengalaman") String? mPosisiMinPengalaman,
      @JsonKey(name: "m_posisi.min_pendidikan_id") int? mPosisiMinPendidikanId,
      @JsonKey(name: "m_posisi.min_gaji_pokok") String? mPosisiMinGajiPokok,
      @JsonKey(name: "m_posisi.max_gaji_pokok") String? mPosisiMaxGajiPokok,
      @JsonKey(name: "m_posisi.biaya") dynamic mPosisiBiaya,
      @JsonKey(name: "m_posisi.tipe_bpjs_id") int? mPosisiTipeBpjsId,
      @JsonKey(name: "m_posisi.potongan_bpjs") String? mPosisiPotonganBpjs,
      @JsonKey(name: "m_posisi.desc") dynamic mPosisiDesc,
      @JsonKey(name: "m_posisi.is_active") bool? mPosisiIsActive,
      @JsonKey(name: "m_posisi.creator_id") dynamic mPosisiCreatorId,
      @JsonKey(name: "m_posisi.last_editor_id") dynamic mPosisiLastEditorId,
      @JsonKey(name: "m_posisi.created_at") String? mPosisiCreatedAt,
      @JsonKey(name: "m_posisi.updated_at") String? mPosisiUpdatedAt,
      @JsonKey(name: "grading.id") int? gradingId,
      @JsonKey(name: "grading.m_comp_id") int? gradingMCompId,
      @JsonKey(name: "grading.m_dir_id") dynamic gradingMDirId,
      @JsonKey(name: "grading.group") String? gradingGroup,
      @JsonKey(name: "grading.key") String? gradingKey,
      @JsonKey(name: "grading.code") String? gradingCode,
      @JsonKey(name: "grading.value") String? gradingValue,
      @JsonKey(name: "grading.is_active") bool? gradingIsActive,
      @JsonKey(name: "grading.creator_id") dynamic gradingCreatorId,
      @JsonKey(name: "grading.last_editor_id") dynamic gradingLastEditorId,
      @JsonKey(name: "grading.created_at") String? gradingCreatedAt,
      @JsonKey(name: "grading.updated_at") String? gradingUpdatedAt,
      @JsonKey(name: "grading.value_2") dynamic gradingValue2,
      @JsonKey(name: "grading.value_3") dynamic gradingValue3,
      @JsonKey(name: "tunjangan_kemahalan.id") int? tunjanganKemahalanId,
      @JsonKey(name: "tunjangan_kemahalan.m_comp_id")
      int? tunjanganKemahalanMCompId,
      @JsonKey(name: "tunjangan_kemahalan.m_dir_id")
      int? tunjanganKemahalanMDirId,
      @JsonKey(name: "tunjangan_kemahalan.kode") String? tunjanganKemahalanKode,
      @JsonKey(name: "tunjangan_kemahalan.m_divisi_id")
      int? tunjanganKemahalanMDivisiId,
      @JsonKey(name: "tunjangan_kemahalan.m_dept_id")
      int? tunjanganKemahalanMDeptId,
      @JsonKey(name: "tunjangan_kemahalan.m_zona_id")
      dynamic tunjanganKemahalanMZonaId,
      @JsonKey(name: "tunjangan_kemahalan.m_posisi_id")
      int? tunjanganKemahalanMPosisiId,
      @JsonKey(name: "tunjangan_kemahalan.besaran")
      String? tunjanganKemahalanBesaran,
      @JsonKey(name: "tunjangan_kemahalan.desc") String? tunjanganKemahalanDesc,
      @JsonKey(name: "tunjangan_kemahalan.is_active")
      bool? tunjanganKemahalanIsActive,
      @JsonKey(name: "tunjangan_kemahalan.creator_id")
      dynamic tunjanganKemahalanCreatorId,
      @JsonKey(name: "tunjangan_kemahalan.last_editor_id")
      dynamic tunjanganKemahalanLastEditorId,
      @JsonKey(name: "tunjangan_kemahalan.created_at")
      String? tunjanganKemahalanCreatedAt,
      @JsonKey(name: "tunjangan_kemahalan.updated_at")
      String? tunjanganKemahalanUpdatedAt,
      @JsonKey(name: "creator.id") dynamic creatorId,
      @JsonKey(name: "creator.name") dynamic creatorName,
      @JsonKey(name: "creator.email") dynamic creatorEmail,
      @JsonKey(name: "creator.username") dynamic creatorUsername,
      @JsonKey(name: "creator.email_verified_at")
      dynamic creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") dynamic creatorPassword,
      @JsonKey(name: "creator.m_comp_id") dynamic creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") dynamic creatorMDirId,
      @JsonKey(name: "creator.is_active") dynamic creatorIsActive,
      @JsonKey(name: "creator.creator_id") dynamic creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id") dynamic creatorLastEditorId,
      @JsonKey(name: "creator.remember_token") dynamic creatorRememberToken,
      @JsonKey(name: "creator.created_at") dynamic creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") dynamic creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") dynamic creatorProfilImage,
      @JsonKey(name: "creator.telp") dynamic creatorTelp,
      @JsonKey(name: "creator.m_kary_id") dynamic creatorMKaryId,
      @JsonKey(name: "last_editor.id") dynamic lastEditorId,
      @JsonKey(name: "last_editor.name") dynamic lastEditorName,
      @JsonKey(name: "last_editor.email") dynamic lastEditorEmail,
      @JsonKey(name: "last_editor.username") dynamic lastEditorUsername,
      @JsonKey(name: "last_editor.email_verified_at")
      dynamic lastEditorEmailVerifiedAt,
      @JsonKey(name: "last_editor.password") dynamic lastEditorPassword,
      @JsonKey(name: "last_editor.m_comp_id") dynamic lastEditorMCompId,
      @JsonKey(name: "last_editor.m_dir_id") dynamic lastEditorMDirId,
      @JsonKey(name: "last_editor.is_active") dynamic lastEditorIsActive,
      @JsonKey(name: "last_editor.creator_id") dynamic lastEditorCreatorId,
      @JsonKey(name: "last_editor.last_editor_id")
      dynamic lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at") dynamic lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at") dynamic lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image") dynamic lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") dynamic lastEditorMKaryId});
}

/// @nodoc
class __$$DataStandarGajiImplCopyWithImpl<$Res>
    extends _$DataStandarGajiCopyWithImpl<$Res, _$DataStandarGajiImpl>
    implements _$$DataStandarGajiImplCopyWith<$Res> {
  __$$DataStandarGajiImplCopyWithImpl(
      _$DataStandarGajiImpl _value, $Res Function(_$DataStandarGajiImpl) _then)
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
    Object? datumMDivisiId = freezed,
    Object? datumMDeptId = freezed,
    Object? datumMZonaId = freezed,
    Object? datumMPosisiId = freezed,
    Object? datumGradingId = freezed,
    Object? gajiPokok = freezed,
    Object? gajiPokokPeriode = freezed,
    Object? uangSaku = freezed,
    Object? uangSakuPeriode = freezed,
    Object? tunjanganPosisi = freezed,
    Object? tunjanganPosisiPeriode = freezed,
    Object? datumTunjanganKemahalanId = freezed,
    Object? tunjanganKemahalanPeriode = freezed,
    Object? uangMakan = freezed,
    Object? uangMakanPeriode = freezed,
    Object? tunjanganTetap = freezed,
    Object? tunjanganTetapPeriode = freezed,
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
    Object? mDivisiId = freezed,
    Object? mDivisiMCompId = freezed,
    Object? mDivisiMDirId = freezed,
    Object? mDivisiNama = freezed,
    Object? mDivisiDesc = freezed,
    Object? mDivisiIsActive = freezed,
    Object? mDivisiCreatorId = freezed,
    Object? mDivisiLastEditorId = freezed,
    Object? mDivisiCreatedAt = freezed,
    Object? mDivisiUpdatedAt = freezed,
    Object? mDeptId = freezed,
    Object? mDeptMDirId = freezed,
    Object? mDeptMDivisiId = freezed,
    Object? mDeptNama = freezed,
    Object? mDeptDesc = freezed,
    Object? mDeptIsActive = freezed,
    Object? mDeptCreatorId = freezed,
    Object? mDeptLastEditorId = freezed,
    Object? mDeptCreatedAt = freezed,
    Object? mDeptUpdatedAt = freezed,
    Object? mZonaId = freezed,
    Object? mZonaMCompId = freezed,
    Object? mZonaMDirId = freezed,
    Object? mZonaMTunjKemahalanId = freezed,
    Object? mZonaKode = freezed,
    Object? mZonaNama = freezed,
    Object? mZonaDesc = freezed,
    Object? mZonaIsActive = freezed,
    Object? mZonaCreatorId = freezed,
    Object? mZonaLastEditorId = freezed,
    Object? mZonaCreatedAt = freezed,
    Object? mZonaUpdatedAt = freezed,
    Object? mPosisiId = freezed,
    Object? mPosisiMCompId = freezed,
    Object? mPosisiMDirId = freezed,
    Object? mPosisiKode = freezed,
    Object? mPosisiDescKerja = freezed,
    Object? mPosisiDescKerja1 = freezed,
    Object? mPosisiDescKerja2 = freezed,
    Object? mPosisiMinPengalaman = freezed,
    Object? mPosisiMinPendidikanId = freezed,
    Object? mPosisiMinGajiPokok = freezed,
    Object? mPosisiMaxGajiPokok = freezed,
    Object? mPosisiBiaya = freezed,
    Object? mPosisiTipeBpjsId = freezed,
    Object? mPosisiPotonganBpjs = freezed,
    Object? mPosisiDesc = freezed,
    Object? mPosisiIsActive = freezed,
    Object? mPosisiCreatorId = freezed,
    Object? mPosisiLastEditorId = freezed,
    Object? mPosisiCreatedAt = freezed,
    Object? mPosisiUpdatedAt = freezed,
    Object? gradingId = freezed,
    Object? gradingMCompId = freezed,
    Object? gradingMDirId = freezed,
    Object? gradingGroup = freezed,
    Object? gradingKey = freezed,
    Object? gradingCode = freezed,
    Object? gradingValue = freezed,
    Object? gradingIsActive = freezed,
    Object? gradingCreatorId = freezed,
    Object? gradingLastEditorId = freezed,
    Object? gradingCreatedAt = freezed,
    Object? gradingUpdatedAt = freezed,
    Object? gradingValue2 = freezed,
    Object? gradingValue3 = freezed,
    Object? tunjanganKemahalanId = freezed,
    Object? tunjanganKemahalanMCompId = freezed,
    Object? tunjanganKemahalanMDirId = freezed,
    Object? tunjanganKemahalanKode = freezed,
    Object? tunjanganKemahalanMDivisiId = freezed,
    Object? tunjanganKemahalanMDeptId = freezed,
    Object? tunjanganKemahalanMZonaId = freezed,
    Object? tunjanganKemahalanMPosisiId = freezed,
    Object? tunjanganKemahalanBesaran = freezed,
    Object? tunjanganKemahalanDesc = freezed,
    Object? tunjanganKemahalanIsActive = freezed,
    Object? tunjanganKemahalanCreatorId = freezed,
    Object? tunjanganKemahalanLastEditorId = freezed,
    Object? tunjanganKemahalanCreatedAt = freezed,
    Object? tunjanganKemahalanUpdatedAt = freezed,
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
    return _then(_$DataStandarGajiImpl(
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
      datumMDivisiId: freezed == datumMDivisiId
          ? _value.datumMDivisiId
          : datumMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDeptId: freezed == datumMDeptId
          ? _value.datumMDeptId
          : datumMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMZonaId: freezed == datumMZonaId
          ? _value.datumMZonaId
          : datumMZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMPosisiId: freezed == datumMPosisiId
          ? _value.datumMPosisiId
          : datumMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumGradingId: freezed == datumGradingId
          ? _value.datumGradingId
          : datumGradingId // ignore: cast_nullable_to_non_nullable
              as int?,
      gajiPokok: freezed == gajiPokok
          ? _value.gajiPokok
          : gajiPokok // ignore: cast_nullable_to_non_nullable
              as int?,
      gajiPokokPeriode: freezed == gajiPokokPeriode
          ? _value.gajiPokokPeriode
          : gajiPokokPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      uangSaku: freezed == uangSaku
          ? _value.uangSaku
          : uangSaku // ignore: cast_nullable_to_non_nullable
              as int?,
      uangSakuPeriode: freezed == uangSakuPeriode
          ? _value.uangSakuPeriode
          : uangSakuPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganPosisi: freezed == tunjanganPosisi
          ? _value.tunjanganPosisi
          : tunjanganPosisi // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganPosisiPeriode: freezed == tunjanganPosisiPeriode
          ? _value.tunjanganPosisiPeriode
          : tunjanganPosisiPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      datumTunjanganKemahalanId: freezed == datumTunjanganKemahalanId
          ? _value.datumTunjanganKemahalanId
          : datumTunjanganKemahalanId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanPeriode: freezed == tunjanganKemahalanPeriode
          ? _value.tunjanganKemahalanPeriode
          : tunjanganKemahalanPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      uangMakan: freezed == uangMakan
          ? _value.uangMakan
          : uangMakan // ignore: cast_nullable_to_non_nullable
              as int?,
      uangMakanPeriode: freezed == uangMakanPeriode
          ? _value.uangMakanPeriode
          : uangMakanPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganTetap: freezed == tunjanganTetap
          ? _value.tunjanganTetap
          : tunjanganTetap // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganTetapPeriode: freezed == tunjanganTetapPeriode
          ? _value.tunjanganTetapPeriode
          : tunjanganTetapPeriode // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      datumLastEditorId: freezed == datumLastEditorId
          ? _value.datumLastEditorId
          : datumLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      mDivisiId: freezed == mDivisiId
          ? _value.mDivisiId
          : mDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiMCompId: freezed == mDivisiMCompId
          ? _value.mDivisiMCompId
          : mDivisiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiMDirId: freezed == mDivisiMDirId
          ? _value.mDivisiMDirId
          : mDivisiMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiNama: freezed == mDivisiNama
          ? _value.mDivisiNama
          : mDivisiNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mDivisiDesc: freezed == mDivisiDesc
          ? _value.mDivisiDesc
          : mDivisiDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mDivisiIsActive: freezed == mDivisiIsActive
          ? _value.mDivisiIsActive
          : mDivisiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mDivisiCreatorId: freezed == mDivisiCreatorId
          ? _value.mDivisiCreatorId
          : mDivisiCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiLastEditorId: freezed == mDivisiLastEditorId
          ? _value.mDivisiLastEditorId
          : mDivisiLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDivisiCreatedAt: freezed == mDivisiCreatedAt
          ? _value.mDivisiCreatedAt
          : mDivisiCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mDivisiUpdatedAt: freezed == mDivisiUpdatedAt
          ? _value.mDivisiUpdatedAt
          : mDivisiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mDeptId: freezed == mDeptId
          ? _value.mDeptId
          : mDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDeptMDirId: freezed == mDeptMDirId
          ? _value.mDeptMDirId
          : mDeptMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDeptMDivisiId: freezed == mDeptMDivisiId
          ? _value.mDeptMDivisiId
          : mDeptMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDeptNama: freezed == mDeptNama
          ? _value.mDeptNama
          : mDeptNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mDeptDesc: freezed == mDeptDesc
          ? _value.mDeptDesc
          : mDeptDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mDeptIsActive: freezed == mDeptIsActive
          ? _value.mDeptIsActive
          : mDeptIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mDeptCreatorId: freezed == mDeptCreatorId
          ? _value.mDeptCreatorId
          : mDeptCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDeptLastEditorId: freezed == mDeptLastEditorId
          ? _value.mDeptLastEditorId
          : mDeptLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDeptCreatedAt: freezed == mDeptCreatedAt
          ? _value.mDeptCreatedAt
          : mDeptCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mDeptUpdatedAt: freezed == mDeptUpdatedAt
          ? _value.mDeptUpdatedAt
          : mDeptUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaId: freezed == mZonaId
          ? _value.mZonaId
          : mZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaMCompId: freezed == mZonaMCompId
          ? _value.mZonaMCompId
          : mZonaMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaMDirId: freezed == mZonaMDirId
          ? _value.mZonaMDirId
          : mZonaMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaMTunjKemahalanId: freezed == mZonaMTunjKemahalanId
          ? _value.mZonaMTunjKemahalanId
          : mZonaMTunjKemahalanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaKode: freezed == mZonaKode
          ? _value.mZonaKode
          : mZonaKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaNama: freezed == mZonaNama
          ? _value.mZonaNama
          : mZonaNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaDesc: freezed == mZonaDesc
          ? _value.mZonaDesc
          : mZonaDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaIsActive: freezed == mZonaIsActive
          ? _value.mZonaIsActive
          : mZonaIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mZonaCreatorId: freezed == mZonaCreatorId
          ? _value.mZonaCreatorId
          : mZonaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaLastEditorId: freezed == mZonaLastEditorId
          ? _value.mZonaLastEditorId
          : mZonaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaCreatedAt: freezed == mZonaCreatedAt
          ? _value.mZonaCreatedAt
          : mZonaCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaUpdatedAt: freezed == mZonaUpdatedAt
          ? _value.mZonaUpdatedAt
          : mZonaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiId: freezed == mPosisiId
          ? _value.mPosisiId
          : mPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiMCompId: freezed == mPosisiMCompId
          ? _value.mPosisiMCompId
          : mPosisiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiMDirId: freezed == mPosisiMDirId
          ? _value.mPosisiMDirId
          : mPosisiMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiKode: freezed == mPosisiKode
          ? _value.mPosisiKode
          : mPosisiKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiDescKerja: freezed == mPosisiDescKerja
          ? _value.mPosisiDescKerja
          : mPosisiDescKerja // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiDescKerja1: freezed == mPosisiDescKerja1
          ? _value.mPosisiDescKerja1
          : mPosisiDescKerja1 // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiDescKerja2: freezed == mPosisiDescKerja2
          ? _value.mPosisiDescKerja2
          : mPosisiDescKerja2 // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiMinPengalaman: freezed == mPosisiMinPengalaman
          ? _value.mPosisiMinPengalaman
          : mPosisiMinPengalaman // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiMinPendidikanId: freezed == mPosisiMinPendidikanId
          ? _value.mPosisiMinPendidikanId
          : mPosisiMinPendidikanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiMinGajiPokok: freezed == mPosisiMinGajiPokok
          ? _value.mPosisiMinGajiPokok
          : mPosisiMinGajiPokok // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiMaxGajiPokok: freezed == mPosisiMaxGajiPokok
          ? _value.mPosisiMaxGajiPokok
          : mPosisiMaxGajiPokok // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiBiaya: freezed == mPosisiBiaya
          ? _value.mPosisiBiaya
          : mPosisiBiaya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiTipeBpjsId: freezed == mPosisiTipeBpjsId
          ? _value.mPosisiTipeBpjsId
          : mPosisiTipeBpjsId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiPotonganBpjs: freezed == mPosisiPotonganBpjs
          ? _value.mPosisiPotonganBpjs
          : mPosisiPotonganBpjs // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiDesc: freezed == mPosisiDesc
          ? _value.mPosisiDesc
          : mPosisiDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiIsActive: freezed == mPosisiIsActive
          ? _value.mPosisiIsActive
          : mPosisiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mPosisiCreatorId: freezed == mPosisiCreatorId
          ? _value.mPosisiCreatorId
          : mPosisiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiLastEditorId: freezed == mPosisiLastEditorId
          ? _value.mPosisiLastEditorId
          : mPosisiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiCreatedAt: freezed == mPosisiCreatedAt
          ? _value.mPosisiCreatedAt
          : mPosisiCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiUpdatedAt: freezed == mPosisiUpdatedAt
          ? _value.mPosisiUpdatedAt
          : mPosisiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingId: freezed == gradingId
          ? _value.gradingId
          : gradingId // ignore: cast_nullable_to_non_nullable
              as int?,
      gradingMCompId: freezed == gradingMCompId
          ? _value.gradingMCompId
          : gradingMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      gradingMDirId: freezed == gradingMDirId
          ? _value.gradingMDirId
          : gradingMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingGroup: freezed == gradingGroup
          ? _value.gradingGroup
          : gradingGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingKey: freezed == gradingKey
          ? _value.gradingKey
          : gradingKey // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingCode: freezed == gradingCode
          ? _value.gradingCode
          : gradingCode // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingValue: freezed == gradingValue
          ? _value.gradingValue
          : gradingValue // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingIsActive: freezed == gradingIsActive
          ? _value.gradingIsActive
          : gradingIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gradingCreatorId: freezed == gradingCreatorId
          ? _value.gradingCreatorId
          : gradingCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingLastEditorId: freezed == gradingLastEditorId
          ? _value.gradingLastEditorId
          : gradingLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingCreatedAt: freezed == gradingCreatedAt
          ? _value.gradingCreatedAt
          : gradingCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingUpdatedAt: freezed == gradingUpdatedAt
          ? _value.gradingUpdatedAt
          : gradingUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gradingValue2: freezed == gradingValue2
          ? _value.gradingValue2
          : gradingValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingValue3: freezed == gradingValue3
          ? _value.gradingValue3
          : gradingValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjanganKemahalanId: freezed == tunjanganKemahalanId
          ? _value.tunjanganKemahalanId
          : tunjanganKemahalanId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanMCompId: freezed == tunjanganKemahalanMCompId
          ? _value.tunjanganKemahalanMCompId
          : tunjanganKemahalanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanMDirId: freezed == tunjanganKemahalanMDirId
          ? _value.tunjanganKemahalanMDirId
          : tunjanganKemahalanMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanKode: freezed == tunjanganKemahalanKode
          ? _value.tunjanganKemahalanKode
          : tunjanganKemahalanKode // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganKemahalanMDivisiId: freezed == tunjanganKemahalanMDivisiId
          ? _value.tunjanganKemahalanMDivisiId
          : tunjanganKemahalanMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanMDeptId: freezed == tunjanganKemahalanMDeptId
          ? _value.tunjanganKemahalanMDeptId
          : tunjanganKemahalanMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanMZonaId: freezed == tunjanganKemahalanMZonaId
          ? _value.tunjanganKemahalanMZonaId
          : tunjanganKemahalanMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjanganKemahalanMPosisiId: freezed == tunjanganKemahalanMPosisiId
          ? _value.tunjanganKemahalanMPosisiId
          : tunjanganKemahalanMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tunjanganKemahalanBesaran: freezed == tunjanganKemahalanBesaran
          ? _value.tunjanganKemahalanBesaran
          : tunjanganKemahalanBesaran // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganKemahalanDesc: freezed == tunjanganKemahalanDesc
          ? _value.tunjanganKemahalanDesc
          : tunjanganKemahalanDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganKemahalanIsActive: freezed == tunjanganKemahalanIsActive
          ? _value.tunjanganKemahalanIsActive
          : tunjanganKemahalanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tunjanganKemahalanCreatorId: freezed == tunjanganKemahalanCreatorId
          ? _value.tunjanganKemahalanCreatorId
          : tunjanganKemahalanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjanganKemahalanLastEditorId: freezed == tunjanganKemahalanLastEditorId
          ? _value.tunjanganKemahalanLastEditorId
          : tunjanganKemahalanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjanganKemahalanCreatedAt: freezed == tunjanganKemahalanCreatedAt
          ? _value.tunjanganKemahalanCreatedAt
          : tunjanganKemahalanCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tunjanganKemahalanUpdatedAt: freezed == tunjanganKemahalanUpdatedAt
          ? _value.tunjanganKemahalanUpdatedAt
          : tunjanganKemahalanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorName: freezed == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorEmail: freezed == creatorEmail
          ? _value.creatorEmail
          : creatorEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorUsername: freezed == creatorUsername
          ? _value.creatorUsername
          : creatorUsername // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorEmailVerifiedAt: freezed == creatorEmailVerifiedAt
          ? _value.creatorEmailVerifiedAt
          : creatorEmailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorPassword: freezed == creatorPassword
          ? _value.creatorPassword
          : creatorPassword // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorMCompId: freezed == creatorMCompId
          ? _value.creatorMCompId
          : creatorMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorMDirId: freezed == creatorMDirId
          ? _value.creatorMDirId
          : creatorMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorIsActive: freezed == creatorIsActive
          ? _value.creatorIsActive
          : creatorIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorCreatorId: freezed == creatorCreatorId
          ? _value.creatorCreatorId
          : creatorCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorLastEditorId: freezed == creatorLastEditorId
          ? _value.creatorLastEditorId
          : creatorLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorRememberToken: freezed == creatorRememberToken
          ? _value.creatorRememberToken
          : creatorRememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorCreatedAt: freezed == creatorCreatedAt
          ? _value.creatorCreatedAt
          : creatorCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorUpdatedAt: freezed == creatorUpdatedAt
          ? _value.creatorUpdatedAt
          : creatorUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorProfilImage: freezed == creatorProfilImage
          ? _value.creatorProfilImage
          : creatorProfilImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorTelp: freezed == creatorTelp
          ? _value.creatorTelp
          : creatorTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorMKaryId: freezed == creatorMKaryId
          ? _value.creatorMKaryId
          : creatorMKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorId: freezed == lastEditorId
          ? _value.lastEditorId
          : lastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorName: freezed == lastEditorName
          ? _value.lastEditorName
          : lastEditorName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorEmail: freezed == lastEditorEmail
          ? _value.lastEditorEmail
          : lastEditorEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorUsername: freezed == lastEditorUsername
          ? _value.lastEditorUsername
          : lastEditorUsername // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorEmailVerifiedAt: freezed == lastEditorEmailVerifiedAt
          ? _value.lastEditorEmailVerifiedAt
          : lastEditorEmailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorPassword: freezed == lastEditorPassword
          ? _value.lastEditorPassword
          : lastEditorPassword // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorMCompId: freezed == lastEditorMCompId
          ? _value.lastEditorMCompId
          : lastEditorMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorMDirId: freezed == lastEditorMDirId
          ? _value.lastEditorMDirId
          : lastEditorMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorIsActive: freezed == lastEditorIsActive
          ? _value.lastEditorIsActive
          : lastEditorIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorCreatorId: freezed == lastEditorCreatorId
          ? _value.lastEditorCreatorId
          : lastEditorCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorLastEditorId: freezed == lastEditorLastEditorId
          ? _value.lastEditorLastEditorId
          : lastEditorLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorRememberToken: freezed == lastEditorRememberToken
          ? _value.lastEditorRememberToken
          : lastEditorRememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorCreatedAt: freezed == lastEditorCreatedAt
          ? _value.lastEditorCreatedAt
          : lastEditorCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorUpdatedAt: freezed == lastEditorUpdatedAt
          ? _value.lastEditorUpdatedAt
          : lastEditorUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorProfilImage: freezed == lastEditorProfilImage
          ? _value.lastEditorProfilImage
          : lastEditorProfilImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorTelp: freezed == lastEditorTelp
          ? _value.lastEditorTelp
          : lastEditorTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastEditorMKaryId: freezed == lastEditorMKaryId
          ? _value.lastEditorMKaryId
          : lastEditorMKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataStandarGajiImpl implements _DataStandarGaji {
  const _$DataStandarGajiImpl(
      {@JsonKey(name: "meta_read") this.metaRead,
      @JsonKey(name: "meta_delete") this.metaDelete,
      @JsonKey(name: "meta_update") this.metaUpdate,
      @JsonKey(name: "meta_create") this.metaCreate,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "m_comp_id") this.datumMCompId,
      @JsonKey(name: "m_dir_id") this.datumMDirId,
      @JsonKey(name: "kode") this.kode,
      @JsonKey(name: "m_divisi_id") this.datumMDivisiId,
      @JsonKey(name: "m_dept_id") this.datumMDeptId,
      @JsonKey(name: "m_zona_id") this.datumMZonaId,
      @JsonKey(name: "m_posisi_id") this.datumMPosisiId,
      @JsonKey(name: "grading_id") this.datumGradingId,
      @JsonKey(name: "gaji_pokok") this.gajiPokok,
      @JsonKey(name: "gaji_pokok_periode") this.gajiPokokPeriode,
      @JsonKey(name: "uang_saku") this.uangSaku,
      @JsonKey(name: "uang_saku_periode") this.uangSakuPeriode,
      @JsonKey(name: "tunjangan_posisi") this.tunjanganPosisi,
      @JsonKey(name: "tunjangan_posisi_periode") this.tunjanganPosisiPeriode,
      @JsonKey(name: "tunjangan_kemahalan_id") this.datumTunjanganKemahalanId,
      @JsonKey(name: "tunjangan_kemahalan_periode")
      this.tunjanganKemahalanPeriode,
      @JsonKey(name: "uang_makan") this.uangMakan,
      @JsonKey(name: "uang_makan_periode") this.uangMakanPeriode,
      @JsonKey(name: "tunjangan_tetap") this.tunjanganTetap,
      @JsonKey(name: "tunjangan_tetap_periode") this.tunjanganTetapPeriode,
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
      @JsonKey(name: "m_divisi.id") this.mDivisiId,
      @JsonKey(name: "m_divisi.m_comp_id") this.mDivisiMCompId,
      @JsonKey(name: "m_divisi.m_dir_id") this.mDivisiMDirId,
      @JsonKey(name: "m_divisi.nama") this.mDivisiNama,
      @JsonKey(name: "m_divisi.desc") this.mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") this.mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") this.mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id") this.mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") this.mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") this.mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") this.mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") this.mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") this.mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") this.mDeptNama,
      @JsonKey(name: "m_dept.desc") this.mDeptDesc,
      @JsonKey(name: "m_dept.is_active") this.mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") this.mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") this.mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") this.mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") this.mDeptUpdatedAt,
      @JsonKey(name: "m_zona.id") this.mZonaId,
      @JsonKey(name: "m_zona.m_comp_id") this.mZonaMCompId,
      @JsonKey(name: "m_zona.m_dir_id") this.mZonaMDirId,
      @JsonKey(name: "m_zona.m_tunj_kemahalan_id") this.mZonaMTunjKemahalanId,
      @JsonKey(name: "m_zona.kode") this.mZonaKode,
      @JsonKey(name: "m_zona.nama") this.mZonaNama,
      @JsonKey(name: "m_zona.desc") this.mZonaDesc,
      @JsonKey(name: "m_zona.is_active") this.mZonaIsActive,
      @JsonKey(name: "m_zona.creator_id") this.mZonaCreatorId,
      @JsonKey(name: "m_zona.last_editor_id") this.mZonaLastEditorId,
      @JsonKey(name: "m_zona.created_at") this.mZonaCreatedAt,
      @JsonKey(name: "m_zona.updated_at") this.mZonaUpdatedAt,
      @JsonKey(name: "m_posisi.id") this.mPosisiId,
      @JsonKey(name: "m_posisi.m_comp_id") this.mPosisiMCompId,
      @JsonKey(name: "m_posisi.m_dir_id") this.mPosisiMDirId,
      @JsonKey(name: "m_posisi.kode") this.mPosisiKode,
      @JsonKey(name: "m_posisi.desc_kerja") this.mPosisiDescKerja,
      @JsonKey(name: "m_posisi.desc_kerja_1") this.mPosisiDescKerja1,
      @JsonKey(name: "m_posisi.desc_kerja_2") this.mPosisiDescKerja2,
      @JsonKey(name: "m_posisi.min_pengalaman") this.mPosisiMinPengalaman,
      @JsonKey(name: "m_posisi.min_pendidikan_id") this.mPosisiMinPendidikanId,
      @JsonKey(name: "m_posisi.min_gaji_pokok") this.mPosisiMinGajiPokok,
      @JsonKey(name: "m_posisi.max_gaji_pokok") this.mPosisiMaxGajiPokok,
      @JsonKey(name: "m_posisi.biaya") this.mPosisiBiaya,
      @JsonKey(name: "m_posisi.tipe_bpjs_id") this.mPosisiTipeBpjsId,
      @JsonKey(name: "m_posisi.potongan_bpjs") this.mPosisiPotonganBpjs,
      @JsonKey(name: "m_posisi.desc") this.mPosisiDesc,
      @JsonKey(name: "m_posisi.is_active") this.mPosisiIsActive,
      @JsonKey(name: "m_posisi.creator_id") this.mPosisiCreatorId,
      @JsonKey(name: "m_posisi.last_editor_id") this.mPosisiLastEditorId,
      @JsonKey(name: "m_posisi.created_at") this.mPosisiCreatedAt,
      @JsonKey(name: "m_posisi.updated_at") this.mPosisiUpdatedAt,
      @JsonKey(name: "grading.id") this.gradingId,
      @JsonKey(name: "grading.m_comp_id") this.gradingMCompId,
      @JsonKey(name: "grading.m_dir_id") this.gradingMDirId,
      @JsonKey(name: "grading.group") this.gradingGroup,
      @JsonKey(name: "grading.key") this.gradingKey,
      @JsonKey(name: "grading.code") this.gradingCode,
      @JsonKey(name: "grading.value") this.gradingValue,
      @JsonKey(name: "grading.is_active") this.gradingIsActive,
      @JsonKey(name: "grading.creator_id") this.gradingCreatorId,
      @JsonKey(name: "grading.last_editor_id") this.gradingLastEditorId,
      @JsonKey(name: "grading.created_at") this.gradingCreatedAt,
      @JsonKey(name: "grading.updated_at") this.gradingUpdatedAt,
      @JsonKey(name: "grading.value_2") this.gradingValue2,
      @JsonKey(name: "grading.value_3") this.gradingValue3,
      @JsonKey(name: "tunjangan_kemahalan.id") this.tunjanganKemahalanId,
      @JsonKey(name: "tunjangan_kemahalan.m_comp_id")
      this.tunjanganKemahalanMCompId,
      @JsonKey(name: "tunjangan_kemahalan.m_dir_id")
      this.tunjanganKemahalanMDirId,
      @JsonKey(name: "tunjangan_kemahalan.kode") this.tunjanganKemahalanKode,
      @JsonKey(name: "tunjangan_kemahalan.m_divisi_id")
      this.tunjanganKemahalanMDivisiId,
      @JsonKey(name: "tunjangan_kemahalan.m_dept_id")
      this.tunjanganKemahalanMDeptId,
      @JsonKey(name: "tunjangan_kemahalan.m_zona_id")
      this.tunjanganKemahalanMZonaId,
      @JsonKey(name: "tunjangan_kemahalan.m_posisi_id")
      this.tunjanganKemahalanMPosisiId,
      @JsonKey(name: "tunjangan_kemahalan.besaran")
      this.tunjanganKemahalanBesaran,
      @JsonKey(name: "tunjangan_kemahalan.desc") this.tunjanganKemahalanDesc,
      @JsonKey(name: "tunjangan_kemahalan.is_active")
      this.tunjanganKemahalanIsActive,
      @JsonKey(name: "tunjangan_kemahalan.creator_id")
      this.tunjanganKemahalanCreatorId,
      @JsonKey(name: "tunjangan_kemahalan.last_editor_id")
      this.tunjanganKemahalanLastEditorId,
      @JsonKey(name: "tunjangan_kemahalan.created_at")
      this.tunjanganKemahalanCreatedAt,
      @JsonKey(name: "tunjangan_kemahalan.updated_at")
      this.tunjanganKemahalanUpdatedAt,
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

  factory _$DataStandarGajiImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataStandarGajiImplFromJson(json);

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
  @JsonKey(name: "m_divisi_id")
  final int? datumMDivisiId;
  @override
  @JsonKey(name: "m_dept_id")
  final int? datumMDeptId;
  @override
  @JsonKey(name: "m_zona_id")
  final int? datumMZonaId;
  @override
  @JsonKey(name: "m_posisi_id")
  final int? datumMPosisiId;
  @override
  @JsonKey(name: "grading_id")
  final int? datumGradingId;
  @override
  @JsonKey(name: "gaji_pokok")
  final int? gajiPokok;
  @override
  @JsonKey(name: "gaji_pokok_periode")
  final String? gajiPokokPeriode;
  @override
  @JsonKey(name: "uang_saku")
  final int? uangSaku;
  @override
  @JsonKey(name: "uang_saku_periode")
  final String? uangSakuPeriode;
  @override
  @JsonKey(name: "tunjangan_posisi")
  final int? tunjanganPosisi;
  @override
  @JsonKey(name: "tunjangan_posisi_periode")
  final String? tunjanganPosisiPeriode;
  @override
  @JsonKey(name: "tunjangan_kemahalan_id")
  final int? datumTunjanganKemahalanId;
  @override
  @JsonKey(name: "tunjangan_kemahalan_periode")
  final String? tunjanganKemahalanPeriode;
  @override
  @JsonKey(name: "uang_makan")
  final int? uangMakan;
  @override
  @JsonKey(name: "uang_makan_periode")
  final String? uangMakanPeriode;
  @override
  @JsonKey(name: "tunjangan_tetap")
  final int? tunjanganTetap;
  @override
  @JsonKey(name: "tunjangan_tetap_periode")
  final String? tunjanganTetapPeriode;
  @override
  @JsonKey(name: "desc")
  final String? desc;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "creator_id")
  final dynamic datumCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  final dynamic datumLastEditorId;
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
  @JsonKey(name: "m_divisi.id")
  final int? mDivisiId;
  @override
  @JsonKey(name: "m_divisi.m_comp_id")
  final int? mDivisiMCompId;
  @override
  @JsonKey(name: "m_divisi.m_dir_id")
  final int? mDivisiMDirId;
  @override
  @JsonKey(name: "m_divisi.nama")
  final String? mDivisiNama;
  @override
  @JsonKey(name: "m_divisi.desc")
  final String? mDivisiDesc;
  @override
  @JsonKey(name: "m_divisi.is_active")
  final bool? mDivisiIsActive;
  @override
  @JsonKey(name: "m_divisi.creator_id")
  final int? mDivisiCreatorId;
  @override
  @JsonKey(name: "m_divisi.last_editor_id")
  final int? mDivisiLastEditorId;
  @override
  @JsonKey(name: "m_divisi.created_at")
  final String? mDivisiCreatedAt;
  @override
  @JsonKey(name: "m_divisi.updated_at")
  final String? mDivisiUpdatedAt;
  @override
  @JsonKey(name: "m_dept.id")
  final int? mDeptId;
  @override
  @JsonKey(name: "m_dept.m_dir_id")
  final int? mDeptMDirId;
  @override
  @JsonKey(name: "m_dept.m_divisi_id")
  final int? mDeptMDivisiId;
  @override
  @JsonKey(name: "m_dept.nama")
  final String? mDeptNama;
  @override
  @JsonKey(name: "m_dept.desc")
  final String? mDeptDesc;
  @override
  @JsonKey(name: "m_dept.is_active")
  final bool? mDeptIsActive;
  @override
  @JsonKey(name: "m_dept.creator_id")
  final dynamic mDeptCreatorId;
  @override
  @JsonKey(name: "m_dept.last_editor_id")
  final dynamic mDeptLastEditorId;
  @override
  @JsonKey(name: "m_dept.created_at")
  final String? mDeptCreatedAt;
  @override
  @JsonKey(name: "m_dept.updated_at")
  final String? mDeptUpdatedAt;
  @override
  @JsonKey(name: "m_zona.id")
  final int? mZonaId;
  @override
  @JsonKey(name: "m_zona.m_comp_id")
  final int? mZonaMCompId;
  @override
  @JsonKey(name: "m_zona.m_dir_id")
  final int? mZonaMDirId;
  @override
  @JsonKey(name: "m_zona.m_tunj_kemahalan_id")
  final int? mZonaMTunjKemahalanId;
  @override
  @JsonKey(name: "m_zona.kode")
  final String? mZonaKode;
  @override
  @JsonKey(name: "m_zona.nama")
  final String? mZonaNama;
  @override
  @JsonKey(name: "m_zona.desc")
  final String? mZonaDesc;
  @override
  @JsonKey(name: "m_zona.is_active")
  final bool? mZonaIsActive;
  @override
  @JsonKey(name: "m_zona.creator_id")
  final dynamic mZonaCreatorId;
  @override
  @JsonKey(name: "m_zona.last_editor_id")
  final dynamic mZonaLastEditorId;
  @override
  @JsonKey(name: "m_zona.created_at")
  final String? mZonaCreatedAt;
  @override
  @JsonKey(name: "m_zona.updated_at")
  final String? mZonaUpdatedAt;
  @override
  @JsonKey(name: "m_posisi.id")
  final int? mPosisiId;
  @override
  @JsonKey(name: "m_posisi.m_comp_id")
  final int? mPosisiMCompId;
  @override
  @JsonKey(name: "m_posisi.m_dir_id")
  final int? mPosisiMDirId;
  @override
  @JsonKey(name: "m_posisi.kode")
  final String? mPosisiKode;
  @override
  @JsonKey(name: "m_posisi.desc_kerja")
  final String? mPosisiDescKerja;
  @override
  @JsonKey(name: "m_posisi.desc_kerja_1")
  final String? mPosisiDescKerja1;
  @override
  @JsonKey(name: "m_posisi.desc_kerja_2")
  final String? mPosisiDescKerja2;
  @override
  @JsonKey(name: "m_posisi.min_pengalaman")
  final String? mPosisiMinPengalaman;
  @override
  @JsonKey(name: "m_posisi.min_pendidikan_id")
  final int? mPosisiMinPendidikanId;
  @override
  @JsonKey(name: "m_posisi.min_gaji_pokok")
  final String? mPosisiMinGajiPokok;
  @override
  @JsonKey(name: "m_posisi.max_gaji_pokok")
  final String? mPosisiMaxGajiPokok;
  @override
  @JsonKey(name: "m_posisi.biaya")
  final dynamic mPosisiBiaya;
  @override
  @JsonKey(name: "m_posisi.tipe_bpjs_id")
  final int? mPosisiTipeBpjsId;
  @override
  @JsonKey(name: "m_posisi.potongan_bpjs")
  final String? mPosisiPotonganBpjs;
  @override
  @JsonKey(name: "m_posisi.desc")
  final dynamic mPosisiDesc;
  @override
  @JsonKey(name: "m_posisi.is_active")
  final bool? mPosisiIsActive;
  @override
  @JsonKey(name: "m_posisi.creator_id")
  final dynamic mPosisiCreatorId;
  @override
  @JsonKey(name: "m_posisi.last_editor_id")
  final dynamic mPosisiLastEditorId;
  @override
  @JsonKey(name: "m_posisi.created_at")
  final String? mPosisiCreatedAt;
  @override
  @JsonKey(name: "m_posisi.updated_at")
  final String? mPosisiUpdatedAt;
  @override
  @JsonKey(name: "grading.id")
  final int? gradingId;
  @override
  @JsonKey(name: "grading.m_comp_id")
  final int? gradingMCompId;
  @override
  @JsonKey(name: "grading.m_dir_id")
  final dynamic gradingMDirId;
  @override
  @JsonKey(name: "grading.group")
  final String? gradingGroup;
  @override
  @JsonKey(name: "grading.key")
  final String? gradingKey;
  @override
  @JsonKey(name: "grading.code")
  final String? gradingCode;
  @override
  @JsonKey(name: "grading.value")
  final String? gradingValue;
  @override
  @JsonKey(name: "grading.is_active")
  final bool? gradingIsActive;
  @override
  @JsonKey(name: "grading.creator_id")
  final dynamic gradingCreatorId;
  @override
  @JsonKey(name: "grading.last_editor_id")
  final dynamic gradingLastEditorId;
  @override
  @JsonKey(name: "grading.created_at")
  final String? gradingCreatedAt;
  @override
  @JsonKey(name: "grading.updated_at")
  final String? gradingUpdatedAt;
  @override
  @JsonKey(name: "grading.value_2")
  final dynamic gradingValue2;
  @override
  @JsonKey(name: "grading.value_3")
  final dynamic gradingValue3;
  @override
  @JsonKey(name: "tunjangan_kemahalan.id")
  final int? tunjanganKemahalanId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_comp_id")
  final int? tunjanganKemahalanMCompId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_dir_id")
  final int? tunjanganKemahalanMDirId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.kode")
  final String? tunjanganKemahalanKode;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_divisi_id")
  final int? tunjanganKemahalanMDivisiId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_dept_id")
  final int? tunjanganKemahalanMDeptId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_zona_id")
  final dynamic tunjanganKemahalanMZonaId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_posisi_id")
  final int? tunjanganKemahalanMPosisiId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.besaran")
  final String? tunjanganKemahalanBesaran;
  @override
  @JsonKey(name: "tunjangan_kemahalan.desc")
  final String? tunjanganKemahalanDesc;
  @override
  @JsonKey(name: "tunjangan_kemahalan.is_active")
  final bool? tunjanganKemahalanIsActive;
  @override
  @JsonKey(name: "tunjangan_kemahalan.creator_id")
  final dynamic tunjanganKemahalanCreatorId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.last_editor_id")
  final dynamic tunjanganKemahalanLastEditorId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.created_at")
  final String? tunjanganKemahalanCreatedAt;
  @override
  @JsonKey(name: "tunjangan_kemahalan.updated_at")
  final String? tunjanganKemahalanUpdatedAt;
  @override
  @JsonKey(name: "creator.id")
  final dynamic creatorId;
  @override
  @JsonKey(name: "creator.name")
  final dynamic creatorName;
  @override
  @JsonKey(name: "creator.email")
  final dynamic creatorEmail;
  @override
  @JsonKey(name: "creator.username")
  final dynamic creatorUsername;
  @override
  @JsonKey(name: "creator.email_verified_at")
  final dynamic creatorEmailVerifiedAt;
  @override
  @JsonKey(name: "creator.password")
  final dynamic creatorPassword;
  @override
  @JsonKey(name: "creator.m_comp_id")
  final dynamic creatorMCompId;
  @override
  @JsonKey(name: "creator.m_dir_id")
  final dynamic creatorMDirId;
  @override
  @JsonKey(name: "creator.is_active")
  final dynamic creatorIsActive;
  @override
  @JsonKey(name: "creator.creator_id")
  final dynamic creatorCreatorId;
  @override
  @JsonKey(name: "creator.last_editor_id")
  final dynamic creatorLastEditorId;
  @override
  @JsonKey(name: "creator.remember_token")
  final dynamic creatorRememberToken;
  @override
  @JsonKey(name: "creator.created_at")
  final dynamic creatorCreatedAt;
  @override
  @JsonKey(name: "creator.updated_at")
  final dynamic creatorUpdatedAt;
  @override
  @JsonKey(name: "creator.profil_image")
  final dynamic creatorProfilImage;
  @override
  @JsonKey(name: "creator.telp")
  final dynamic creatorTelp;
  @override
  @JsonKey(name: "creator.m_kary_id")
  final dynamic creatorMKaryId;
  @override
  @JsonKey(name: "last_editor.id")
  final dynamic lastEditorId;
  @override
  @JsonKey(name: "last_editor.name")
  final dynamic lastEditorName;
  @override
  @JsonKey(name: "last_editor.email")
  final dynamic lastEditorEmail;
  @override
  @JsonKey(name: "last_editor.username")
  final dynamic lastEditorUsername;
  @override
  @JsonKey(name: "last_editor.email_verified_at")
  final dynamic lastEditorEmailVerifiedAt;
  @override
  @JsonKey(name: "last_editor.password")
  final dynamic lastEditorPassword;
  @override
  @JsonKey(name: "last_editor.m_comp_id")
  final dynamic lastEditorMCompId;
  @override
  @JsonKey(name: "last_editor.m_dir_id")
  final dynamic lastEditorMDirId;
  @override
  @JsonKey(name: "last_editor.is_active")
  final dynamic lastEditorIsActive;
  @override
  @JsonKey(name: "last_editor.creator_id")
  final dynamic lastEditorCreatorId;
  @override
  @JsonKey(name: "last_editor.last_editor_id")
  final dynamic lastEditorLastEditorId;
  @override
  @JsonKey(name: "last_editor.remember_token")
  final dynamic lastEditorRememberToken;
  @override
  @JsonKey(name: "last_editor.created_at")
  final dynamic lastEditorCreatedAt;
  @override
  @JsonKey(name: "last_editor.updated_at")
  final dynamic lastEditorUpdatedAt;
  @override
  @JsonKey(name: "last_editor.profil_image")
  final dynamic lastEditorProfilImage;
  @override
  @JsonKey(name: "last_editor.telp")
  final dynamic lastEditorTelp;
  @override
  @JsonKey(name: "last_editor.m_kary_id")
  final dynamic lastEditorMKaryId;

  @override
  String toString() {
    return 'DataStandarGaji(metaRead: $metaRead, metaDelete: $metaDelete, metaUpdate: $metaUpdate, metaCreate: $metaCreate, id: $id, datumMCompId: $datumMCompId, datumMDirId: $datumMDirId, kode: $kode, datumMDivisiId: $datumMDivisiId, datumMDeptId: $datumMDeptId, datumMZonaId: $datumMZonaId, datumMPosisiId: $datumMPosisiId, datumGradingId: $datumGradingId, gajiPokok: $gajiPokok, gajiPokokPeriode: $gajiPokokPeriode, uangSaku: $uangSaku, uangSakuPeriode: $uangSakuPeriode, tunjanganPosisi: $tunjanganPosisi, tunjanganPosisiPeriode: $tunjanganPosisiPeriode, datumTunjanganKemahalanId: $datumTunjanganKemahalanId, tunjanganKemahalanPeriode: $tunjanganKemahalanPeriode, uangMakan: $uangMakan, uangMakanPeriode: $uangMakanPeriode, tunjanganTetap: $tunjanganTetap, tunjanganTetapPeriode: $tunjanganTetapPeriode, desc: $desc, isActive: $isActive, datumCreatorId: $datumCreatorId, datumLastEditorId: $datumLastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, mCompId: $mCompId, mCompNama: $mCompNama, mCompIsActive: $mCompIsActive, mCompDesc: $mCompDesc, mCompCreatorId: $mCompCreatorId, mCompLastEditorId: $mCompLastEditorId, mCompCreatedAt: $mCompCreatedAt, mCompUpdatedAt: $mCompUpdatedAt, mDirId: $mDirId, mDirMCompId: $mDirMCompId, mDirNama: $mDirNama, mDirDesc: $mDirDesc, mDirIsActive: $mDirIsActive, mDirCreatorId: $mDirCreatorId, mDirLastEditorId: $mDirLastEditorId, mDirCreatedAt: $mDirCreatedAt, mDirUpdatedAt: $mDirUpdatedAt, mDivisiId: $mDivisiId, mDivisiMCompId: $mDivisiMCompId, mDivisiMDirId: $mDivisiMDirId, mDivisiNama: $mDivisiNama, mDivisiDesc: $mDivisiDesc, mDivisiIsActive: $mDivisiIsActive, mDivisiCreatorId: $mDivisiCreatorId, mDivisiLastEditorId: $mDivisiLastEditorId, mDivisiCreatedAt: $mDivisiCreatedAt, mDivisiUpdatedAt: $mDivisiUpdatedAt, mDeptId: $mDeptId, mDeptMDirId: $mDeptMDirId, mDeptMDivisiId: $mDeptMDivisiId, mDeptNama: $mDeptNama, mDeptDesc: $mDeptDesc, mDeptIsActive: $mDeptIsActive, mDeptCreatorId: $mDeptCreatorId, mDeptLastEditorId: $mDeptLastEditorId, mDeptCreatedAt: $mDeptCreatedAt, mDeptUpdatedAt: $mDeptUpdatedAt, mZonaId: $mZonaId, mZonaMCompId: $mZonaMCompId, mZonaMDirId: $mZonaMDirId, mZonaMTunjKemahalanId: $mZonaMTunjKemahalanId, mZonaKode: $mZonaKode, mZonaNama: $mZonaNama, mZonaDesc: $mZonaDesc, mZonaIsActive: $mZonaIsActive, mZonaCreatorId: $mZonaCreatorId, mZonaLastEditorId: $mZonaLastEditorId, mZonaCreatedAt: $mZonaCreatedAt, mZonaUpdatedAt: $mZonaUpdatedAt, mPosisiId: $mPosisiId, mPosisiMCompId: $mPosisiMCompId, mPosisiMDirId: $mPosisiMDirId, mPosisiKode: $mPosisiKode, mPosisiDescKerja: $mPosisiDescKerja, mPosisiDescKerja1: $mPosisiDescKerja1, mPosisiDescKerja2: $mPosisiDescKerja2, mPosisiMinPengalaman: $mPosisiMinPengalaman, mPosisiMinPendidikanId: $mPosisiMinPendidikanId, mPosisiMinGajiPokok: $mPosisiMinGajiPokok, mPosisiMaxGajiPokok: $mPosisiMaxGajiPokok, mPosisiBiaya: $mPosisiBiaya, mPosisiTipeBpjsId: $mPosisiTipeBpjsId, mPosisiPotonganBpjs: $mPosisiPotonganBpjs, mPosisiDesc: $mPosisiDesc, mPosisiIsActive: $mPosisiIsActive, mPosisiCreatorId: $mPosisiCreatorId, mPosisiLastEditorId: $mPosisiLastEditorId, mPosisiCreatedAt: $mPosisiCreatedAt, mPosisiUpdatedAt: $mPosisiUpdatedAt, gradingId: $gradingId, gradingMCompId: $gradingMCompId, gradingMDirId: $gradingMDirId, gradingGroup: $gradingGroup, gradingKey: $gradingKey, gradingCode: $gradingCode, gradingValue: $gradingValue, gradingIsActive: $gradingIsActive, gradingCreatorId: $gradingCreatorId, gradingLastEditorId: $gradingLastEditorId, gradingCreatedAt: $gradingCreatedAt, gradingUpdatedAt: $gradingUpdatedAt, gradingValue2: $gradingValue2, gradingValue3: $gradingValue3, tunjanganKemahalanId: $tunjanganKemahalanId, tunjanganKemahalanMCompId: $tunjanganKemahalanMCompId, tunjanganKemahalanMDirId: $tunjanganKemahalanMDirId, tunjanganKemahalanKode: $tunjanganKemahalanKode, tunjanganKemahalanMDivisiId: $tunjanganKemahalanMDivisiId, tunjanganKemahalanMDeptId: $tunjanganKemahalanMDeptId, tunjanganKemahalanMZonaId: $tunjanganKemahalanMZonaId, tunjanganKemahalanMPosisiId: $tunjanganKemahalanMPosisiId, tunjanganKemahalanBesaran: $tunjanganKemahalanBesaran, tunjanganKemahalanDesc: $tunjanganKemahalanDesc, tunjanganKemahalanIsActive: $tunjanganKemahalanIsActive, tunjanganKemahalanCreatorId: $tunjanganKemahalanCreatorId, tunjanganKemahalanLastEditorId: $tunjanganKemahalanLastEditorId, tunjanganKemahalanCreatedAt: $tunjanganKemahalanCreatedAt, tunjanganKemahalanUpdatedAt: $tunjanganKemahalanUpdatedAt, creatorId: $creatorId, creatorName: $creatorName, creatorEmail: $creatorEmail, creatorUsername: $creatorUsername, creatorEmailVerifiedAt: $creatorEmailVerifiedAt, creatorPassword: $creatorPassword, creatorMCompId: $creatorMCompId, creatorMDirId: $creatorMDirId, creatorIsActive: $creatorIsActive, creatorCreatorId: $creatorCreatorId, creatorLastEditorId: $creatorLastEditorId, creatorRememberToken: $creatorRememberToken, creatorCreatedAt: $creatorCreatedAt, creatorUpdatedAt: $creatorUpdatedAt, creatorProfilImage: $creatorProfilImage, creatorTelp: $creatorTelp, creatorMKaryId: $creatorMKaryId, lastEditorId: $lastEditorId, lastEditorName: $lastEditorName, lastEditorEmail: $lastEditorEmail, lastEditorUsername: $lastEditorUsername, lastEditorEmailVerifiedAt: $lastEditorEmailVerifiedAt, lastEditorPassword: $lastEditorPassword, lastEditorMCompId: $lastEditorMCompId, lastEditorMDirId: $lastEditorMDirId, lastEditorIsActive: $lastEditorIsActive, lastEditorCreatorId: $lastEditorCreatorId, lastEditorLastEditorId: $lastEditorLastEditorId, lastEditorRememberToken: $lastEditorRememberToken, lastEditorCreatedAt: $lastEditorCreatedAt, lastEditorUpdatedAt: $lastEditorUpdatedAt, lastEditorProfilImage: $lastEditorProfilImage, lastEditorTelp: $lastEditorTelp, lastEditorMKaryId: $lastEditorMKaryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStandarGajiImpl &&
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
            (identical(other.datumMDivisiId, datumMDivisiId) ||
                other.datumMDivisiId == datumMDivisiId) &&
            (identical(other.datumMDeptId, datumMDeptId) ||
                other.datumMDeptId == datumMDeptId) &&
            (identical(other.datumMZonaId, datumMZonaId) ||
                other.datumMZonaId == datumMZonaId) &&
            (identical(other.datumMPosisiId, datumMPosisiId) ||
                other.datumMPosisiId == datumMPosisiId) &&
            (identical(other.datumGradingId, datumGradingId) ||
                other.datumGradingId == datumGradingId) &&
            (identical(other.gajiPokok, gajiPokok) ||
                other.gajiPokok == gajiPokok) &&
            (identical(other.gajiPokokPeriode, gajiPokokPeriode) ||
                other.gajiPokokPeriode == gajiPokokPeriode) &&
            (identical(other.uangSaku, uangSaku) ||
                other.uangSaku == uangSaku) &&
            (identical(other.uangSakuPeriode, uangSakuPeriode) ||
                other.uangSakuPeriode == uangSakuPeriode) &&
            (identical(other.tunjanganPosisi, tunjanganPosisi) ||
                other.tunjanganPosisi == tunjanganPosisi) &&
            (identical(other.tunjanganPosisiPeriode, tunjanganPosisiPeriode) ||
                other.tunjanganPosisiPeriode == tunjanganPosisiPeriode) &&
            (identical(other.datumTunjanganKemahalanId, datumTunjanganKemahalanId) ||
                other.datumTunjanganKemahalanId == datumTunjanganKemahalanId) &&
            (identical(other.tunjanganKemahalanPeriode, tunjanganKemahalanPeriode) ||
                other.tunjanganKemahalanPeriode == tunjanganKemahalanPeriode) &&
            (identical(other.uangMakan, uangMakan) ||
                other.uangMakan == uangMakan) &&
            (identical(other.uangMakanPeriode, uangMakanPeriode) ||
                other.uangMakanPeriode == uangMakanPeriode) &&
            (identical(other.tunjanganTetap, tunjanganTetap) ||
                other.tunjanganTetap == tunjanganTetap) &&
            (identical(other.tunjanganTetapPeriode, tunjanganTetapPeriode) ||
                other.tunjanganTetapPeriode == tunjanganTetapPeriode) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other.datumCreatorId, datumCreatorId) &&
            const DeepCollectionEquality()
                .equals(other.datumLastEditorId, datumLastEditorId) &&
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
            const DeepCollectionEquality().equals(other.mDirLastEditorId, mDirLastEditorId) &&
            const DeepCollectionEquality().equals(other.mDirCreatedAt, mDirCreatedAt) &&
            const DeepCollectionEquality().equals(other.mDirUpdatedAt, mDirUpdatedAt) &&
            (identical(other.mDivisiId, mDivisiId) || other.mDivisiId == mDivisiId) &&
            (identical(other.mDivisiMCompId, mDivisiMCompId) || other.mDivisiMCompId == mDivisiMCompId) &&
            (identical(other.mDivisiMDirId, mDivisiMDirId) || other.mDivisiMDirId == mDivisiMDirId) &&
            (identical(other.mDivisiNama, mDivisiNama) || other.mDivisiNama == mDivisiNama) &&
            (identical(other.mDivisiDesc, mDivisiDesc) || other.mDivisiDesc == mDivisiDesc) &&
            (identical(other.mDivisiIsActive, mDivisiIsActive) || other.mDivisiIsActive == mDivisiIsActive) &&
            (identical(other.mDivisiCreatorId, mDivisiCreatorId) || other.mDivisiCreatorId == mDivisiCreatorId) &&
            (identical(other.mDivisiLastEditorId, mDivisiLastEditorId) || other.mDivisiLastEditorId == mDivisiLastEditorId) &&
            (identical(other.mDivisiCreatedAt, mDivisiCreatedAt) || other.mDivisiCreatedAt == mDivisiCreatedAt) &&
            (identical(other.mDivisiUpdatedAt, mDivisiUpdatedAt) || other.mDivisiUpdatedAt == mDivisiUpdatedAt) &&
            (identical(other.mDeptId, mDeptId) || other.mDeptId == mDeptId) &&
            (identical(other.mDeptMDirId, mDeptMDirId) || other.mDeptMDirId == mDeptMDirId) &&
            (identical(other.mDeptMDivisiId, mDeptMDivisiId) || other.mDeptMDivisiId == mDeptMDivisiId) &&
            (identical(other.mDeptNama, mDeptNama) || other.mDeptNama == mDeptNama) &&
            (identical(other.mDeptDesc, mDeptDesc) || other.mDeptDesc == mDeptDesc) &&
            (identical(other.mDeptIsActive, mDeptIsActive) || other.mDeptIsActive == mDeptIsActive) &&
            const DeepCollectionEquality().equals(other.mDeptCreatorId, mDeptCreatorId) &&
            const DeepCollectionEquality().equals(other.mDeptLastEditorId, mDeptLastEditorId) &&
            (identical(other.mDeptCreatedAt, mDeptCreatedAt) || other.mDeptCreatedAt == mDeptCreatedAt) &&
            (identical(other.mDeptUpdatedAt, mDeptUpdatedAt) || other.mDeptUpdatedAt == mDeptUpdatedAt) &&
            (identical(other.mZonaId, mZonaId) || other.mZonaId == mZonaId) &&
            (identical(other.mZonaMCompId, mZonaMCompId) || other.mZonaMCompId == mZonaMCompId) &&
            (identical(other.mZonaMDirId, mZonaMDirId) || other.mZonaMDirId == mZonaMDirId) &&
            (identical(other.mZonaMTunjKemahalanId, mZonaMTunjKemahalanId) || other.mZonaMTunjKemahalanId == mZonaMTunjKemahalanId) &&
            (identical(other.mZonaKode, mZonaKode) || other.mZonaKode == mZonaKode) &&
            (identical(other.mZonaNama, mZonaNama) || other.mZonaNama == mZonaNama) &&
            (identical(other.mZonaDesc, mZonaDesc) || other.mZonaDesc == mZonaDesc) &&
            (identical(other.mZonaIsActive, mZonaIsActive) || other.mZonaIsActive == mZonaIsActive) &&
            const DeepCollectionEquality().equals(other.mZonaCreatorId, mZonaCreatorId) &&
            const DeepCollectionEquality().equals(other.mZonaLastEditorId, mZonaLastEditorId) &&
            (identical(other.mZonaCreatedAt, mZonaCreatedAt) || other.mZonaCreatedAt == mZonaCreatedAt) &&
            (identical(other.mZonaUpdatedAt, mZonaUpdatedAt) || other.mZonaUpdatedAt == mZonaUpdatedAt) &&
            (identical(other.mPosisiId, mPosisiId) || other.mPosisiId == mPosisiId) &&
            (identical(other.mPosisiMCompId, mPosisiMCompId) || other.mPosisiMCompId == mPosisiMCompId) &&
            (identical(other.mPosisiMDirId, mPosisiMDirId) || other.mPosisiMDirId == mPosisiMDirId) &&
            (identical(other.mPosisiKode, mPosisiKode) || other.mPosisiKode == mPosisiKode) &&
            (identical(other.mPosisiDescKerja, mPosisiDescKerja) || other.mPosisiDescKerja == mPosisiDescKerja) &&
            (identical(other.mPosisiDescKerja1, mPosisiDescKerja1) || other.mPosisiDescKerja1 == mPosisiDescKerja1) &&
            (identical(other.mPosisiDescKerja2, mPosisiDescKerja2) || other.mPosisiDescKerja2 == mPosisiDescKerja2) &&
            (identical(other.mPosisiMinPengalaman, mPosisiMinPengalaman) || other.mPosisiMinPengalaman == mPosisiMinPengalaman) &&
            (identical(other.mPosisiMinPendidikanId, mPosisiMinPendidikanId) || other.mPosisiMinPendidikanId == mPosisiMinPendidikanId) &&
            (identical(other.mPosisiMinGajiPokok, mPosisiMinGajiPokok) || other.mPosisiMinGajiPokok == mPosisiMinGajiPokok) &&
            (identical(other.mPosisiMaxGajiPokok, mPosisiMaxGajiPokok) || other.mPosisiMaxGajiPokok == mPosisiMaxGajiPokok) &&
            const DeepCollectionEquality().equals(other.mPosisiBiaya, mPosisiBiaya) &&
            (identical(other.mPosisiTipeBpjsId, mPosisiTipeBpjsId) || other.mPosisiTipeBpjsId == mPosisiTipeBpjsId) &&
            (identical(other.mPosisiPotonganBpjs, mPosisiPotonganBpjs) || other.mPosisiPotonganBpjs == mPosisiPotonganBpjs) &&
            const DeepCollectionEquality().equals(other.mPosisiDesc, mPosisiDesc) &&
            (identical(other.mPosisiIsActive, mPosisiIsActive) || other.mPosisiIsActive == mPosisiIsActive) &&
            const DeepCollectionEquality().equals(other.mPosisiCreatorId, mPosisiCreatorId) &&
            const DeepCollectionEquality().equals(other.mPosisiLastEditorId, mPosisiLastEditorId) &&
            (identical(other.mPosisiCreatedAt, mPosisiCreatedAt) || other.mPosisiCreatedAt == mPosisiCreatedAt) &&
            (identical(other.mPosisiUpdatedAt, mPosisiUpdatedAt) || other.mPosisiUpdatedAt == mPosisiUpdatedAt) &&
            (identical(other.gradingId, gradingId) || other.gradingId == gradingId) &&
            (identical(other.gradingMCompId, gradingMCompId) || other.gradingMCompId == gradingMCompId) &&
            const DeepCollectionEquality().equals(other.gradingMDirId, gradingMDirId) &&
            (identical(other.gradingGroup, gradingGroup) || other.gradingGroup == gradingGroup) &&
            (identical(other.gradingKey, gradingKey) || other.gradingKey == gradingKey) &&
            (identical(other.gradingCode, gradingCode) || other.gradingCode == gradingCode) &&
            (identical(other.gradingValue, gradingValue) || other.gradingValue == gradingValue) &&
            (identical(other.gradingIsActive, gradingIsActive) || other.gradingIsActive == gradingIsActive) &&
            const DeepCollectionEquality().equals(other.gradingCreatorId, gradingCreatorId) &&
            const DeepCollectionEquality().equals(other.gradingLastEditorId, gradingLastEditorId) &&
            (identical(other.gradingCreatedAt, gradingCreatedAt) || other.gradingCreatedAt == gradingCreatedAt) &&
            (identical(other.gradingUpdatedAt, gradingUpdatedAt) || other.gradingUpdatedAt == gradingUpdatedAt) &&
            const DeepCollectionEquality().equals(other.gradingValue2, gradingValue2) &&
            const DeepCollectionEquality().equals(other.gradingValue3, gradingValue3) &&
            (identical(other.tunjanganKemahalanId, tunjanganKemahalanId) || other.tunjanganKemahalanId == tunjanganKemahalanId) &&
            (identical(other.tunjanganKemahalanMCompId, tunjanganKemahalanMCompId) || other.tunjanganKemahalanMCompId == tunjanganKemahalanMCompId) &&
            (identical(other.tunjanganKemahalanMDirId, tunjanganKemahalanMDirId) || other.tunjanganKemahalanMDirId == tunjanganKemahalanMDirId) &&
            (identical(other.tunjanganKemahalanKode, tunjanganKemahalanKode) || other.tunjanganKemahalanKode == tunjanganKemahalanKode) &&
            (identical(other.tunjanganKemahalanMDivisiId, tunjanganKemahalanMDivisiId) || other.tunjanganKemahalanMDivisiId == tunjanganKemahalanMDivisiId) &&
            (identical(other.tunjanganKemahalanMDeptId, tunjanganKemahalanMDeptId) || other.tunjanganKemahalanMDeptId == tunjanganKemahalanMDeptId) &&
            const DeepCollectionEquality().equals(other.tunjanganKemahalanMZonaId, tunjanganKemahalanMZonaId) &&
            (identical(other.tunjanganKemahalanMPosisiId, tunjanganKemahalanMPosisiId) || other.tunjanganKemahalanMPosisiId == tunjanganKemahalanMPosisiId) &&
            (identical(other.tunjanganKemahalanBesaran, tunjanganKemahalanBesaran) || other.tunjanganKemahalanBesaran == tunjanganKemahalanBesaran) &&
            (identical(other.tunjanganKemahalanDesc, tunjanganKemahalanDesc) || other.tunjanganKemahalanDesc == tunjanganKemahalanDesc) &&
            (identical(other.tunjanganKemahalanIsActive, tunjanganKemahalanIsActive) || other.tunjanganKemahalanIsActive == tunjanganKemahalanIsActive) &&
            const DeepCollectionEquality().equals(other.tunjanganKemahalanCreatorId, tunjanganKemahalanCreatorId) &&
            const DeepCollectionEquality().equals(other.tunjanganKemahalanLastEditorId, tunjanganKemahalanLastEditorId) &&
            (identical(other.tunjanganKemahalanCreatedAt, tunjanganKemahalanCreatedAt) || other.tunjanganKemahalanCreatedAt == tunjanganKemahalanCreatedAt) &&
            (identical(other.tunjanganKemahalanUpdatedAt, tunjanganKemahalanUpdatedAt) || other.tunjanganKemahalanUpdatedAt == tunjanganKemahalanUpdatedAt) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            const DeepCollectionEquality().equals(other.creatorName, creatorName) &&
            const DeepCollectionEquality().equals(other.creatorEmail, creatorEmail) &&
            const DeepCollectionEquality().equals(other.creatorUsername, creatorUsername) &&
            const DeepCollectionEquality().equals(other.creatorEmailVerifiedAt, creatorEmailVerifiedAt) &&
            const DeepCollectionEquality().equals(other.creatorPassword, creatorPassword) &&
            const DeepCollectionEquality().equals(other.creatorMCompId, creatorMCompId) &&
            const DeepCollectionEquality().equals(other.creatorMDirId, creatorMDirId) &&
            const DeepCollectionEquality().equals(other.creatorIsActive, creatorIsActive) &&
            const DeepCollectionEquality().equals(other.creatorCreatorId, creatorCreatorId) &&
            const DeepCollectionEquality().equals(other.creatorLastEditorId, creatorLastEditorId) &&
            const DeepCollectionEquality().equals(other.creatorRememberToken, creatorRememberToken) &&
            const DeepCollectionEquality().equals(other.creatorCreatedAt, creatorCreatedAt) &&
            const DeepCollectionEquality().equals(other.creatorUpdatedAt, creatorUpdatedAt) &&
            const DeepCollectionEquality().equals(other.creatorProfilImage, creatorProfilImage) &&
            const DeepCollectionEquality().equals(other.creatorTelp, creatorTelp) &&
            const DeepCollectionEquality().equals(other.creatorMKaryId, creatorMKaryId) &&
            const DeepCollectionEquality().equals(other.lastEditorId, lastEditorId) &&
            const DeepCollectionEquality().equals(other.lastEditorName, lastEditorName) &&
            const DeepCollectionEquality().equals(other.lastEditorEmail, lastEditorEmail) &&
            const DeepCollectionEquality().equals(other.lastEditorUsername, lastEditorUsername) &&
            const DeepCollectionEquality().equals(other.lastEditorEmailVerifiedAt, lastEditorEmailVerifiedAt) &&
            const DeepCollectionEquality().equals(other.lastEditorPassword, lastEditorPassword) &&
            const DeepCollectionEquality().equals(other.lastEditorMCompId, lastEditorMCompId) &&
            const DeepCollectionEquality().equals(other.lastEditorMDirId, lastEditorMDirId) &&
            const DeepCollectionEquality().equals(other.lastEditorIsActive, lastEditorIsActive) &&
            const DeepCollectionEquality().equals(other.lastEditorCreatorId, lastEditorCreatorId) &&
            const DeepCollectionEquality().equals(other.lastEditorLastEditorId, lastEditorLastEditorId) &&
            const DeepCollectionEquality().equals(other.lastEditorRememberToken, lastEditorRememberToken) &&
            const DeepCollectionEquality().equals(other.lastEditorCreatedAt, lastEditorCreatedAt) &&
            const DeepCollectionEquality().equals(other.lastEditorUpdatedAt, lastEditorUpdatedAt) &&
            const DeepCollectionEquality().equals(other.lastEditorProfilImage, lastEditorProfilImage) &&
            const DeepCollectionEquality().equals(other.lastEditorTelp, lastEditorTelp) &&
            const DeepCollectionEquality().equals(other.lastEditorMKaryId, lastEditorMKaryId));
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
        datumMDivisiId,
        datumMDeptId,
        datumMZonaId,
        datumMPosisiId,
        datumGradingId,
        gajiPokok,
        gajiPokokPeriode,
        uangSaku,
        uangSakuPeriode,
        tunjanganPosisi,
        tunjanganPosisiPeriode,
        datumTunjanganKemahalanId,
        tunjanganKemahalanPeriode,
        uangMakan,
        uangMakanPeriode,
        tunjanganTetap,
        tunjanganTetapPeriode,
        desc,
        isActive,
        const DeepCollectionEquality().hash(datumCreatorId),
        const DeepCollectionEquality().hash(datumLastEditorId),
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
        mDivisiId,
        mDivisiMCompId,
        mDivisiMDirId,
        mDivisiNama,
        mDivisiDesc,
        mDivisiIsActive,
        mDivisiCreatorId,
        mDivisiLastEditorId,
        mDivisiCreatedAt,
        mDivisiUpdatedAt,
        mDeptId,
        mDeptMDirId,
        mDeptMDivisiId,
        mDeptNama,
        mDeptDesc,
        mDeptIsActive,
        const DeepCollectionEquality().hash(mDeptCreatorId),
        const DeepCollectionEquality().hash(mDeptLastEditorId),
        mDeptCreatedAt,
        mDeptUpdatedAt,
        mZonaId,
        mZonaMCompId,
        mZonaMDirId,
        mZonaMTunjKemahalanId,
        mZonaKode,
        mZonaNama,
        mZonaDesc,
        mZonaIsActive,
        const DeepCollectionEquality().hash(mZonaCreatorId),
        const DeepCollectionEquality().hash(mZonaLastEditorId),
        mZonaCreatedAt,
        mZonaUpdatedAt,
        mPosisiId,
        mPosisiMCompId,
        mPosisiMDirId,
        mPosisiKode,
        mPosisiDescKerja,
        mPosisiDescKerja1,
        mPosisiDescKerja2,
        mPosisiMinPengalaman,
        mPosisiMinPendidikanId,
        mPosisiMinGajiPokok,
        mPosisiMaxGajiPokok,
        const DeepCollectionEquality().hash(mPosisiBiaya),
        mPosisiTipeBpjsId,
        mPosisiPotonganBpjs,
        const DeepCollectionEquality().hash(mPosisiDesc),
        mPosisiIsActive,
        const DeepCollectionEquality().hash(mPosisiCreatorId),
        const DeepCollectionEquality().hash(mPosisiLastEditorId),
        mPosisiCreatedAt,
        mPosisiUpdatedAt,
        gradingId,
        gradingMCompId,
        const DeepCollectionEquality().hash(gradingMDirId),
        gradingGroup,
        gradingKey,
        gradingCode,
        gradingValue,
        gradingIsActive,
        const DeepCollectionEquality().hash(gradingCreatorId),
        const DeepCollectionEquality().hash(gradingLastEditorId),
        gradingCreatedAt,
        gradingUpdatedAt,
        const DeepCollectionEquality().hash(gradingValue2),
        const DeepCollectionEquality().hash(gradingValue3),
        tunjanganKemahalanId,
        tunjanganKemahalanMCompId,
        tunjanganKemahalanMDirId,
        tunjanganKemahalanKode,
        tunjanganKemahalanMDivisiId,
        tunjanganKemahalanMDeptId,
        const DeepCollectionEquality().hash(tunjanganKemahalanMZonaId),
        tunjanganKemahalanMPosisiId,
        tunjanganKemahalanBesaran,
        tunjanganKemahalanDesc,
        tunjanganKemahalanIsActive,
        const DeepCollectionEquality().hash(tunjanganKemahalanCreatorId),
        const DeepCollectionEquality().hash(tunjanganKemahalanLastEditorId),
        tunjanganKemahalanCreatedAt,
        tunjanganKemahalanUpdatedAt,
        const DeepCollectionEquality().hash(creatorId),
        const DeepCollectionEquality().hash(creatorName),
        const DeepCollectionEquality().hash(creatorEmail),
        const DeepCollectionEquality().hash(creatorUsername),
        const DeepCollectionEquality().hash(creatorEmailVerifiedAt),
        const DeepCollectionEquality().hash(creatorPassword),
        const DeepCollectionEquality().hash(creatorMCompId),
        const DeepCollectionEquality().hash(creatorMDirId),
        const DeepCollectionEquality().hash(creatorIsActive),
        const DeepCollectionEquality().hash(creatorCreatorId),
        const DeepCollectionEquality().hash(creatorLastEditorId),
        const DeepCollectionEquality().hash(creatorRememberToken),
        const DeepCollectionEquality().hash(creatorCreatedAt),
        const DeepCollectionEquality().hash(creatorUpdatedAt),
        const DeepCollectionEquality().hash(creatorProfilImage),
        const DeepCollectionEquality().hash(creatorTelp),
        const DeepCollectionEquality().hash(creatorMKaryId),
        const DeepCollectionEquality().hash(lastEditorId),
        const DeepCollectionEquality().hash(lastEditorName),
        const DeepCollectionEquality().hash(lastEditorEmail),
        const DeepCollectionEquality().hash(lastEditorUsername),
        const DeepCollectionEquality().hash(lastEditorEmailVerifiedAt),
        const DeepCollectionEquality().hash(lastEditorPassword),
        const DeepCollectionEquality().hash(lastEditorMCompId),
        const DeepCollectionEquality().hash(lastEditorMDirId),
        const DeepCollectionEquality().hash(lastEditorIsActive),
        const DeepCollectionEquality().hash(lastEditorCreatorId),
        const DeepCollectionEquality().hash(lastEditorLastEditorId),
        const DeepCollectionEquality().hash(lastEditorRememberToken),
        const DeepCollectionEquality().hash(lastEditorCreatedAt),
        const DeepCollectionEquality().hash(lastEditorUpdatedAt),
        const DeepCollectionEquality().hash(lastEditorProfilImage),
        const DeepCollectionEquality().hash(lastEditorTelp),
        const DeepCollectionEquality().hash(lastEditorMKaryId)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStandarGajiImplCopyWith<_$DataStandarGajiImpl> get copyWith =>
      __$$DataStandarGajiImplCopyWithImpl<_$DataStandarGajiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataStandarGajiImplToJson(
      this,
    );
  }
}

abstract class _DataStandarGaji implements DataStandarGaji {
  const factory _DataStandarGaji(
      {@JsonKey(name: "meta_read") final bool? metaRead,
      @JsonKey(name: "meta_delete") final bool? metaDelete,
      @JsonKey(name: "meta_update") final bool? metaUpdate,
      @JsonKey(name: "meta_create") final bool? metaCreate,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_comp_id") final int? datumMCompId,
      @JsonKey(name: "m_dir_id") final int? datumMDirId,
      @JsonKey(name: "kode") final String? kode,
      @JsonKey(name: "m_divisi_id") final int? datumMDivisiId,
      @JsonKey(name: "m_dept_id") final int? datumMDeptId,
      @JsonKey(name: "m_zona_id") final int? datumMZonaId,
      @JsonKey(name: "m_posisi_id") final int? datumMPosisiId,
      @JsonKey(name: "grading_id") final int? datumGradingId,
      @JsonKey(name: "gaji_pokok") final int? gajiPokok,
      @JsonKey(name: "gaji_pokok_periode") final String? gajiPokokPeriode,
      @JsonKey(name: "uang_saku") final int? uangSaku,
      @JsonKey(name: "uang_saku_periode") final String? uangSakuPeriode,
      @JsonKey(name: "tunjangan_posisi") final int? tunjanganPosisi,
      @JsonKey(name: "tunjangan_posisi_periode")
      final String? tunjanganPosisiPeriode,
      @JsonKey(name: "tunjangan_kemahalan_id")
      final int? datumTunjanganKemahalanId,
      @JsonKey(name: "tunjangan_kemahalan_periode")
      final String? tunjanganKemahalanPeriode,
      @JsonKey(name: "uang_makan") final int? uangMakan,
      @JsonKey(name: "uang_makan_periode") final String? uangMakanPeriode,
      @JsonKey(name: "tunjangan_tetap") final int? tunjanganTetap,
      @JsonKey(name: "tunjangan_tetap_periode")
      final String? tunjanganTetapPeriode,
      @JsonKey(name: "desc") final String? desc,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "creator_id") final dynamic datumCreatorId,
      @JsonKey(name: "last_editor_id") final dynamic datumLastEditorId,
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
      @JsonKey(name: "m_divisi.id") final int? mDivisiId,
      @JsonKey(name: "m_divisi.m_comp_id") final int? mDivisiMCompId,
      @JsonKey(name: "m_divisi.m_dir_id") final int? mDivisiMDirId,
      @JsonKey(name: "m_divisi.nama") final String? mDivisiNama,
      @JsonKey(name: "m_divisi.desc") final String? mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") final bool? mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") final int? mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id") final int? mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") final String? mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") final String? mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") final int? mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") final int? mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") final int? mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") final String? mDeptNama,
      @JsonKey(name: "m_dept.desc") final String? mDeptDesc,
      @JsonKey(name: "m_dept.is_active") final bool? mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") final dynamic mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") final dynamic mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") final String? mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") final String? mDeptUpdatedAt,
      @JsonKey(name: "m_zona.id") final int? mZonaId,
      @JsonKey(name: "m_zona.m_comp_id") final int? mZonaMCompId,
      @JsonKey(name: "m_zona.m_dir_id") final int? mZonaMDirId,
      @JsonKey(name: "m_zona.m_tunj_kemahalan_id")
      final int? mZonaMTunjKemahalanId,
      @JsonKey(name: "m_zona.kode") final String? mZonaKode,
      @JsonKey(name: "m_zona.nama") final String? mZonaNama,
      @JsonKey(name: "m_zona.desc") final String? mZonaDesc,
      @JsonKey(name: "m_zona.is_active") final bool? mZonaIsActive,
      @JsonKey(name: "m_zona.creator_id") final dynamic mZonaCreatorId,
      @JsonKey(name: "m_zona.last_editor_id") final dynamic mZonaLastEditorId,
      @JsonKey(name: "m_zona.created_at") final String? mZonaCreatedAt,
      @JsonKey(name: "m_zona.updated_at") final String? mZonaUpdatedAt,
      @JsonKey(name: "m_posisi.id") final int? mPosisiId,
      @JsonKey(name: "m_posisi.m_comp_id") final int? mPosisiMCompId,
      @JsonKey(name: "m_posisi.m_dir_id") final int? mPosisiMDirId,
      @JsonKey(name: "m_posisi.kode") final String? mPosisiKode,
      @JsonKey(name: "m_posisi.desc_kerja") final String? mPosisiDescKerja,
      @JsonKey(name: "m_posisi.desc_kerja_1") final String? mPosisiDescKerja1,
      @JsonKey(name: "m_posisi.desc_kerja_2") final String? mPosisiDescKerja2,
      @JsonKey(name: "m_posisi.min_pengalaman")
      final String? mPosisiMinPengalaman,
      @JsonKey(name: "m_posisi.min_pendidikan_id")
      final int? mPosisiMinPendidikanId,
      @JsonKey(name: "m_posisi.min_gaji_pokok")
      final String? mPosisiMinGajiPokok,
      @JsonKey(name: "m_posisi.max_gaji_pokok")
      final String? mPosisiMaxGajiPokok,
      @JsonKey(name: "m_posisi.biaya") final dynamic mPosisiBiaya,
      @JsonKey(name: "m_posisi.tipe_bpjs_id") final int? mPosisiTipeBpjsId,
      @JsonKey(name: "m_posisi.potongan_bpjs")
      final String? mPosisiPotonganBpjs,
      @JsonKey(name: "m_posisi.desc") final dynamic mPosisiDesc,
      @JsonKey(name: "m_posisi.is_active") final bool? mPosisiIsActive,
      @JsonKey(name: "m_posisi.creator_id") final dynamic mPosisiCreatorId,
      @JsonKey(name: "m_posisi.last_editor_id")
      final dynamic mPosisiLastEditorId,
      @JsonKey(name: "m_posisi.created_at") final String? mPosisiCreatedAt,
      @JsonKey(name: "m_posisi.updated_at") final String? mPosisiUpdatedAt,
      @JsonKey(name: "grading.id") final int? gradingId,
      @JsonKey(name: "grading.m_comp_id") final int? gradingMCompId,
      @JsonKey(name: "grading.m_dir_id") final dynamic gradingMDirId,
      @JsonKey(name: "grading.group") final String? gradingGroup,
      @JsonKey(name: "grading.key") final String? gradingKey,
      @JsonKey(name: "grading.code") final String? gradingCode,
      @JsonKey(name: "grading.value") final String? gradingValue,
      @JsonKey(name: "grading.is_active") final bool? gradingIsActive,
      @JsonKey(name: "grading.creator_id") final dynamic gradingCreatorId,
      @JsonKey(name: "grading.last_editor_id")
      final dynamic gradingLastEditorId,
      @JsonKey(name: "grading.created_at") final String? gradingCreatedAt,
      @JsonKey(name: "grading.updated_at") final String? gradingUpdatedAt,
      @JsonKey(name: "grading.value_2") final dynamic gradingValue2,
      @JsonKey(name: "grading.value_3") final dynamic gradingValue3,
      @JsonKey(name: "tunjangan_kemahalan.id") final int? tunjanganKemahalanId,
      @JsonKey(name: "tunjangan_kemahalan.m_comp_id")
      final int? tunjanganKemahalanMCompId,
      @JsonKey(name: "tunjangan_kemahalan.m_dir_id")
      final int? tunjanganKemahalanMDirId,
      @JsonKey(name: "tunjangan_kemahalan.kode")
      final String? tunjanganKemahalanKode,
      @JsonKey(name: "tunjangan_kemahalan.m_divisi_id")
      final int? tunjanganKemahalanMDivisiId,
      @JsonKey(name: "tunjangan_kemahalan.m_dept_id")
      final int? tunjanganKemahalanMDeptId,
      @JsonKey(name: "tunjangan_kemahalan.m_zona_id")
      final dynamic tunjanganKemahalanMZonaId,
      @JsonKey(name: "tunjangan_kemahalan.m_posisi_id")
      final int? tunjanganKemahalanMPosisiId,
      @JsonKey(name: "tunjangan_kemahalan.besaran")
      final String? tunjanganKemahalanBesaran,
      @JsonKey(name: "tunjangan_kemahalan.desc")
      final String? tunjanganKemahalanDesc,
      @JsonKey(name: "tunjangan_kemahalan.is_active")
      final bool? tunjanganKemahalanIsActive,
      @JsonKey(name: "tunjangan_kemahalan.creator_id")
      final dynamic tunjanganKemahalanCreatorId,
      @JsonKey(name: "tunjangan_kemahalan.last_editor_id")
      final dynamic tunjanganKemahalanLastEditorId,
      @JsonKey(name: "tunjangan_kemahalan.created_at")
      final String? tunjanganKemahalanCreatedAt,
      @JsonKey(name: "tunjangan_kemahalan.updated_at")
      final String? tunjanganKemahalanUpdatedAt,
      @JsonKey(name: "creator.id") final dynamic creatorId,
      @JsonKey(name: "creator.name") final dynamic creatorName,
      @JsonKey(name: "creator.email") final dynamic creatorEmail,
      @JsonKey(name: "creator.username") final dynamic creatorUsername,
      @JsonKey(name: "creator.email_verified_at")
      final dynamic creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") final dynamic creatorPassword,
      @JsonKey(name: "creator.m_comp_id") final dynamic creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") final dynamic creatorMDirId,
      @JsonKey(name: "creator.is_active") final dynamic creatorIsActive,
      @JsonKey(name: "creator.creator_id") final dynamic creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id")
      final dynamic creatorLastEditorId,
      @JsonKey(name: "creator.remember_token")
      final dynamic creatorRememberToken,
      @JsonKey(name: "creator.created_at") final dynamic creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") final dynamic creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") final dynamic creatorProfilImage,
      @JsonKey(name: "creator.telp") final dynamic creatorTelp,
      @JsonKey(name: "creator.m_kary_id") final dynamic creatorMKaryId,
      @JsonKey(name: "last_editor.id") final dynamic lastEditorId,
      @JsonKey(name: "last_editor.name") final dynamic lastEditorName,
      @JsonKey(name: "last_editor.email") final dynamic lastEditorEmail,
      @JsonKey(name: "last_editor.username") final dynamic lastEditorUsername,
      @JsonKey(name: "last_editor.email_verified_at")
      final dynamic lastEditorEmailVerifiedAt,
      @JsonKey(name: "last_editor.password") final dynamic lastEditorPassword,
      @JsonKey(name: "last_editor.m_comp_id") final dynamic lastEditorMCompId,
      @JsonKey(name: "last_editor.m_dir_id") final dynamic lastEditorMDirId,
      @JsonKey(name: "last_editor.is_active") final dynamic lastEditorIsActive,
      @JsonKey(name: "last_editor.creator_id")
      final dynamic lastEditorCreatorId,
      @JsonKey(name: "last_editor.last_editor_id")
      final dynamic lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      final dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at")
      final dynamic lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at")
      final dynamic lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image")
      final dynamic lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") final dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id")
      final dynamic lastEditorMKaryId}) = _$DataStandarGajiImpl;

  factory _DataStandarGaji.fromJson(Map<String, dynamic> json) =
      _$DataStandarGajiImpl.fromJson;

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
  @JsonKey(name: "m_divisi_id")
  int? get datumMDivisiId;
  @override
  @JsonKey(name: "m_dept_id")
  int? get datumMDeptId;
  @override
  @JsonKey(name: "m_zona_id")
  int? get datumMZonaId;
  @override
  @JsonKey(name: "m_posisi_id")
  int? get datumMPosisiId;
  @override
  @JsonKey(name: "grading_id")
  int? get datumGradingId;
  @override
  @JsonKey(name: "gaji_pokok")
  int? get gajiPokok;
  @override
  @JsonKey(name: "gaji_pokok_periode")
  String? get gajiPokokPeriode;
  @override
  @JsonKey(name: "uang_saku")
  int? get uangSaku;
  @override
  @JsonKey(name: "uang_saku_periode")
  String? get uangSakuPeriode;
  @override
  @JsonKey(name: "tunjangan_posisi")
  int? get tunjanganPosisi;
  @override
  @JsonKey(name: "tunjangan_posisi_periode")
  String? get tunjanganPosisiPeriode;
  @override
  @JsonKey(name: "tunjangan_kemahalan_id")
  int? get datumTunjanganKemahalanId;
  @override
  @JsonKey(name: "tunjangan_kemahalan_periode")
  String? get tunjanganKemahalanPeriode;
  @override
  @JsonKey(name: "uang_makan")
  int? get uangMakan;
  @override
  @JsonKey(name: "uang_makan_periode")
  String? get uangMakanPeriode;
  @override
  @JsonKey(name: "tunjangan_tetap")
  int? get tunjanganTetap;
  @override
  @JsonKey(name: "tunjangan_tetap_periode")
  String? get tunjanganTetapPeriode;
  @override
  @JsonKey(name: "desc")
  String? get desc;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "creator_id")
  dynamic get datumCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  dynamic get datumLastEditorId;
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
  @JsonKey(name: "m_divisi.id")
  int? get mDivisiId;
  @override
  @JsonKey(name: "m_divisi.m_comp_id")
  int? get mDivisiMCompId;
  @override
  @JsonKey(name: "m_divisi.m_dir_id")
  int? get mDivisiMDirId;
  @override
  @JsonKey(name: "m_divisi.nama")
  String? get mDivisiNama;
  @override
  @JsonKey(name: "m_divisi.desc")
  String? get mDivisiDesc;
  @override
  @JsonKey(name: "m_divisi.is_active")
  bool? get mDivisiIsActive;
  @override
  @JsonKey(name: "m_divisi.creator_id")
  int? get mDivisiCreatorId;
  @override
  @JsonKey(name: "m_divisi.last_editor_id")
  int? get mDivisiLastEditorId;
  @override
  @JsonKey(name: "m_divisi.created_at")
  String? get mDivisiCreatedAt;
  @override
  @JsonKey(name: "m_divisi.updated_at")
  String? get mDivisiUpdatedAt;
  @override
  @JsonKey(name: "m_dept.id")
  int? get mDeptId;
  @override
  @JsonKey(name: "m_dept.m_dir_id")
  int? get mDeptMDirId;
  @override
  @JsonKey(name: "m_dept.m_divisi_id")
  int? get mDeptMDivisiId;
  @override
  @JsonKey(name: "m_dept.nama")
  String? get mDeptNama;
  @override
  @JsonKey(name: "m_dept.desc")
  String? get mDeptDesc;
  @override
  @JsonKey(name: "m_dept.is_active")
  bool? get mDeptIsActive;
  @override
  @JsonKey(name: "m_dept.creator_id")
  dynamic get mDeptCreatorId;
  @override
  @JsonKey(name: "m_dept.last_editor_id")
  dynamic get mDeptLastEditorId;
  @override
  @JsonKey(name: "m_dept.created_at")
  String? get mDeptCreatedAt;
  @override
  @JsonKey(name: "m_dept.updated_at")
  String? get mDeptUpdatedAt;
  @override
  @JsonKey(name: "m_zona.id")
  int? get mZonaId;
  @override
  @JsonKey(name: "m_zona.m_comp_id")
  int? get mZonaMCompId;
  @override
  @JsonKey(name: "m_zona.m_dir_id")
  int? get mZonaMDirId;
  @override
  @JsonKey(name: "m_zona.m_tunj_kemahalan_id")
  int? get mZonaMTunjKemahalanId;
  @override
  @JsonKey(name: "m_zona.kode")
  String? get mZonaKode;
  @override
  @JsonKey(name: "m_zona.nama")
  String? get mZonaNama;
  @override
  @JsonKey(name: "m_zona.desc")
  String? get mZonaDesc;
  @override
  @JsonKey(name: "m_zona.is_active")
  bool? get mZonaIsActive;
  @override
  @JsonKey(name: "m_zona.creator_id")
  dynamic get mZonaCreatorId;
  @override
  @JsonKey(name: "m_zona.last_editor_id")
  dynamic get mZonaLastEditorId;
  @override
  @JsonKey(name: "m_zona.created_at")
  String? get mZonaCreatedAt;
  @override
  @JsonKey(name: "m_zona.updated_at")
  String? get mZonaUpdatedAt;
  @override
  @JsonKey(name: "m_posisi.id")
  int? get mPosisiId;
  @override
  @JsonKey(name: "m_posisi.m_comp_id")
  int? get mPosisiMCompId;
  @override
  @JsonKey(name: "m_posisi.m_dir_id")
  int? get mPosisiMDirId;
  @override
  @JsonKey(name: "m_posisi.kode")
  String? get mPosisiKode;
  @override
  @JsonKey(name: "m_posisi.desc_kerja")
  String? get mPosisiDescKerja;
  @override
  @JsonKey(name: "m_posisi.desc_kerja_1")
  String? get mPosisiDescKerja1;
  @override
  @JsonKey(name: "m_posisi.desc_kerja_2")
  String? get mPosisiDescKerja2;
  @override
  @JsonKey(name: "m_posisi.min_pengalaman")
  String? get mPosisiMinPengalaman;
  @override
  @JsonKey(name: "m_posisi.min_pendidikan_id")
  int? get mPosisiMinPendidikanId;
  @override
  @JsonKey(name: "m_posisi.min_gaji_pokok")
  String? get mPosisiMinGajiPokok;
  @override
  @JsonKey(name: "m_posisi.max_gaji_pokok")
  String? get mPosisiMaxGajiPokok;
  @override
  @JsonKey(name: "m_posisi.biaya")
  dynamic get mPosisiBiaya;
  @override
  @JsonKey(name: "m_posisi.tipe_bpjs_id")
  int? get mPosisiTipeBpjsId;
  @override
  @JsonKey(name: "m_posisi.potongan_bpjs")
  String? get mPosisiPotonganBpjs;
  @override
  @JsonKey(name: "m_posisi.desc")
  dynamic get mPosisiDesc;
  @override
  @JsonKey(name: "m_posisi.is_active")
  bool? get mPosisiIsActive;
  @override
  @JsonKey(name: "m_posisi.creator_id")
  dynamic get mPosisiCreatorId;
  @override
  @JsonKey(name: "m_posisi.last_editor_id")
  dynamic get mPosisiLastEditorId;
  @override
  @JsonKey(name: "m_posisi.created_at")
  String? get mPosisiCreatedAt;
  @override
  @JsonKey(name: "m_posisi.updated_at")
  String? get mPosisiUpdatedAt;
  @override
  @JsonKey(name: "grading.id")
  int? get gradingId;
  @override
  @JsonKey(name: "grading.m_comp_id")
  int? get gradingMCompId;
  @override
  @JsonKey(name: "grading.m_dir_id")
  dynamic get gradingMDirId;
  @override
  @JsonKey(name: "grading.group")
  String? get gradingGroup;
  @override
  @JsonKey(name: "grading.key")
  String? get gradingKey;
  @override
  @JsonKey(name: "grading.code")
  String? get gradingCode;
  @override
  @JsonKey(name: "grading.value")
  String? get gradingValue;
  @override
  @JsonKey(name: "grading.is_active")
  bool? get gradingIsActive;
  @override
  @JsonKey(name: "grading.creator_id")
  dynamic get gradingCreatorId;
  @override
  @JsonKey(name: "grading.last_editor_id")
  dynamic get gradingLastEditorId;
  @override
  @JsonKey(name: "grading.created_at")
  String? get gradingCreatedAt;
  @override
  @JsonKey(name: "grading.updated_at")
  String? get gradingUpdatedAt;
  @override
  @JsonKey(name: "grading.value_2")
  dynamic get gradingValue2;
  @override
  @JsonKey(name: "grading.value_3")
  dynamic get gradingValue3;
  @override
  @JsonKey(name: "tunjangan_kemahalan.id")
  int? get tunjanganKemahalanId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_comp_id")
  int? get tunjanganKemahalanMCompId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_dir_id")
  int? get tunjanganKemahalanMDirId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.kode")
  String? get tunjanganKemahalanKode;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_divisi_id")
  int? get tunjanganKemahalanMDivisiId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_dept_id")
  int? get tunjanganKemahalanMDeptId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_zona_id")
  dynamic get tunjanganKemahalanMZonaId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.m_posisi_id")
  int? get tunjanganKemahalanMPosisiId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.besaran")
  String? get tunjanganKemahalanBesaran;
  @override
  @JsonKey(name: "tunjangan_kemahalan.desc")
  String? get tunjanganKemahalanDesc;
  @override
  @JsonKey(name: "tunjangan_kemahalan.is_active")
  bool? get tunjanganKemahalanIsActive;
  @override
  @JsonKey(name: "tunjangan_kemahalan.creator_id")
  dynamic get tunjanganKemahalanCreatorId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.last_editor_id")
  dynamic get tunjanganKemahalanLastEditorId;
  @override
  @JsonKey(name: "tunjangan_kemahalan.created_at")
  String? get tunjanganKemahalanCreatedAt;
  @override
  @JsonKey(name: "tunjangan_kemahalan.updated_at")
  String? get tunjanganKemahalanUpdatedAt;
  @override
  @JsonKey(name: "creator.id")
  dynamic get creatorId;
  @override
  @JsonKey(name: "creator.name")
  dynamic get creatorName;
  @override
  @JsonKey(name: "creator.email")
  dynamic get creatorEmail;
  @override
  @JsonKey(name: "creator.username")
  dynamic get creatorUsername;
  @override
  @JsonKey(name: "creator.email_verified_at")
  dynamic get creatorEmailVerifiedAt;
  @override
  @JsonKey(name: "creator.password")
  dynamic get creatorPassword;
  @override
  @JsonKey(name: "creator.m_comp_id")
  dynamic get creatorMCompId;
  @override
  @JsonKey(name: "creator.m_dir_id")
  dynamic get creatorMDirId;
  @override
  @JsonKey(name: "creator.is_active")
  dynamic get creatorIsActive;
  @override
  @JsonKey(name: "creator.creator_id")
  dynamic get creatorCreatorId;
  @override
  @JsonKey(name: "creator.last_editor_id")
  dynamic get creatorLastEditorId;
  @override
  @JsonKey(name: "creator.remember_token")
  dynamic get creatorRememberToken;
  @override
  @JsonKey(name: "creator.created_at")
  dynamic get creatorCreatedAt;
  @override
  @JsonKey(name: "creator.updated_at")
  dynamic get creatorUpdatedAt;
  @override
  @JsonKey(name: "creator.profil_image")
  dynamic get creatorProfilImage;
  @override
  @JsonKey(name: "creator.telp")
  dynamic get creatorTelp;
  @override
  @JsonKey(name: "creator.m_kary_id")
  dynamic get creatorMKaryId;
  @override
  @JsonKey(name: "last_editor.id")
  dynamic get lastEditorId;
  @override
  @JsonKey(name: "last_editor.name")
  dynamic get lastEditorName;
  @override
  @JsonKey(name: "last_editor.email")
  dynamic get lastEditorEmail;
  @override
  @JsonKey(name: "last_editor.username")
  dynamic get lastEditorUsername;
  @override
  @JsonKey(name: "last_editor.email_verified_at")
  dynamic get lastEditorEmailVerifiedAt;
  @override
  @JsonKey(name: "last_editor.password")
  dynamic get lastEditorPassword;
  @override
  @JsonKey(name: "last_editor.m_comp_id")
  dynamic get lastEditorMCompId;
  @override
  @JsonKey(name: "last_editor.m_dir_id")
  dynamic get lastEditorMDirId;
  @override
  @JsonKey(name: "last_editor.is_active")
  dynamic get lastEditorIsActive;
  @override
  @JsonKey(name: "last_editor.creator_id")
  dynamic get lastEditorCreatorId;
  @override
  @JsonKey(name: "last_editor.last_editor_id")
  dynamic get lastEditorLastEditorId;
  @override
  @JsonKey(name: "last_editor.remember_token")
  dynamic get lastEditorRememberToken;
  @override
  @JsonKey(name: "last_editor.created_at")
  dynamic get lastEditorCreatedAt;
  @override
  @JsonKey(name: "last_editor.updated_at")
  dynamic get lastEditorUpdatedAt;
  @override
  @JsonKey(name: "last_editor.profil_image")
  dynamic get lastEditorProfilImage;
  @override
  @JsonKey(name: "last_editor.telp")
  dynamic get lastEditorTelp;
  @override
  @JsonKey(name: "last_editor.m_kary_id")
  dynamic get lastEditorMKaryId;
  @override
  @JsonKey(ignore: true)
  _$$DataStandarGajiImplCopyWith<_$DataStandarGajiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

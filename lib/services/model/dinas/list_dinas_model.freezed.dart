// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_dinas_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListDinasModel _$ListDinasModelFromJson(Map<String, dynamic> json) {
  return _ListDinasModel.fromJson(json);
}

/// @nodoc
mixin _$ListDinasModel {
  @JsonKey(name: "data")
  List<DataDinas>? get data => throw _privateConstructorUsedError;
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
  $ListDinasModelCopyWith<ListDinasModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDinasModelCopyWith<$Res> {
  factory $ListDinasModelCopyWith(
          ListDinasModel value, $Res Function(ListDinasModel) then) =
      _$ListDinasModelCopyWithImpl<$Res, ListDinasModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataDinas>? data,
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
class _$ListDinasModelCopyWithImpl<$Res, $Val extends ListDinasModel>
    implements $ListDinasModelCopyWith<$Res> {
  _$ListDinasModelCopyWithImpl(this._value, this._then);

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
              as List<DataDinas>?,
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
abstract class _$$ListDinasModelImplCopyWith<$Res>
    implements $ListDinasModelCopyWith<$Res> {
  factory _$$ListDinasModelImplCopyWith(_$ListDinasModelImpl value,
          $Res Function(_$ListDinasModelImpl) then) =
      __$$ListDinasModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataDinas>? data,
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
class __$$ListDinasModelImplCopyWithImpl<$Res>
    extends _$ListDinasModelCopyWithImpl<$Res, _$ListDinasModelImpl>
    implements _$$ListDinasModelImplCopyWith<$Res> {
  __$$ListDinasModelImplCopyWithImpl(
      _$ListDinasModelImpl _value, $Res Function(_$ListDinasModelImpl) _then)
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
    return _then(_$ListDinasModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataDinas>?,
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
class _$ListDinasModelImpl implements _ListDinasModel {
  const _$ListDinasModelImpl(
      {@JsonKey(name: "data") final List<DataDinas>? data,
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

  factory _$ListDinasModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListDinasModelImplFromJson(json);

  final List<DataDinas>? _data;
  @override
  @JsonKey(name: "data")
  List<DataDinas>? get data {
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
    return 'ListDinasModel(data: $data, total: $total, currentPage: $currentPage, perPage: $perPage, from: $from, to: $to, lastPage: $lastPage, hasNext: $hasNext, prev: $prev, next: $next, processedTime: $processedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDinasModelImpl &&
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
  _$$ListDinasModelImplCopyWith<_$ListDinasModelImpl> get copyWith =>
      __$$ListDinasModelImplCopyWithImpl<_$ListDinasModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListDinasModelImplToJson(
      this,
    );
  }
}

abstract class _ListDinasModel implements ListDinasModel {
  const factory _ListDinasModel(
          {@JsonKey(name: "data") final List<DataDinas>? data,
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
      _$ListDinasModelImpl;

  factory _ListDinasModel.fromJson(Map<String, dynamic> json) =
      _$ListDinasModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<DataDinas>? get data;
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
  _$$ListDinasModelImplCopyWith<_$ListDinasModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataDinas _$DataDinasFromJson(Map<String, dynamic> json) {
  return _DataDinas.fromJson(json);
}

/// @nodoc
mixin _$DataDinas {
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
  @JsonKey(name: "nomor")
  String? get nomor => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get datumMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd_id")
  int? get datumMSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get datumMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi_id")
  int? get datumMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept_id")
  int? get datumMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi_id")
  int? get datumMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggal")
  String? get tanggal => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_acara_awal")
  String? get tglAcaraAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_acara_akhir")
  String? get tglAcaraAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd_id")
  int? get datumJenisSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal_id")
  int? get datumMZonaAsalId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan_id")
  int? get datumMZonaTujuanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan_id")
  int? get datumMLokasiTujuanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get datumMKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic_id")
  int? get datumPicId => throw _privateConstructorUsedError;
  @JsonKey(name: "total_biaya")
  int? get totalBiaya => throw _privateConstructorUsedError;
  @JsonKey(name: "kegiatan")
  dynamic get kegiatan => throw _privateConstructorUsedError;
  @JsonKey(name: "keterangan")
  dynamic get keterangan => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get datumCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  dynamic get datumLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "is_kend_dinas")
  bool? get isKendDinas => throw _privateConstructorUsedError;
  @JsonKey(name: "interval")
  int? get interval => throw _privateConstructorUsedError;
  @JsonKey(name: "catatan_kend")
  String? get catatanKend => throw _privateConstructorUsedError;
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
  @JsonKey(name: "m_spd.id")
  int? get mSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.m_comp_id")
  int? get mSpdMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.m_dir_id")
  int? get mSpdMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.kode")
  String? get mSpdKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.m_divisi_id")
  int? get mSpdMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.m_posisi_id")
  int? get mSpdMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.m_dept_id")
  int? get mSpdMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.m_zona_id")
  int? get mSpdMZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.grading_id")
  dynamic get mSpdGradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.grading")
  dynamic get mSpdGrading => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.desc")
  String? get mSpdDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.is_active")
  bool? get mSpdIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.creator_id")
  dynamic get mSpdCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.last_editor_id")
  dynamic get mSpdLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.created_at")
  String? get mSpdCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_spd.updated_at")
  String? get mSpdUpdatedAt => throw _privateConstructorUsedError;
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
  dynamic get mDivisiDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.is_active")
  bool? get mDivisiIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.creator_id")
  dynamic get mDivisiCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.last_editor_id")
  dynamic get mDivisiLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.created_at")
  dynamic get mDivisiCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.updated_at")
  dynamic get mDivisiUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.id")
  int? get mDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.m_dir_id")
  int? get mDeptMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.m_divisi_id")
  int? get mDeptMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.nama")
  String? get mDeptNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.desc")
  dynamic get mDeptDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.is_active")
  bool? get mDeptIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.creator_id")
  dynamic get mDeptCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.last_editor_id")
  dynamic get mDeptLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.created_at")
  dynamic get mDeptCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept.updated_at")
  dynamic get mDeptUpdatedAt => throw _privateConstructorUsedError;
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
  @JsonKey(name: "jenis_spd.id")
  int? get jenisSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.m_comp_id")
  int? get jenisSpdMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.m_dir_id")
  dynamic get jenisSpdMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.group")
  String? get jenisSpdGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.key")
  String? get jenisSpdKey => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.code")
  String? get jenisSpdCode => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.value")
  String? get jenisSpdValue => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.is_active")
  bool? get jenisSpdIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.creator_id")
  dynamic get jenisSpdCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.last_editor_id")
  dynamic get jenisSpdLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.created_at")
  dynamic get jenisSpdCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.updated_at")
  dynamic get jenisSpdUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.value_2")
  dynamic get jenisSpdValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "jenis_spd.value_3")
  dynamic get jenisSpdValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.id")
  int? get mZonaAsalId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.m_comp_id")
  int? get mZonaAsalMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.m_dir_id")
  int? get mZonaAsalMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.kode")
  String? get mZonaAsalKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.nama")
  String? get mZonaAsalNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.desc")
  String? get mZonaAsalDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.is_active")
  bool? get mZonaAsalIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.creator_id")
  dynamic get mZonaAsalCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.last_editor_id")
  dynamic get mZonaAsalLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.created_at")
  String? get mZonaAsalCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_asal.updated_at")
  String? get mZonaAsalUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.id")
  int? get mZonaTujuanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.m_comp_id")
  int? get mZonaTujuanMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.m_dir_id")
  int? get mZonaTujuanMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.kode")
  String? get mZonaTujuanKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.nama")
  String? get mZonaTujuanNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.desc")
  String? get mZonaTujuanDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.is_active")
  bool? get mZonaTujuanIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.creator_id")
  dynamic get mZonaTujuanCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.last_editor_id")
  dynamic get mZonaTujuanLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.created_at")
  String? get mZonaTujuanCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_tujuan.updated_at")
  String? get mZonaTujuanUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.id")
  int? get mLokasiTujuanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.m_comp_id")
  int? get mLokasiTujuanMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.m_dir_id")
  int? get mLokasiTujuanMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.kode")
  String? get mLokasiTujuanKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.nama")
  String? get mLokasiTujuanNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.desc")
  String? get mLokasiTujuanDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.is_active")
  bool? get mLokasiTujuanIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.creator_id")
  dynamic get mLokasiTujuanCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.last_editor_id")
  dynamic get mLokasiTujuanLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.created_at")
  String? get mLokasiTujuanCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_lokasi_tujuan.updated_at")
  String? get mLokasiTujuanUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.id")
  int? get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_comp_id")
  int? get mKaryMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_dir_id")
  int? get mKaryMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_divisi_id")
  int? get mKaryMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_dept_id")
  int? get mKaryMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_zona_id")
  int? get mKaryMZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.grading_id")
  int? get mKaryGradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.costcontre_id")
  int? get mKaryCostcontreId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kode")
  String? get mKaryKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_posisi_id")
  int? get mKaryMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_jam_kerja_id")
  int? get mKaryMJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kode_presensi")
  String? get mKaryKodePresensi => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nik")
  String? get mKaryNik => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_depan")
  String? get mKaryNamaDepan => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_belakang")
  String? get mKaryNamaBelakang => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_lengkap")
  String? get mKaryNamaLengkap => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_panggilan")
  String? get mKaryNamaPanggilan => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.jk_id")
  int? get mKaryJkId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.tempat_lahir")
  String? get mKaryTempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.tgl_lahir")
  String? get mKaryTglLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.provinsi_id")
  int? get mKaryProvinsiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kota_id")
  int? get mKaryKotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kecamatan_id")
  int? get mKaryKecamatanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kode_pos")
  String? get mKaryKodePos => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.alamat_asli")
  String? get mKaryAlamatAsli => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.alamat_domisili")
  String? get mKaryAlamatDomisili => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.no_tlp")
  String? get mKaryNoTlp => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.no_tlp_lainnya")
  String? get mKaryNoTlpLainnya => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.no_darurat")
  String? get mKaryNoDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_kontak_darurat")
  String? get mKaryNamaKontakDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.agama_id")
  int? get mKaryAgamaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.gol_darah_id")
  int? get mKaryGolDarahId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.status_nikah_id")
  int? get mKaryStatusNikahId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.tanggungan_id")
  int? get mKaryTanggunganId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.hub_dgn_karyawan")
  String? get mKaryHubDgnKaryawan => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_jatah_reguler")
  int? get mKaryCutiJatahReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_sisa_reguler")
  int? get mKaryCutiSisaReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_panjang")
  int? get mKaryCutiPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_sisa_panjang")
  int? get mKaryCutiSisaPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.status_kary_id")
  dynamic get mKaryStatusKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.lama_kontrak_awal")
  dynamic get mKaryLamaKontrakAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.lama_kontrak_akhir")
  dynamic get mKaryLamaKontrakAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.tgl_masuk")
  dynamic get mKaryTglMasuk => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.tgl_berhenti")
  dynamic get mKaryTglBerhenti => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.alasan_berhenti")
  dynamic get mKaryAlasanBerhenti => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.uk_baju")
  String? get mKaryUkBaju => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.uk_celana")
  String? get mKaryUkCelana => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.uk_sepatu")
  String? get mKaryUkSepatu => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.desc")
  dynamic get mKaryDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.is_active")
  bool? get mKaryIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.creator_id")
  dynamic get mKaryCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.last_editor_id")
  dynamic get mKaryLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.created_at")
  String? get mKaryCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.updated_at")
  String? get mKaryUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_standart_gaji_id")
  int? get mKaryMStandartGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.periode_gaji_id")
  int? get mKaryPeriodeGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.ref_id")
  int? get mKaryRefId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.presensi_lokasi_default_id")
  dynamic get mKaryPresensiLokasiDefaultId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.exp_date_cuti")
  dynamic get mKaryExpDateCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.limit_potong")
  int? get mKaryLimitPotong => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.atasan_id")
  int? get mKaryAtasanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_p24")
  dynamic get mKaryCutiP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_sisa_p24")
  dynamic get mKaryCutiSisaP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.id")
  dynamic get picId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.m_comp_id")
  dynamic get picMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.m_dir_id")
  dynamic get picMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.m_divisi_id")
  dynamic get picMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.m_dept_id")
  dynamic get picMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.m_zona_id")
  dynamic get picMZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.grading_id")
  dynamic get picGradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.costcontre_id")
  dynamic get picCostcontreId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.kode")
  dynamic get picKode => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.m_posisi_id")
  dynamic get picMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.m_jam_kerja_id")
  dynamic get picMJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.kode_presensi")
  dynamic get picKodePresensi => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.nik")
  dynamic get picNik => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.nama_depan")
  dynamic get picNamaDepan => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.nama_belakang")
  dynamic get picNamaBelakang => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.nama_lengkap")
  dynamic get picNamaLengkap => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.nama_panggilan")
  dynamic get picNamaPanggilan => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.jk_id")
  dynamic get picJkId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.tempat_lahir")
  dynamic get picTempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.tgl_lahir")
  dynamic get picTglLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.provinsi_id")
  dynamic get picProvinsiId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.kota_id")
  dynamic get picKotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.kecamatan_id")
  dynamic get picKecamatanId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.kode_pos")
  dynamic get picKodePos => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.alamat_asli")
  dynamic get picAlamatAsli => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.alamat_domisili")
  dynamic get picAlamatDomisili => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.no_tlp")
  dynamic get picNoTlp => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.no_tlp_lainnya")
  dynamic get picNoTlpLainnya => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.no_darurat")
  dynamic get picNoDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.nama_kontak_darurat")
  dynamic get picNamaKontakDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.agama_id")
  dynamic get picAgamaId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.gol_darah_id")
  dynamic get picGolDarahId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.status_nikah_id")
  dynamic get picStatusNikahId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.tanggungan_id")
  dynamic get picTanggunganId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.hub_dgn_karyawan")
  dynamic get picHubDgnKaryawan => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.cuti_jatah_reguler")
  dynamic get picCutiJatahReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.cuti_sisa_reguler")
  dynamic get picCutiSisaReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.cuti_panjang")
  dynamic get picCutiPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.cuti_sisa_panjang")
  dynamic get picCutiSisaPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.status_kary_id")
  dynamic get picStatusKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.lama_kontrak_awal")
  dynamic get picLamaKontrakAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.lama_kontrak_akhir")
  dynamic get picLamaKontrakAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.tgl_masuk")
  dynamic get picTglMasuk => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.tgl_berhenti")
  dynamic get picTglBerhenti => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.alasan_berhenti")
  dynamic get picAlasanBerhenti => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.uk_baju")
  dynamic get picUkBaju => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.uk_celana")
  dynamic get picUkCelana => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.uk_sepatu")
  dynamic get picUkSepatu => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.desc")
  dynamic get picDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.is_active")
  dynamic get picIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.creator_id")
  dynamic get picCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.last_editor_id")
  dynamic get picLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.created_at")
  dynamic get picCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.updated_at")
  dynamic get picUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.m_standart_gaji_id")
  dynamic get picMStandartGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.periode_gaji_id")
  dynamic get picPeriodeGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.ref_id")
  dynamic get picRefId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.presensi_lokasi_default_id")
  dynamic get picPresensiLokasiDefaultId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.exp_date_cuti")
  dynamic get picExpDateCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.limit_potong")
  dynamic get picLimitPotong => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.atasan_id")
  dynamic get picAtasanId => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.cuti_p24")
  dynamic get picCutiP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "pic.cuti_sisa_p24")
  dynamic get picCutiSisaP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.id")
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.name")
  String? get creatorName => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.email")
  dynamic get creatorEmail => throw _privateConstructorUsedError;
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
  int? get creatorCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "creator.last_editor_id")
  dynamic get creatorLastEditorId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "approval_note")
  String? get approvalNote => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_pic")
  String? get namaPic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDinasCopyWith<DataDinas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDinasCopyWith<$Res> {
  factory $DataDinasCopyWith(DataDinas value, $Res Function(DataDinas) then) =
      _$DataDinasCopyWithImpl<$Res, DataDinas>;
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "m_comp_id") int? datumMCompId,
      @JsonKey(name: "m_spd_id") int? datumMSpdId,
      @JsonKey(name: "m_dir_id") int? datumMDirId,
      @JsonKey(name: "m_divisi_id") int? datumMDivisiId,
      @JsonKey(name: "m_dept_id") int? datumMDeptId,
      @JsonKey(name: "m_posisi_id") int? datumMPosisiId,
      @JsonKey(name: "tanggal") String? tanggal,
      @JsonKey(name: "tgl_acara_awal") String? tglAcaraAwal,
      @JsonKey(name: "tgl_acara_akhir") String? tglAcaraAkhir,
      @JsonKey(name: "jenis_spd_id") int? datumJenisSpdId,
      @JsonKey(name: "m_zona_asal_id") int? datumMZonaAsalId,
      @JsonKey(name: "m_zona_tujuan_id") int? datumMZonaTujuanId,
      @JsonKey(name: "m_lokasi_tujuan_id") int? datumMLokasiTujuanId,
      @JsonKey(name: "m_kary_id") int? datumMKaryId,
      @JsonKey(name: "pic_id") int? datumPicId,
      @JsonKey(name: "total_biaya") int? totalBiaya,
      @JsonKey(name: "kegiatan") dynamic kegiatan,
      @JsonKey(name: "keterangan") dynamic keterangan,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "creator_id") int? datumCreatorId,
      @JsonKey(name: "last_editor_id") dynamic datumLastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "is_kend_dinas") bool? isKendDinas,
      @JsonKey(name: "interval") int? interval,
      @JsonKey(name: "catatan_kend") String? catatanKend,
      @JsonKey(name: "m_comp.id") int? mCompId,
      @JsonKey(name: "m_comp.nama") String? mCompNama,
      @JsonKey(name: "m_comp.is_active") bool? mCompIsActive,
      @JsonKey(name: "m_comp.desc") dynamic mCompDesc,
      @JsonKey(name: "m_comp.creator_id") dynamic mCompCreatorId,
      @JsonKey(name: "m_comp.last_editor_id") dynamic mCompLastEditorId,
      @JsonKey(name: "m_comp.created_at") dynamic mCompCreatedAt,
      @JsonKey(name: "m_comp.updated_at") dynamic mCompUpdatedAt,
      @JsonKey(name: "m_spd.id") int? mSpdId,
      @JsonKey(name: "m_spd.m_comp_id") int? mSpdMCompId,
      @JsonKey(name: "m_spd.m_dir_id") int? mSpdMDirId,
      @JsonKey(name: "m_spd.kode") String? mSpdKode,
      @JsonKey(name: "m_spd.m_divisi_id") int? mSpdMDivisiId,
      @JsonKey(name: "m_spd.m_posisi_id") int? mSpdMPosisiId,
      @JsonKey(name: "m_spd.m_dept_id") int? mSpdMDeptId,
      @JsonKey(name: "m_spd.m_zona_id") int? mSpdMZonaId,
      @JsonKey(name: "m_spd.grading_id") dynamic mSpdGradingId,
      @JsonKey(name: "m_spd.grading") dynamic mSpdGrading,
      @JsonKey(name: "m_spd.desc") String? mSpdDesc,
      @JsonKey(name: "m_spd.is_active") bool? mSpdIsActive,
      @JsonKey(name: "m_spd.creator_id") dynamic mSpdCreatorId,
      @JsonKey(name: "m_spd.last_editor_id") dynamic mSpdLastEditorId,
      @JsonKey(name: "m_spd.created_at") String? mSpdCreatedAt,
      @JsonKey(name: "m_spd.updated_at") String? mSpdUpdatedAt,
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
      @JsonKey(name: "m_divisi.desc") dynamic mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") bool? mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") dynamic mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id") dynamic mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") dynamic mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") dynamic mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") int? mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") int? mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") int? mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") String? mDeptNama,
      @JsonKey(name: "m_dept.desc") dynamic mDeptDesc,
      @JsonKey(name: "m_dept.is_active") bool? mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") dynamic mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") dynamic mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") dynamic mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") dynamic mDeptUpdatedAt,
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
      @JsonKey(name: "jenis_spd.id") int? jenisSpdId,
      @JsonKey(name: "jenis_spd.m_comp_id") int? jenisSpdMCompId,
      @JsonKey(name: "jenis_spd.m_dir_id") dynamic jenisSpdMDirId,
      @JsonKey(name: "jenis_spd.group") String? jenisSpdGroup,
      @JsonKey(name: "jenis_spd.key") String? jenisSpdKey,
      @JsonKey(name: "jenis_spd.code") String? jenisSpdCode,
      @JsonKey(name: "jenis_spd.value") String? jenisSpdValue,
      @JsonKey(name: "jenis_spd.is_active") bool? jenisSpdIsActive,
      @JsonKey(name: "jenis_spd.creator_id") dynamic jenisSpdCreatorId,
      @JsonKey(name: "jenis_spd.last_editor_id") dynamic jenisSpdLastEditorId,
      @JsonKey(name: "jenis_spd.created_at") dynamic jenisSpdCreatedAt,
      @JsonKey(name: "jenis_spd.updated_at") dynamic jenisSpdUpdatedAt,
      @JsonKey(name: "jenis_spd.value_2") dynamic jenisSpdValue2,
      @JsonKey(name: "jenis_spd.value_3") dynamic jenisSpdValue3,
      @JsonKey(name: "m_zona_asal.id") int? mZonaAsalId,
      @JsonKey(name: "m_zona_asal.m_comp_id") int? mZonaAsalMCompId,
      @JsonKey(name: "m_zona_asal.m_dir_id") int? mZonaAsalMDirId,
      @JsonKey(name: "m_zona_asal.kode") String? mZonaAsalKode,
      @JsonKey(name: "m_zona_asal.nama") String? mZonaAsalNama,
      @JsonKey(name: "m_zona_asal.desc") String? mZonaAsalDesc,
      @JsonKey(name: "m_zona_asal.is_active") bool? mZonaAsalIsActive,
      @JsonKey(name: "m_zona_asal.creator_id") dynamic mZonaAsalCreatorId,
      @JsonKey(name: "m_zona_asal.last_editor_id")
      dynamic mZonaAsalLastEditorId,
      @JsonKey(name: "m_zona_asal.created_at") String? mZonaAsalCreatedAt,
      @JsonKey(name: "m_zona_asal.updated_at") String? mZonaAsalUpdatedAt,
      @JsonKey(name: "m_zona_tujuan.id") int? mZonaTujuanId,
      @JsonKey(name: "m_zona_tujuan.m_comp_id") int? mZonaTujuanMCompId,
      @JsonKey(name: "m_zona_tujuan.m_dir_id") int? mZonaTujuanMDirId,
      @JsonKey(name: "m_zona_tujuan.kode") String? mZonaTujuanKode,
      @JsonKey(name: "m_zona_tujuan.nama") String? mZonaTujuanNama,
      @JsonKey(name: "m_zona_tujuan.desc") String? mZonaTujuanDesc,
      @JsonKey(name: "m_zona_tujuan.is_active") bool? mZonaTujuanIsActive,
      @JsonKey(name: "m_zona_tujuan.creator_id") dynamic mZonaTujuanCreatorId,
      @JsonKey(name: "m_zona_tujuan.last_editor_id")
      dynamic mZonaTujuanLastEditorId,
      @JsonKey(name: "m_zona_tujuan.created_at") String? mZonaTujuanCreatedAt,
      @JsonKey(name: "m_zona_tujuan.updated_at") String? mZonaTujuanUpdatedAt,
      @JsonKey(name: "m_lokasi_tujuan.id") int? mLokasiTujuanId,
      @JsonKey(name: "m_lokasi_tujuan.m_comp_id") int? mLokasiTujuanMCompId,
      @JsonKey(name: "m_lokasi_tujuan.m_dir_id") int? mLokasiTujuanMDirId,
      @JsonKey(name: "m_lokasi_tujuan.kode") String? mLokasiTujuanKode,
      @JsonKey(name: "m_lokasi_tujuan.nama") String? mLokasiTujuanNama,
      @JsonKey(name: "m_lokasi_tujuan.desc") String? mLokasiTujuanDesc,
      @JsonKey(name: "m_lokasi_tujuan.is_active") bool? mLokasiTujuanIsActive,
      @JsonKey(name: "m_lokasi_tujuan.creator_id")
      dynamic mLokasiTujuanCreatorId,
      @JsonKey(name: "m_lokasi_tujuan.last_editor_id")
      dynamic mLokasiTujuanLastEditorId,
      @JsonKey(name: "m_lokasi_tujuan.created_at")
      String? mLokasiTujuanCreatedAt,
      @JsonKey(name: "m_lokasi_tujuan.updated_at")
      String? mLokasiTujuanUpdatedAt,
      @JsonKey(name: "m_kary.id") int? mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") int? mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") int? mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") int? mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") int? mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") int? mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") int? mKaryGradingId,
      @JsonKey(name: "m_kary.costcontre_id") int? mKaryCostcontreId,
      @JsonKey(name: "m_kary.kode") String? mKaryKode,
      @JsonKey(name: "m_kary.m_posisi_id") int? mKaryMPosisiId,
      @JsonKey(name: "m_kary.m_jam_kerja_id") int? mKaryMJamKerjaId,
      @JsonKey(name: "m_kary.kode_presensi") String? mKaryKodePresensi,
      @JsonKey(name: "m_kary.nik") String? mKaryNik,
      @JsonKey(name: "m_kary.nama_depan") String? mKaryNamaDepan,
      @JsonKey(name: "m_kary.nama_belakang") String? mKaryNamaBelakang,
      @JsonKey(name: "m_kary.nama_lengkap") String? mKaryNamaLengkap,
      @JsonKey(name: "m_kary.nama_panggilan") String? mKaryNamaPanggilan,
      @JsonKey(name: "m_kary.jk_id") int? mKaryJkId,
      @JsonKey(name: "m_kary.tempat_lahir") String? mKaryTempatLahir,
      @JsonKey(name: "m_kary.tgl_lahir") String? mKaryTglLahir,
      @JsonKey(name: "m_kary.provinsi_id") int? mKaryProvinsiId,
      @JsonKey(name: "m_kary.kota_id") int? mKaryKotaId,
      @JsonKey(name: "m_kary.kecamatan_id") int? mKaryKecamatanId,
      @JsonKey(name: "m_kary.kode_pos") String? mKaryKodePos,
      @JsonKey(name: "m_kary.alamat_asli") String? mKaryAlamatAsli,
      @JsonKey(name: "m_kary.alamat_domisili") String? mKaryAlamatDomisili,
      @JsonKey(name: "m_kary.no_tlp") String? mKaryNoTlp,
      @JsonKey(name: "m_kary.no_tlp_lainnya") String? mKaryNoTlpLainnya,
      @JsonKey(name: "m_kary.no_darurat") String? mKaryNoDarurat,
      @JsonKey(name: "m_kary.nama_kontak_darurat")
      String? mKaryNamaKontakDarurat,
      @JsonKey(name: "m_kary.agama_id") int? mKaryAgamaId,
      @JsonKey(name: "m_kary.gol_darah_id") int? mKaryGolDarahId,
      @JsonKey(name: "m_kary.status_nikah_id") int? mKaryStatusNikahId,
      @JsonKey(name: "m_kary.tanggungan_id") int? mKaryTanggunganId,
      @JsonKey(name: "m_kary.hub_dgn_karyawan") String? mKaryHubDgnKaryawan,
      @JsonKey(name: "m_kary.cuti_jatah_reguler") int? mKaryCutiJatahReguler,
      @JsonKey(name: "m_kary.cuti_sisa_reguler") int? mKaryCutiSisaReguler,
      @JsonKey(name: "m_kary.cuti_panjang") int? mKaryCutiPanjang,
      @JsonKey(name: "m_kary.cuti_sisa_panjang") int? mKaryCutiSisaPanjang,
      @JsonKey(name: "m_kary.status_kary_id") dynamic mKaryStatusKaryId,
      @JsonKey(name: "m_kary.lama_kontrak_awal") dynamic mKaryLamaKontrakAwal,
      @JsonKey(name: "m_kary.lama_kontrak_akhir") dynamic mKaryLamaKontrakAkhir,
      @JsonKey(name: "m_kary.tgl_masuk") dynamic mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") dynamic mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti") dynamic mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") String? mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") String? mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") String? mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") dynamic mKaryDesc,
      @JsonKey(name: "m_kary.is_active") bool? mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") dynamic mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") dynamic mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") String? mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") String? mKaryUpdatedAt,
      @JsonKey(name: "m_kary.m_standart_gaji_id") int? mKaryMStandartGajiId,
      @JsonKey(name: "m_kary.periode_gaji_id") int? mKaryPeriodeGajiId,
      @JsonKey(name: "m_kary.ref_id") int? mKaryRefId,
      @JsonKey(name: "m_kary.presensi_lokasi_default_id")
      dynamic mKaryPresensiLokasiDefaultId,
      @JsonKey(name: "m_kary.exp_date_cuti") dynamic mKaryExpDateCuti,
      @JsonKey(name: "m_kary.limit_potong") int? mKaryLimitPotong,
      @JsonKey(name: "m_kary.atasan_id") int? mKaryAtasanId,
      @JsonKey(name: "m_kary.cuti_p24") dynamic mKaryCutiP24,
      @JsonKey(name: "m_kary.cuti_sisa_p24") dynamic mKaryCutiSisaP24,
      @JsonKey(name: "pic.id") dynamic picId,
      @JsonKey(name: "pic.m_comp_id") dynamic picMCompId,
      @JsonKey(name: "pic.m_dir_id") dynamic picMDirId,
      @JsonKey(name: "pic.m_divisi_id") dynamic picMDivisiId,
      @JsonKey(name: "pic.m_dept_id") dynamic picMDeptId,
      @JsonKey(name: "pic.m_zona_id") dynamic picMZonaId,
      @JsonKey(name: "pic.grading_id") dynamic picGradingId,
      @JsonKey(name: "pic.costcontre_id") dynamic picCostcontreId,
      @JsonKey(name: "pic.kode") dynamic picKode,
      @JsonKey(name: "pic.m_posisi_id") dynamic picMPosisiId,
      @JsonKey(name: "pic.m_jam_kerja_id") dynamic picMJamKerjaId,
      @JsonKey(name: "pic.kode_presensi") dynamic picKodePresensi,
      @JsonKey(name: "pic.nik") dynamic picNik,
      @JsonKey(name: "pic.nama_depan") dynamic picNamaDepan,
      @JsonKey(name: "pic.nama_belakang") dynamic picNamaBelakang,
      @JsonKey(name: "pic.nama_lengkap") dynamic picNamaLengkap,
      @JsonKey(name: "pic.nama_panggilan") dynamic picNamaPanggilan,
      @JsonKey(name: "pic.jk_id") dynamic picJkId,
      @JsonKey(name: "pic.tempat_lahir") dynamic picTempatLahir,
      @JsonKey(name: "pic.tgl_lahir") dynamic picTglLahir,
      @JsonKey(name: "pic.provinsi_id") dynamic picProvinsiId,
      @JsonKey(name: "pic.kota_id") dynamic picKotaId,
      @JsonKey(name: "pic.kecamatan_id") dynamic picKecamatanId,
      @JsonKey(name: "pic.kode_pos") dynamic picKodePos,
      @JsonKey(name: "pic.alamat_asli") dynamic picAlamatAsli,
      @JsonKey(name: "pic.alamat_domisili") dynamic picAlamatDomisili,
      @JsonKey(name: "pic.no_tlp") dynamic picNoTlp,
      @JsonKey(name: "pic.no_tlp_lainnya") dynamic picNoTlpLainnya,
      @JsonKey(name: "pic.no_darurat") dynamic picNoDarurat,
      @JsonKey(name: "pic.nama_kontak_darurat") dynamic picNamaKontakDarurat,
      @JsonKey(name: "pic.agama_id") dynamic picAgamaId,
      @JsonKey(name: "pic.gol_darah_id") dynamic picGolDarahId,
      @JsonKey(name: "pic.status_nikah_id") dynamic picStatusNikahId,
      @JsonKey(name: "pic.tanggungan_id") dynamic picTanggunganId,
      @JsonKey(name: "pic.hub_dgn_karyawan") dynamic picHubDgnKaryawan,
      @JsonKey(name: "pic.cuti_jatah_reguler") dynamic picCutiJatahReguler,
      @JsonKey(name: "pic.cuti_sisa_reguler") dynamic picCutiSisaReguler,
      @JsonKey(name: "pic.cuti_panjang") dynamic picCutiPanjang,
      @JsonKey(name: "pic.cuti_sisa_panjang") dynamic picCutiSisaPanjang,
      @JsonKey(name: "pic.status_kary_id") dynamic picStatusKaryId,
      @JsonKey(name: "pic.lama_kontrak_awal") dynamic picLamaKontrakAwal,
      @JsonKey(name: "pic.lama_kontrak_akhir") dynamic picLamaKontrakAkhir,
      @JsonKey(name: "pic.tgl_masuk") dynamic picTglMasuk,
      @JsonKey(name: "pic.tgl_berhenti") dynamic picTglBerhenti,
      @JsonKey(name: "pic.alasan_berhenti") dynamic picAlasanBerhenti,
      @JsonKey(name: "pic.uk_baju") dynamic picUkBaju,
      @JsonKey(name: "pic.uk_celana") dynamic picUkCelana,
      @JsonKey(name: "pic.uk_sepatu") dynamic picUkSepatu,
      @JsonKey(name: "pic.desc") dynamic picDesc,
      @JsonKey(name: "pic.is_active") dynamic picIsActive,
      @JsonKey(name: "pic.creator_id") dynamic picCreatorId,
      @JsonKey(name: "pic.last_editor_id") dynamic picLastEditorId,
      @JsonKey(name: "pic.created_at") dynamic picCreatedAt,
      @JsonKey(name: "pic.updated_at") dynamic picUpdatedAt,
      @JsonKey(name: "pic.m_standart_gaji_id") dynamic picMStandartGajiId,
      @JsonKey(name: "pic.periode_gaji_id") dynamic picPeriodeGajiId,
      @JsonKey(name: "pic.ref_id") dynamic picRefId,
      @JsonKey(name: "pic.presensi_lokasi_default_id")
      dynamic picPresensiLokasiDefaultId,
      @JsonKey(name: "pic.exp_date_cuti") dynamic picExpDateCuti,
      @JsonKey(name: "pic.limit_potong") dynamic picLimitPotong,
      @JsonKey(name: "pic.atasan_id") dynamic picAtasanId,
      @JsonKey(name: "pic.cuti_p24") dynamic picCutiP24,
      @JsonKey(name: "pic.cuti_sisa_p24") dynamic picCutiSisaP24,
      @JsonKey(name: "creator.id") int? creatorId,
      @JsonKey(name: "creator.name") String? creatorName,
      @JsonKey(name: "creator.email") dynamic creatorEmail,
      @JsonKey(name: "creator.username") String? creatorUsername,
      @JsonKey(name: "creator.email_verified_at")
      dynamic creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") String? creatorPassword,
      @JsonKey(name: "creator.m_comp_id") int? creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") int? creatorMDirId,
      @JsonKey(name: "creator.is_active") bool? creatorIsActive,
      @JsonKey(name: "creator.creator_id") int? creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id") dynamic creatorLastEditorId,
      @JsonKey(name: "creator.remember_token") dynamic creatorRememberToken,
      @JsonKey(name: "creator.created_at") String? creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") String? creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") String? creatorProfilImage,
      @JsonKey(name: "creator.telp") dynamic creatorTelp,
      @JsonKey(name: "creator.m_kary_id") int? creatorMKaryId,
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
      @JsonKey(name: "last_editor.m_kary_id") dynamic lastEditorMKaryId,
      @JsonKey(name: "approval_note") String? approvalNote,
      @JsonKey(name: "nama_pic") String? namaPic});
}

/// @nodoc
class _$DataDinasCopyWithImpl<$Res, $Val extends DataDinas>
    implements $DataDinasCopyWith<$Res> {
  _$DataDinasCopyWithImpl(this._value, this._then);

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
    Object? nomor = freezed,
    Object? datumMCompId = freezed,
    Object? datumMSpdId = freezed,
    Object? datumMDirId = freezed,
    Object? datumMDivisiId = freezed,
    Object? datumMDeptId = freezed,
    Object? datumMPosisiId = freezed,
    Object? tanggal = freezed,
    Object? tglAcaraAwal = freezed,
    Object? tglAcaraAkhir = freezed,
    Object? datumJenisSpdId = freezed,
    Object? datumMZonaAsalId = freezed,
    Object? datumMZonaTujuanId = freezed,
    Object? datumMLokasiTujuanId = freezed,
    Object? datumMKaryId = freezed,
    Object? datumPicId = freezed,
    Object? totalBiaya = freezed,
    Object? kegiatan = freezed,
    Object? keterangan = freezed,
    Object? status = freezed,
    Object? datumCreatorId = freezed,
    Object? datumLastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isKendDinas = freezed,
    Object? interval = freezed,
    Object? catatanKend = freezed,
    Object? mCompId = freezed,
    Object? mCompNama = freezed,
    Object? mCompIsActive = freezed,
    Object? mCompDesc = freezed,
    Object? mCompCreatorId = freezed,
    Object? mCompLastEditorId = freezed,
    Object? mCompCreatedAt = freezed,
    Object? mCompUpdatedAt = freezed,
    Object? mSpdId = freezed,
    Object? mSpdMCompId = freezed,
    Object? mSpdMDirId = freezed,
    Object? mSpdKode = freezed,
    Object? mSpdMDivisiId = freezed,
    Object? mSpdMPosisiId = freezed,
    Object? mSpdMDeptId = freezed,
    Object? mSpdMZonaId = freezed,
    Object? mSpdGradingId = freezed,
    Object? mSpdGrading = freezed,
    Object? mSpdDesc = freezed,
    Object? mSpdIsActive = freezed,
    Object? mSpdCreatorId = freezed,
    Object? mSpdLastEditorId = freezed,
    Object? mSpdCreatedAt = freezed,
    Object? mSpdUpdatedAt = freezed,
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
    Object? jenisSpdId = freezed,
    Object? jenisSpdMCompId = freezed,
    Object? jenisSpdMDirId = freezed,
    Object? jenisSpdGroup = freezed,
    Object? jenisSpdKey = freezed,
    Object? jenisSpdCode = freezed,
    Object? jenisSpdValue = freezed,
    Object? jenisSpdIsActive = freezed,
    Object? jenisSpdCreatorId = freezed,
    Object? jenisSpdLastEditorId = freezed,
    Object? jenisSpdCreatedAt = freezed,
    Object? jenisSpdUpdatedAt = freezed,
    Object? jenisSpdValue2 = freezed,
    Object? jenisSpdValue3 = freezed,
    Object? mZonaAsalId = freezed,
    Object? mZonaAsalMCompId = freezed,
    Object? mZonaAsalMDirId = freezed,
    Object? mZonaAsalKode = freezed,
    Object? mZonaAsalNama = freezed,
    Object? mZonaAsalDesc = freezed,
    Object? mZonaAsalIsActive = freezed,
    Object? mZonaAsalCreatorId = freezed,
    Object? mZonaAsalLastEditorId = freezed,
    Object? mZonaAsalCreatedAt = freezed,
    Object? mZonaAsalUpdatedAt = freezed,
    Object? mZonaTujuanId = freezed,
    Object? mZonaTujuanMCompId = freezed,
    Object? mZonaTujuanMDirId = freezed,
    Object? mZonaTujuanKode = freezed,
    Object? mZonaTujuanNama = freezed,
    Object? mZonaTujuanDesc = freezed,
    Object? mZonaTujuanIsActive = freezed,
    Object? mZonaTujuanCreatorId = freezed,
    Object? mZonaTujuanLastEditorId = freezed,
    Object? mZonaTujuanCreatedAt = freezed,
    Object? mZonaTujuanUpdatedAt = freezed,
    Object? mLokasiTujuanId = freezed,
    Object? mLokasiTujuanMCompId = freezed,
    Object? mLokasiTujuanMDirId = freezed,
    Object? mLokasiTujuanKode = freezed,
    Object? mLokasiTujuanNama = freezed,
    Object? mLokasiTujuanDesc = freezed,
    Object? mLokasiTujuanIsActive = freezed,
    Object? mLokasiTujuanCreatorId = freezed,
    Object? mLokasiTujuanLastEditorId = freezed,
    Object? mLokasiTujuanCreatedAt = freezed,
    Object? mLokasiTujuanUpdatedAt = freezed,
    Object? mKaryId = freezed,
    Object? mKaryMCompId = freezed,
    Object? mKaryMDirId = freezed,
    Object? mKaryMDivisiId = freezed,
    Object? mKaryMDeptId = freezed,
    Object? mKaryMZonaId = freezed,
    Object? mKaryGradingId = freezed,
    Object? mKaryCostcontreId = freezed,
    Object? mKaryKode = freezed,
    Object? mKaryMPosisiId = freezed,
    Object? mKaryMJamKerjaId = freezed,
    Object? mKaryKodePresensi = freezed,
    Object? mKaryNik = freezed,
    Object? mKaryNamaDepan = freezed,
    Object? mKaryNamaBelakang = freezed,
    Object? mKaryNamaLengkap = freezed,
    Object? mKaryNamaPanggilan = freezed,
    Object? mKaryJkId = freezed,
    Object? mKaryTempatLahir = freezed,
    Object? mKaryTglLahir = freezed,
    Object? mKaryProvinsiId = freezed,
    Object? mKaryKotaId = freezed,
    Object? mKaryKecamatanId = freezed,
    Object? mKaryKodePos = freezed,
    Object? mKaryAlamatAsli = freezed,
    Object? mKaryAlamatDomisili = freezed,
    Object? mKaryNoTlp = freezed,
    Object? mKaryNoTlpLainnya = freezed,
    Object? mKaryNoDarurat = freezed,
    Object? mKaryNamaKontakDarurat = freezed,
    Object? mKaryAgamaId = freezed,
    Object? mKaryGolDarahId = freezed,
    Object? mKaryStatusNikahId = freezed,
    Object? mKaryTanggunganId = freezed,
    Object? mKaryHubDgnKaryawan = freezed,
    Object? mKaryCutiJatahReguler = freezed,
    Object? mKaryCutiSisaReguler = freezed,
    Object? mKaryCutiPanjang = freezed,
    Object? mKaryCutiSisaPanjang = freezed,
    Object? mKaryStatusKaryId = freezed,
    Object? mKaryLamaKontrakAwal = freezed,
    Object? mKaryLamaKontrakAkhir = freezed,
    Object? mKaryTglMasuk = freezed,
    Object? mKaryTglBerhenti = freezed,
    Object? mKaryAlasanBerhenti = freezed,
    Object? mKaryUkBaju = freezed,
    Object? mKaryUkCelana = freezed,
    Object? mKaryUkSepatu = freezed,
    Object? mKaryDesc = freezed,
    Object? mKaryIsActive = freezed,
    Object? mKaryCreatorId = freezed,
    Object? mKaryLastEditorId = freezed,
    Object? mKaryCreatedAt = freezed,
    Object? mKaryUpdatedAt = freezed,
    Object? mKaryMStandartGajiId = freezed,
    Object? mKaryPeriodeGajiId = freezed,
    Object? mKaryRefId = freezed,
    Object? mKaryPresensiLokasiDefaultId = freezed,
    Object? mKaryExpDateCuti = freezed,
    Object? mKaryLimitPotong = freezed,
    Object? mKaryAtasanId = freezed,
    Object? mKaryCutiP24 = freezed,
    Object? mKaryCutiSisaP24 = freezed,
    Object? picId = freezed,
    Object? picMCompId = freezed,
    Object? picMDirId = freezed,
    Object? picMDivisiId = freezed,
    Object? picMDeptId = freezed,
    Object? picMZonaId = freezed,
    Object? picGradingId = freezed,
    Object? picCostcontreId = freezed,
    Object? picKode = freezed,
    Object? picMPosisiId = freezed,
    Object? picMJamKerjaId = freezed,
    Object? picKodePresensi = freezed,
    Object? picNik = freezed,
    Object? picNamaDepan = freezed,
    Object? picNamaBelakang = freezed,
    Object? picNamaLengkap = freezed,
    Object? picNamaPanggilan = freezed,
    Object? picJkId = freezed,
    Object? picTempatLahir = freezed,
    Object? picTglLahir = freezed,
    Object? picProvinsiId = freezed,
    Object? picKotaId = freezed,
    Object? picKecamatanId = freezed,
    Object? picKodePos = freezed,
    Object? picAlamatAsli = freezed,
    Object? picAlamatDomisili = freezed,
    Object? picNoTlp = freezed,
    Object? picNoTlpLainnya = freezed,
    Object? picNoDarurat = freezed,
    Object? picNamaKontakDarurat = freezed,
    Object? picAgamaId = freezed,
    Object? picGolDarahId = freezed,
    Object? picStatusNikahId = freezed,
    Object? picTanggunganId = freezed,
    Object? picHubDgnKaryawan = freezed,
    Object? picCutiJatahReguler = freezed,
    Object? picCutiSisaReguler = freezed,
    Object? picCutiPanjang = freezed,
    Object? picCutiSisaPanjang = freezed,
    Object? picStatusKaryId = freezed,
    Object? picLamaKontrakAwal = freezed,
    Object? picLamaKontrakAkhir = freezed,
    Object? picTglMasuk = freezed,
    Object? picTglBerhenti = freezed,
    Object? picAlasanBerhenti = freezed,
    Object? picUkBaju = freezed,
    Object? picUkCelana = freezed,
    Object? picUkSepatu = freezed,
    Object? picDesc = freezed,
    Object? picIsActive = freezed,
    Object? picCreatorId = freezed,
    Object? picLastEditorId = freezed,
    Object? picCreatedAt = freezed,
    Object? picUpdatedAt = freezed,
    Object? picMStandartGajiId = freezed,
    Object? picPeriodeGajiId = freezed,
    Object? picRefId = freezed,
    Object? picPresensiLokasiDefaultId = freezed,
    Object? picExpDateCuti = freezed,
    Object? picLimitPotong = freezed,
    Object? picAtasanId = freezed,
    Object? picCutiP24 = freezed,
    Object? picCutiSisaP24 = freezed,
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
    Object? approvalNote = freezed,
    Object? namaPic = freezed,
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
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      datumMCompId: freezed == datumMCompId
          ? _value.datumMCompId
          : datumMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMSpdId: freezed == datumMSpdId
          ? _value.datumMSpdId
          : datumMSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDirId: freezed == datumMDirId
          ? _value.datumMDirId
          : datumMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDivisiId: freezed == datumMDivisiId
          ? _value.datumMDivisiId
          : datumMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDeptId: freezed == datumMDeptId
          ? _value.datumMDeptId
          : datumMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMPosisiId: freezed == datumMPosisiId
          ? _value.datumMPosisiId
          : datumMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      tglAcaraAwal: freezed == tglAcaraAwal
          ? _value.tglAcaraAwal
          : tglAcaraAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      tglAcaraAkhir: freezed == tglAcaraAkhir
          ? _value.tglAcaraAkhir
          : tglAcaraAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      datumJenisSpdId: freezed == datumJenisSpdId
          ? _value.datumJenisSpdId
          : datumJenisSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMZonaAsalId: freezed == datumMZonaAsalId
          ? _value.datumMZonaAsalId
          : datumMZonaAsalId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMZonaTujuanId: freezed == datumMZonaTujuanId
          ? _value.datumMZonaTujuanId
          : datumMZonaTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMLokasiTujuanId: freezed == datumMLokasiTujuanId
          ? _value.datumMLokasiTujuanId
          : datumMLokasiTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMKaryId: freezed == datumMKaryId
          ? _value.datumMKaryId
          : datumMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumPicId: freezed == datumPicId
          ? _value.datumPicId
          : datumPicId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBiaya: freezed == totalBiaya
          ? _value.totalBiaya
          : totalBiaya // ignore: cast_nullable_to_non_nullable
              as int?,
      kegiatan: freezed == kegiatan
          ? _value.kegiatan
          : kegiatan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      datumCreatorId: freezed == datumCreatorId
          ? _value.datumCreatorId
          : datumCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      isKendDinas: freezed == isKendDinas
          ? _value.isKendDinas
          : isKendDinas // ignore: cast_nullable_to_non_nullable
              as bool?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      catatanKend: freezed == catatanKend
          ? _value.catatanKend
          : catatanKend // ignore: cast_nullable_to_non_nullable
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
      mSpdId: freezed == mSpdId
          ? _value.mSpdId
          : mSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMCompId: freezed == mSpdMCompId
          ? _value.mSpdMCompId
          : mSpdMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMDirId: freezed == mSpdMDirId
          ? _value.mSpdMDirId
          : mSpdMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdKode: freezed == mSpdKode
          ? _value.mSpdKode
          : mSpdKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mSpdMDivisiId: freezed == mSpdMDivisiId
          ? _value.mSpdMDivisiId
          : mSpdMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMPosisiId: freezed == mSpdMPosisiId
          ? _value.mSpdMPosisiId
          : mSpdMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMDeptId: freezed == mSpdMDeptId
          ? _value.mSpdMDeptId
          : mSpdMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMZonaId: freezed == mSpdMZonaId
          ? _value.mSpdMZonaId
          : mSpdMZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdGradingId: freezed == mSpdGradingId
          ? _value.mSpdGradingId
          : mSpdGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mSpdGrading: freezed == mSpdGrading
          ? _value.mSpdGrading
          : mSpdGrading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mSpdDesc: freezed == mSpdDesc
          ? _value.mSpdDesc
          : mSpdDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mSpdIsActive: freezed == mSpdIsActive
          ? _value.mSpdIsActive
          : mSpdIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mSpdCreatorId: freezed == mSpdCreatorId
          ? _value.mSpdCreatorId
          : mSpdCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mSpdLastEditorId: freezed == mSpdLastEditorId
          ? _value.mSpdLastEditorId
          : mSpdLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mSpdCreatedAt: freezed == mSpdCreatedAt
          ? _value.mSpdCreatedAt
          : mSpdCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mSpdUpdatedAt: freezed == mSpdUpdatedAt
          ? _value.mSpdUpdatedAt
          : mSpdUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      mDivisiIsActive: freezed == mDivisiIsActive
          ? _value.mDivisiIsActive
          : mDivisiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mDivisiCreatorId: freezed == mDivisiCreatorId
          ? _value.mDivisiCreatorId
          : mDivisiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDivisiLastEditorId: freezed == mDivisiLastEditorId
          ? _value.mDivisiLastEditorId
          : mDivisiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDivisiCreatedAt: freezed == mDivisiCreatedAt
          ? _value.mDivisiCreatedAt
          : mDivisiCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDivisiUpdatedAt: freezed == mDivisiUpdatedAt
          ? _value.mDivisiUpdatedAt
          : mDivisiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
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
              as dynamic,
      mDeptUpdatedAt: freezed == mDeptUpdatedAt
          ? _value.mDeptUpdatedAt
          : mDeptUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      jenisSpdId: freezed == jenisSpdId
          ? _value.jenisSpdId
          : jenisSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSpdMCompId: freezed == jenisSpdMCompId
          ? _value.jenisSpdMCompId
          : jenisSpdMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSpdMDirId: freezed == jenisSpdMDirId
          ? _value.jenisSpdMDirId
          : jenisSpdMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdGroup: freezed == jenisSpdGroup
          ? _value.jenisSpdGroup
          : jenisSpdGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisSpdKey: freezed == jenisSpdKey
          ? _value.jenisSpdKey
          : jenisSpdKey // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisSpdCode: freezed == jenisSpdCode
          ? _value.jenisSpdCode
          : jenisSpdCode // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisSpdValue: freezed == jenisSpdValue
          ? _value.jenisSpdValue
          : jenisSpdValue // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisSpdIsActive: freezed == jenisSpdIsActive
          ? _value.jenisSpdIsActive
          : jenisSpdIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      jenisSpdCreatorId: freezed == jenisSpdCreatorId
          ? _value.jenisSpdCreatorId
          : jenisSpdCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdLastEditorId: freezed == jenisSpdLastEditorId
          ? _value.jenisSpdLastEditorId
          : jenisSpdLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdCreatedAt: freezed == jenisSpdCreatedAt
          ? _value.jenisSpdCreatedAt
          : jenisSpdCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdUpdatedAt: freezed == jenisSpdUpdatedAt
          ? _value.jenisSpdUpdatedAt
          : jenisSpdUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdValue2: freezed == jenisSpdValue2
          ? _value.jenisSpdValue2
          : jenisSpdValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdValue3: freezed == jenisSpdValue3
          ? _value.jenisSpdValue3
          : jenisSpdValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaAsalId: freezed == mZonaAsalId
          ? _value.mZonaAsalId
          : mZonaAsalId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaAsalMCompId: freezed == mZonaAsalMCompId
          ? _value.mZonaAsalMCompId
          : mZonaAsalMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaAsalMDirId: freezed == mZonaAsalMDirId
          ? _value.mZonaAsalMDirId
          : mZonaAsalMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaAsalKode: freezed == mZonaAsalKode
          ? _value.mZonaAsalKode
          : mZonaAsalKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalNama: freezed == mZonaAsalNama
          ? _value.mZonaAsalNama
          : mZonaAsalNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalDesc: freezed == mZonaAsalDesc
          ? _value.mZonaAsalDesc
          : mZonaAsalDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalIsActive: freezed == mZonaAsalIsActive
          ? _value.mZonaAsalIsActive
          : mZonaAsalIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mZonaAsalCreatorId: freezed == mZonaAsalCreatorId
          ? _value.mZonaAsalCreatorId
          : mZonaAsalCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaAsalLastEditorId: freezed == mZonaAsalLastEditorId
          ? _value.mZonaAsalLastEditorId
          : mZonaAsalLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaAsalCreatedAt: freezed == mZonaAsalCreatedAt
          ? _value.mZonaAsalCreatedAt
          : mZonaAsalCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalUpdatedAt: freezed == mZonaAsalUpdatedAt
          ? _value.mZonaAsalUpdatedAt
          : mZonaAsalUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanId: freezed == mZonaTujuanId
          ? _value.mZonaTujuanId
          : mZonaTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaTujuanMCompId: freezed == mZonaTujuanMCompId
          ? _value.mZonaTujuanMCompId
          : mZonaTujuanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaTujuanMDirId: freezed == mZonaTujuanMDirId
          ? _value.mZonaTujuanMDirId
          : mZonaTujuanMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaTujuanKode: freezed == mZonaTujuanKode
          ? _value.mZonaTujuanKode
          : mZonaTujuanKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanNama: freezed == mZonaTujuanNama
          ? _value.mZonaTujuanNama
          : mZonaTujuanNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanDesc: freezed == mZonaTujuanDesc
          ? _value.mZonaTujuanDesc
          : mZonaTujuanDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanIsActive: freezed == mZonaTujuanIsActive
          ? _value.mZonaTujuanIsActive
          : mZonaTujuanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mZonaTujuanCreatorId: freezed == mZonaTujuanCreatorId
          ? _value.mZonaTujuanCreatorId
          : mZonaTujuanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaTujuanLastEditorId: freezed == mZonaTujuanLastEditorId
          ? _value.mZonaTujuanLastEditorId
          : mZonaTujuanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaTujuanCreatedAt: freezed == mZonaTujuanCreatedAt
          ? _value.mZonaTujuanCreatedAt
          : mZonaTujuanCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanUpdatedAt: freezed == mZonaTujuanUpdatedAt
          ? _value.mZonaTujuanUpdatedAt
          : mZonaTujuanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanId: freezed == mLokasiTujuanId
          ? _value.mLokasiTujuanId
          : mLokasiTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mLokasiTujuanMCompId: freezed == mLokasiTujuanMCompId
          ? _value.mLokasiTujuanMCompId
          : mLokasiTujuanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mLokasiTujuanMDirId: freezed == mLokasiTujuanMDirId
          ? _value.mLokasiTujuanMDirId
          : mLokasiTujuanMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mLokasiTujuanKode: freezed == mLokasiTujuanKode
          ? _value.mLokasiTujuanKode
          : mLokasiTujuanKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanNama: freezed == mLokasiTujuanNama
          ? _value.mLokasiTujuanNama
          : mLokasiTujuanNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanDesc: freezed == mLokasiTujuanDesc
          ? _value.mLokasiTujuanDesc
          : mLokasiTujuanDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanIsActive: freezed == mLokasiTujuanIsActive
          ? _value.mLokasiTujuanIsActive
          : mLokasiTujuanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mLokasiTujuanCreatorId: freezed == mLokasiTujuanCreatorId
          ? _value.mLokasiTujuanCreatorId
          : mLokasiTujuanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mLokasiTujuanLastEditorId: freezed == mLokasiTujuanLastEditorId
          ? _value.mLokasiTujuanLastEditorId
          : mLokasiTujuanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mLokasiTujuanCreatedAt: freezed == mLokasiTujuanCreatedAt
          ? _value.mLokasiTujuanCreatedAt
          : mLokasiTujuanCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanUpdatedAt: freezed == mLokasiTujuanUpdatedAt
          ? _value.mLokasiTujuanUpdatedAt
          : mLokasiTujuanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMCompId: freezed == mKaryMCompId
          ? _value.mKaryMCompId
          : mKaryMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMDirId: freezed == mKaryMDirId
          ? _value.mKaryMDirId
          : mKaryMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMDivisiId: freezed == mKaryMDivisiId
          ? _value.mKaryMDivisiId
          : mKaryMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMDeptId: freezed == mKaryMDeptId
          ? _value.mKaryMDeptId
          : mKaryMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMZonaId: freezed == mKaryMZonaId
          ? _value.mKaryMZonaId
          : mKaryMZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryGradingId: freezed == mKaryGradingId
          ? _value.mKaryGradingId
          : mKaryGradingId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCostcontreId: freezed == mKaryCostcontreId
          ? _value.mKaryCostcontreId
          : mKaryCostcontreId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKode: freezed == mKaryKode
          ? _value.mKaryKode
          : mKaryKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryMPosisiId: freezed == mKaryMPosisiId
          ? _value.mKaryMPosisiId
          : mKaryMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMJamKerjaId: freezed == mKaryMJamKerjaId
          ? _value.mKaryMJamKerjaId
          : mKaryMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKodePresensi: freezed == mKaryKodePresensi
          ? _value.mKaryKodePresensi
          : mKaryKodePresensi // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNik: freezed == mKaryNik
          ? _value.mKaryNik
          : mKaryNik // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaDepan: freezed == mKaryNamaDepan
          ? _value.mKaryNamaDepan
          : mKaryNamaDepan // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaBelakang: freezed == mKaryNamaBelakang
          ? _value.mKaryNamaBelakang
          : mKaryNamaBelakang // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaLengkap: freezed == mKaryNamaLengkap
          ? _value.mKaryNamaLengkap
          : mKaryNamaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaPanggilan: freezed == mKaryNamaPanggilan
          ? _value.mKaryNamaPanggilan
          : mKaryNamaPanggilan // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryJkId: freezed == mKaryJkId
          ? _value.mKaryJkId
          : mKaryJkId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryTempatLahir: freezed == mKaryTempatLahir
          ? _value.mKaryTempatLahir
          : mKaryTempatLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryTglLahir: freezed == mKaryTglLahir
          ? _value.mKaryTglLahir
          : mKaryTglLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryProvinsiId: freezed == mKaryProvinsiId
          ? _value.mKaryProvinsiId
          : mKaryProvinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKotaId: freezed == mKaryKotaId
          ? _value.mKaryKotaId
          : mKaryKotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKecamatanId: freezed == mKaryKecamatanId
          ? _value.mKaryKecamatanId
          : mKaryKecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKodePos: freezed == mKaryKodePos
          ? _value.mKaryKodePos
          : mKaryKodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryAlamatAsli: freezed == mKaryAlamatAsli
          ? _value.mKaryAlamatAsli
          : mKaryAlamatAsli // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryAlamatDomisili: freezed == mKaryAlamatDomisili
          ? _value.mKaryAlamatDomisili
          : mKaryAlamatDomisili // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNoTlp: freezed == mKaryNoTlp
          ? _value.mKaryNoTlp
          : mKaryNoTlp // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNoTlpLainnya: freezed == mKaryNoTlpLainnya
          ? _value.mKaryNoTlpLainnya
          : mKaryNoTlpLainnya // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNoDarurat: freezed == mKaryNoDarurat
          ? _value.mKaryNoDarurat
          : mKaryNoDarurat // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaKontakDarurat: freezed == mKaryNamaKontakDarurat
          ? _value.mKaryNamaKontakDarurat
          : mKaryNamaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryAgamaId: freezed == mKaryAgamaId
          ? _value.mKaryAgamaId
          : mKaryAgamaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryGolDarahId: freezed == mKaryGolDarahId
          ? _value.mKaryGolDarahId
          : mKaryGolDarahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryStatusNikahId: freezed == mKaryStatusNikahId
          ? _value.mKaryStatusNikahId
          : mKaryStatusNikahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryTanggunganId: freezed == mKaryTanggunganId
          ? _value.mKaryTanggunganId
          : mKaryTanggunganId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryHubDgnKaryawan: freezed == mKaryHubDgnKaryawan
          ? _value.mKaryHubDgnKaryawan
          : mKaryHubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryCutiJatahReguler: freezed == mKaryCutiJatahReguler
          ? _value.mKaryCutiJatahReguler
          : mKaryCutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCutiSisaReguler: freezed == mKaryCutiSisaReguler
          ? _value.mKaryCutiSisaReguler
          : mKaryCutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCutiPanjang: freezed == mKaryCutiPanjang
          ? _value.mKaryCutiPanjang
          : mKaryCutiPanjang // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCutiSisaPanjang: freezed == mKaryCutiSisaPanjang
          ? _value.mKaryCutiSisaPanjang
          : mKaryCutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryStatusKaryId: freezed == mKaryStatusKaryId
          ? _value.mKaryStatusKaryId
          : mKaryStatusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryLamaKontrakAwal: freezed == mKaryLamaKontrakAwal
          ? _value.mKaryLamaKontrakAwal
          : mKaryLamaKontrakAwal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryLamaKontrakAkhir: freezed == mKaryLamaKontrakAkhir
          ? _value.mKaryLamaKontrakAkhir
          : mKaryLamaKontrakAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryTglMasuk: freezed == mKaryTglMasuk
          ? _value.mKaryTglMasuk
          : mKaryTglMasuk // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryTglBerhenti: freezed == mKaryTglBerhenti
          ? _value.mKaryTglBerhenti
          : mKaryTglBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryAlasanBerhenti: freezed == mKaryAlasanBerhenti
          ? _value.mKaryAlasanBerhenti
          : mKaryAlasanBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryUkBaju: freezed == mKaryUkBaju
          ? _value.mKaryUkBaju
          : mKaryUkBaju // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryUkCelana: freezed == mKaryUkCelana
          ? _value.mKaryUkCelana
          : mKaryUkCelana // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryUkSepatu: freezed == mKaryUkSepatu
          ? _value.mKaryUkSepatu
          : mKaryUkSepatu // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryDesc: freezed == mKaryDesc
          ? _value.mKaryDesc
          : mKaryDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryIsActive: freezed == mKaryIsActive
          ? _value.mKaryIsActive
          : mKaryIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mKaryCreatorId: freezed == mKaryCreatorId
          ? _value.mKaryCreatorId
          : mKaryCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryLastEditorId: freezed == mKaryLastEditorId
          ? _value.mKaryLastEditorId
          : mKaryLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCreatedAt: freezed == mKaryCreatedAt
          ? _value.mKaryCreatedAt
          : mKaryCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryUpdatedAt: freezed == mKaryUpdatedAt
          ? _value.mKaryUpdatedAt
          : mKaryUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryMStandartGajiId: freezed == mKaryMStandartGajiId
          ? _value.mKaryMStandartGajiId
          : mKaryMStandartGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryPeriodeGajiId: freezed == mKaryPeriodeGajiId
          ? _value.mKaryPeriodeGajiId
          : mKaryPeriodeGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryRefId: freezed == mKaryRefId
          ? _value.mKaryRefId
          : mKaryRefId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryPresensiLokasiDefaultId: freezed == mKaryPresensiLokasiDefaultId
          ? _value.mKaryPresensiLokasiDefaultId
          : mKaryPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryExpDateCuti: freezed == mKaryExpDateCuti
          ? _value.mKaryExpDateCuti
          : mKaryExpDateCuti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryLimitPotong: freezed == mKaryLimitPotong
          ? _value.mKaryLimitPotong
          : mKaryLimitPotong // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryAtasanId: freezed == mKaryAtasanId
          ? _value.mKaryAtasanId
          : mKaryAtasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCutiP24: freezed == mKaryCutiP24
          ? _value.mKaryCutiP24
          : mKaryCutiP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiSisaP24: freezed == mKaryCutiSisaP24
          ? _value.mKaryCutiSisaP24
          : mKaryCutiSisaP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picId: freezed == picId
          ? _value.picId
          : picId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMCompId: freezed == picMCompId
          ? _value.picMCompId
          : picMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMDirId: freezed == picMDirId
          ? _value.picMDirId
          : picMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMDivisiId: freezed == picMDivisiId
          ? _value.picMDivisiId
          : picMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMDeptId: freezed == picMDeptId
          ? _value.picMDeptId
          : picMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMZonaId: freezed == picMZonaId
          ? _value.picMZonaId
          : picMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picGradingId: freezed == picGradingId
          ? _value.picGradingId
          : picGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCostcontreId: freezed == picCostcontreId
          ? _value.picCostcontreId
          : picCostcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKode: freezed == picKode
          ? _value.picKode
          : picKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMPosisiId: freezed == picMPosisiId
          ? _value.picMPosisiId
          : picMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMJamKerjaId: freezed == picMJamKerjaId
          ? _value.picMJamKerjaId
          : picMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKodePresensi: freezed == picKodePresensi
          ? _value.picKodePresensi
          : picKodePresensi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNik: freezed == picNik
          ? _value.picNik
          : picNik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaDepan: freezed == picNamaDepan
          ? _value.picNamaDepan
          : picNamaDepan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaBelakang: freezed == picNamaBelakang
          ? _value.picNamaBelakang
          : picNamaBelakang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaLengkap: freezed == picNamaLengkap
          ? _value.picNamaLengkap
          : picNamaLengkap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaPanggilan: freezed == picNamaPanggilan
          ? _value.picNamaPanggilan
          : picNamaPanggilan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picJkId: freezed == picJkId
          ? _value.picJkId
          : picJkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTempatLahir: freezed == picTempatLahir
          ? _value.picTempatLahir
          : picTempatLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTglLahir: freezed == picTglLahir
          ? _value.picTglLahir
          : picTglLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picProvinsiId: freezed == picProvinsiId
          ? _value.picProvinsiId
          : picProvinsiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKotaId: freezed == picKotaId
          ? _value.picKotaId
          : picKotaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKecamatanId: freezed == picKecamatanId
          ? _value.picKecamatanId
          : picKecamatanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKodePos: freezed == picKodePos
          ? _value.picKodePos
          : picKodePos // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAlamatAsli: freezed == picAlamatAsli
          ? _value.picAlamatAsli
          : picAlamatAsli // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAlamatDomisili: freezed == picAlamatDomisili
          ? _value.picAlamatDomisili
          : picAlamatDomisili // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNoTlp: freezed == picNoTlp
          ? _value.picNoTlp
          : picNoTlp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNoTlpLainnya: freezed == picNoTlpLainnya
          ? _value.picNoTlpLainnya
          : picNoTlpLainnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNoDarurat: freezed == picNoDarurat
          ? _value.picNoDarurat
          : picNoDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaKontakDarurat: freezed == picNamaKontakDarurat
          ? _value.picNamaKontakDarurat
          : picNamaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAgamaId: freezed == picAgamaId
          ? _value.picAgamaId
          : picAgamaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picGolDarahId: freezed == picGolDarahId
          ? _value.picGolDarahId
          : picGolDarahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picStatusNikahId: freezed == picStatusNikahId
          ? _value.picStatusNikahId
          : picStatusNikahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTanggunganId: freezed == picTanggunganId
          ? _value.picTanggunganId
          : picTanggunganId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picHubDgnKaryawan: freezed == picHubDgnKaryawan
          ? _value.picHubDgnKaryawan
          : picHubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiJatahReguler: freezed == picCutiJatahReguler
          ? _value.picCutiJatahReguler
          : picCutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiSisaReguler: freezed == picCutiSisaReguler
          ? _value.picCutiSisaReguler
          : picCutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiPanjang: freezed == picCutiPanjang
          ? _value.picCutiPanjang
          : picCutiPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiSisaPanjang: freezed == picCutiSisaPanjang
          ? _value.picCutiSisaPanjang
          : picCutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picStatusKaryId: freezed == picStatusKaryId
          ? _value.picStatusKaryId
          : picStatusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picLamaKontrakAwal: freezed == picLamaKontrakAwal
          ? _value.picLamaKontrakAwal
          : picLamaKontrakAwal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picLamaKontrakAkhir: freezed == picLamaKontrakAkhir
          ? _value.picLamaKontrakAkhir
          : picLamaKontrakAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTglMasuk: freezed == picTglMasuk
          ? _value.picTglMasuk
          : picTglMasuk // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTglBerhenti: freezed == picTglBerhenti
          ? _value.picTglBerhenti
          : picTglBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAlasanBerhenti: freezed == picAlasanBerhenti
          ? _value.picAlasanBerhenti
          : picAlasanBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picUkBaju: freezed == picUkBaju
          ? _value.picUkBaju
          : picUkBaju // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picUkCelana: freezed == picUkCelana
          ? _value.picUkCelana
          : picUkCelana // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picUkSepatu: freezed == picUkSepatu
          ? _value.picUkSepatu
          : picUkSepatu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picDesc: freezed == picDesc
          ? _value.picDesc
          : picDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picIsActive: freezed == picIsActive
          ? _value.picIsActive
          : picIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCreatorId: freezed == picCreatorId
          ? _value.picCreatorId
          : picCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picLastEditorId: freezed == picLastEditorId
          ? _value.picLastEditorId
          : picLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCreatedAt: freezed == picCreatedAt
          ? _value.picCreatedAt
          : picCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picUpdatedAt: freezed == picUpdatedAt
          ? _value.picUpdatedAt
          : picUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMStandartGajiId: freezed == picMStandartGajiId
          ? _value.picMStandartGajiId
          : picMStandartGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picPeriodeGajiId: freezed == picPeriodeGajiId
          ? _value.picPeriodeGajiId
          : picPeriodeGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picRefId: freezed == picRefId
          ? _value.picRefId
          : picRefId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picPresensiLokasiDefaultId: freezed == picPresensiLokasiDefaultId
          ? _value.picPresensiLokasiDefaultId
          : picPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picExpDateCuti: freezed == picExpDateCuti
          ? _value.picExpDateCuti
          : picExpDateCuti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picLimitPotong: freezed == picLimitPotong
          ? _value.picLimitPotong
          : picLimitPotong // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAtasanId: freezed == picAtasanId
          ? _value.picAtasanId
          : picAtasanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiP24: freezed == picCutiP24
          ? _value.picCutiP24
          : picCutiP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiSisaP24: freezed == picCutiSisaP24
          ? _value.picCutiSisaP24
          : picCutiSisaP24 // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
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
              as int?,
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
      approvalNote: freezed == approvalNote
          ? _value.approvalNote
          : approvalNote // ignore: cast_nullable_to_non_nullable
              as String?,
      namaPic: freezed == namaPic
          ? _value.namaPic
          : namaPic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDinasImplCopyWith<$Res>
    implements $DataDinasCopyWith<$Res> {
  factory _$$DataDinasImplCopyWith(
          _$DataDinasImpl value, $Res Function(_$DataDinasImpl) then) =
      __$$DataDinasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "m_comp_id") int? datumMCompId,
      @JsonKey(name: "m_spd_id") int? datumMSpdId,
      @JsonKey(name: "m_dir_id") int? datumMDirId,
      @JsonKey(name: "m_divisi_id") int? datumMDivisiId,
      @JsonKey(name: "m_dept_id") int? datumMDeptId,
      @JsonKey(name: "m_posisi_id") int? datumMPosisiId,
      @JsonKey(name: "tanggal") String? tanggal,
      @JsonKey(name: "tgl_acara_awal") String? tglAcaraAwal,
      @JsonKey(name: "tgl_acara_akhir") String? tglAcaraAkhir,
      @JsonKey(name: "jenis_spd_id") int? datumJenisSpdId,
      @JsonKey(name: "m_zona_asal_id") int? datumMZonaAsalId,
      @JsonKey(name: "m_zona_tujuan_id") int? datumMZonaTujuanId,
      @JsonKey(name: "m_lokasi_tujuan_id") int? datumMLokasiTujuanId,
      @JsonKey(name: "m_kary_id") int? datumMKaryId,
      @JsonKey(name: "pic_id") int? datumPicId,
      @JsonKey(name: "total_biaya") int? totalBiaya,
      @JsonKey(name: "kegiatan") dynamic kegiatan,
      @JsonKey(name: "keterangan") dynamic keterangan,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "creator_id") int? datumCreatorId,
      @JsonKey(name: "last_editor_id") dynamic datumLastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "is_kend_dinas") bool? isKendDinas,
      @JsonKey(name: "interval") int? interval,
      @JsonKey(name: "catatan_kend") String? catatanKend,
      @JsonKey(name: "m_comp.id") int? mCompId,
      @JsonKey(name: "m_comp.nama") String? mCompNama,
      @JsonKey(name: "m_comp.is_active") bool? mCompIsActive,
      @JsonKey(name: "m_comp.desc") dynamic mCompDesc,
      @JsonKey(name: "m_comp.creator_id") dynamic mCompCreatorId,
      @JsonKey(name: "m_comp.last_editor_id") dynamic mCompLastEditorId,
      @JsonKey(name: "m_comp.created_at") dynamic mCompCreatedAt,
      @JsonKey(name: "m_comp.updated_at") dynamic mCompUpdatedAt,
      @JsonKey(name: "m_spd.id") int? mSpdId,
      @JsonKey(name: "m_spd.m_comp_id") int? mSpdMCompId,
      @JsonKey(name: "m_spd.m_dir_id") int? mSpdMDirId,
      @JsonKey(name: "m_spd.kode") String? mSpdKode,
      @JsonKey(name: "m_spd.m_divisi_id") int? mSpdMDivisiId,
      @JsonKey(name: "m_spd.m_posisi_id") int? mSpdMPosisiId,
      @JsonKey(name: "m_spd.m_dept_id") int? mSpdMDeptId,
      @JsonKey(name: "m_spd.m_zona_id") int? mSpdMZonaId,
      @JsonKey(name: "m_spd.grading_id") dynamic mSpdGradingId,
      @JsonKey(name: "m_spd.grading") dynamic mSpdGrading,
      @JsonKey(name: "m_spd.desc") String? mSpdDesc,
      @JsonKey(name: "m_spd.is_active") bool? mSpdIsActive,
      @JsonKey(name: "m_spd.creator_id") dynamic mSpdCreatorId,
      @JsonKey(name: "m_spd.last_editor_id") dynamic mSpdLastEditorId,
      @JsonKey(name: "m_spd.created_at") String? mSpdCreatedAt,
      @JsonKey(name: "m_spd.updated_at") String? mSpdUpdatedAt,
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
      @JsonKey(name: "m_divisi.desc") dynamic mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") bool? mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") dynamic mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id") dynamic mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") dynamic mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") dynamic mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") int? mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") int? mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") int? mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") String? mDeptNama,
      @JsonKey(name: "m_dept.desc") dynamic mDeptDesc,
      @JsonKey(name: "m_dept.is_active") bool? mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") dynamic mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") dynamic mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") dynamic mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") dynamic mDeptUpdatedAt,
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
      @JsonKey(name: "jenis_spd.id") int? jenisSpdId,
      @JsonKey(name: "jenis_spd.m_comp_id") int? jenisSpdMCompId,
      @JsonKey(name: "jenis_spd.m_dir_id") dynamic jenisSpdMDirId,
      @JsonKey(name: "jenis_spd.group") String? jenisSpdGroup,
      @JsonKey(name: "jenis_spd.key") String? jenisSpdKey,
      @JsonKey(name: "jenis_spd.code") String? jenisSpdCode,
      @JsonKey(name: "jenis_spd.value") String? jenisSpdValue,
      @JsonKey(name: "jenis_spd.is_active") bool? jenisSpdIsActive,
      @JsonKey(name: "jenis_spd.creator_id") dynamic jenisSpdCreatorId,
      @JsonKey(name: "jenis_spd.last_editor_id") dynamic jenisSpdLastEditorId,
      @JsonKey(name: "jenis_spd.created_at") dynamic jenisSpdCreatedAt,
      @JsonKey(name: "jenis_spd.updated_at") dynamic jenisSpdUpdatedAt,
      @JsonKey(name: "jenis_spd.value_2") dynamic jenisSpdValue2,
      @JsonKey(name: "jenis_spd.value_3") dynamic jenisSpdValue3,
      @JsonKey(name: "m_zona_asal.id") int? mZonaAsalId,
      @JsonKey(name: "m_zona_asal.m_comp_id") int? mZonaAsalMCompId,
      @JsonKey(name: "m_zona_asal.m_dir_id") int? mZonaAsalMDirId,
      @JsonKey(name: "m_zona_asal.kode") String? mZonaAsalKode,
      @JsonKey(name: "m_zona_asal.nama") String? mZonaAsalNama,
      @JsonKey(name: "m_zona_asal.desc") String? mZonaAsalDesc,
      @JsonKey(name: "m_zona_asal.is_active") bool? mZonaAsalIsActive,
      @JsonKey(name: "m_zona_asal.creator_id") dynamic mZonaAsalCreatorId,
      @JsonKey(name: "m_zona_asal.last_editor_id")
      dynamic mZonaAsalLastEditorId,
      @JsonKey(name: "m_zona_asal.created_at") String? mZonaAsalCreatedAt,
      @JsonKey(name: "m_zona_asal.updated_at") String? mZonaAsalUpdatedAt,
      @JsonKey(name: "m_zona_tujuan.id") int? mZonaTujuanId,
      @JsonKey(name: "m_zona_tujuan.m_comp_id") int? mZonaTujuanMCompId,
      @JsonKey(name: "m_zona_tujuan.m_dir_id") int? mZonaTujuanMDirId,
      @JsonKey(name: "m_zona_tujuan.kode") String? mZonaTujuanKode,
      @JsonKey(name: "m_zona_tujuan.nama") String? mZonaTujuanNama,
      @JsonKey(name: "m_zona_tujuan.desc") String? mZonaTujuanDesc,
      @JsonKey(name: "m_zona_tujuan.is_active") bool? mZonaTujuanIsActive,
      @JsonKey(name: "m_zona_tujuan.creator_id") dynamic mZonaTujuanCreatorId,
      @JsonKey(name: "m_zona_tujuan.last_editor_id")
      dynamic mZonaTujuanLastEditorId,
      @JsonKey(name: "m_zona_tujuan.created_at") String? mZonaTujuanCreatedAt,
      @JsonKey(name: "m_zona_tujuan.updated_at") String? mZonaTujuanUpdatedAt,
      @JsonKey(name: "m_lokasi_tujuan.id") int? mLokasiTujuanId,
      @JsonKey(name: "m_lokasi_tujuan.m_comp_id") int? mLokasiTujuanMCompId,
      @JsonKey(name: "m_lokasi_tujuan.m_dir_id") int? mLokasiTujuanMDirId,
      @JsonKey(name: "m_lokasi_tujuan.kode") String? mLokasiTujuanKode,
      @JsonKey(name: "m_lokasi_tujuan.nama") String? mLokasiTujuanNama,
      @JsonKey(name: "m_lokasi_tujuan.desc") String? mLokasiTujuanDesc,
      @JsonKey(name: "m_lokasi_tujuan.is_active") bool? mLokasiTujuanIsActive,
      @JsonKey(name: "m_lokasi_tujuan.creator_id")
      dynamic mLokasiTujuanCreatorId,
      @JsonKey(name: "m_lokasi_tujuan.last_editor_id")
      dynamic mLokasiTujuanLastEditorId,
      @JsonKey(name: "m_lokasi_tujuan.created_at")
      String? mLokasiTujuanCreatedAt,
      @JsonKey(name: "m_lokasi_tujuan.updated_at")
      String? mLokasiTujuanUpdatedAt,
      @JsonKey(name: "m_kary.id") int? mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") int? mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") int? mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") int? mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") int? mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") int? mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") int? mKaryGradingId,
      @JsonKey(name: "m_kary.costcontre_id") int? mKaryCostcontreId,
      @JsonKey(name: "m_kary.kode") String? mKaryKode,
      @JsonKey(name: "m_kary.m_posisi_id") int? mKaryMPosisiId,
      @JsonKey(name: "m_kary.m_jam_kerja_id") int? mKaryMJamKerjaId,
      @JsonKey(name: "m_kary.kode_presensi") String? mKaryKodePresensi,
      @JsonKey(name: "m_kary.nik") String? mKaryNik,
      @JsonKey(name: "m_kary.nama_depan") String? mKaryNamaDepan,
      @JsonKey(name: "m_kary.nama_belakang") String? mKaryNamaBelakang,
      @JsonKey(name: "m_kary.nama_lengkap") String? mKaryNamaLengkap,
      @JsonKey(name: "m_kary.nama_panggilan") String? mKaryNamaPanggilan,
      @JsonKey(name: "m_kary.jk_id") int? mKaryJkId,
      @JsonKey(name: "m_kary.tempat_lahir") String? mKaryTempatLahir,
      @JsonKey(name: "m_kary.tgl_lahir") String? mKaryTglLahir,
      @JsonKey(name: "m_kary.provinsi_id") int? mKaryProvinsiId,
      @JsonKey(name: "m_kary.kota_id") int? mKaryKotaId,
      @JsonKey(name: "m_kary.kecamatan_id") int? mKaryKecamatanId,
      @JsonKey(name: "m_kary.kode_pos") String? mKaryKodePos,
      @JsonKey(name: "m_kary.alamat_asli") String? mKaryAlamatAsli,
      @JsonKey(name: "m_kary.alamat_domisili") String? mKaryAlamatDomisili,
      @JsonKey(name: "m_kary.no_tlp") String? mKaryNoTlp,
      @JsonKey(name: "m_kary.no_tlp_lainnya") String? mKaryNoTlpLainnya,
      @JsonKey(name: "m_kary.no_darurat") String? mKaryNoDarurat,
      @JsonKey(name: "m_kary.nama_kontak_darurat")
      String? mKaryNamaKontakDarurat,
      @JsonKey(name: "m_kary.agama_id") int? mKaryAgamaId,
      @JsonKey(name: "m_kary.gol_darah_id") int? mKaryGolDarahId,
      @JsonKey(name: "m_kary.status_nikah_id") int? mKaryStatusNikahId,
      @JsonKey(name: "m_kary.tanggungan_id") int? mKaryTanggunganId,
      @JsonKey(name: "m_kary.hub_dgn_karyawan") String? mKaryHubDgnKaryawan,
      @JsonKey(name: "m_kary.cuti_jatah_reguler") int? mKaryCutiJatahReguler,
      @JsonKey(name: "m_kary.cuti_sisa_reguler") int? mKaryCutiSisaReguler,
      @JsonKey(name: "m_kary.cuti_panjang") int? mKaryCutiPanjang,
      @JsonKey(name: "m_kary.cuti_sisa_panjang") int? mKaryCutiSisaPanjang,
      @JsonKey(name: "m_kary.status_kary_id") dynamic mKaryStatusKaryId,
      @JsonKey(name: "m_kary.lama_kontrak_awal") dynamic mKaryLamaKontrakAwal,
      @JsonKey(name: "m_kary.lama_kontrak_akhir") dynamic mKaryLamaKontrakAkhir,
      @JsonKey(name: "m_kary.tgl_masuk") dynamic mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") dynamic mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti") dynamic mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") String? mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") String? mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") String? mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") dynamic mKaryDesc,
      @JsonKey(name: "m_kary.is_active") bool? mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") dynamic mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") dynamic mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") String? mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") String? mKaryUpdatedAt,
      @JsonKey(name: "m_kary.m_standart_gaji_id") int? mKaryMStandartGajiId,
      @JsonKey(name: "m_kary.periode_gaji_id") int? mKaryPeriodeGajiId,
      @JsonKey(name: "m_kary.ref_id") int? mKaryRefId,
      @JsonKey(name: "m_kary.presensi_lokasi_default_id")
      dynamic mKaryPresensiLokasiDefaultId,
      @JsonKey(name: "m_kary.exp_date_cuti") dynamic mKaryExpDateCuti,
      @JsonKey(name: "m_kary.limit_potong") int? mKaryLimitPotong,
      @JsonKey(name: "m_kary.atasan_id") int? mKaryAtasanId,
      @JsonKey(name: "m_kary.cuti_p24") dynamic mKaryCutiP24,
      @JsonKey(name: "m_kary.cuti_sisa_p24") dynamic mKaryCutiSisaP24,
      @JsonKey(name: "pic.id") dynamic picId,
      @JsonKey(name: "pic.m_comp_id") dynamic picMCompId,
      @JsonKey(name: "pic.m_dir_id") dynamic picMDirId,
      @JsonKey(name: "pic.m_divisi_id") dynamic picMDivisiId,
      @JsonKey(name: "pic.m_dept_id") dynamic picMDeptId,
      @JsonKey(name: "pic.m_zona_id") dynamic picMZonaId,
      @JsonKey(name: "pic.grading_id") dynamic picGradingId,
      @JsonKey(name: "pic.costcontre_id") dynamic picCostcontreId,
      @JsonKey(name: "pic.kode") dynamic picKode,
      @JsonKey(name: "pic.m_posisi_id") dynamic picMPosisiId,
      @JsonKey(name: "pic.m_jam_kerja_id") dynamic picMJamKerjaId,
      @JsonKey(name: "pic.kode_presensi") dynamic picKodePresensi,
      @JsonKey(name: "pic.nik") dynamic picNik,
      @JsonKey(name: "pic.nama_depan") dynamic picNamaDepan,
      @JsonKey(name: "pic.nama_belakang") dynamic picNamaBelakang,
      @JsonKey(name: "pic.nama_lengkap") dynamic picNamaLengkap,
      @JsonKey(name: "pic.nama_panggilan") dynamic picNamaPanggilan,
      @JsonKey(name: "pic.jk_id") dynamic picJkId,
      @JsonKey(name: "pic.tempat_lahir") dynamic picTempatLahir,
      @JsonKey(name: "pic.tgl_lahir") dynamic picTglLahir,
      @JsonKey(name: "pic.provinsi_id") dynamic picProvinsiId,
      @JsonKey(name: "pic.kota_id") dynamic picKotaId,
      @JsonKey(name: "pic.kecamatan_id") dynamic picKecamatanId,
      @JsonKey(name: "pic.kode_pos") dynamic picKodePos,
      @JsonKey(name: "pic.alamat_asli") dynamic picAlamatAsli,
      @JsonKey(name: "pic.alamat_domisili") dynamic picAlamatDomisili,
      @JsonKey(name: "pic.no_tlp") dynamic picNoTlp,
      @JsonKey(name: "pic.no_tlp_lainnya") dynamic picNoTlpLainnya,
      @JsonKey(name: "pic.no_darurat") dynamic picNoDarurat,
      @JsonKey(name: "pic.nama_kontak_darurat") dynamic picNamaKontakDarurat,
      @JsonKey(name: "pic.agama_id") dynamic picAgamaId,
      @JsonKey(name: "pic.gol_darah_id") dynamic picGolDarahId,
      @JsonKey(name: "pic.status_nikah_id") dynamic picStatusNikahId,
      @JsonKey(name: "pic.tanggungan_id") dynamic picTanggunganId,
      @JsonKey(name: "pic.hub_dgn_karyawan") dynamic picHubDgnKaryawan,
      @JsonKey(name: "pic.cuti_jatah_reguler") dynamic picCutiJatahReguler,
      @JsonKey(name: "pic.cuti_sisa_reguler") dynamic picCutiSisaReguler,
      @JsonKey(name: "pic.cuti_panjang") dynamic picCutiPanjang,
      @JsonKey(name: "pic.cuti_sisa_panjang") dynamic picCutiSisaPanjang,
      @JsonKey(name: "pic.status_kary_id") dynamic picStatusKaryId,
      @JsonKey(name: "pic.lama_kontrak_awal") dynamic picLamaKontrakAwal,
      @JsonKey(name: "pic.lama_kontrak_akhir") dynamic picLamaKontrakAkhir,
      @JsonKey(name: "pic.tgl_masuk") dynamic picTglMasuk,
      @JsonKey(name: "pic.tgl_berhenti") dynamic picTglBerhenti,
      @JsonKey(name: "pic.alasan_berhenti") dynamic picAlasanBerhenti,
      @JsonKey(name: "pic.uk_baju") dynamic picUkBaju,
      @JsonKey(name: "pic.uk_celana") dynamic picUkCelana,
      @JsonKey(name: "pic.uk_sepatu") dynamic picUkSepatu,
      @JsonKey(name: "pic.desc") dynamic picDesc,
      @JsonKey(name: "pic.is_active") dynamic picIsActive,
      @JsonKey(name: "pic.creator_id") dynamic picCreatorId,
      @JsonKey(name: "pic.last_editor_id") dynamic picLastEditorId,
      @JsonKey(name: "pic.created_at") dynamic picCreatedAt,
      @JsonKey(name: "pic.updated_at") dynamic picUpdatedAt,
      @JsonKey(name: "pic.m_standart_gaji_id") dynamic picMStandartGajiId,
      @JsonKey(name: "pic.periode_gaji_id") dynamic picPeriodeGajiId,
      @JsonKey(name: "pic.ref_id") dynamic picRefId,
      @JsonKey(name: "pic.presensi_lokasi_default_id")
      dynamic picPresensiLokasiDefaultId,
      @JsonKey(name: "pic.exp_date_cuti") dynamic picExpDateCuti,
      @JsonKey(name: "pic.limit_potong") dynamic picLimitPotong,
      @JsonKey(name: "pic.atasan_id") dynamic picAtasanId,
      @JsonKey(name: "pic.cuti_p24") dynamic picCutiP24,
      @JsonKey(name: "pic.cuti_sisa_p24") dynamic picCutiSisaP24,
      @JsonKey(name: "creator.id") int? creatorId,
      @JsonKey(name: "creator.name") String? creatorName,
      @JsonKey(name: "creator.email") dynamic creatorEmail,
      @JsonKey(name: "creator.username") String? creatorUsername,
      @JsonKey(name: "creator.email_verified_at")
      dynamic creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") String? creatorPassword,
      @JsonKey(name: "creator.m_comp_id") int? creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") int? creatorMDirId,
      @JsonKey(name: "creator.is_active") bool? creatorIsActive,
      @JsonKey(name: "creator.creator_id") int? creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id") dynamic creatorLastEditorId,
      @JsonKey(name: "creator.remember_token") dynamic creatorRememberToken,
      @JsonKey(name: "creator.created_at") String? creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") String? creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") String? creatorProfilImage,
      @JsonKey(name: "creator.telp") dynamic creatorTelp,
      @JsonKey(name: "creator.m_kary_id") int? creatorMKaryId,
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
      @JsonKey(name: "last_editor.m_kary_id") dynamic lastEditorMKaryId,
      @JsonKey(name: "approval_note") String? approvalNote,
      @JsonKey(name: "nama_pic") String? namaPic});
}

/// @nodoc
class __$$DataDinasImplCopyWithImpl<$Res>
    extends _$DataDinasCopyWithImpl<$Res, _$DataDinasImpl>
    implements _$$DataDinasImplCopyWith<$Res> {
  __$$DataDinasImplCopyWithImpl(
      _$DataDinasImpl _value, $Res Function(_$DataDinasImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRead = freezed,
    Object? metaDelete = freezed,
    Object? metaUpdate = freezed,
    Object? metaCreate = freezed,
    Object? id = freezed,
    Object? nomor = freezed,
    Object? datumMCompId = freezed,
    Object? datumMSpdId = freezed,
    Object? datumMDirId = freezed,
    Object? datumMDivisiId = freezed,
    Object? datumMDeptId = freezed,
    Object? datumMPosisiId = freezed,
    Object? tanggal = freezed,
    Object? tglAcaraAwal = freezed,
    Object? tglAcaraAkhir = freezed,
    Object? datumJenisSpdId = freezed,
    Object? datumMZonaAsalId = freezed,
    Object? datumMZonaTujuanId = freezed,
    Object? datumMLokasiTujuanId = freezed,
    Object? datumMKaryId = freezed,
    Object? datumPicId = freezed,
    Object? totalBiaya = freezed,
    Object? kegiatan = freezed,
    Object? keterangan = freezed,
    Object? status = freezed,
    Object? datumCreatorId = freezed,
    Object? datumLastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isKendDinas = freezed,
    Object? interval = freezed,
    Object? catatanKend = freezed,
    Object? mCompId = freezed,
    Object? mCompNama = freezed,
    Object? mCompIsActive = freezed,
    Object? mCompDesc = freezed,
    Object? mCompCreatorId = freezed,
    Object? mCompLastEditorId = freezed,
    Object? mCompCreatedAt = freezed,
    Object? mCompUpdatedAt = freezed,
    Object? mSpdId = freezed,
    Object? mSpdMCompId = freezed,
    Object? mSpdMDirId = freezed,
    Object? mSpdKode = freezed,
    Object? mSpdMDivisiId = freezed,
    Object? mSpdMPosisiId = freezed,
    Object? mSpdMDeptId = freezed,
    Object? mSpdMZonaId = freezed,
    Object? mSpdGradingId = freezed,
    Object? mSpdGrading = freezed,
    Object? mSpdDesc = freezed,
    Object? mSpdIsActive = freezed,
    Object? mSpdCreatorId = freezed,
    Object? mSpdLastEditorId = freezed,
    Object? mSpdCreatedAt = freezed,
    Object? mSpdUpdatedAt = freezed,
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
    Object? jenisSpdId = freezed,
    Object? jenisSpdMCompId = freezed,
    Object? jenisSpdMDirId = freezed,
    Object? jenisSpdGroup = freezed,
    Object? jenisSpdKey = freezed,
    Object? jenisSpdCode = freezed,
    Object? jenisSpdValue = freezed,
    Object? jenisSpdIsActive = freezed,
    Object? jenisSpdCreatorId = freezed,
    Object? jenisSpdLastEditorId = freezed,
    Object? jenisSpdCreatedAt = freezed,
    Object? jenisSpdUpdatedAt = freezed,
    Object? jenisSpdValue2 = freezed,
    Object? jenisSpdValue3 = freezed,
    Object? mZonaAsalId = freezed,
    Object? mZonaAsalMCompId = freezed,
    Object? mZonaAsalMDirId = freezed,
    Object? mZonaAsalKode = freezed,
    Object? mZonaAsalNama = freezed,
    Object? mZonaAsalDesc = freezed,
    Object? mZonaAsalIsActive = freezed,
    Object? mZonaAsalCreatorId = freezed,
    Object? mZonaAsalLastEditorId = freezed,
    Object? mZonaAsalCreatedAt = freezed,
    Object? mZonaAsalUpdatedAt = freezed,
    Object? mZonaTujuanId = freezed,
    Object? mZonaTujuanMCompId = freezed,
    Object? mZonaTujuanMDirId = freezed,
    Object? mZonaTujuanKode = freezed,
    Object? mZonaTujuanNama = freezed,
    Object? mZonaTujuanDesc = freezed,
    Object? mZonaTujuanIsActive = freezed,
    Object? mZonaTujuanCreatorId = freezed,
    Object? mZonaTujuanLastEditorId = freezed,
    Object? mZonaTujuanCreatedAt = freezed,
    Object? mZonaTujuanUpdatedAt = freezed,
    Object? mLokasiTujuanId = freezed,
    Object? mLokasiTujuanMCompId = freezed,
    Object? mLokasiTujuanMDirId = freezed,
    Object? mLokasiTujuanKode = freezed,
    Object? mLokasiTujuanNama = freezed,
    Object? mLokasiTujuanDesc = freezed,
    Object? mLokasiTujuanIsActive = freezed,
    Object? mLokasiTujuanCreatorId = freezed,
    Object? mLokasiTujuanLastEditorId = freezed,
    Object? mLokasiTujuanCreatedAt = freezed,
    Object? mLokasiTujuanUpdatedAt = freezed,
    Object? mKaryId = freezed,
    Object? mKaryMCompId = freezed,
    Object? mKaryMDirId = freezed,
    Object? mKaryMDivisiId = freezed,
    Object? mKaryMDeptId = freezed,
    Object? mKaryMZonaId = freezed,
    Object? mKaryGradingId = freezed,
    Object? mKaryCostcontreId = freezed,
    Object? mKaryKode = freezed,
    Object? mKaryMPosisiId = freezed,
    Object? mKaryMJamKerjaId = freezed,
    Object? mKaryKodePresensi = freezed,
    Object? mKaryNik = freezed,
    Object? mKaryNamaDepan = freezed,
    Object? mKaryNamaBelakang = freezed,
    Object? mKaryNamaLengkap = freezed,
    Object? mKaryNamaPanggilan = freezed,
    Object? mKaryJkId = freezed,
    Object? mKaryTempatLahir = freezed,
    Object? mKaryTglLahir = freezed,
    Object? mKaryProvinsiId = freezed,
    Object? mKaryKotaId = freezed,
    Object? mKaryKecamatanId = freezed,
    Object? mKaryKodePos = freezed,
    Object? mKaryAlamatAsli = freezed,
    Object? mKaryAlamatDomisili = freezed,
    Object? mKaryNoTlp = freezed,
    Object? mKaryNoTlpLainnya = freezed,
    Object? mKaryNoDarurat = freezed,
    Object? mKaryNamaKontakDarurat = freezed,
    Object? mKaryAgamaId = freezed,
    Object? mKaryGolDarahId = freezed,
    Object? mKaryStatusNikahId = freezed,
    Object? mKaryTanggunganId = freezed,
    Object? mKaryHubDgnKaryawan = freezed,
    Object? mKaryCutiJatahReguler = freezed,
    Object? mKaryCutiSisaReguler = freezed,
    Object? mKaryCutiPanjang = freezed,
    Object? mKaryCutiSisaPanjang = freezed,
    Object? mKaryStatusKaryId = freezed,
    Object? mKaryLamaKontrakAwal = freezed,
    Object? mKaryLamaKontrakAkhir = freezed,
    Object? mKaryTglMasuk = freezed,
    Object? mKaryTglBerhenti = freezed,
    Object? mKaryAlasanBerhenti = freezed,
    Object? mKaryUkBaju = freezed,
    Object? mKaryUkCelana = freezed,
    Object? mKaryUkSepatu = freezed,
    Object? mKaryDesc = freezed,
    Object? mKaryIsActive = freezed,
    Object? mKaryCreatorId = freezed,
    Object? mKaryLastEditorId = freezed,
    Object? mKaryCreatedAt = freezed,
    Object? mKaryUpdatedAt = freezed,
    Object? mKaryMStandartGajiId = freezed,
    Object? mKaryPeriodeGajiId = freezed,
    Object? mKaryRefId = freezed,
    Object? mKaryPresensiLokasiDefaultId = freezed,
    Object? mKaryExpDateCuti = freezed,
    Object? mKaryLimitPotong = freezed,
    Object? mKaryAtasanId = freezed,
    Object? mKaryCutiP24 = freezed,
    Object? mKaryCutiSisaP24 = freezed,
    Object? picId = freezed,
    Object? picMCompId = freezed,
    Object? picMDirId = freezed,
    Object? picMDivisiId = freezed,
    Object? picMDeptId = freezed,
    Object? picMZonaId = freezed,
    Object? picGradingId = freezed,
    Object? picCostcontreId = freezed,
    Object? picKode = freezed,
    Object? picMPosisiId = freezed,
    Object? picMJamKerjaId = freezed,
    Object? picKodePresensi = freezed,
    Object? picNik = freezed,
    Object? picNamaDepan = freezed,
    Object? picNamaBelakang = freezed,
    Object? picNamaLengkap = freezed,
    Object? picNamaPanggilan = freezed,
    Object? picJkId = freezed,
    Object? picTempatLahir = freezed,
    Object? picTglLahir = freezed,
    Object? picProvinsiId = freezed,
    Object? picKotaId = freezed,
    Object? picKecamatanId = freezed,
    Object? picKodePos = freezed,
    Object? picAlamatAsli = freezed,
    Object? picAlamatDomisili = freezed,
    Object? picNoTlp = freezed,
    Object? picNoTlpLainnya = freezed,
    Object? picNoDarurat = freezed,
    Object? picNamaKontakDarurat = freezed,
    Object? picAgamaId = freezed,
    Object? picGolDarahId = freezed,
    Object? picStatusNikahId = freezed,
    Object? picTanggunganId = freezed,
    Object? picHubDgnKaryawan = freezed,
    Object? picCutiJatahReguler = freezed,
    Object? picCutiSisaReguler = freezed,
    Object? picCutiPanjang = freezed,
    Object? picCutiSisaPanjang = freezed,
    Object? picStatusKaryId = freezed,
    Object? picLamaKontrakAwal = freezed,
    Object? picLamaKontrakAkhir = freezed,
    Object? picTglMasuk = freezed,
    Object? picTglBerhenti = freezed,
    Object? picAlasanBerhenti = freezed,
    Object? picUkBaju = freezed,
    Object? picUkCelana = freezed,
    Object? picUkSepatu = freezed,
    Object? picDesc = freezed,
    Object? picIsActive = freezed,
    Object? picCreatorId = freezed,
    Object? picLastEditorId = freezed,
    Object? picCreatedAt = freezed,
    Object? picUpdatedAt = freezed,
    Object? picMStandartGajiId = freezed,
    Object? picPeriodeGajiId = freezed,
    Object? picRefId = freezed,
    Object? picPresensiLokasiDefaultId = freezed,
    Object? picExpDateCuti = freezed,
    Object? picLimitPotong = freezed,
    Object? picAtasanId = freezed,
    Object? picCutiP24 = freezed,
    Object? picCutiSisaP24 = freezed,
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
    Object? approvalNote = freezed,
    Object? namaPic = freezed,
  }) {
    return _then(_$DataDinasImpl(
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
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      datumMCompId: freezed == datumMCompId
          ? _value.datumMCompId
          : datumMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMSpdId: freezed == datumMSpdId
          ? _value.datumMSpdId
          : datumMSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDirId: freezed == datumMDirId
          ? _value.datumMDirId
          : datumMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDivisiId: freezed == datumMDivisiId
          ? _value.datumMDivisiId
          : datumMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDeptId: freezed == datumMDeptId
          ? _value.datumMDeptId
          : datumMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMPosisiId: freezed == datumMPosisiId
          ? _value.datumMPosisiId
          : datumMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      tglAcaraAwal: freezed == tglAcaraAwal
          ? _value.tglAcaraAwal
          : tglAcaraAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      tglAcaraAkhir: freezed == tglAcaraAkhir
          ? _value.tglAcaraAkhir
          : tglAcaraAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      datumJenisSpdId: freezed == datumJenisSpdId
          ? _value.datumJenisSpdId
          : datumJenisSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMZonaAsalId: freezed == datumMZonaAsalId
          ? _value.datumMZonaAsalId
          : datumMZonaAsalId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMZonaTujuanId: freezed == datumMZonaTujuanId
          ? _value.datumMZonaTujuanId
          : datumMZonaTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMLokasiTujuanId: freezed == datumMLokasiTujuanId
          ? _value.datumMLokasiTujuanId
          : datumMLokasiTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMKaryId: freezed == datumMKaryId
          ? _value.datumMKaryId
          : datumMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumPicId: freezed == datumPicId
          ? _value.datumPicId
          : datumPicId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBiaya: freezed == totalBiaya
          ? _value.totalBiaya
          : totalBiaya // ignore: cast_nullable_to_non_nullable
              as int?,
      kegiatan: freezed == kegiatan
          ? _value.kegiatan
          : kegiatan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      datumCreatorId: freezed == datumCreatorId
          ? _value.datumCreatorId
          : datumCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      isKendDinas: freezed == isKendDinas
          ? _value.isKendDinas
          : isKendDinas // ignore: cast_nullable_to_non_nullable
              as bool?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      catatanKend: freezed == catatanKend
          ? _value.catatanKend
          : catatanKend // ignore: cast_nullable_to_non_nullable
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
      mSpdId: freezed == mSpdId
          ? _value.mSpdId
          : mSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMCompId: freezed == mSpdMCompId
          ? _value.mSpdMCompId
          : mSpdMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMDirId: freezed == mSpdMDirId
          ? _value.mSpdMDirId
          : mSpdMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdKode: freezed == mSpdKode
          ? _value.mSpdKode
          : mSpdKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mSpdMDivisiId: freezed == mSpdMDivisiId
          ? _value.mSpdMDivisiId
          : mSpdMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMPosisiId: freezed == mSpdMPosisiId
          ? _value.mSpdMPosisiId
          : mSpdMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMDeptId: freezed == mSpdMDeptId
          ? _value.mSpdMDeptId
          : mSpdMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdMZonaId: freezed == mSpdMZonaId
          ? _value.mSpdMZonaId
          : mSpdMZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mSpdGradingId: freezed == mSpdGradingId
          ? _value.mSpdGradingId
          : mSpdGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mSpdGrading: freezed == mSpdGrading
          ? _value.mSpdGrading
          : mSpdGrading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mSpdDesc: freezed == mSpdDesc
          ? _value.mSpdDesc
          : mSpdDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mSpdIsActive: freezed == mSpdIsActive
          ? _value.mSpdIsActive
          : mSpdIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mSpdCreatorId: freezed == mSpdCreatorId
          ? _value.mSpdCreatorId
          : mSpdCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mSpdLastEditorId: freezed == mSpdLastEditorId
          ? _value.mSpdLastEditorId
          : mSpdLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mSpdCreatedAt: freezed == mSpdCreatedAt
          ? _value.mSpdCreatedAt
          : mSpdCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mSpdUpdatedAt: freezed == mSpdUpdatedAt
          ? _value.mSpdUpdatedAt
          : mSpdUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      mDivisiIsActive: freezed == mDivisiIsActive
          ? _value.mDivisiIsActive
          : mDivisiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mDivisiCreatorId: freezed == mDivisiCreatorId
          ? _value.mDivisiCreatorId
          : mDivisiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDivisiLastEditorId: freezed == mDivisiLastEditorId
          ? _value.mDivisiLastEditorId
          : mDivisiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDivisiCreatedAt: freezed == mDivisiCreatedAt
          ? _value.mDivisiCreatedAt
          : mDivisiCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDivisiUpdatedAt: freezed == mDivisiUpdatedAt
          ? _value.mDivisiUpdatedAt
          : mDivisiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
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
              as dynamic,
      mDeptUpdatedAt: freezed == mDeptUpdatedAt
          ? _value.mDeptUpdatedAt
          : mDeptUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      jenisSpdId: freezed == jenisSpdId
          ? _value.jenisSpdId
          : jenisSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSpdMCompId: freezed == jenisSpdMCompId
          ? _value.jenisSpdMCompId
          : jenisSpdMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSpdMDirId: freezed == jenisSpdMDirId
          ? _value.jenisSpdMDirId
          : jenisSpdMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdGroup: freezed == jenisSpdGroup
          ? _value.jenisSpdGroup
          : jenisSpdGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisSpdKey: freezed == jenisSpdKey
          ? _value.jenisSpdKey
          : jenisSpdKey // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisSpdCode: freezed == jenisSpdCode
          ? _value.jenisSpdCode
          : jenisSpdCode // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisSpdValue: freezed == jenisSpdValue
          ? _value.jenisSpdValue
          : jenisSpdValue // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisSpdIsActive: freezed == jenisSpdIsActive
          ? _value.jenisSpdIsActive
          : jenisSpdIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      jenisSpdCreatorId: freezed == jenisSpdCreatorId
          ? _value.jenisSpdCreatorId
          : jenisSpdCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdLastEditorId: freezed == jenisSpdLastEditorId
          ? _value.jenisSpdLastEditorId
          : jenisSpdLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdCreatedAt: freezed == jenisSpdCreatedAt
          ? _value.jenisSpdCreatedAt
          : jenisSpdCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdUpdatedAt: freezed == jenisSpdUpdatedAt
          ? _value.jenisSpdUpdatedAt
          : jenisSpdUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdValue2: freezed == jenisSpdValue2
          ? _value.jenisSpdValue2
          : jenisSpdValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jenisSpdValue3: freezed == jenisSpdValue3
          ? _value.jenisSpdValue3
          : jenisSpdValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaAsalId: freezed == mZonaAsalId
          ? _value.mZonaAsalId
          : mZonaAsalId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaAsalMCompId: freezed == mZonaAsalMCompId
          ? _value.mZonaAsalMCompId
          : mZonaAsalMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaAsalMDirId: freezed == mZonaAsalMDirId
          ? _value.mZonaAsalMDirId
          : mZonaAsalMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaAsalKode: freezed == mZonaAsalKode
          ? _value.mZonaAsalKode
          : mZonaAsalKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalNama: freezed == mZonaAsalNama
          ? _value.mZonaAsalNama
          : mZonaAsalNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalDesc: freezed == mZonaAsalDesc
          ? _value.mZonaAsalDesc
          : mZonaAsalDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalIsActive: freezed == mZonaAsalIsActive
          ? _value.mZonaAsalIsActive
          : mZonaAsalIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mZonaAsalCreatorId: freezed == mZonaAsalCreatorId
          ? _value.mZonaAsalCreatorId
          : mZonaAsalCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaAsalLastEditorId: freezed == mZonaAsalLastEditorId
          ? _value.mZonaAsalLastEditorId
          : mZonaAsalLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaAsalCreatedAt: freezed == mZonaAsalCreatedAt
          ? _value.mZonaAsalCreatedAt
          : mZonaAsalCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaAsalUpdatedAt: freezed == mZonaAsalUpdatedAt
          ? _value.mZonaAsalUpdatedAt
          : mZonaAsalUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanId: freezed == mZonaTujuanId
          ? _value.mZonaTujuanId
          : mZonaTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaTujuanMCompId: freezed == mZonaTujuanMCompId
          ? _value.mZonaTujuanMCompId
          : mZonaTujuanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaTujuanMDirId: freezed == mZonaTujuanMDirId
          ? _value.mZonaTujuanMDirId
          : mZonaTujuanMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaTujuanKode: freezed == mZonaTujuanKode
          ? _value.mZonaTujuanKode
          : mZonaTujuanKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanNama: freezed == mZonaTujuanNama
          ? _value.mZonaTujuanNama
          : mZonaTujuanNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanDesc: freezed == mZonaTujuanDesc
          ? _value.mZonaTujuanDesc
          : mZonaTujuanDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanIsActive: freezed == mZonaTujuanIsActive
          ? _value.mZonaTujuanIsActive
          : mZonaTujuanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mZonaTujuanCreatorId: freezed == mZonaTujuanCreatorId
          ? _value.mZonaTujuanCreatorId
          : mZonaTujuanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaTujuanLastEditorId: freezed == mZonaTujuanLastEditorId
          ? _value.mZonaTujuanLastEditorId
          : mZonaTujuanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaTujuanCreatedAt: freezed == mZonaTujuanCreatedAt
          ? _value.mZonaTujuanCreatedAt
          : mZonaTujuanCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaTujuanUpdatedAt: freezed == mZonaTujuanUpdatedAt
          ? _value.mZonaTujuanUpdatedAt
          : mZonaTujuanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanId: freezed == mLokasiTujuanId
          ? _value.mLokasiTujuanId
          : mLokasiTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mLokasiTujuanMCompId: freezed == mLokasiTujuanMCompId
          ? _value.mLokasiTujuanMCompId
          : mLokasiTujuanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mLokasiTujuanMDirId: freezed == mLokasiTujuanMDirId
          ? _value.mLokasiTujuanMDirId
          : mLokasiTujuanMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mLokasiTujuanKode: freezed == mLokasiTujuanKode
          ? _value.mLokasiTujuanKode
          : mLokasiTujuanKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanNama: freezed == mLokasiTujuanNama
          ? _value.mLokasiTujuanNama
          : mLokasiTujuanNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanDesc: freezed == mLokasiTujuanDesc
          ? _value.mLokasiTujuanDesc
          : mLokasiTujuanDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanIsActive: freezed == mLokasiTujuanIsActive
          ? _value.mLokasiTujuanIsActive
          : mLokasiTujuanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mLokasiTujuanCreatorId: freezed == mLokasiTujuanCreatorId
          ? _value.mLokasiTujuanCreatorId
          : mLokasiTujuanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mLokasiTujuanLastEditorId: freezed == mLokasiTujuanLastEditorId
          ? _value.mLokasiTujuanLastEditorId
          : mLokasiTujuanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mLokasiTujuanCreatedAt: freezed == mLokasiTujuanCreatedAt
          ? _value.mLokasiTujuanCreatedAt
          : mLokasiTujuanCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mLokasiTujuanUpdatedAt: freezed == mLokasiTujuanUpdatedAt
          ? _value.mLokasiTujuanUpdatedAt
          : mLokasiTujuanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMCompId: freezed == mKaryMCompId
          ? _value.mKaryMCompId
          : mKaryMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMDirId: freezed == mKaryMDirId
          ? _value.mKaryMDirId
          : mKaryMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMDivisiId: freezed == mKaryMDivisiId
          ? _value.mKaryMDivisiId
          : mKaryMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMDeptId: freezed == mKaryMDeptId
          ? _value.mKaryMDeptId
          : mKaryMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMZonaId: freezed == mKaryMZonaId
          ? _value.mKaryMZonaId
          : mKaryMZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryGradingId: freezed == mKaryGradingId
          ? _value.mKaryGradingId
          : mKaryGradingId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCostcontreId: freezed == mKaryCostcontreId
          ? _value.mKaryCostcontreId
          : mKaryCostcontreId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKode: freezed == mKaryKode
          ? _value.mKaryKode
          : mKaryKode // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryMPosisiId: freezed == mKaryMPosisiId
          ? _value.mKaryMPosisiId
          : mKaryMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryMJamKerjaId: freezed == mKaryMJamKerjaId
          ? _value.mKaryMJamKerjaId
          : mKaryMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKodePresensi: freezed == mKaryKodePresensi
          ? _value.mKaryKodePresensi
          : mKaryKodePresensi // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNik: freezed == mKaryNik
          ? _value.mKaryNik
          : mKaryNik // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaDepan: freezed == mKaryNamaDepan
          ? _value.mKaryNamaDepan
          : mKaryNamaDepan // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaBelakang: freezed == mKaryNamaBelakang
          ? _value.mKaryNamaBelakang
          : mKaryNamaBelakang // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaLengkap: freezed == mKaryNamaLengkap
          ? _value.mKaryNamaLengkap
          : mKaryNamaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaPanggilan: freezed == mKaryNamaPanggilan
          ? _value.mKaryNamaPanggilan
          : mKaryNamaPanggilan // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryJkId: freezed == mKaryJkId
          ? _value.mKaryJkId
          : mKaryJkId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryTempatLahir: freezed == mKaryTempatLahir
          ? _value.mKaryTempatLahir
          : mKaryTempatLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryTglLahir: freezed == mKaryTglLahir
          ? _value.mKaryTglLahir
          : mKaryTglLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryProvinsiId: freezed == mKaryProvinsiId
          ? _value.mKaryProvinsiId
          : mKaryProvinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKotaId: freezed == mKaryKotaId
          ? _value.mKaryKotaId
          : mKaryKotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKecamatanId: freezed == mKaryKecamatanId
          ? _value.mKaryKecamatanId
          : mKaryKecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryKodePos: freezed == mKaryKodePos
          ? _value.mKaryKodePos
          : mKaryKodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryAlamatAsli: freezed == mKaryAlamatAsli
          ? _value.mKaryAlamatAsli
          : mKaryAlamatAsli // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryAlamatDomisili: freezed == mKaryAlamatDomisili
          ? _value.mKaryAlamatDomisili
          : mKaryAlamatDomisili // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNoTlp: freezed == mKaryNoTlp
          ? _value.mKaryNoTlp
          : mKaryNoTlp // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNoTlpLainnya: freezed == mKaryNoTlpLainnya
          ? _value.mKaryNoTlpLainnya
          : mKaryNoTlpLainnya // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNoDarurat: freezed == mKaryNoDarurat
          ? _value.mKaryNoDarurat
          : mKaryNoDarurat // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryNamaKontakDarurat: freezed == mKaryNamaKontakDarurat
          ? _value.mKaryNamaKontakDarurat
          : mKaryNamaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryAgamaId: freezed == mKaryAgamaId
          ? _value.mKaryAgamaId
          : mKaryAgamaId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryGolDarahId: freezed == mKaryGolDarahId
          ? _value.mKaryGolDarahId
          : mKaryGolDarahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryStatusNikahId: freezed == mKaryStatusNikahId
          ? _value.mKaryStatusNikahId
          : mKaryStatusNikahId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryTanggunganId: freezed == mKaryTanggunganId
          ? _value.mKaryTanggunganId
          : mKaryTanggunganId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryHubDgnKaryawan: freezed == mKaryHubDgnKaryawan
          ? _value.mKaryHubDgnKaryawan
          : mKaryHubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryCutiJatahReguler: freezed == mKaryCutiJatahReguler
          ? _value.mKaryCutiJatahReguler
          : mKaryCutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCutiSisaReguler: freezed == mKaryCutiSisaReguler
          ? _value.mKaryCutiSisaReguler
          : mKaryCutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCutiPanjang: freezed == mKaryCutiPanjang
          ? _value.mKaryCutiPanjang
          : mKaryCutiPanjang // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCutiSisaPanjang: freezed == mKaryCutiSisaPanjang
          ? _value.mKaryCutiSisaPanjang
          : mKaryCutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryStatusKaryId: freezed == mKaryStatusKaryId
          ? _value.mKaryStatusKaryId
          : mKaryStatusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryLamaKontrakAwal: freezed == mKaryLamaKontrakAwal
          ? _value.mKaryLamaKontrakAwal
          : mKaryLamaKontrakAwal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryLamaKontrakAkhir: freezed == mKaryLamaKontrakAkhir
          ? _value.mKaryLamaKontrakAkhir
          : mKaryLamaKontrakAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryTglMasuk: freezed == mKaryTglMasuk
          ? _value.mKaryTglMasuk
          : mKaryTglMasuk // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryTglBerhenti: freezed == mKaryTglBerhenti
          ? _value.mKaryTglBerhenti
          : mKaryTglBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryAlasanBerhenti: freezed == mKaryAlasanBerhenti
          ? _value.mKaryAlasanBerhenti
          : mKaryAlasanBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryUkBaju: freezed == mKaryUkBaju
          ? _value.mKaryUkBaju
          : mKaryUkBaju // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryUkCelana: freezed == mKaryUkCelana
          ? _value.mKaryUkCelana
          : mKaryUkCelana // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryUkSepatu: freezed == mKaryUkSepatu
          ? _value.mKaryUkSepatu
          : mKaryUkSepatu // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryDesc: freezed == mKaryDesc
          ? _value.mKaryDesc
          : mKaryDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryIsActive: freezed == mKaryIsActive
          ? _value.mKaryIsActive
          : mKaryIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      mKaryCreatorId: freezed == mKaryCreatorId
          ? _value.mKaryCreatorId
          : mKaryCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryLastEditorId: freezed == mKaryLastEditorId
          ? _value.mKaryLastEditorId
          : mKaryLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCreatedAt: freezed == mKaryCreatedAt
          ? _value.mKaryCreatedAt
          : mKaryCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryUpdatedAt: freezed == mKaryUpdatedAt
          ? _value.mKaryUpdatedAt
          : mKaryUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryMStandartGajiId: freezed == mKaryMStandartGajiId
          ? _value.mKaryMStandartGajiId
          : mKaryMStandartGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryPeriodeGajiId: freezed == mKaryPeriodeGajiId
          ? _value.mKaryPeriodeGajiId
          : mKaryPeriodeGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryRefId: freezed == mKaryRefId
          ? _value.mKaryRefId
          : mKaryRefId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryPresensiLokasiDefaultId: freezed == mKaryPresensiLokasiDefaultId
          ? _value.mKaryPresensiLokasiDefaultId
          : mKaryPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryExpDateCuti: freezed == mKaryExpDateCuti
          ? _value.mKaryExpDateCuti
          : mKaryExpDateCuti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryLimitPotong: freezed == mKaryLimitPotong
          ? _value.mKaryLimitPotong
          : mKaryLimitPotong // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryAtasanId: freezed == mKaryAtasanId
          ? _value.mKaryAtasanId
          : mKaryAtasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryCutiP24: freezed == mKaryCutiP24
          ? _value.mKaryCutiP24
          : mKaryCutiP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiSisaP24: freezed == mKaryCutiSisaP24
          ? _value.mKaryCutiSisaP24
          : mKaryCutiSisaP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picId: freezed == picId
          ? _value.picId
          : picId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMCompId: freezed == picMCompId
          ? _value.picMCompId
          : picMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMDirId: freezed == picMDirId
          ? _value.picMDirId
          : picMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMDivisiId: freezed == picMDivisiId
          ? _value.picMDivisiId
          : picMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMDeptId: freezed == picMDeptId
          ? _value.picMDeptId
          : picMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMZonaId: freezed == picMZonaId
          ? _value.picMZonaId
          : picMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picGradingId: freezed == picGradingId
          ? _value.picGradingId
          : picGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCostcontreId: freezed == picCostcontreId
          ? _value.picCostcontreId
          : picCostcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKode: freezed == picKode
          ? _value.picKode
          : picKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMPosisiId: freezed == picMPosisiId
          ? _value.picMPosisiId
          : picMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMJamKerjaId: freezed == picMJamKerjaId
          ? _value.picMJamKerjaId
          : picMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKodePresensi: freezed == picKodePresensi
          ? _value.picKodePresensi
          : picKodePresensi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNik: freezed == picNik
          ? _value.picNik
          : picNik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaDepan: freezed == picNamaDepan
          ? _value.picNamaDepan
          : picNamaDepan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaBelakang: freezed == picNamaBelakang
          ? _value.picNamaBelakang
          : picNamaBelakang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaLengkap: freezed == picNamaLengkap
          ? _value.picNamaLengkap
          : picNamaLengkap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaPanggilan: freezed == picNamaPanggilan
          ? _value.picNamaPanggilan
          : picNamaPanggilan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picJkId: freezed == picJkId
          ? _value.picJkId
          : picJkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTempatLahir: freezed == picTempatLahir
          ? _value.picTempatLahir
          : picTempatLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTglLahir: freezed == picTglLahir
          ? _value.picTglLahir
          : picTglLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picProvinsiId: freezed == picProvinsiId
          ? _value.picProvinsiId
          : picProvinsiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKotaId: freezed == picKotaId
          ? _value.picKotaId
          : picKotaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKecamatanId: freezed == picKecamatanId
          ? _value.picKecamatanId
          : picKecamatanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picKodePos: freezed == picKodePos
          ? _value.picKodePos
          : picKodePos // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAlamatAsli: freezed == picAlamatAsli
          ? _value.picAlamatAsli
          : picAlamatAsli // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAlamatDomisili: freezed == picAlamatDomisili
          ? _value.picAlamatDomisili
          : picAlamatDomisili // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNoTlp: freezed == picNoTlp
          ? _value.picNoTlp
          : picNoTlp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNoTlpLainnya: freezed == picNoTlpLainnya
          ? _value.picNoTlpLainnya
          : picNoTlpLainnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNoDarurat: freezed == picNoDarurat
          ? _value.picNoDarurat
          : picNoDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picNamaKontakDarurat: freezed == picNamaKontakDarurat
          ? _value.picNamaKontakDarurat
          : picNamaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAgamaId: freezed == picAgamaId
          ? _value.picAgamaId
          : picAgamaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picGolDarahId: freezed == picGolDarahId
          ? _value.picGolDarahId
          : picGolDarahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picStatusNikahId: freezed == picStatusNikahId
          ? _value.picStatusNikahId
          : picStatusNikahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTanggunganId: freezed == picTanggunganId
          ? _value.picTanggunganId
          : picTanggunganId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picHubDgnKaryawan: freezed == picHubDgnKaryawan
          ? _value.picHubDgnKaryawan
          : picHubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiJatahReguler: freezed == picCutiJatahReguler
          ? _value.picCutiJatahReguler
          : picCutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiSisaReguler: freezed == picCutiSisaReguler
          ? _value.picCutiSisaReguler
          : picCutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiPanjang: freezed == picCutiPanjang
          ? _value.picCutiPanjang
          : picCutiPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiSisaPanjang: freezed == picCutiSisaPanjang
          ? _value.picCutiSisaPanjang
          : picCutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picStatusKaryId: freezed == picStatusKaryId
          ? _value.picStatusKaryId
          : picStatusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picLamaKontrakAwal: freezed == picLamaKontrakAwal
          ? _value.picLamaKontrakAwal
          : picLamaKontrakAwal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picLamaKontrakAkhir: freezed == picLamaKontrakAkhir
          ? _value.picLamaKontrakAkhir
          : picLamaKontrakAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTglMasuk: freezed == picTglMasuk
          ? _value.picTglMasuk
          : picTglMasuk // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picTglBerhenti: freezed == picTglBerhenti
          ? _value.picTglBerhenti
          : picTglBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAlasanBerhenti: freezed == picAlasanBerhenti
          ? _value.picAlasanBerhenti
          : picAlasanBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picUkBaju: freezed == picUkBaju
          ? _value.picUkBaju
          : picUkBaju // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picUkCelana: freezed == picUkCelana
          ? _value.picUkCelana
          : picUkCelana // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picUkSepatu: freezed == picUkSepatu
          ? _value.picUkSepatu
          : picUkSepatu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picDesc: freezed == picDesc
          ? _value.picDesc
          : picDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picIsActive: freezed == picIsActive
          ? _value.picIsActive
          : picIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCreatorId: freezed == picCreatorId
          ? _value.picCreatorId
          : picCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picLastEditorId: freezed == picLastEditorId
          ? _value.picLastEditorId
          : picLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCreatedAt: freezed == picCreatedAt
          ? _value.picCreatedAt
          : picCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picUpdatedAt: freezed == picUpdatedAt
          ? _value.picUpdatedAt
          : picUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picMStandartGajiId: freezed == picMStandartGajiId
          ? _value.picMStandartGajiId
          : picMStandartGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picPeriodeGajiId: freezed == picPeriodeGajiId
          ? _value.picPeriodeGajiId
          : picPeriodeGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picRefId: freezed == picRefId
          ? _value.picRefId
          : picRefId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picPresensiLokasiDefaultId: freezed == picPresensiLokasiDefaultId
          ? _value.picPresensiLokasiDefaultId
          : picPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picExpDateCuti: freezed == picExpDateCuti
          ? _value.picExpDateCuti
          : picExpDateCuti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picLimitPotong: freezed == picLimitPotong
          ? _value.picLimitPotong
          : picLimitPotong // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picAtasanId: freezed == picAtasanId
          ? _value.picAtasanId
          : picAtasanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiP24: freezed == picCutiP24
          ? _value.picCutiP24
          : picCutiP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picCutiSisaP24: freezed == picCutiSisaP24
          ? _value.picCutiSisaP24
          : picCutiSisaP24 // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
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
              as int?,
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
      approvalNote: freezed == approvalNote
          ? _value.approvalNote
          : approvalNote // ignore: cast_nullable_to_non_nullable
              as String?,
      namaPic: freezed == namaPic
          ? _value.namaPic
          : namaPic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDinasImpl implements _DataDinas {
  const _$DataDinasImpl(
      {@JsonKey(name: "meta_read") this.metaRead,
      @JsonKey(name: "meta_delete") this.metaDelete,
      @JsonKey(name: "meta_update") this.metaUpdate,
      @JsonKey(name: "meta_create") this.metaCreate,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "nomor") this.nomor,
      @JsonKey(name: "m_comp_id") this.datumMCompId,
      @JsonKey(name: "m_spd_id") this.datumMSpdId,
      @JsonKey(name: "m_dir_id") this.datumMDirId,
      @JsonKey(name: "m_divisi_id") this.datumMDivisiId,
      @JsonKey(name: "m_dept_id") this.datumMDeptId,
      @JsonKey(name: "m_posisi_id") this.datumMPosisiId,
      @JsonKey(name: "tanggal") this.tanggal,
      @JsonKey(name: "tgl_acara_awal") this.tglAcaraAwal,
      @JsonKey(name: "tgl_acara_akhir") this.tglAcaraAkhir,
      @JsonKey(name: "jenis_spd_id") this.datumJenisSpdId,
      @JsonKey(name: "m_zona_asal_id") this.datumMZonaAsalId,
      @JsonKey(name: "m_zona_tujuan_id") this.datumMZonaTujuanId,
      @JsonKey(name: "m_lokasi_tujuan_id") this.datumMLokasiTujuanId,
      @JsonKey(name: "m_kary_id") this.datumMKaryId,
      @JsonKey(name: "pic_id") this.datumPicId,
      @JsonKey(name: "total_biaya") this.totalBiaya,
      @JsonKey(name: "kegiatan") this.kegiatan,
      @JsonKey(name: "keterangan") this.keterangan,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "creator_id") this.datumCreatorId,
      @JsonKey(name: "last_editor_id") this.datumLastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "is_kend_dinas") this.isKendDinas,
      @JsonKey(name: "interval") this.interval,
      @JsonKey(name: "catatan_kend") this.catatanKend,
      @JsonKey(name: "m_comp.id") this.mCompId,
      @JsonKey(name: "m_comp.nama") this.mCompNama,
      @JsonKey(name: "m_comp.is_active") this.mCompIsActive,
      @JsonKey(name: "m_comp.desc") this.mCompDesc,
      @JsonKey(name: "m_comp.creator_id") this.mCompCreatorId,
      @JsonKey(name: "m_comp.last_editor_id") this.mCompLastEditorId,
      @JsonKey(name: "m_comp.created_at") this.mCompCreatedAt,
      @JsonKey(name: "m_comp.updated_at") this.mCompUpdatedAt,
      @JsonKey(name: "m_spd.id") this.mSpdId,
      @JsonKey(name: "m_spd.m_comp_id") this.mSpdMCompId,
      @JsonKey(name: "m_spd.m_dir_id") this.mSpdMDirId,
      @JsonKey(name: "m_spd.kode") this.mSpdKode,
      @JsonKey(name: "m_spd.m_divisi_id") this.mSpdMDivisiId,
      @JsonKey(name: "m_spd.m_posisi_id") this.mSpdMPosisiId,
      @JsonKey(name: "m_spd.m_dept_id") this.mSpdMDeptId,
      @JsonKey(name: "m_spd.m_zona_id") this.mSpdMZonaId,
      @JsonKey(name: "m_spd.grading_id") this.mSpdGradingId,
      @JsonKey(name: "m_spd.grading") this.mSpdGrading,
      @JsonKey(name: "m_spd.desc") this.mSpdDesc,
      @JsonKey(name: "m_spd.is_active") this.mSpdIsActive,
      @JsonKey(name: "m_spd.creator_id") this.mSpdCreatorId,
      @JsonKey(name: "m_spd.last_editor_id") this.mSpdLastEditorId,
      @JsonKey(name: "m_spd.created_at") this.mSpdCreatedAt,
      @JsonKey(name: "m_spd.updated_at") this.mSpdUpdatedAt,
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
      @JsonKey(name: "jenis_spd.id") this.jenisSpdId,
      @JsonKey(name: "jenis_spd.m_comp_id") this.jenisSpdMCompId,
      @JsonKey(name: "jenis_spd.m_dir_id") this.jenisSpdMDirId,
      @JsonKey(name: "jenis_spd.group") this.jenisSpdGroup,
      @JsonKey(name: "jenis_spd.key") this.jenisSpdKey,
      @JsonKey(name: "jenis_spd.code") this.jenisSpdCode,
      @JsonKey(name: "jenis_spd.value") this.jenisSpdValue,
      @JsonKey(name: "jenis_spd.is_active") this.jenisSpdIsActive,
      @JsonKey(name: "jenis_spd.creator_id") this.jenisSpdCreatorId,
      @JsonKey(name: "jenis_spd.last_editor_id") this.jenisSpdLastEditorId,
      @JsonKey(name: "jenis_spd.created_at") this.jenisSpdCreatedAt,
      @JsonKey(name: "jenis_spd.updated_at") this.jenisSpdUpdatedAt,
      @JsonKey(name: "jenis_spd.value_2") this.jenisSpdValue2,
      @JsonKey(name: "jenis_spd.value_3") this.jenisSpdValue3,
      @JsonKey(name: "m_zona_asal.id") this.mZonaAsalId,
      @JsonKey(name: "m_zona_asal.m_comp_id") this.mZonaAsalMCompId,
      @JsonKey(name: "m_zona_asal.m_dir_id") this.mZonaAsalMDirId,
      @JsonKey(name: "m_zona_asal.kode") this.mZonaAsalKode,
      @JsonKey(name: "m_zona_asal.nama") this.mZonaAsalNama,
      @JsonKey(name: "m_zona_asal.desc") this.mZonaAsalDesc,
      @JsonKey(name: "m_zona_asal.is_active") this.mZonaAsalIsActive,
      @JsonKey(name: "m_zona_asal.creator_id") this.mZonaAsalCreatorId,
      @JsonKey(name: "m_zona_asal.last_editor_id") this.mZonaAsalLastEditorId,
      @JsonKey(name: "m_zona_asal.created_at") this.mZonaAsalCreatedAt,
      @JsonKey(name: "m_zona_asal.updated_at") this.mZonaAsalUpdatedAt,
      @JsonKey(name: "m_zona_tujuan.id") this.mZonaTujuanId,
      @JsonKey(name: "m_zona_tujuan.m_comp_id") this.mZonaTujuanMCompId,
      @JsonKey(name: "m_zona_tujuan.m_dir_id") this.mZonaTujuanMDirId,
      @JsonKey(name: "m_zona_tujuan.kode") this.mZonaTujuanKode,
      @JsonKey(name: "m_zona_tujuan.nama") this.mZonaTujuanNama,
      @JsonKey(name: "m_zona_tujuan.desc") this.mZonaTujuanDesc,
      @JsonKey(name: "m_zona_tujuan.is_active") this.mZonaTujuanIsActive,
      @JsonKey(name: "m_zona_tujuan.creator_id") this.mZonaTujuanCreatorId,
      @JsonKey(name: "m_zona_tujuan.last_editor_id")
      this.mZonaTujuanLastEditorId,
      @JsonKey(name: "m_zona_tujuan.created_at") this.mZonaTujuanCreatedAt,
      @JsonKey(name: "m_zona_tujuan.updated_at") this.mZonaTujuanUpdatedAt,
      @JsonKey(name: "m_lokasi_tujuan.id") this.mLokasiTujuanId,
      @JsonKey(name: "m_lokasi_tujuan.m_comp_id") this.mLokasiTujuanMCompId,
      @JsonKey(name: "m_lokasi_tujuan.m_dir_id") this.mLokasiTujuanMDirId,
      @JsonKey(name: "m_lokasi_tujuan.kode") this.mLokasiTujuanKode,
      @JsonKey(name: "m_lokasi_tujuan.nama") this.mLokasiTujuanNama,
      @JsonKey(name: "m_lokasi_tujuan.desc") this.mLokasiTujuanDesc,
      @JsonKey(name: "m_lokasi_tujuan.is_active") this.mLokasiTujuanIsActive,
      @JsonKey(name: "m_lokasi_tujuan.creator_id") this.mLokasiTujuanCreatorId,
      @JsonKey(name: "m_lokasi_tujuan.last_editor_id")
      this.mLokasiTujuanLastEditorId,
      @JsonKey(name: "m_lokasi_tujuan.created_at") this.mLokasiTujuanCreatedAt,
      @JsonKey(name: "m_lokasi_tujuan.updated_at") this.mLokasiTujuanUpdatedAt,
      @JsonKey(name: "m_kary.id") this.mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") this.mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") this.mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") this.mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") this.mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") this.mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") this.mKaryGradingId,
      @JsonKey(name: "m_kary.costcontre_id") this.mKaryCostcontreId,
      @JsonKey(name: "m_kary.kode") this.mKaryKode,
      @JsonKey(name: "m_kary.m_posisi_id") this.mKaryMPosisiId,
      @JsonKey(name: "m_kary.m_jam_kerja_id") this.mKaryMJamKerjaId,
      @JsonKey(name: "m_kary.kode_presensi") this.mKaryKodePresensi,
      @JsonKey(name: "m_kary.nik") this.mKaryNik,
      @JsonKey(name: "m_kary.nama_depan") this.mKaryNamaDepan,
      @JsonKey(name: "m_kary.nama_belakang") this.mKaryNamaBelakang,
      @JsonKey(name: "m_kary.nama_lengkap") this.mKaryNamaLengkap,
      @JsonKey(name: "m_kary.nama_panggilan") this.mKaryNamaPanggilan,
      @JsonKey(name: "m_kary.jk_id") this.mKaryJkId,
      @JsonKey(name: "m_kary.tempat_lahir") this.mKaryTempatLahir,
      @JsonKey(name: "m_kary.tgl_lahir") this.mKaryTglLahir,
      @JsonKey(name: "m_kary.provinsi_id") this.mKaryProvinsiId,
      @JsonKey(name: "m_kary.kota_id") this.mKaryKotaId,
      @JsonKey(name: "m_kary.kecamatan_id") this.mKaryKecamatanId,
      @JsonKey(name: "m_kary.kode_pos") this.mKaryKodePos,
      @JsonKey(name: "m_kary.alamat_asli") this.mKaryAlamatAsli,
      @JsonKey(name: "m_kary.alamat_domisili") this.mKaryAlamatDomisili,
      @JsonKey(name: "m_kary.no_tlp") this.mKaryNoTlp,
      @JsonKey(name: "m_kary.no_tlp_lainnya") this.mKaryNoTlpLainnya,
      @JsonKey(name: "m_kary.no_darurat") this.mKaryNoDarurat,
      @JsonKey(name: "m_kary.nama_kontak_darurat") this.mKaryNamaKontakDarurat,
      @JsonKey(name: "m_kary.agama_id") this.mKaryAgamaId,
      @JsonKey(name: "m_kary.gol_darah_id") this.mKaryGolDarahId,
      @JsonKey(name: "m_kary.status_nikah_id") this.mKaryStatusNikahId,
      @JsonKey(name: "m_kary.tanggungan_id") this.mKaryTanggunganId,
      @JsonKey(name: "m_kary.hub_dgn_karyawan") this.mKaryHubDgnKaryawan,
      @JsonKey(name: "m_kary.cuti_jatah_reguler") this.mKaryCutiJatahReguler,
      @JsonKey(name: "m_kary.cuti_sisa_reguler") this.mKaryCutiSisaReguler,
      @JsonKey(name: "m_kary.cuti_panjang") this.mKaryCutiPanjang,
      @JsonKey(name: "m_kary.cuti_sisa_panjang") this.mKaryCutiSisaPanjang,
      @JsonKey(name: "m_kary.status_kary_id") this.mKaryStatusKaryId,
      @JsonKey(name: "m_kary.lama_kontrak_awal") this.mKaryLamaKontrakAwal,
      @JsonKey(name: "m_kary.lama_kontrak_akhir") this.mKaryLamaKontrakAkhir,
      @JsonKey(name: "m_kary.tgl_masuk") this.mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") this.mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti") this.mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") this.mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") this.mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") this.mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") this.mKaryDesc,
      @JsonKey(name: "m_kary.is_active") this.mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") this.mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") this.mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") this.mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") this.mKaryUpdatedAt,
      @JsonKey(name: "m_kary.m_standart_gaji_id") this.mKaryMStandartGajiId,
      @JsonKey(name: "m_kary.periode_gaji_id") this.mKaryPeriodeGajiId,
      @JsonKey(name: "m_kary.ref_id") this.mKaryRefId,
      @JsonKey(name: "m_kary.presensi_lokasi_default_id")
      this.mKaryPresensiLokasiDefaultId,
      @JsonKey(name: "m_kary.exp_date_cuti") this.mKaryExpDateCuti,
      @JsonKey(name: "m_kary.limit_potong") this.mKaryLimitPotong,
      @JsonKey(name: "m_kary.atasan_id") this.mKaryAtasanId,
      @JsonKey(name: "m_kary.cuti_p24") this.mKaryCutiP24,
      @JsonKey(name: "m_kary.cuti_sisa_p24") this.mKaryCutiSisaP24,
      @JsonKey(name: "pic.id") this.picId,
      @JsonKey(name: "pic.m_comp_id") this.picMCompId,
      @JsonKey(name: "pic.m_dir_id") this.picMDirId,
      @JsonKey(name: "pic.m_divisi_id") this.picMDivisiId,
      @JsonKey(name: "pic.m_dept_id") this.picMDeptId,
      @JsonKey(name: "pic.m_zona_id") this.picMZonaId,
      @JsonKey(name: "pic.grading_id") this.picGradingId,
      @JsonKey(name: "pic.costcontre_id") this.picCostcontreId,
      @JsonKey(name: "pic.kode") this.picKode,
      @JsonKey(name: "pic.m_posisi_id") this.picMPosisiId,
      @JsonKey(name: "pic.m_jam_kerja_id") this.picMJamKerjaId,
      @JsonKey(name: "pic.kode_presensi") this.picKodePresensi,
      @JsonKey(name: "pic.nik") this.picNik,
      @JsonKey(name: "pic.nama_depan") this.picNamaDepan,
      @JsonKey(name: "pic.nama_belakang") this.picNamaBelakang,
      @JsonKey(name: "pic.nama_lengkap") this.picNamaLengkap,
      @JsonKey(name: "pic.nama_panggilan") this.picNamaPanggilan,
      @JsonKey(name: "pic.jk_id") this.picJkId,
      @JsonKey(name: "pic.tempat_lahir") this.picTempatLahir,
      @JsonKey(name: "pic.tgl_lahir") this.picTglLahir,
      @JsonKey(name: "pic.provinsi_id") this.picProvinsiId,
      @JsonKey(name: "pic.kota_id") this.picKotaId,
      @JsonKey(name: "pic.kecamatan_id") this.picKecamatanId,
      @JsonKey(name: "pic.kode_pos") this.picKodePos,
      @JsonKey(name: "pic.alamat_asli") this.picAlamatAsli,
      @JsonKey(name: "pic.alamat_domisili") this.picAlamatDomisili,
      @JsonKey(name: "pic.no_tlp") this.picNoTlp,
      @JsonKey(name: "pic.no_tlp_lainnya") this.picNoTlpLainnya,
      @JsonKey(name: "pic.no_darurat") this.picNoDarurat,
      @JsonKey(name: "pic.nama_kontak_darurat") this.picNamaKontakDarurat,
      @JsonKey(name: "pic.agama_id") this.picAgamaId,
      @JsonKey(name: "pic.gol_darah_id") this.picGolDarahId,
      @JsonKey(name: "pic.status_nikah_id") this.picStatusNikahId,
      @JsonKey(name: "pic.tanggungan_id") this.picTanggunganId,
      @JsonKey(name: "pic.hub_dgn_karyawan") this.picHubDgnKaryawan,
      @JsonKey(name: "pic.cuti_jatah_reguler") this.picCutiJatahReguler,
      @JsonKey(name: "pic.cuti_sisa_reguler") this.picCutiSisaReguler,
      @JsonKey(name: "pic.cuti_panjang") this.picCutiPanjang,
      @JsonKey(name: "pic.cuti_sisa_panjang") this.picCutiSisaPanjang,
      @JsonKey(name: "pic.status_kary_id") this.picStatusKaryId,
      @JsonKey(name: "pic.lama_kontrak_awal") this.picLamaKontrakAwal,
      @JsonKey(name: "pic.lama_kontrak_akhir") this.picLamaKontrakAkhir,
      @JsonKey(name: "pic.tgl_masuk") this.picTglMasuk,
      @JsonKey(name: "pic.tgl_berhenti") this.picTglBerhenti,
      @JsonKey(name: "pic.alasan_berhenti") this.picAlasanBerhenti,
      @JsonKey(name: "pic.uk_baju") this.picUkBaju,
      @JsonKey(name: "pic.uk_celana") this.picUkCelana,
      @JsonKey(name: "pic.uk_sepatu") this.picUkSepatu,
      @JsonKey(name: "pic.desc") this.picDesc,
      @JsonKey(name: "pic.is_active") this.picIsActive,
      @JsonKey(name: "pic.creator_id") this.picCreatorId,
      @JsonKey(name: "pic.last_editor_id") this.picLastEditorId,
      @JsonKey(name: "pic.created_at") this.picCreatedAt,
      @JsonKey(name: "pic.updated_at") this.picUpdatedAt,
      @JsonKey(name: "pic.m_standart_gaji_id") this.picMStandartGajiId,
      @JsonKey(name: "pic.periode_gaji_id") this.picPeriodeGajiId,
      @JsonKey(name: "pic.ref_id") this.picRefId,
      @JsonKey(name: "pic.presensi_lokasi_default_id")
      this.picPresensiLokasiDefaultId,
      @JsonKey(name: "pic.exp_date_cuti") this.picExpDateCuti,
      @JsonKey(name: "pic.limit_potong") this.picLimitPotong,
      @JsonKey(name: "pic.atasan_id") this.picAtasanId,
      @JsonKey(name: "pic.cuti_p24") this.picCutiP24,
      @JsonKey(name: "pic.cuti_sisa_p24") this.picCutiSisaP24,
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
      @JsonKey(name: "last_editor.m_kary_id") this.lastEditorMKaryId,
      @JsonKey(name: "approval_note") this.approvalNote,
      @JsonKey(name: "nama_pic") this.namaPic});

  factory _$DataDinasImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDinasImplFromJson(json);

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
  @JsonKey(name: "nomor")
  final String? nomor;
  @override
  @JsonKey(name: "m_comp_id")
  final int? datumMCompId;
  @override
  @JsonKey(name: "m_spd_id")
  final int? datumMSpdId;
  @override
  @JsonKey(name: "m_dir_id")
  final int? datumMDirId;
  @override
  @JsonKey(name: "m_divisi_id")
  final int? datumMDivisiId;
  @override
  @JsonKey(name: "m_dept_id")
  final int? datumMDeptId;
  @override
  @JsonKey(name: "m_posisi_id")
  final int? datumMPosisiId;
  @override
  @JsonKey(name: "tanggal")
  final String? tanggal;
  @override
  @JsonKey(name: "tgl_acara_awal")
  final String? tglAcaraAwal;
  @override
  @JsonKey(name: "tgl_acara_akhir")
  final String? tglAcaraAkhir;
  @override
  @JsonKey(name: "jenis_spd_id")
  final int? datumJenisSpdId;
  @override
  @JsonKey(name: "m_zona_asal_id")
  final int? datumMZonaAsalId;
  @override
  @JsonKey(name: "m_zona_tujuan_id")
  final int? datumMZonaTujuanId;
  @override
  @JsonKey(name: "m_lokasi_tujuan_id")
  final int? datumMLokasiTujuanId;
  @override
  @JsonKey(name: "m_kary_id")
  final int? datumMKaryId;
  @override
  @JsonKey(name: "pic_id")
  final int? datumPicId;
  @override
  @JsonKey(name: "total_biaya")
  final int? totalBiaya;
  @override
  @JsonKey(name: "kegiatan")
  final dynamic kegiatan;
  @override
  @JsonKey(name: "keterangan")
  final dynamic keterangan;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "creator_id")
  final int? datumCreatorId;
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
  @JsonKey(name: "is_kend_dinas")
  final bool? isKendDinas;
  @override
  @JsonKey(name: "interval")
  final int? interval;
  @override
  @JsonKey(name: "catatan_kend")
  final String? catatanKend;
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
  @JsonKey(name: "m_spd.id")
  final int? mSpdId;
  @override
  @JsonKey(name: "m_spd.m_comp_id")
  final int? mSpdMCompId;
  @override
  @JsonKey(name: "m_spd.m_dir_id")
  final int? mSpdMDirId;
  @override
  @JsonKey(name: "m_spd.kode")
  final String? mSpdKode;
  @override
  @JsonKey(name: "m_spd.m_divisi_id")
  final int? mSpdMDivisiId;
  @override
  @JsonKey(name: "m_spd.m_posisi_id")
  final int? mSpdMPosisiId;
  @override
  @JsonKey(name: "m_spd.m_dept_id")
  final int? mSpdMDeptId;
  @override
  @JsonKey(name: "m_spd.m_zona_id")
  final int? mSpdMZonaId;
  @override
  @JsonKey(name: "m_spd.grading_id")
  final dynamic mSpdGradingId;
  @override
  @JsonKey(name: "m_spd.grading")
  final dynamic mSpdGrading;
  @override
  @JsonKey(name: "m_spd.desc")
  final String? mSpdDesc;
  @override
  @JsonKey(name: "m_spd.is_active")
  final bool? mSpdIsActive;
  @override
  @JsonKey(name: "m_spd.creator_id")
  final dynamic mSpdCreatorId;
  @override
  @JsonKey(name: "m_spd.last_editor_id")
  final dynamic mSpdLastEditorId;
  @override
  @JsonKey(name: "m_spd.created_at")
  final String? mSpdCreatedAt;
  @override
  @JsonKey(name: "m_spd.updated_at")
  final String? mSpdUpdatedAt;
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
  final dynamic mDivisiDesc;
  @override
  @JsonKey(name: "m_divisi.is_active")
  final bool? mDivisiIsActive;
  @override
  @JsonKey(name: "m_divisi.creator_id")
  final dynamic mDivisiCreatorId;
  @override
  @JsonKey(name: "m_divisi.last_editor_id")
  final dynamic mDivisiLastEditorId;
  @override
  @JsonKey(name: "m_divisi.created_at")
  final dynamic mDivisiCreatedAt;
  @override
  @JsonKey(name: "m_divisi.updated_at")
  final dynamic mDivisiUpdatedAt;
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
  final dynamic mDeptDesc;
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
  final dynamic mDeptCreatedAt;
  @override
  @JsonKey(name: "m_dept.updated_at")
  final dynamic mDeptUpdatedAt;
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
  @JsonKey(name: "jenis_spd.id")
  final int? jenisSpdId;
  @override
  @JsonKey(name: "jenis_spd.m_comp_id")
  final int? jenisSpdMCompId;
  @override
  @JsonKey(name: "jenis_spd.m_dir_id")
  final dynamic jenisSpdMDirId;
  @override
  @JsonKey(name: "jenis_spd.group")
  final String? jenisSpdGroup;
  @override
  @JsonKey(name: "jenis_spd.key")
  final String? jenisSpdKey;
  @override
  @JsonKey(name: "jenis_spd.code")
  final String? jenisSpdCode;
  @override
  @JsonKey(name: "jenis_spd.value")
  final String? jenisSpdValue;
  @override
  @JsonKey(name: "jenis_spd.is_active")
  final bool? jenisSpdIsActive;
  @override
  @JsonKey(name: "jenis_spd.creator_id")
  final dynamic jenisSpdCreatorId;
  @override
  @JsonKey(name: "jenis_spd.last_editor_id")
  final dynamic jenisSpdLastEditorId;
  @override
  @JsonKey(name: "jenis_spd.created_at")
  final dynamic jenisSpdCreatedAt;
  @override
  @JsonKey(name: "jenis_spd.updated_at")
  final dynamic jenisSpdUpdatedAt;
  @override
  @JsonKey(name: "jenis_spd.value_2")
  final dynamic jenisSpdValue2;
  @override
  @JsonKey(name: "jenis_spd.value_3")
  final dynamic jenisSpdValue3;
  @override
  @JsonKey(name: "m_zona_asal.id")
  final int? mZonaAsalId;
  @override
  @JsonKey(name: "m_zona_asal.m_comp_id")
  final int? mZonaAsalMCompId;
  @override
  @JsonKey(name: "m_zona_asal.m_dir_id")
  final int? mZonaAsalMDirId;
  @override
  @JsonKey(name: "m_zona_asal.kode")
  final String? mZonaAsalKode;
  @override
  @JsonKey(name: "m_zona_asal.nama")
  final String? mZonaAsalNama;
  @override
  @JsonKey(name: "m_zona_asal.desc")
  final String? mZonaAsalDesc;
  @override
  @JsonKey(name: "m_zona_asal.is_active")
  final bool? mZonaAsalIsActive;
  @override
  @JsonKey(name: "m_zona_asal.creator_id")
  final dynamic mZonaAsalCreatorId;
  @override
  @JsonKey(name: "m_zona_asal.last_editor_id")
  final dynamic mZonaAsalLastEditorId;
  @override
  @JsonKey(name: "m_zona_asal.created_at")
  final String? mZonaAsalCreatedAt;
  @override
  @JsonKey(name: "m_zona_asal.updated_at")
  final String? mZonaAsalUpdatedAt;
  @override
  @JsonKey(name: "m_zona_tujuan.id")
  final int? mZonaTujuanId;
  @override
  @JsonKey(name: "m_zona_tujuan.m_comp_id")
  final int? mZonaTujuanMCompId;
  @override
  @JsonKey(name: "m_zona_tujuan.m_dir_id")
  final int? mZonaTujuanMDirId;
  @override
  @JsonKey(name: "m_zona_tujuan.kode")
  final String? mZonaTujuanKode;
  @override
  @JsonKey(name: "m_zona_tujuan.nama")
  final String? mZonaTujuanNama;
  @override
  @JsonKey(name: "m_zona_tujuan.desc")
  final String? mZonaTujuanDesc;
  @override
  @JsonKey(name: "m_zona_tujuan.is_active")
  final bool? mZonaTujuanIsActive;
  @override
  @JsonKey(name: "m_zona_tujuan.creator_id")
  final dynamic mZonaTujuanCreatorId;
  @override
  @JsonKey(name: "m_zona_tujuan.last_editor_id")
  final dynamic mZonaTujuanLastEditorId;
  @override
  @JsonKey(name: "m_zona_tujuan.created_at")
  final String? mZonaTujuanCreatedAt;
  @override
  @JsonKey(name: "m_zona_tujuan.updated_at")
  final String? mZonaTujuanUpdatedAt;
  @override
  @JsonKey(name: "m_lokasi_tujuan.id")
  final int? mLokasiTujuanId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.m_comp_id")
  final int? mLokasiTujuanMCompId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.m_dir_id")
  final int? mLokasiTujuanMDirId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.kode")
  final String? mLokasiTujuanKode;
  @override
  @JsonKey(name: "m_lokasi_tujuan.nama")
  final String? mLokasiTujuanNama;
  @override
  @JsonKey(name: "m_lokasi_tujuan.desc")
  final String? mLokasiTujuanDesc;
  @override
  @JsonKey(name: "m_lokasi_tujuan.is_active")
  final bool? mLokasiTujuanIsActive;
  @override
  @JsonKey(name: "m_lokasi_tujuan.creator_id")
  final dynamic mLokasiTujuanCreatorId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.last_editor_id")
  final dynamic mLokasiTujuanLastEditorId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.created_at")
  final String? mLokasiTujuanCreatedAt;
  @override
  @JsonKey(name: "m_lokasi_tujuan.updated_at")
  final String? mLokasiTujuanUpdatedAt;
  @override
  @JsonKey(name: "m_kary.id")
  final int? mKaryId;
  @override
  @JsonKey(name: "m_kary.m_comp_id")
  final int? mKaryMCompId;
  @override
  @JsonKey(name: "m_kary.m_dir_id")
  final int? mKaryMDirId;
  @override
  @JsonKey(name: "m_kary.m_divisi_id")
  final int? mKaryMDivisiId;
  @override
  @JsonKey(name: "m_kary.m_dept_id")
  final int? mKaryMDeptId;
  @override
  @JsonKey(name: "m_kary.m_zona_id")
  final int? mKaryMZonaId;
  @override
  @JsonKey(name: "m_kary.grading_id")
  final int? mKaryGradingId;
  @override
  @JsonKey(name: "m_kary.costcontre_id")
  final int? mKaryCostcontreId;
  @override
  @JsonKey(name: "m_kary.kode")
  final String? mKaryKode;
  @override
  @JsonKey(name: "m_kary.m_posisi_id")
  final int? mKaryMPosisiId;
  @override
  @JsonKey(name: "m_kary.m_jam_kerja_id")
  final int? mKaryMJamKerjaId;
  @override
  @JsonKey(name: "m_kary.kode_presensi")
  final String? mKaryKodePresensi;
  @override
  @JsonKey(name: "m_kary.nik")
  final String? mKaryNik;
  @override
  @JsonKey(name: "m_kary.nama_depan")
  final String? mKaryNamaDepan;
  @override
  @JsonKey(name: "m_kary.nama_belakang")
  final String? mKaryNamaBelakang;
  @override
  @JsonKey(name: "m_kary.nama_lengkap")
  final String? mKaryNamaLengkap;
  @override
  @JsonKey(name: "m_kary.nama_panggilan")
  final String? mKaryNamaPanggilan;
  @override
  @JsonKey(name: "m_kary.jk_id")
  final int? mKaryJkId;
  @override
  @JsonKey(name: "m_kary.tempat_lahir")
  final String? mKaryTempatLahir;
  @override
  @JsonKey(name: "m_kary.tgl_lahir")
  final String? mKaryTglLahir;
  @override
  @JsonKey(name: "m_kary.provinsi_id")
  final int? mKaryProvinsiId;
  @override
  @JsonKey(name: "m_kary.kota_id")
  final int? mKaryKotaId;
  @override
  @JsonKey(name: "m_kary.kecamatan_id")
  final int? mKaryKecamatanId;
  @override
  @JsonKey(name: "m_kary.kode_pos")
  final String? mKaryKodePos;
  @override
  @JsonKey(name: "m_kary.alamat_asli")
  final String? mKaryAlamatAsli;
  @override
  @JsonKey(name: "m_kary.alamat_domisili")
  final String? mKaryAlamatDomisili;
  @override
  @JsonKey(name: "m_kary.no_tlp")
  final String? mKaryNoTlp;
  @override
  @JsonKey(name: "m_kary.no_tlp_lainnya")
  final String? mKaryNoTlpLainnya;
  @override
  @JsonKey(name: "m_kary.no_darurat")
  final String? mKaryNoDarurat;
  @override
  @JsonKey(name: "m_kary.nama_kontak_darurat")
  final String? mKaryNamaKontakDarurat;
  @override
  @JsonKey(name: "m_kary.agama_id")
  final int? mKaryAgamaId;
  @override
  @JsonKey(name: "m_kary.gol_darah_id")
  final int? mKaryGolDarahId;
  @override
  @JsonKey(name: "m_kary.status_nikah_id")
  final int? mKaryStatusNikahId;
  @override
  @JsonKey(name: "m_kary.tanggungan_id")
  final int? mKaryTanggunganId;
  @override
  @JsonKey(name: "m_kary.hub_dgn_karyawan")
  final String? mKaryHubDgnKaryawan;
  @override
  @JsonKey(name: "m_kary.cuti_jatah_reguler")
  final int? mKaryCutiJatahReguler;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_reguler")
  final int? mKaryCutiSisaReguler;
  @override
  @JsonKey(name: "m_kary.cuti_panjang")
  final int? mKaryCutiPanjang;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_panjang")
  final int? mKaryCutiSisaPanjang;
  @override
  @JsonKey(name: "m_kary.status_kary_id")
  final dynamic mKaryStatusKaryId;
  @override
  @JsonKey(name: "m_kary.lama_kontrak_awal")
  final dynamic mKaryLamaKontrakAwal;
  @override
  @JsonKey(name: "m_kary.lama_kontrak_akhir")
  final dynamic mKaryLamaKontrakAkhir;
  @override
  @JsonKey(name: "m_kary.tgl_masuk")
  final dynamic mKaryTglMasuk;
  @override
  @JsonKey(name: "m_kary.tgl_berhenti")
  final dynamic mKaryTglBerhenti;
  @override
  @JsonKey(name: "m_kary.alasan_berhenti")
  final dynamic mKaryAlasanBerhenti;
  @override
  @JsonKey(name: "m_kary.uk_baju")
  final String? mKaryUkBaju;
  @override
  @JsonKey(name: "m_kary.uk_celana")
  final String? mKaryUkCelana;
  @override
  @JsonKey(name: "m_kary.uk_sepatu")
  final String? mKaryUkSepatu;
  @override
  @JsonKey(name: "m_kary.desc")
  final dynamic mKaryDesc;
  @override
  @JsonKey(name: "m_kary.is_active")
  final bool? mKaryIsActive;
  @override
  @JsonKey(name: "m_kary.creator_id")
  final dynamic mKaryCreatorId;
  @override
  @JsonKey(name: "m_kary.last_editor_id")
  final dynamic mKaryLastEditorId;
  @override
  @JsonKey(name: "m_kary.created_at")
  final String? mKaryCreatedAt;
  @override
  @JsonKey(name: "m_kary.updated_at")
  final String? mKaryUpdatedAt;
  @override
  @JsonKey(name: "m_kary.m_standart_gaji_id")
  final int? mKaryMStandartGajiId;
  @override
  @JsonKey(name: "m_kary.periode_gaji_id")
  final int? mKaryPeriodeGajiId;
  @override
  @JsonKey(name: "m_kary.ref_id")
  final int? mKaryRefId;
  @override
  @JsonKey(name: "m_kary.presensi_lokasi_default_id")
  final dynamic mKaryPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "m_kary.exp_date_cuti")
  final dynamic mKaryExpDateCuti;
  @override
  @JsonKey(name: "m_kary.limit_potong")
  final int? mKaryLimitPotong;
  @override
  @JsonKey(name: "m_kary.atasan_id")
  final int? mKaryAtasanId;
  @override
  @JsonKey(name: "m_kary.cuti_p24")
  final dynamic mKaryCutiP24;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_p24")
  final dynamic mKaryCutiSisaP24;
  @override
  @JsonKey(name: "pic.id")
  final dynamic picId;
  @override
  @JsonKey(name: "pic.m_comp_id")
  final dynamic picMCompId;
  @override
  @JsonKey(name: "pic.m_dir_id")
  final dynamic picMDirId;
  @override
  @JsonKey(name: "pic.m_divisi_id")
  final dynamic picMDivisiId;
  @override
  @JsonKey(name: "pic.m_dept_id")
  final dynamic picMDeptId;
  @override
  @JsonKey(name: "pic.m_zona_id")
  final dynamic picMZonaId;
  @override
  @JsonKey(name: "pic.grading_id")
  final dynamic picGradingId;
  @override
  @JsonKey(name: "pic.costcontre_id")
  final dynamic picCostcontreId;
  @override
  @JsonKey(name: "pic.kode")
  final dynamic picKode;
  @override
  @JsonKey(name: "pic.m_posisi_id")
  final dynamic picMPosisiId;
  @override
  @JsonKey(name: "pic.m_jam_kerja_id")
  final dynamic picMJamKerjaId;
  @override
  @JsonKey(name: "pic.kode_presensi")
  final dynamic picKodePresensi;
  @override
  @JsonKey(name: "pic.nik")
  final dynamic picNik;
  @override
  @JsonKey(name: "pic.nama_depan")
  final dynamic picNamaDepan;
  @override
  @JsonKey(name: "pic.nama_belakang")
  final dynamic picNamaBelakang;
  @override
  @JsonKey(name: "pic.nama_lengkap")
  final dynamic picNamaLengkap;
  @override
  @JsonKey(name: "pic.nama_panggilan")
  final dynamic picNamaPanggilan;
  @override
  @JsonKey(name: "pic.jk_id")
  final dynamic picJkId;
  @override
  @JsonKey(name: "pic.tempat_lahir")
  final dynamic picTempatLahir;
  @override
  @JsonKey(name: "pic.tgl_lahir")
  final dynamic picTglLahir;
  @override
  @JsonKey(name: "pic.provinsi_id")
  final dynamic picProvinsiId;
  @override
  @JsonKey(name: "pic.kota_id")
  final dynamic picKotaId;
  @override
  @JsonKey(name: "pic.kecamatan_id")
  final dynamic picKecamatanId;
  @override
  @JsonKey(name: "pic.kode_pos")
  final dynamic picKodePos;
  @override
  @JsonKey(name: "pic.alamat_asli")
  final dynamic picAlamatAsli;
  @override
  @JsonKey(name: "pic.alamat_domisili")
  final dynamic picAlamatDomisili;
  @override
  @JsonKey(name: "pic.no_tlp")
  final dynamic picNoTlp;
  @override
  @JsonKey(name: "pic.no_tlp_lainnya")
  final dynamic picNoTlpLainnya;
  @override
  @JsonKey(name: "pic.no_darurat")
  final dynamic picNoDarurat;
  @override
  @JsonKey(name: "pic.nama_kontak_darurat")
  final dynamic picNamaKontakDarurat;
  @override
  @JsonKey(name: "pic.agama_id")
  final dynamic picAgamaId;
  @override
  @JsonKey(name: "pic.gol_darah_id")
  final dynamic picGolDarahId;
  @override
  @JsonKey(name: "pic.status_nikah_id")
  final dynamic picStatusNikahId;
  @override
  @JsonKey(name: "pic.tanggungan_id")
  final dynamic picTanggunganId;
  @override
  @JsonKey(name: "pic.hub_dgn_karyawan")
  final dynamic picHubDgnKaryawan;
  @override
  @JsonKey(name: "pic.cuti_jatah_reguler")
  final dynamic picCutiJatahReguler;
  @override
  @JsonKey(name: "pic.cuti_sisa_reguler")
  final dynamic picCutiSisaReguler;
  @override
  @JsonKey(name: "pic.cuti_panjang")
  final dynamic picCutiPanjang;
  @override
  @JsonKey(name: "pic.cuti_sisa_panjang")
  final dynamic picCutiSisaPanjang;
  @override
  @JsonKey(name: "pic.status_kary_id")
  final dynamic picStatusKaryId;
  @override
  @JsonKey(name: "pic.lama_kontrak_awal")
  final dynamic picLamaKontrakAwal;
  @override
  @JsonKey(name: "pic.lama_kontrak_akhir")
  final dynamic picLamaKontrakAkhir;
  @override
  @JsonKey(name: "pic.tgl_masuk")
  final dynamic picTglMasuk;
  @override
  @JsonKey(name: "pic.tgl_berhenti")
  final dynamic picTglBerhenti;
  @override
  @JsonKey(name: "pic.alasan_berhenti")
  final dynamic picAlasanBerhenti;
  @override
  @JsonKey(name: "pic.uk_baju")
  final dynamic picUkBaju;
  @override
  @JsonKey(name: "pic.uk_celana")
  final dynamic picUkCelana;
  @override
  @JsonKey(name: "pic.uk_sepatu")
  final dynamic picUkSepatu;
  @override
  @JsonKey(name: "pic.desc")
  final dynamic picDesc;
  @override
  @JsonKey(name: "pic.is_active")
  final dynamic picIsActive;
  @override
  @JsonKey(name: "pic.creator_id")
  final dynamic picCreatorId;
  @override
  @JsonKey(name: "pic.last_editor_id")
  final dynamic picLastEditorId;
  @override
  @JsonKey(name: "pic.created_at")
  final dynamic picCreatedAt;
  @override
  @JsonKey(name: "pic.updated_at")
  final dynamic picUpdatedAt;
  @override
  @JsonKey(name: "pic.m_standart_gaji_id")
  final dynamic picMStandartGajiId;
  @override
  @JsonKey(name: "pic.periode_gaji_id")
  final dynamic picPeriodeGajiId;
  @override
  @JsonKey(name: "pic.ref_id")
  final dynamic picRefId;
  @override
  @JsonKey(name: "pic.presensi_lokasi_default_id")
  final dynamic picPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "pic.exp_date_cuti")
  final dynamic picExpDateCuti;
  @override
  @JsonKey(name: "pic.limit_potong")
  final dynamic picLimitPotong;
  @override
  @JsonKey(name: "pic.atasan_id")
  final dynamic picAtasanId;
  @override
  @JsonKey(name: "pic.cuti_p24")
  final dynamic picCutiP24;
  @override
  @JsonKey(name: "pic.cuti_sisa_p24")
  final dynamic picCutiSisaP24;
  @override
  @JsonKey(name: "creator.id")
  final int? creatorId;
  @override
  @JsonKey(name: "creator.name")
  final String? creatorName;
  @override
  @JsonKey(name: "creator.email")
  final dynamic creatorEmail;
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
  final int? creatorCreatorId;
  @override
  @JsonKey(name: "creator.last_editor_id")
  final dynamic creatorLastEditorId;
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
  @JsonKey(name: "approval_note")
  final String? approvalNote;
  @override
  @JsonKey(name: "nama_pic")
  final String? namaPic;

  @override
  String toString() {
    return 'DataDinas(metaRead: $metaRead, metaDelete: $metaDelete, metaUpdate: $metaUpdate, metaCreate: $metaCreate, id: $id, nomor: $nomor, datumMCompId: $datumMCompId, datumMSpdId: $datumMSpdId, datumMDirId: $datumMDirId, datumMDivisiId: $datumMDivisiId, datumMDeptId: $datumMDeptId, datumMPosisiId: $datumMPosisiId, tanggal: $tanggal, tglAcaraAwal: $tglAcaraAwal, tglAcaraAkhir: $tglAcaraAkhir, datumJenisSpdId: $datumJenisSpdId, datumMZonaAsalId: $datumMZonaAsalId, datumMZonaTujuanId: $datumMZonaTujuanId, datumMLokasiTujuanId: $datumMLokasiTujuanId, datumMKaryId: $datumMKaryId, datumPicId: $datumPicId, totalBiaya: $totalBiaya, kegiatan: $kegiatan, keterangan: $keterangan, status: $status, datumCreatorId: $datumCreatorId, datumLastEditorId: $datumLastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, isKendDinas: $isKendDinas, interval: $interval, catatanKend: $catatanKend, mCompId: $mCompId, mCompNama: $mCompNama, mCompIsActive: $mCompIsActive, mCompDesc: $mCompDesc, mCompCreatorId: $mCompCreatorId, mCompLastEditorId: $mCompLastEditorId, mCompCreatedAt: $mCompCreatedAt, mCompUpdatedAt: $mCompUpdatedAt, mSpdId: $mSpdId, mSpdMCompId: $mSpdMCompId, mSpdMDirId: $mSpdMDirId, mSpdKode: $mSpdKode, mSpdMDivisiId: $mSpdMDivisiId, mSpdMPosisiId: $mSpdMPosisiId, mSpdMDeptId: $mSpdMDeptId, mSpdMZonaId: $mSpdMZonaId, mSpdGradingId: $mSpdGradingId, mSpdGrading: $mSpdGrading, mSpdDesc: $mSpdDesc, mSpdIsActive: $mSpdIsActive, mSpdCreatorId: $mSpdCreatorId, mSpdLastEditorId: $mSpdLastEditorId, mSpdCreatedAt: $mSpdCreatedAt, mSpdUpdatedAt: $mSpdUpdatedAt, mDirId: $mDirId, mDirMCompId: $mDirMCompId, mDirNama: $mDirNama, mDirDesc: $mDirDesc, mDirIsActive: $mDirIsActive, mDirCreatorId: $mDirCreatorId, mDirLastEditorId: $mDirLastEditorId, mDirCreatedAt: $mDirCreatedAt, mDirUpdatedAt: $mDirUpdatedAt, mDivisiId: $mDivisiId, mDivisiMCompId: $mDivisiMCompId, mDivisiMDirId: $mDivisiMDirId, mDivisiNama: $mDivisiNama, mDivisiDesc: $mDivisiDesc, mDivisiIsActive: $mDivisiIsActive, mDivisiCreatorId: $mDivisiCreatorId, mDivisiLastEditorId: $mDivisiLastEditorId, mDivisiCreatedAt: $mDivisiCreatedAt, mDivisiUpdatedAt: $mDivisiUpdatedAt, mDeptId: $mDeptId, mDeptMDirId: $mDeptMDirId, mDeptMDivisiId: $mDeptMDivisiId, mDeptNama: $mDeptNama, mDeptDesc: $mDeptDesc, mDeptIsActive: $mDeptIsActive, mDeptCreatorId: $mDeptCreatorId, mDeptLastEditorId: $mDeptLastEditorId, mDeptCreatedAt: $mDeptCreatedAt, mDeptUpdatedAt: $mDeptUpdatedAt, mPosisiId: $mPosisiId, mPosisiMCompId: $mPosisiMCompId, mPosisiMDirId: $mPosisiMDirId, mPosisiKode: $mPosisiKode, mPosisiDescKerja: $mPosisiDescKerja, mPosisiDescKerja1: $mPosisiDescKerja1, mPosisiDescKerja2: $mPosisiDescKerja2, mPosisiMinPengalaman: $mPosisiMinPengalaman, mPosisiMinPendidikanId: $mPosisiMinPendidikanId, mPosisiMinGajiPokok: $mPosisiMinGajiPokok, mPosisiMaxGajiPokok: $mPosisiMaxGajiPokok, mPosisiBiaya: $mPosisiBiaya, mPosisiTipeBpjsId: $mPosisiTipeBpjsId, mPosisiPotonganBpjs: $mPosisiPotonganBpjs, mPosisiDesc: $mPosisiDesc, mPosisiIsActive: $mPosisiIsActive, mPosisiCreatorId: $mPosisiCreatorId, mPosisiLastEditorId: $mPosisiLastEditorId, mPosisiCreatedAt: $mPosisiCreatedAt, mPosisiUpdatedAt: $mPosisiUpdatedAt, jenisSpdId: $jenisSpdId, jenisSpdMCompId: $jenisSpdMCompId, jenisSpdMDirId: $jenisSpdMDirId, jenisSpdGroup: $jenisSpdGroup, jenisSpdKey: $jenisSpdKey, jenisSpdCode: $jenisSpdCode, jenisSpdValue: $jenisSpdValue, jenisSpdIsActive: $jenisSpdIsActive, jenisSpdCreatorId: $jenisSpdCreatorId, jenisSpdLastEditorId: $jenisSpdLastEditorId, jenisSpdCreatedAt: $jenisSpdCreatedAt, jenisSpdUpdatedAt: $jenisSpdUpdatedAt, jenisSpdValue2: $jenisSpdValue2, jenisSpdValue3: $jenisSpdValue3, mZonaAsalId: $mZonaAsalId, mZonaAsalMCompId: $mZonaAsalMCompId, mZonaAsalMDirId: $mZonaAsalMDirId, mZonaAsalKode: $mZonaAsalKode, mZonaAsalNama: $mZonaAsalNama, mZonaAsalDesc: $mZonaAsalDesc, mZonaAsalIsActive: $mZonaAsalIsActive, mZonaAsalCreatorId: $mZonaAsalCreatorId, mZonaAsalLastEditorId: $mZonaAsalLastEditorId, mZonaAsalCreatedAt: $mZonaAsalCreatedAt, mZonaAsalUpdatedAt: $mZonaAsalUpdatedAt, mZonaTujuanId: $mZonaTujuanId, mZonaTujuanMCompId: $mZonaTujuanMCompId, mZonaTujuanMDirId: $mZonaTujuanMDirId, mZonaTujuanKode: $mZonaTujuanKode, mZonaTujuanNama: $mZonaTujuanNama, mZonaTujuanDesc: $mZonaTujuanDesc, mZonaTujuanIsActive: $mZonaTujuanIsActive, mZonaTujuanCreatorId: $mZonaTujuanCreatorId, mZonaTujuanLastEditorId: $mZonaTujuanLastEditorId, mZonaTujuanCreatedAt: $mZonaTujuanCreatedAt, mZonaTujuanUpdatedAt: $mZonaTujuanUpdatedAt, mLokasiTujuanId: $mLokasiTujuanId, mLokasiTujuanMCompId: $mLokasiTujuanMCompId, mLokasiTujuanMDirId: $mLokasiTujuanMDirId, mLokasiTujuanKode: $mLokasiTujuanKode, mLokasiTujuanNama: $mLokasiTujuanNama, mLokasiTujuanDesc: $mLokasiTujuanDesc, mLokasiTujuanIsActive: $mLokasiTujuanIsActive, mLokasiTujuanCreatorId: $mLokasiTujuanCreatorId, mLokasiTujuanLastEditorId: $mLokasiTujuanLastEditorId, mLokasiTujuanCreatedAt: $mLokasiTujuanCreatedAt, mLokasiTujuanUpdatedAt: $mLokasiTujuanUpdatedAt, mKaryId: $mKaryId, mKaryMCompId: $mKaryMCompId, mKaryMDirId: $mKaryMDirId, mKaryMDivisiId: $mKaryMDivisiId, mKaryMDeptId: $mKaryMDeptId, mKaryMZonaId: $mKaryMZonaId, mKaryGradingId: $mKaryGradingId, mKaryCostcontreId: $mKaryCostcontreId, mKaryKode: $mKaryKode, mKaryMPosisiId: $mKaryMPosisiId, mKaryMJamKerjaId: $mKaryMJamKerjaId, mKaryKodePresensi: $mKaryKodePresensi, mKaryNik: $mKaryNik, mKaryNamaDepan: $mKaryNamaDepan, mKaryNamaBelakang: $mKaryNamaBelakang, mKaryNamaLengkap: $mKaryNamaLengkap, mKaryNamaPanggilan: $mKaryNamaPanggilan, mKaryJkId: $mKaryJkId, mKaryTempatLahir: $mKaryTempatLahir, mKaryTglLahir: $mKaryTglLahir, mKaryProvinsiId: $mKaryProvinsiId, mKaryKotaId: $mKaryKotaId, mKaryKecamatanId: $mKaryKecamatanId, mKaryKodePos: $mKaryKodePos, mKaryAlamatAsli: $mKaryAlamatAsli, mKaryAlamatDomisili: $mKaryAlamatDomisili, mKaryNoTlp: $mKaryNoTlp, mKaryNoTlpLainnya: $mKaryNoTlpLainnya, mKaryNoDarurat: $mKaryNoDarurat, mKaryNamaKontakDarurat: $mKaryNamaKontakDarurat, mKaryAgamaId: $mKaryAgamaId, mKaryGolDarahId: $mKaryGolDarahId, mKaryStatusNikahId: $mKaryStatusNikahId, mKaryTanggunganId: $mKaryTanggunganId, mKaryHubDgnKaryawan: $mKaryHubDgnKaryawan, mKaryCutiJatahReguler: $mKaryCutiJatahReguler, mKaryCutiSisaReguler: $mKaryCutiSisaReguler, mKaryCutiPanjang: $mKaryCutiPanjang, mKaryCutiSisaPanjang: $mKaryCutiSisaPanjang, mKaryStatusKaryId: $mKaryStatusKaryId, mKaryLamaKontrakAwal: $mKaryLamaKontrakAwal, mKaryLamaKontrakAkhir: $mKaryLamaKontrakAkhir, mKaryTglMasuk: $mKaryTglMasuk, mKaryTglBerhenti: $mKaryTglBerhenti, mKaryAlasanBerhenti: $mKaryAlasanBerhenti, mKaryUkBaju: $mKaryUkBaju, mKaryUkCelana: $mKaryUkCelana, mKaryUkSepatu: $mKaryUkSepatu, mKaryDesc: $mKaryDesc, mKaryIsActive: $mKaryIsActive, mKaryCreatorId: $mKaryCreatorId, mKaryLastEditorId: $mKaryLastEditorId, mKaryCreatedAt: $mKaryCreatedAt, mKaryUpdatedAt: $mKaryUpdatedAt, mKaryMStandartGajiId: $mKaryMStandartGajiId, mKaryPeriodeGajiId: $mKaryPeriodeGajiId, mKaryRefId: $mKaryRefId, mKaryPresensiLokasiDefaultId: $mKaryPresensiLokasiDefaultId, mKaryExpDateCuti: $mKaryExpDateCuti, mKaryLimitPotong: $mKaryLimitPotong, mKaryAtasanId: $mKaryAtasanId, mKaryCutiP24: $mKaryCutiP24, mKaryCutiSisaP24: $mKaryCutiSisaP24, picId: $picId, picMCompId: $picMCompId, picMDirId: $picMDirId, picMDivisiId: $picMDivisiId, picMDeptId: $picMDeptId, picMZonaId: $picMZonaId, picGradingId: $picGradingId, picCostcontreId: $picCostcontreId, picKode: $picKode, picMPosisiId: $picMPosisiId, picMJamKerjaId: $picMJamKerjaId, picKodePresensi: $picKodePresensi, picNik: $picNik, picNamaDepan: $picNamaDepan, picNamaBelakang: $picNamaBelakang, picNamaLengkap: $picNamaLengkap, picNamaPanggilan: $picNamaPanggilan, picJkId: $picJkId, picTempatLahir: $picTempatLahir, picTglLahir: $picTglLahir, picProvinsiId: $picProvinsiId, picKotaId: $picKotaId, picKecamatanId: $picKecamatanId, picKodePos: $picKodePos, picAlamatAsli: $picAlamatAsli, picAlamatDomisili: $picAlamatDomisili, picNoTlp: $picNoTlp, picNoTlpLainnya: $picNoTlpLainnya, picNoDarurat: $picNoDarurat, picNamaKontakDarurat: $picNamaKontakDarurat, picAgamaId: $picAgamaId, picGolDarahId: $picGolDarahId, picStatusNikahId: $picStatusNikahId, picTanggunganId: $picTanggunganId, picHubDgnKaryawan: $picHubDgnKaryawan, picCutiJatahReguler: $picCutiJatahReguler, picCutiSisaReguler: $picCutiSisaReguler, picCutiPanjang: $picCutiPanjang, picCutiSisaPanjang: $picCutiSisaPanjang, picStatusKaryId: $picStatusKaryId, picLamaKontrakAwal: $picLamaKontrakAwal, picLamaKontrakAkhir: $picLamaKontrakAkhir, picTglMasuk: $picTglMasuk, picTglBerhenti: $picTglBerhenti, picAlasanBerhenti: $picAlasanBerhenti, picUkBaju: $picUkBaju, picUkCelana: $picUkCelana, picUkSepatu: $picUkSepatu, picDesc: $picDesc, picIsActive: $picIsActive, picCreatorId: $picCreatorId, picLastEditorId: $picLastEditorId, picCreatedAt: $picCreatedAt, picUpdatedAt: $picUpdatedAt, picMStandartGajiId: $picMStandartGajiId, picPeriodeGajiId: $picPeriodeGajiId, picRefId: $picRefId, picPresensiLokasiDefaultId: $picPresensiLokasiDefaultId, picExpDateCuti: $picExpDateCuti, picLimitPotong: $picLimitPotong, picAtasanId: $picAtasanId, picCutiP24: $picCutiP24, picCutiSisaP24: $picCutiSisaP24, creatorId: $creatorId, creatorName: $creatorName, creatorEmail: $creatorEmail, creatorUsername: $creatorUsername, creatorEmailVerifiedAt: $creatorEmailVerifiedAt, creatorPassword: $creatorPassword, creatorMCompId: $creatorMCompId, creatorMDirId: $creatorMDirId, creatorIsActive: $creatorIsActive, creatorCreatorId: $creatorCreatorId, creatorLastEditorId: $creatorLastEditorId, creatorRememberToken: $creatorRememberToken, creatorCreatedAt: $creatorCreatedAt, creatorUpdatedAt: $creatorUpdatedAt, creatorProfilImage: $creatorProfilImage, creatorTelp: $creatorTelp, creatorMKaryId: $creatorMKaryId, lastEditorId: $lastEditorId, lastEditorName: $lastEditorName, lastEditorEmail: $lastEditorEmail, lastEditorUsername: $lastEditorUsername, lastEditorEmailVerifiedAt: $lastEditorEmailVerifiedAt, lastEditorPassword: $lastEditorPassword, lastEditorMCompId: $lastEditorMCompId, lastEditorMDirId: $lastEditorMDirId, lastEditorIsActive: $lastEditorIsActive, lastEditorCreatorId: $lastEditorCreatorId, lastEditorLastEditorId: $lastEditorLastEditorId, lastEditorRememberToken: $lastEditorRememberToken, lastEditorCreatedAt: $lastEditorCreatedAt, lastEditorUpdatedAt: $lastEditorUpdatedAt, lastEditorProfilImage: $lastEditorProfilImage, lastEditorTelp: $lastEditorTelp, lastEditorMKaryId: $lastEditorMKaryId, approvalNote: $approvalNote, namaPic: $namaPic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDinasImpl &&
            (identical(other.metaRead, metaRead) ||
                other.metaRead == metaRead) &&
            (identical(other.metaDelete, metaDelete) ||
                other.metaDelete == metaDelete) &&
            (identical(other.metaUpdate, metaUpdate) ||
                other.metaUpdate == metaUpdate) &&
            (identical(other.metaCreate, metaCreate) ||
                other.metaCreate == metaCreate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.datumMCompId, datumMCompId) ||
                other.datumMCompId == datumMCompId) &&
            (identical(other.datumMSpdId, datumMSpdId) ||
                other.datumMSpdId == datumMSpdId) &&
            (identical(other.datumMDirId, datumMDirId) ||
                other.datumMDirId == datumMDirId) &&
            (identical(other.datumMDivisiId, datumMDivisiId) ||
                other.datumMDivisiId == datumMDivisiId) &&
            (identical(other.datumMDeptId, datumMDeptId) ||
                other.datumMDeptId == datumMDeptId) &&
            (identical(other.datumMPosisiId, datumMPosisiId) ||
                other.datumMPosisiId == datumMPosisiId) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.tglAcaraAwal, tglAcaraAwal) ||
                other.tglAcaraAwal == tglAcaraAwal) &&
            (identical(other.tglAcaraAkhir, tglAcaraAkhir) ||
                other.tglAcaraAkhir == tglAcaraAkhir) &&
            (identical(other.datumJenisSpdId, datumJenisSpdId) ||
                other.datumJenisSpdId == datumJenisSpdId) &&
            (identical(other.datumMZonaAsalId, datumMZonaAsalId) ||
                other.datumMZonaAsalId == datumMZonaAsalId) &&
            (identical(other.datumMZonaTujuanId, datumMZonaTujuanId) ||
                other.datumMZonaTujuanId == datumMZonaTujuanId) &&
            (identical(other.datumMLokasiTujuanId, datumMLokasiTujuanId) ||
                other.datumMLokasiTujuanId == datumMLokasiTujuanId) &&
            (identical(other.datumMKaryId, datumMKaryId) ||
                other.datumMKaryId == datumMKaryId) &&
            (identical(other.datumPicId, datumPicId) ||
                other.datumPicId == datumPicId) &&
            (identical(other.totalBiaya, totalBiaya) ||
                other.totalBiaya == totalBiaya) &&
            const DeepCollectionEquality().equals(other.kegiatan, kegiatan) &&
            const DeepCollectionEquality()
                .equals(other.keterangan, keterangan) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.datumCreatorId, datumCreatorId) ||
                other.datumCreatorId == datumCreatorId) &&
            const DeepCollectionEquality()
                .equals(other.datumLastEditorId, datumLastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isKendDinas, isKendDinas) ||
                other.isKendDinas == isKendDinas) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.catatanKend, catatanKend) ||
                other.catatanKend == catatanKend) &&
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
            (identical(other.mSpdId, mSpdId) || other.mSpdId == mSpdId) &&
            (identical(other.mSpdMCompId, mSpdMCompId) ||
                other.mSpdMCompId == mSpdMCompId) &&
            (identical(other.mSpdMDirId, mSpdMDirId) ||
                other.mSpdMDirId == mSpdMDirId) &&
            (identical(other.mSpdKode, mSpdKode) ||
                other.mSpdKode == mSpdKode) &&
            (identical(other.mSpdMDivisiId, mSpdMDivisiId) ||
                other.mSpdMDivisiId == mSpdMDivisiId) &&
            (identical(other.mSpdMPosisiId, mSpdMPosisiId) ||
                other.mSpdMPosisiId == mSpdMPosisiId) &&
            (identical(other.mSpdMDeptId, mSpdMDeptId) ||
                other.mSpdMDeptId == mSpdMDeptId) &&
            (identical(other.mSpdMZonaId, mSpdMZonaId) ||
                other.mSpdMZonaId == mSpdMZonaId) &&
            const DeepCollectionEquality()
                .equals(other.mSpdGradingId, mSpdGradingId) &&
            const DeepCollectionEquality()
                .equals(other.mSpdGrading, mSpdGrading) &&
            (identical(other.mSpdDesc, mSpdDesc) ||
                other.mSpdDesc == mSpdDesc) &&
            (identical(other.mSpdIsActive, mSpdIsActive) || other.mSpdIsActive == mSpdIsActive) &&
            const DeepCollectionEquality().equals(other.mSpdCreatorId, mSpdCreatorId) &&
            const DeepCollectionEquality().equals(other.mSpdLastEditorId, mSpdLastEditorId) &&
            (identical(other.mSpdCreatedAt, mSpdCreatedAt) || other.mSpdCreatedAt == mSpdCreatedAt) &&
            (identical(other.mSpdUpdatedAt, mSpdUpdatedAt) || other.mSpdUpdatedAt == mSpdUpdatedAt) &&
            const DeepCollectionEquality().equals(other.mDirId, mDirId) &&
            const DeepCollectionEquality().equals(other.mDirMCompId, mDirMCompId) &&
            const DeepCollectionEquality().equals(other.mDirNama, mDirNama) &&
            const DeepCollectionEquality().equals(other.mDirDesc, mDirDesc) &&
            const DeepCollectionEquality().equals(other.mDirIsActive, mDirIsActive) &&
            const DeepCollectionEquality().equals(other.mDirCreatorId, mDirCreatorId) &&
            const DeepCollectionEquality().equals(other.mDirLastEditorId, mDirLastEditorId) &&
            const DeepCollectionEquality().equals(other.mDirCreatedAt, mDirCreatedAt) &&
            const DeepCollectionEquality().equals(other.mDirUpdatedAt, mDirUpdatedAt) &&
            (identical(other.mDivisiId, mDivisiId) || other.mDivisiId == mDivisiId) &&
            (identical(other.mDivisiMCompId, mDivisiMCompId) || other.mDivisiMCompId == mDivisiMCompId) &&
            (identical(other.mDivisiMDirId, mDivisiMDirId) || other.mDivisiMDirId == mDivisiMDirId) &&
            (identical(other.mDivisiNama, mDivisiNama) || other.mDivisiNama == mDivisiNama) &&
            const DeepCollectionEquality().equals(other.mDivisiDesc, mDivisiDesc) &&
            (identical(other.mDivisiIsActive, mDivisiIsActive) || other.mDivisiIsActive == mDivisiIsActive) &&
            const DeepCollectionEquality().equals(other.mDivisiCreatorId, mDivisiCreatorId) &&
            const DeepCollectionEquality().equals(other.mDivisiLastEditorId, mDivisiLastEditorId) &&
            const DeepCollectionEquality().equals(other.mDivisiCreatedAt, mDivisiCreatedAt) &&
            const DeepCollectionEquality().equals(other.mDivisiUpdatedAt, mDivisiUpdatedAt) &&
            (identical(other.mDeptId, mDeptId) || other.mDeptId == mDeptId) &&
            (identical(other.mDeptMDirId, mDeptMDirId) || other.mDeptMDirId == mDeptMDirId) &&
            (identical(other.mDeptMDivisiId, mDeptMDivisiId) || other.mDeptMDivisiId == mDeptMDivisiId) &&
            (identical(other.mDeptNama, mDeptNama) || other.mDeptNama == mDeptNama) &&
            const DeepCollectionEquality().equals(other.mDeptDesc, mDeptDesc) &&
            (identical(other.mDeptIsActive, mDeptIsActive) || other.mDeptIsActive == mDeptIsActive) &&
            const DeepCollectionEquality().equals(other.mDeptCreatorId, mDeptCreatorId) &&
            const DeepCollectionEquality().equals(other.mDeptLastEditorId, mDeptLastEditorId) &&
            const DeepCollectionEquality().equals(other.mDeptCreatedAt, mDeptCreatedAt) &&
            const DeepCollectionEquality().equals(other.mDeptUpdatedAt, mDeptUpdatedAt) &&
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
            (identical(other.jenisSpdId, jenisSpdId) || other.jenisSpdId == jenisSpdId) &&
            (identical(other.jenisSpdMCompId, jenisSpdMCompId) || other.jenisSpdMCompId == jenisSpdMCompId) &&
            const DeepCollectionEquality().equals(other.jenisSpdMDirId, jenisSpdMDirId) &&
            (identical(other.jenisSpdGroup, jenisSpdGroup) || other.jenisSpdGroup == jenisSpdGroup) &&
            (identical(other.jenisSpdKey, jenisSpdKey) || other.jenisSpdKey == jenisSpdKey) &&
            (identical(other.jenisSpdCode, jenisSpdCode) || other.jenisSpdCode == jenisSpdCode) &&
            (identical(other.jenisSpdValue, jenisSpdValue) || other.jenisSpdValue == jenisSpdValue) &&
            (identical(other.jenisSpdIsActive, jenisSpdIsActive) || other.jenisSpdIsActive == jenisSpdIsActive) &&
            const DeepCollectionEquality().equals(other.jenisSpdCreatorId, jenisSpdCreatorId) &&
            const DeepCollectionEquality().equals(other.jenisSpdLastEditorId, jenisSpdLastEditorId) &&
            const DeepCollectionEquality().equals(other.jenisSpdCreatedAt, jenisSpdCreatedAt) &&
            const DeepCollectionEquality().equals(other.jenisSpdUpdatedAt, jenisSpdUpdatedAt) &&
            const DeepCollectionEquality().equals(other.jenisSpdValue2, jenisSpdValue2) &&
            const DeepCollectionEquality().equals(other.jenisSpdValue3, jenisSpdValue3) &&
            (identical(other.mZonaAsalId, mZonaAsalId) || other.mZonaAsalId == mZonaAsalId) &&
            (identical(other.mZonaAsalMCompId, mZonaAsalMCompId) || other.mZonaAsalMCompId == mZonaAsalMCompId) &&
            (identical(other.mZonaAsalMDirId, mZonaAsalMDirId) || other.mZonaAsalMDirId == mZonaAsalMDirId) &&
            (identical(other.mZonaAsalKode, mZonaAsalKode) || other.mZonaAsalKode == mZonaAsalKode) &&
            (identical(other.mZonaAsalNama, mZonaAsalNama) || other.mZonaAsalNama == mZonaAsalNama) &&
            (identical(other.mZonaAsalDesc, mZonaAsalDesc) || other.mZonaAsalDesc == mZonaAsalDesc) &&
            (identical(other.mZonaAsalIsActive, mZonaAsalIsActive) || other.mZonaAsalIsActive == mZonaAsalIsActive) &&
            const DeepCollectionEquality().equals(other.mZonaAsalCreatorId, mZonaAsalCreatorId) &&
            const DeepCollectionEquality().equals(other.mZonaAsalLastEditorId, mZonaAsalLastEditorId) &&
            (identical(other.mZonaAsalCreatedAt, mZonaAsalCreatedAt) || other.mZonaAsalCreatedAt == mZonaAsalCreatedAt) &&
            (identical(other.mZonaAsalUpdatedAt, mZonaAsalUpdatedAt) || other.mZonaAsalUpdatedAt == mZonaAsalUpdatedAt) &&
            (identical(other.mZonaTujuanId, mZonaTujuanId) || other.mZonaTujuanId == mZonaTujuanId) &&
            (identical(other.mZonaTujuanMCompId, mZonaTujuanMCompId) || other.mZonaTujuanMCompId == mZonaTujuanMCompId) &&
            (identical(other.mZonaTujuanMDirId, mZonaTujuanMDirId) || other.mZonaTujuanMDirId == mZonaTujuanMDirId) &&
            (identical(other.mZonaTujuanKode, mZonaTujuanKode) || other.mZonaTujuanKode == mZonaTujuanKode) &&
            (identical(other.mZonaTujuanNama, mZonaTujuanNama) || other.mZonaTujuanNama == mZonaTujuanNama) &&
            (identical(other.mZonaTujuanDesc, mZonaTujuanDesc) || other.mZonaTujuanDesc == mZonaTujuanDesc) &&
            (identical(other.mZonaTujuanIsActive, mZonaTujuanIsActive) || other.mZonaTujuanIsActive == mZonaTujuanIsActive) &&
            const DeepCollectionEquality().equals(other.mZonaTujuanCreatorId, mZonaTujuanCreatorId) &&
            const DeepCollectionEquality().equals(other.mZonaTujuanLastEditorId, mZonaTujuanLastEditorId) &&
            (identical(other.mZonaTujuanCreatedAt, mZonaTujuanCreatedAt) || other.mZonaTujuanCreatedAt == mZonaTujuanCreatedAt) &&
            (identical(other.mZonaTujuanUpdatedAt, mZonaTujuanUpdatedAt) || other.mZonaTujuanUpdatedAt == mZonaTujuanUpdatedAt) &&
            (identical(other.mLokasiTujuanId, mLokasiTujuanId) || other.mLokasiTujuanId == mLokasiTujuanId) &&
            (identical(other.mLokasiTujuanMCompId, mLokasiTujuanMCompId) || other.mLokasiTujuanMCompId == mLokasiTujuanMCompId) &&
            (identical(other.mLokasiTujuanMDirId, mLokasiTujuanMDirId) || other.mLokasiTujuanMDirId == mLokasiTujuanMDirId) &&
            (identical(other.mLokasiTujuanKode, mLokasiTujuanKode) || other.mLokasiTujuanKode == mLokasiTujuanKode) &&
            (identical(other.mLokasiTujuanNama, mLokasiTujuanNama) || other.mLokasiTujuanNama == mLokasiTujuanNama) &&
            (identical(other.mLokasiTujuanDesc, mLokasiTujuanDesc) || other.mLokasiTujuanDesc == mLokasiTujuanDesc) &&
            (identical(other.mLokasiTujuanIsActive, mLokasiTujuanIsActive) || other.mLokasiTujuanIsActive == mLokasiTujuanIsActive) &&
            const DeepCollectionEquality().equals(other.mLokasiTujuanCreatorId, mLokasiTujuanCreatorId) &&
            const DeepCollectionEquality().equals(other.mLokasiTujuanLastEditorId, mLokasiTujuanLastEditorId) &&
            (identical(other.mLokasiTujuanCreatedAt, mLokasiTujuanCreatedAt) || other.mLokasiTujuanCreatedAt == mLokasiTujuanCreatedAt) &&
            (identical(other.mLokasiTujuanUpdatedAt, mLokasiTujuanUpdatedAt) || other.mLokasiTujuanUpdatedAt == mLokasiTujuanUpdatedAt) &&
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            (identical(other.mKaryMCompId, mKaryMCompId) || other.mKaryMCompId == mKaryMCompId) &&
            (identical(other.mKaryMDirId, mKaryMDirId) || other.mKaryMDirId == mKaryMDirId) &&
            (identical(other.mKaryMDivisiId, mKaryMDivisiId) || other.mKaryMDivisiId == mKaryMDivisiId) &&
            (identical(other.mKaryMDeptId, mKaryMDeptId) || other.mKaryMDeptId == mKaryMDeptId) &&
            (identical(other.mKaryMZonaId, mKaryMZonaId) || other.mKaryMZonaId == mKaryMZonaId) &&
            (identical(other.mKaryGradingId, mKaryGradingId) || other.mKaryGradingId == mKaryGradingId) &&
            (identical(other.mKaryCostcontreId, mKaryCostcontreId) || other.mKaryCostcontreId == mKaryCostcontreId) &&
            (identical(other.mKaryKode, mKaryKode) || other.mKaryKode == mKaryKode) &&
            (identical(other.mKaryMPosisiId, mKaryMPosisiId) || other.mKaryMPosisiId == mKaryMPosisiId) &&
            (identical(other.mKaryMJamKerjaId, mKaryMJamKerjaId) || other.mKaryMJamKerjaId == mKaryMJamKerjaId) &&
            (identical(other.mKaryKodePresensi, mKaryKodePresensi) || other.mKaryKodePresensi == mKaryKodePresensi) &&
            (identical(other.mKaryNik, mKaryNik) || other.mKaryNik == mKaryNik) &&
            (identical(other.mKaryNamaDepan, mKaryNamaDepan) || other.mKaryNamaDepan == mKaryNamaDepan) &&
            (identical(other.mKaryNamaBelakang, mKaryNamaBelakang) || other.mKaryNamaBelakang == mKaryNamaBelakang) &&
            (identical(other.mKaryNamaLengkap, mKaryNamaLengkap) || other.mKaryNamaLengkap == mKaryNamaLengkap) &&
            (identical(other.mKaryNamaPanggilan, mKaryNamaPanggilan) || other.mKaryNamaPanggilan == mKaryNamaPanggilan) &&
            (identical(other.mKaryJkId, mKaryJkId) || other.mKaryJkId == mKaryJkId) &&
            (identical(other.mKaryTempatLahir, mKaryTempatLahir) || other.mKaryTempatLahir == mKaryTempatLahir) &&
            (identical(other.mKaryTglLahir, mKaryTglLahir) || other.mKaryTglLahir == mKaryTglLahir) &&
            (identical(other.mKaryProvinsiId, mKaryProvinsiId) || other.mKaryProvinsiId == mKaryProvinsiId) &&
            (identical(other.mKaryKotaId, mKaryKotaId) || other.mKaryKotaId == mKaryKotaId) &&
            (identical(other.mKaryKecamatanId, mKaryKecamatanId) || other.mKaryKecamatanId == mKaryKecamatanId) &&
            (identical(other.mKaryKodePos, mKaryKodePos) || other.mKaryKodePos == mKaryKodePos) &&
            (identical(other.mKaryAlamatAsli, mKaryAlamatAsli) || other.mKaryAlamatAsli == mKaryAlamatAsli) &&
            (identical(other.mKaryAlamatDomisili, mKaryAlamatDomisili) || other.mKaryAlamatDomisili == mKaryAlamatDomisili) &&
            (identical(other.mKaryNoTlp, mKaryNoTlp) || other.mKaryNoTlp == mKaryNoTlp) &&
            (identical(other.mKaryNoTlpLainnya, mKaryNoTlpLainnya) || other.mKaryNoTlpLainnya == mKaryNoTlpLainnya) &&
            (identical(other.mKaryNoDarurat, mKaryNoDarurat) || other.mKaryNoDarurat == mKaryNoDarurat) &&
            (identical(other.mKaryNamaKontakDarurat, mKaryNamaKontakDarurat) || other.mKaryNamaKontakDarurat == mKaryNamaKontakDarurat) &&
            (identical(other.mKaryAgamaId, mKaryAgamaId) || other.mKaryAgamaId == mKaryAgamaId) &&
            (identical(other.mKaryGolDarahId, mKaryGolDarahId) || other.mKaryGolDarahId == mKaryGolDarahId) &&
            (identical(other.mKaryStatusNikahId, mKaryStatusNikahId) || other.mKaryStatusNikahId == mKaryStatusNikahId) &&
            (identical(other.mKaryTanggunganId, mKaryTanggunganId) || other.mKaryTanggunganId == mKaryTanggunganId) &&
            (identical(other.mKaryHubDgnKaryawan, mKaryHubDgnKaryawan) || other.mKaryHubDgnKaryawan == mKaryHubDgnKaryawan) &&
            (identical(other.mKaryCutiJatahReguler, mKaryCutiJatahReguler) || other.mKaryCutiJatahReguler == mKaryCutiJatahReguler) &&
            (identical(other.mKaryCutiSisaReguler, mKaryCutiSisaReguler) || other.mKaryCutiSisaReguler == mKaryCutiSisaReguler) &&
            (identical(other.mKaryCutiPanjang, mKaryCutiPanjang) || other.mKaryCutiPanjang == mKaryCutiPanjang) &&
            (identical(other.mKaryCutiSisaPanjang, mKaryCutiSisaPanjang) || other.mKaryCutiSisaPanjang == mKaryCutiSisaPanjang) &&
            const DeepCollectionEquality().equals(other.mKaryStatusKaryId, mKaryStatusKaryId) &&
            const DeepCollectionEquality().equals(other.mKaryLamaKontrakAwal, mKaryLamaKontrakAwal) &&
            const DeepCollectionEquality().equals(other.mKaryLamaKontrakAkhir, mKaryLamaKontrakAkhir) &&
            const DeepCollectionEquality().equals(other.mKaryTglMasuk, mKaryTglMasuk) &&
            const DeepCollectionEquality().equals(other.mKaryTglBerhenti, mKaryTglBerhenti) &&
            const DeepCollectionEquality().equals(other.mKaryAlasanBerhenti, mKaryAlasanBerhenti) &&
            (identical(other.mKaryUkBaju, mKaryUkBaju) || other.mKaryUkBaju == mKaryUkBaju) &&
            (identical(other.mKaryUkCelana, mKaryUkCelana) || other.mKaryUkCelana == mKaryUkCelana) &&
            (identical(other.mKaryUkSepatu, mKaryUkSepatu) || other.mKaryUkSepatu == mKaryUkSepatu) &&
            const DeepCollectionEquality().equals(other.mKaryDesc, mKaryDesc) &&
            (identical(other.mKaryIsActive, mKaryIsActive) || other.mKaryIsActive == mKaryIsActive) &&
            const DeepCollectionEquality().equals(other.mKaryCreatorId, mKaryCreatorId) &&
            const DeepCollectionEquality().equals(other.mKaryLastEditorId, mKaryLastEditorId) &&
            (identical(other.mKaryCreatedAt, mKaryCreatedAt) || other.mKaryCreatedAt == mKaryCreatedAt) &&
            (identical(other.mKaryUpdatedAt, mKaryUpdatedAt) || other.mKaryUpdatedAt == mKaryUpdatedAt) &&
            (identical(other.mKaryMStandartGajiId, mKaryMStandartGajiId) || other.mKaryMStandartGajiId == mKaryMStandartGajiId) &&
            (identical(other.mKaryPeriodeGajiId, mKaryPeriodeGajiId) || other.mKaryPeriodeGajiId == mKaryPeriodeGajiId) &&
            (identical(other.mKaryRefId, mKaryRefId) || other.mKaryRefId == mKaryRefId) &&
            const DeepCollectionEquality().equals(other.mKaryPresensiLokasiDefaultId, mKaryPresensiLokasiDefaultId) &&
            const DeepCollectionEquality().equals(other.mKaryExpDateCuti, mKaryExpDateCuti) &&
            (identical(other.mKaryLimitPotong, mKaryLimitPotong) || other.mKaryLimitPotong == mKaryLimitPotong) &&
            (identical(other.mKaryAtasanId, mKaryAtasanId) || other.mKaryAtasanId == mKaryAtasanId) &&
            const DeepCollectionEquality().equals(other.mKaryCutiP24, mKaryCutiP24) &&
            const DeepCollectionEquality().equals(other.mKaryCutiSisaP24, mKaryCutiSisaP24) &&
            const DeepCollectionEquality().equals(other.picId, picId) &&
            const DeepCollectionEquality().equals(other.picMCompId, picMCompId) &&
            const DeepCollectionEquality().equals(other.picMDirId, picMDirId) &&
            const DeepCollectionEquality().equals(other.picMDivisiId, picMDivisiId) &&
            const DeepCollectionEquality().equals(other.picMDeptId, picMDeptId) &&
            const DeepCollectionEquality().equals(other.picMZonaId, picMZonaId) &&
            const DeepCollectionEquality().equals(other.picGradingId, picGradingId) &&
            const DeepCollectionEquality().equals(other.picCostcontreId, picCostcontreId) &&
            const DeepCollectionEquality().equals(other.picKode, picKode) &&
            const DeepCollectionEquality().equals(other.picMPosisiId, picMPosisiId) &&
            const DeepCollectionEquality().equals(other.picMJamKerjaId, picMJamKerjaId) &&
            const DeepCollectionEquality().equals(other.picKodePresensi, picKodePresensi) &&
            const DeepCollectionEquality().equals(other.picNik, picNik) &&
            const DeepCollectionEquality().equals(other.picNamaDepan, picNamaDepan) &&
            const DeepCollectionEquality().equals(other.picNamaBelakang, picNamaBelakang) &&
            const DeepCollectionEquality().equals(other.picNamaLengkap, picNamaLengkap) &&
            const DeepCollectionEquality().equals(other.picNamaPanggilan, picNamaPanggilan) &&
            const DeepCollectionEquality().equals(other.picJkId, picJkId) &&
            const DeepCollectionEquality().equals(other.picTempatLahir, picTempatLahir) &&
            const DeepCollectionEquality().equals(other.picTglLahir, picTglLahir) &&
            const DeepCollectionEquality().equals(other.picProvinsiId, picProvinsiId) &&
            const DeepCollectionEquality().equals(other.picKotaId, picKotaId) &&
            const DeepCollectionEquality().equals(other.picKecamatanId, picKecamatanId) &&
            const DeepCollectionEquality().equals(other.picKodePos, picKodePos) &&
            const DeepCollectionEquality().equals(other.picAlamatAsli, picAlamatAsli) &&
            const DeepCollectionEquality().equals(other.picAlamatDomisili, picAlamatDomisili) &&
            const DeepCollectionEquality().equals(other.picNoTlp, picNoTlp) &&
            const DeepCollectionEquality().equals(other.picNoTlpLainnya, picNoTlpLainnya) &&
            const DeepCollectionEquality().equals(other.picNoDarurat, picNoDarurat) &&
            const DeepCollectionEquality().equals(other.picNamaKontakDarurat, picNamaKontakDarurat) &&
            const DeepCollectionEquality().equals(other.picAgamaId, picAgamaId) &&
            const DeepCollectionEquality().equals(other.picGolDarahId, picGolDarahId) &&
            const DeepCollectionEquality().equals(other.picStatusNikahId, picStatusNikahId) &&
            const DeepCollectionEquality().equals(other.picTanggunganId, picTanggunganId) &&
            const DeepCollectionEquality().equals(other.picHubDgnKaryawan, picHubDgnKaryawan) &&
            const DeepCollectionEquality().equals(other.picCutiJatahReguler, picCutiJatahReguler) &&
            const DeepCollectionEquality().equals(other.picCutiSisaReguler, picCutiSisaReguler) &&
            const DeepCollectionEquality().equals(other.picCutiPanjang, picCutiPanjang) &&
            const DeepCollectionEquality().equals(other.picCutiSisaPanjang, picCutiSisaPanjang) &&
            const DeepCollectionEquality().equals(other.picStatusKaryId, picStatusKaryId) &&
            const DeepCollectionEquality().equals(other.picLamaKontrakAwal, picLamaKontrakAwal) &&
            const DeepCollectionEquality().equals(other.picLamaKontrakAkhir, picLamaKontrakAkhir) &&
            const DeepCollectionEquality().equals(other.picTglMasuk, picTglMasuk) &&
            const DeepCollectionEquality().equals(other.picTglBerhenti, picTglBerhenti) &&
            const DeepCollectionEquality().equals(other.picAlasanBerhenti, picAlasanBerhenti) &&
            const DeepCollectionEquality().equals(other.picUkBaju, picUkBaju) &&
            const DeepCollectionEquality().equals(other.picUkCelana, picUkCelana) &&
            const DeepCollectionEquality().equals(other.picUkSepatu, picUkSepatu) &&
            const DeepCollectionEquality().equals(other.picDesc, picDesc) &&
            const DeepCollectionEquality().equals(other.picIsActive, picIsActive) &&
            const DeepCollectionEquality().equals(other.picCreatorId, picCreatorId) &&
            const DeepCollectionEquality().equals(other.picLastEditorId, picLastEditorId) &&
            const DeepCollectionEquality().equals(other.picCreatedAt, picCreatedAt) &&
            const DeepCollectionEquality().equals(other.picUpdatedAt, picUpdatedAt) &&
            const DeepCollectionEquality().equals(other.picMStandartGajiId, picMStandartGajiId) &&
            const DeepCollectionEquality().equals(other.picPeriodeGajiId, picPeriodeGajiId) &&
            const DeepCollectionEquality().equals(other.picRefId, picRefId) &&
            const DeepCollectionEquality().equals(other.picPresensiLokasiDefaultId, picPresensiLokasiDefaultId) &&
            const DeepCollectionEquality().equals(other.picExpDateCuti, picExpDateCuti) &&
            const DeepCollectionEquality().equals(other.picLimitPotong, picLimitPotong) &&
            const DeepCollectionEquality().equals(other.picAtasanId, picAtasanId) &&
            const DeepCollectionEquality().equals(other.picCutiP24, picCutiP24) &&
            const DeepCollectionEquality().equals(other.picCutiSisaP24, picCutiSisaP24) &&
            (identical(other.creatorId, creatorId) || other.creatorId == creatorId) &&
            (identical(other.creatorName, creatorName) || other.creatorName == creatorName) &&
            const DeepCollectionEquality().equals(other.creatorEmail, creatorEmail) &&
            (identical(other.creatorUsername, creatorUsername) || other.creatorUsername == creatorUsername) &&
            const DeepCollectionEquality().equals(other.creatorEmailVerifiedAt, creatorEmailVerifiedAt) &&
            (identical(other.creatorPassword, creatorPassword) || other.creatorPassword == creatorPassword) &&
            (identical(other.creatorMCompId, creatorMCompId) || other.creatorMCompId == creatorMCompId) &&
            (identical(other.creatorMDirId, creatorMDirId) || other.creatorMDirId == creatorMDirId) &&
            (identical(other.creatorIsActive, creatorIsActive) || other.creatorIsActive == creatorIsActive) &&
            (identical(other.creatorCreatorId, creatorCreatorId) || other.creatorCreatorId == creatorCreatorId) &&
            const DeepCollectionEquality().equals(other.creatorLastEditorId, creatorLastEditorId) &&
            const DeepCollectionEquality().equals(other.creatorRememberToken, creatorRememberToken) &&
            (identical(other.creatorCreatedAt, creatorCreatedAt) || other.creatorCreatedAt == creatorCreatedAt) &&
            (identical(other.creatorUpdatedAt, creatorUpdatedAt) || other.creatorUpdatedAt == creatorUpdatedAt) &&
            (identical(other.creatorProfilImage, creatorProfilImage) || other.creatorProfilImage == creatorProfilImage) &&
            const DeepCollectionEquality().equals(other.creatorTelp, creatorTelp) &&
            (identical(other.creatorMKaryId, creatorMKaryId) || other.creatorMKaryId == creatorMKaryId) &&
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
            const DeepCollectionEquality().equals(other.lastEditorMKaryId, lastEditorMKaryId) &&
            (identical(other.approvalNote, approvalNote) || other.approvalNote == approvalNote) &&
            (identical(other.namaPic, namaPic) || other.namaPic == namaPic));
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
        nomor,
        datumMCompId,
        datumMSpdId,
        datumMDirId,
        datumMDivisiId,
        datumMDeptId,
        datumMPosisiId,
        tanggal,
        tglAcaraAwal,
        tglAcaraAkhir,
        datumJenisSpdId,
        datumMZonaAsalId,
        datumMZonaTujuanId,
        datumMLokasiTujuanId,
        datumMKaryId,
        datumPicId,
        totalBiaya,
        const DeepCollectionEquality().hash(kegiatan),
        const DeepCollectionEquality().hash(keterangan),
        status,
        datumCreatorId,
        const DeepCollectionEquality().hash(datumLastEditorId),
        createdAt,
        updatedAt,
        isKendDinas,
        interval,
        catatanKend,
        mCompId,
        mCompNama,
        mCompIsActive,
        const DeepCollectionEquality().hash(mCompDesc),
        const DeepCollectionEquality().hash(mCompCreatorId),
        const DeepCollectionEquality().hash(mCompLastEditorId),
        const DeepCollectionEquality().hash(mCompCreatedAt),
        const DeepCollectionEquality().hash(mCompUpdatedAt),
        mSpdId,
        mSpdMCompId,
        mSpdMDirId,
        mSpdKode,
        mSpdMDivisiId,
        mSpdMPosisiId,
        mSpdMDeptId,
        mSpdMZonaId,
        const DeepCollectionEquality().hash(mSpdGradingId),
        const DeepCollectionEquality().hash(mSpdGrading),
        mSpdDesc,
        mSpdIsActive,
        const DeepCollectionEquality().hash(mSpdCreatorId),
        const DeepCollectionEquality().hash(mSpdLastEditorId),
        mSpdCreatedAt,
        mSpdUpdatedAt,
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
        const DeepCollectionEquality().hash(mDivisiDesc),
        mDivisiIsActive,
        const DeepCollectionEquality().hash(mDivisiCreatorId),
        const DeepCollectionEquality().hash(mDivisiLastEditorId),
        const DeepCollectionEquality().hash(mDivisiCreatedAt),
        const DeepCollectionEquality().hash(mDivisiUpdatedAt),
        mDeptId,
        mDeptMDirId,
        mDeptMDivisiId,
        mDeptNama,
        const DeepCollectionEquality().hash(mDeptDesc),
        mDeptIsActive,
        const DeepCollectionEquality().hash(mDeptCreatorId),
        const DeepCollectionEquality().hash(mDeptLastEditorId),
        const DeepCollectionEquality().hash(mDeptCreatedAt),
        const DeepCollectionEquality().hash(mDeptUpdatedAt),
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
        jenisSpdId,
        jenisSpdMCompId,
        const DeepCollectionEquality().hash(jenisSpdMDirId),
        jenisSpdGroup,
        jenisSpdKey,
        jenisSpdCode,
        jenisSpdValue,
        jenisSpdIsActive,
        const DeepCollectionEquality().hash(jenisSpdCreatorId),
        const DeepCollectionEquality().hash(jenisSpdLastEditorId),
        const DeepCollectionEquality().hash(jenisSpdCreatedAt),
        const DeepCollectionEquality().hash(jenisSpdUpdatedAt),
        const DeepCollectionEquality().hash(jenisSpdValue2),
        const DeepCollectionEquality().hash(jenisSpdValue3),
        mZonaAsalId,
        mZonaAsalMCompId,
        mZonaAsalMDirId,
        mZonaAsalKode,
        mZonaAsalNama,
        mZonaAsalDesc,
        mZonaAsalIsActive,
        const DeepCollectionEquality().hash(mZonaAsalCreatorId),
        const DeepCollectionEquality().hash(mZonaAsalLastEditorId),
        mZonaAsalCreatedAt,
        mZonaAsalUpdatedAt,
        mZonaTujuanId,
        mZonaTujuanMCompId,
        mZonaTujuanMDirId,
        mZonaTujuanKode,
        mZonaTujuanNama,
        mZonaTujuanDesc,
        mZonaTujuanIsActive,
        const DeepCollectionEquality().hash(mZonaTujuanCreatorId),
        const DeepCollectionEquality().hash(mZonaTujuanLastEditorId),
        mZonaTujuanCreatedAt,
        mZonaTujuanUpdatedAt,
        mLokasiTujuanId,
        mLokasiTujuanMCompId,
        mLokasiTujuanMDirId,
        mLokasiTujuanKode,
        mLokasiTujuanNama,
        mLokasiTujuanDesc,
        mLokasiTujuanIsActive,
        const DeepCollectionEquality().hash(mLokasiTujuanCreatorId),
        const DeepCollectionEquality().hash(mLokasiTujuanLastEditorId),
        mLokasiTujuanCreatedAt,
        mLokasiTujuanUpdatedAt,
        mKaryId,
        mKaryMCompId,
        mKaryMDirId,
        mKaryMDivisiId,
        mKaryMDeptId,
        mKaryMZonaId,
        mKaryGradingId,
        mKaryCostcontreId,
        mKaryKode,
        mKaryMPosisiId,
        mKaryMJamKerjaId,
        mKaryKodePresensi,
        mKaryNik,
        mKaryNamaDepan,
        mKaryNamaBelakang,
        mKaryNamaLengkap,
        mKaryNamaPanggilan,
        mKaryJkId,
        mKaryTempatLahir,
        mKaryTglLahir,
        mKaryProvinsiId,
        mKaryKotaId,
        mKaryKecamatanId,
        mKaryKodePos,
        mKaryAlamatAsli,
        mKaryAlamatDomisili,
        mKaryNoTlp,
        mKaryNoTlpLainnya,
        mKaryNoDarurat,
        mKaryNamaKontakDarurat,
        mKaryAgamaId,
        mKaryGolDarahId,
        mKaryStatusNikahId,
        mKaryTanggunganId,
        mKaryHubDgnKaryawan,
        mKaryCutiJatahReguler,
        mKaryCutiSisaReguler,
        mKaryCutiPanjang,
        mKaryCutiSisaPanjang,
        const DeepCollectionEquality().hash(mKaryStatusKaryId),
        const DeepCollectionEquality().hash(mKaryLamaKontrakAwal),
        const DeepCollectionEquality().hash(mKaryLamaKontrakAkhir),
        const DeepCollectionEquality().hash(mKaryTglMasuk),
        const DeepCollectionEquality().hash(mKaryTglBerhenti),
        const DeepCollectionEquality().hash(mKaryAlasanBerhenti),
        mKaryUkBaju,
        mKaryUkCelana,
        mKaryUkSepatu,
        const DeepCollectionEquality().hash(mKaryDesc),
        mKaryIsActive,
        const DeepCollectionEquality().hash(mKaryCreatorId),
        const DeepCollectionEquality().hash(mKaryLastEditorId),
        mKaryCreatedAt,
        mKaryUpdatedAt,
        mKaryMStandartGajiId,
        mKaryPeriodeGajiId,
        mKaryRefId,
        const DeepCollectionEquality().hash(mKaryPresensiLokasiDefaultId),
        const DeepCollectionEquality().hash(mKaryExpDateCuti),
        mKaryLimitPotong,
        mKaryAtasanId,
        const DeepCollectionEquality().hash(mKaryCutiP24),
        const DeepCollectionEquality().hash(mKaryCutiSisaP24),
        const DeepCollectionEquality().hash(picId),
        const DeepCollectionEquality().hash(picMCompId),
        const DeepCollectionEquality().hash(picMDirId),
        const DeepCollectionEquality().hash(picMDivisiId),
        const DeepCollectionEquality().hash(picMDeptId),
        const DeepCollectionEquality().hash(picMZonaId),
        const DeepCollectionEquality().hash(picGradingId),
        const DeepCollectionEquality().hash(picCostcontreId),
        const DeepCollectionEquality().hash(picKode),
        const DeepCollectionEquality().hash(picMPosisiId),
        const DeepCollectionEquality().hash(picMJamKerjaId),
        const DeepCollectionEquality().hash(picKodePresensi),
        const DeepCollectionEquality().hash(picNik),
        const DeepCollectionEquality().hash(picNamaDepan),
        const DeepCollectionEquality().hash(picNamaBelakang),
        const DeepCollectionEquality().hash(picNamaLengkap),
        const DeepCollectionEquality().hash(picNamaPanggilan),
        const DeepCollectionEquality().hash(picJkId),
        const DeepCollectionEquality().hash(picTempatLahir),
        const DeepCollectionEquality().hash(picTglLahir),
        const DeepCollectionEquality().hash(picProvinsiId),
        const DeepCollectionEquality().hash(picKotaId),
        const DeepCollectionEquality().hash(picKecamatanId),
        const DeepCollectionEquality().hash(picKodePos),
        const DeepCollectionEquality().hash(picAlamatAsli),
        const DeepCollectionEquality().hash(picAlamatDomisili),
        const DeepCollectionEquality().hash(picNoTlp),
        const DeepCollectionEquality().hash(picNoTlpLainnya),
        const DeepCollectionEquality().hash(picNoDarurat),
        const DeepCollectionEquality().hash(picNamaKontakDarurat),
        const DeepCollectionEquality().hash(picAgamaId),
        const DeepCollectionEquality().hash(picGolDarahId),
        const DeepCollectionEquality().hash(picStatusNikahId),
        const DeepCollectionEquality().hash(picTanggunganId),
        const DeepCollectionEquality().hash(picHubDgnKaryawan),
        const DeepCollectionEquality().hash(picCutiJatahReguler),
        const DeepCollectionEquality().hash(picCutiSisaReguler),
        const DeepCollectionEquality().hash(picCutiPanjang),
        const DeepCollectionEquality().hash(picCutiSisaPanjang),
        const DeepCollectionEquality().hash(picStatusKaryId),
        const DeepCollectionEquality().hash(picLamaKontrakAwal),
        const DeepCollectionEquality().hash(picLamaKontrakAkhir),
        const DeepCollectionEquality().hash(picTglMasuk),
        const DeepCollectionEquality().hash(picTglBerhenti),
        const DeepCollectionEquality().hash(picAlasanBerhenti),
        const DeepCollectionEquality().hash(picUkBaju),
        const DeepCollectionEquality().hash(picUkCelana),
        const DeepCollectionEquality().hash(picUkSepatu),
        const DeepCollectionEquality().hash(picDesc),
        const DeepCollectionEquality().hash(picIsActive),
        const DeepCollectionEquality().hash(picCreatorId),
        const DeepCollectionEquality().hash(picLastEditorId),
        const DeepCollectionEquality().hash(picCreatedAt),
        const DeepCollectionEquality().hash(picUpdatedAt),
        const DeepCollectionEquality().hash(picMStandartGajiId),
        const DeepCollectionEquality().hash(picPeriodeGajiId),
        const DeepCollectionEquality().hash(picRefId),
        const DeepCollectionEquality().hash(picPresensiLokasiDefaultId),
        const DeepCollectionEquality().hash(picExpDateCuti),
        const DeepCollectionEquality().hash(picLimitPotong),
        const DeepCollectionEquality().hash(picAtasanId),
        const DeepCollectionEquality().hash(picCutiP24),
        const DeepCollectionEquality().hash(picCutiSisaP24),
        creatorId,
        creatorName,
        const DeepCollectionEquality().hash(creatorEmail),
        creatorUsername,
        const DeepCollectionEquality().hash(creatorEmailVerifiedAt),
        creatorPassword,
        creatorMCompId,
        creatorMDirId,
        creatorIsActive,
        creatorCreatorId,
        const DeepCollectionEquality().hash(creatorLastEditorId),
        const DeepCollectionEquality().hash(creatorRememberToken),
        creatorCreatedAt,
        creatorUpdatedAt,
        creatorProfilImage,
        const DeepCollectionEquality().hash(creatorTelp),
        creatorMKaryId,
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
        const DeepCollectionEquality().hash(lastEditorMKaryId),
        approvalNote,
        namaPic
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDinasImplCopyWith<_$DataDinasImpl> get copyWith =>
      __$$DataDinasImplCopyWithImpl<_$DataDinasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDinasImplToJson(
      this,
    );
  }
}

abstract class _DataDinas implements DataDinas {
  const factory _DataDinas(
      {@JsonKey(name: "meta_read") final bool? metaRead,
      @JsonKey(name: "meta_delete") final bool? metaDelete,
      @JsonKey(name: "meta_update") final bool? metaUpdate,
      @JsonKey(name: "meta_create") final bool? metaCreate,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "nomor") final String? nomor,
      @JsonKey(name: "m_comp_id") final int? datumMCompId,
      @JsonKey(name: "m_spd_id") final int? datumMSpdId,
      @JsonKey(name: "m_dir_id") final int? datumMDirId,
      @JsonKey(name: "m_divisi_id") final int? datumMDivisiId,
      @JsonKey(name: "m_dept_id") final int? datumMDeptId,
      @JsonKey(name: "m_posisi_id") final int? datumMPosisiId,
      @JsonKey(name: "tanggal") final String? tanggal,
      @JsonKey(name: "tgl_acara_awal") final String? tglAcaraAwal,
      @JsonKey(name: "tgl_acara_akhir") final String? tglAcaraAkhir,
      @JsonKey(name: "jenis_spd_id") final int? datumJenisSpdId,
      @JsonKey(name: "m_zona_asal_id") final int? datumMZonaAsalId,
      @JsonKey(name: "m_zona_tujuan_id") final int? datumMZonaTujuanId,
      @JsonKey(name: "m_lokasi_tujuan_id") final int? datumMLokasiTujuanId,
      @JsonKey(name: "m_kary_id") final int? datumMKaryId,
      @JsonKey(name: "pic_id") final int? datumPicId,
      @JsonKey(name: "total_biaya") final int? totalBiaya,
      @JsonKey(name: "kegiatan") final dynamic kegiatan,
      @JsonKey(name: "keterangan") final dynamic keterangan,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "creator_id") final int? datumCreatorId,
      @JsonKey(name: "last_editor_id") final dynamic datumLastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "is_kend_dinas") final bool? isKendDinas,
      @JsonKey(name: "interval") final int? interval,
      @JsonKey(name: "catatan_kend") final String? catatanKend,
      @JsonKey(name: "m_comp.id") final int? mCompId,
      @JsonKey(name: "m_comp.nama") final String? mCompNama,
      @JsonKey(name: "m_comp.is_active") final bool? mCompIsActive,
      @JsonKey(name: "m_comp.desc") final dynamic mCompDesc,
      @JsonKey(name: "m_comp.creator_id") final dynamic mCompCreatorId,
      @JsonKey(name: "m_comp.last_editor_id") final dynamic mCompLastEditorId,
      @JsonKey(name: "m_comp.created_at") final dynamic mCompCreatedAt,
      @JsonKey(name: "m_comp.updated_at") final dynamic mCompUpdatedAt,
      @JsonKey(name: "m_spd.id") final int? mSpdId,
      @JsonKey(name: "m_spd.m_comp_id") final int? mSpdMCompId,
      @JsonKey(name: "m_spd.m_dir_id") final int? mSpdMDirId,
      @JsonKey(name: "m_spd.kode") final String? mSpdKode,
      @JsonKey(name: "m_spd.m_divisi_id") final int? mSpdMDivisiId,
      @JsonKey(name: "m_spd.m_posisi_id") final int? mSpdMPosisiId,
      @JsonKey(name: "m_spd.m_dept_id") final int? mSpdMDeptId,
      @JsonKey(name: "m_spd.m_zona_id") final int? mSpdMZonaId,
      @JsonKey(name: "m_spd.grading_id") final dynamic mSpdGradingId,
      @JsonKey(name: "m_spd.grading") final dynamic mSpdGrading,
      @JsonKey(name: "m_spd.desc") final String? mSpdDesc,
      @JsonKey(name: "m_spd.is_active") final bool? mSpdIsActive,
      @JsonKey(name: "m_spd.creator_id") final dynamic mSpdCreatorId,
      @JsonKey(name: "m_spd.last_editor_id") final dynamic mSpdLastEditorId,
      @JsonKey(name: "m_spd.created_at") final String? mSpdCreatedAt,
      @JsonKey(name: "m_spd.updated_at") final String? mSpdUpdatedAt,
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
      @JsonKey(name: "m_divisi.desc") final dynamic mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") final bool? mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") final dynamic mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id")
      final dynamic mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") final dynamic mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") final dynamic mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") final int? mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") final int? mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") final int? mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") final String? mDeptNama,
      @JsonKey(name: "m_dept.desc") final dynamic mDeptDesc,
      @JsonKey(name: "m_dept.is_active") final bool? mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") final dynamic mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") final dynamic mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") final dynamic mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") final dynamic mDeptUpdatedAt,
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
      @JsonKey(name: "jenis_spd.id") final int? jenisSpdId,
      @JsonKey(name: "jenis_spd.m_comp_id") final int? jenisSpdMCompId,
      @JsonKey(name: "jenis_spd.m_dir_id") final dynamic jenisSpdMDirId,
      @JsonKey(name: "jenis_spd.group") final String? jenisSpdGroup,
      @JsonKey(name: "jenis_spd.key") final String? jenisSpdKey,
      @JsonKey(name: "jenis_spd.code") final String? jenisSpdCode,
      @JsonKey(name: "jenis_spd.value") final String? jenisSpdValue,
      @JsonKey(name: "jenis_spd.is_active") final bool? jenisSpdIsActive,
      @JsonKey(name: "jenis_spd.creator_id") final dynamic jenisSpdCreatorId,
      @JsonKey(name: "jenis_spd.last_editor_id")
      final dynamic jenisSpdLastEditorId,
      @JsonKey(name: "jenis_spd.created_at") final dynamic jenisSpdCreatedAt,
      @JsonKey(name: "jenis_spd.updated_at") final dynamic jenisSpdUpdatedAt,
      @JsonKey(name: "jenis_spd.value_2") final dynamic jenisSpdValue2,
      @JsonKey(name: "jenis_spd.value_3") final dynamic jenisSpdValue3,
      @JsonKey(name: "m_zona_asal.id") final int? mZonaAsalId,
      @JsonKey(name: "m_zona_asal.m_comp_id") final int? mZonaAsalMCompId,
      @JsonKey(name: "m_zona_asal.m_dir_id") final int? mZonaAsalMDirId,
      @JsonKey(name: "m_zona_asal.kode") final String? mZonaAsalKode,
      @JsonKey(name: "m_zona_asal.nama") final String? mZonaAsalNama,
      @JsonKey(name: "m_zona_asal.desc") final String? mZonaAsalDesc,
      @JsonKey(name: "m_zona_asal.is_active") final bool? mZonaAsalIsActive,
      @JsonKey(name: "m_zona_asal.creator_id") final dynamic mZonaAsalCreatorId,
      @JsonKey(name: "m_zona_asal.last_editor_id")
      final dynamic mZonaAsalLastEditorId,
      @JsonKey(name: "m_zona_asal.created_at") final String? mZonaAsalCreatedAt,
      @JsonKey(name: "m_zona_asal.updated_at") final String? mZonaAsalUpdatedAt,
      @JsonKey(name: "m_zona_tujuan.id") final int? mZonaTujuanId,
      @JsonKey(name: "m_zona_tujuan.m_comp_id") final int? mZonaTujuanMCompId,
      @JsonKey(name: "m_zona_tujuan.m_dir_id") final int? mZonaTujuanMDirId,
      @JsonKey(name: "m_zona_tujuan.kode") final String? mZonaTujuanKode,
      @JsonKey(name: "m_zona_tujuan.nama") final String? mZonaTujuanNama,
      @JsonKey(name: "m_zona_tujuan.desc") final String? mZonaTujuanDesc,
      @JsonKey(name: "m_zona_tujuan.is_active") final bool? mZonaTujuanIsActive,
      @JsonKey(name: "m_zona_tujuan.creator_id")
      final dynamic mZonaTujuanCreatorId,
      @JsonKey(name: "m_zona_tujuan.last_editor_id")
      final dynamic mZonaTujuanLastEditorId,
      @JsonKey(name: "m_zona_tujuan.created_at")
      final String? mZonaTujuanCreatedAt,
      @JsonKey(name: "m_zona_tujuan.updated_at")
      final String? mZonaTujuanUpdatedAt,
      @JsonKey(name: "m_lokasi_tujuan.id") final int? mLokasiTujuanId,
      @JsonKey(name: "m_lokasi_tujuan.m_comp_id")
      final int? mLokasiTujuanMCompId,
      @JsonKey(name: "m_lokasi_tujuan.m_dir_id") final int? mLokasiTujuanMDirId,
      @JsonKey(name: "m_lokasi_tujuan.kode") final String? mLokasiTujuanKode,
      @JsonKey(name: "m_lokasi_tujuan.nama") final String? mLokasiTujuanNama,
      @JsonKey(name: "m_lokasi_tujuan.desc") final String? mLokasiTujuanDesc,
      @JsonKey(name: "m_lokasi_tujuan.is_active")
      final bool? mLokasiTujuanIsActive,
      @JsonKey(name: "m_lokasi_tujuan.creator_id")
      final dynamic mLokasiTujuanCreatorId,
      @JsonKey(name: "m_lokasi_tujuan.last_editor_id")
      final dynamic mLokasiTujuanLastEditorId,
      @JsonKey(name: "m_lokasi_tujuan.created_at")
      final String? mLokasiTujuanCreatedAt,
      @JsonKey(name: "m_lokasi_tujuan.updated_at")
      final String? mLokasiTujuanUpdatedAt,
      @JsonKey(name: "m_kary.id") final int? mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") final int? mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") final int? mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") final int? mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") final int? mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") final int? mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") final int? mKaryGradingId,
      @JsonKey(name: "m_kary.costcontre_id") final int? mKaryCostcontreId,
      @JsonKey(name: "m_kary.kode") final String? mKaryKode,
      @JsonKey(name: "m_kary.m_posisi_id") final int? mKaryMPosisiId,
      @JsonKey(name: "m_kary.m_jam_kerja_id") final int? mKaryMJamKerjaId,
      @JsonKey(name: "m_kary.kode_presensi") final String? mKaryKodePresensi,
      @JsonKey(name: "m_kary.nik") final String? mKaryNik,
      @JsonKey(name: "m_kary.nama_depan") final String? mKaryNamaDepan,
      @JsonKey(name: "m_kary.nama_belakang") final String? mKaryNamaBelakang,
      @JsonKey(name: "m_kary.nama_lengkap") final String? mKaryNamaLengkap,
      @JsonKey(name: "m_kary.nama_panggilan") final String? mKaryNamaPanggilan,
      @JsonKey(name: "m_kary.jk_id") final int? mKaryJkId,
      @JsonKey(name: "m_kary.tempat_lahir") final String? mKaryTempatLahir,
      @JsonKey(name: "m_kary.tgl_lahir") final String? mKaryTglLahir,
      @JsonKey(name: "m_kary.provinsi_id") final int? mKaryProvinsiId,
      @JsonKey(name: "m_kary.kota_id") final int? mKaryKotaId,
      @JsonKey(name: "m_kary.kecamatan_id") final int? mKaryKecamatanId,
      @JsonKey(name: "m_kary.kode_pos") final String? mKaryKodePos,
      @JsonKey(name: "m_kary.alamat_asli") final String? mKaryAlamatAsli,
      @JsonKey(name: "m_kary.alamat_domisili")
      final String? mKaryAlamatDomisili,
      @JsonKey(name: "m_kary.no_tlp") final String? mKaryNoTlp,
      @JsonKey(name: "m_kary.no_tlp_lainnya") final String? mKaryNoTlpLainnya,
      @JsonKey(name: "m_kary.no_darurat") final String? mKaryNoDarurat,
      @JsonKey(name: "m_kary.nama_kontak_darurat")
      final String? mKaryNamaKontakDarurat,
      @JsonKey(name: "m_kary.agama_id") final int? mKaryAgamaId,
      @JsonKey(name: "m_kary.gol_darah_id") final int? mKaryGolDarahId,
      @JsonKey(name: "m_kary.status_nikah_id") final int? mKaryStatusNikahId,
      @JsonKey(name: "m_kary.tanggungan_id") final int? mKaryTanggunganId,
      @JsonKey(name: "m_kary.hub_dgn_karyawan")
      final String? mKaryHubDgnKaryawan,
      @JsonKey(name: "m_kary.cuti_jatah_reguler")
      final int? mKaryCutiJatahReguler,
      @JsonKey(name: "m_kary.cuti_sisa_reguler")
      final int? mKaryCutiSisaReguler,
      @JsonKey(name: "m_kary.cuti_panjang") final int? mKaryCutiPanjang,
      @JsonKey(name: "m_kary.cuti_sisa_panjang")
      final int? mKaryCutiSisaPanjang,
      @JsonKey(name: "m_kary.status_kary_id") final dynamic mKaryStatusKaryId,
      @JsonKey(name: "m_kary.lama_kontrak_awal")
      final dynamic mKaryLamaKontrakAwal,
      @JsonKey(name: "m_kary.lama_kontrak_akhir")
      final dynamic mKaryLamaKontrakAkhir,
      @JsonKey(name: "m_kary.tgl_masuk") final dynamic mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") final dynamic mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti")
      final dynamic mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") final String? mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") final String? mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") final String? mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") final dynamic mKaryDesc,
      @JsonKey(name: "m_kary.is_active") final bool? mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") final dynamic mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") final dynamic mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") final String? mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") final String? mKaryUpdatedAt,
      @JsonKey(name: "m_kary.m_standart_gaji_id")
      final int? mKaryMStandartGajiId,
      @JsonKey(name: "m_kary.periode_gaji_id") final int? mKaryPeriodeGajiId,
      @JsonKey(name: "m_kary.ref_id") final int? mKaryRefId,
      @JsonKey(name: "m_kary.presensi_lokasi_default_id")
      final dynamic mKaryPresensiLokasiDefaultId,
      @JsonKey(name: "m_kary.exp_date_cuti") final dynamic mKaryExpDateCuti,
      @JsonKey(name: "m_kary.limit_potong") final int? mKaryLimitPotong,
      @JsonKey(name: "m_kary.atasan_id") final int? mKaryAtasanId,
      @JsonKey(name: "m_kary.cuti_p24") final dynamic mKaryCutiP24,
      @JsonKey(name: "m_kary.cuti_sisa_p24") final dynamic mKaryCutiSisaP24,
      @JsonKey(name: "pic.id") final dynamic picId,
      @JsonKey(name: "pic.m_comp_id") final dynamic picMCompId,
      @JsonKey(name: "pic.m_dir_id") final dynamic picMDirId,
      @JsonKey(name: "pic.m_divisi_id") final dynamic picMDivisiId,
      @JsonKey(name: "pic.m_dept_id") final dynamic picMDeptId,
      @JsonKey(name: "pic.m_zona_id") final dynamic picMZonaId,
      @JsonKey(name: "pic.grading_id") final dynamic picGradingId,
      @JsonKey(name: "pic.costcontre_id") final dynamic picCostcontreId,
      @JsonKey(name: "pic.kode") final dynamic picKode,
      @JsonKey(name: "pic.m_posisi_id") final dynamic picMPosisiId,
      @JsonKey(name: "pic.m_jam_kerja_id") final dynamic picMJamKerjaId,
      @JsonKey(name: "pic.kode_presensi") final dynamic picKodePresensi,
      @JsonKey(name: "pic.nik") final dynamic picNik,
      @JsonKey(name: "pic.nama_depan") final dynamic picNamaDepan,
      @JsonKey(name: "pic.nama_belakang") final dynamic picNamaBelakang,
      @JsonKey(name: "pic.nama_lengkap") final dynamic picNamaLengkap,
      @JsonKey(name: "pic.nama_panggilan") final dynamic picNamaPanggilan,
      @JsonKey(name: "pic.jk_id") final dynamic picJkId,
      @JsonKey(name: "pic.tempat_lahir") final dynamic picTempatLahir,
      @JsonKey(name: "pic.tgl_lahir") final dynamic picTglLahir,
      @JsonKey(name: "pic.provinsi_id") final dynamic picProvinsiId,
      @JsonKey(name: "pic.kota_id") final dynamic picKotaId,
      @JsonKey(name: "pic.kecamatan_id") final dynamic picKecamatanId,
      @JsonKey(name: "pic.kode_pos") final dynamic picKodePos,
      @JsonKey(name: "pic.alamat_asli") final dynamic picAlamatAsli,
      @JsonKey(name: "pic.alamat_domisili") final dynamic picAlamatDomisili,
      @JsonKey(name: "pic.no_tlp") final dynamic picNoTlp,
      @JsonKey(name: "pic.no_tlp_lainnya") final dynamic picNoTlpLainnya,
      @JsonKey(name: "pic.no_darurat") final dynamic picNoDarurat,
      @JsonKey(name: "pic.nama_kontak_darurat")
      final dynamic picNamaKontakDarurat,
      @JsonKey(name: "pic.agama_id") final dynamic picAgamaId,
      @JsonKey(name: "pic.gol_darah_id") final dynamic picGolDarahId,
      @JsonKey(name: "pic.status_nikah_id") final dynamic picStatusNikahId,
      @JsonKey(name: "pic.tanggungan_id") final dynamic picTanggunganId,
      @JsonKey(name: "pic.hub_dgn_karyawan") final dynamic picHubDgnKaryawan,
      @JsonKey(name: "pic.cuti_jatah_reguler")
      final dynamic picCutiJatahReguler,
      @JsonKey(name: "pic.cuti_sisa_reguler") final dynamic picCutiSisaReguler,
      @JsonKey(name: "pic.cuti_panjang") final dynamic picCutiPanjang,
      @JsonKey(name: "pic.cuti_sisa_panjang") final dynamic picCutiSisaPanjang,
      @JsonKey(name: "pic.status_kary_id") final dynamic picStatusKaryId,
      @JsonKey(name: "pic.lama_kontrak_awal") final dynamic picLamaKontrakAwal,
      @JsonKey(name: "pic.lama_kontrak_akhir")
      final dynamic picLamaKontrakAkhir,
      @JsonKey(name: "pic.tgl_masuk") final dynamic picTglMasuk,
      @JsonKey(name: "pic.tgl_berhenti") final dynamic picTglBerhenti,
      @JsonKey(name: "pic.alasan_berhenti") final dynamic picAlasanBerhenti,
      @JsonKey(name: "pic.uk_baju") final dynamic picUkBaju,
      @JsonKey(name: "pic.uk_celana") final dynamic picUkCelana,
      @JsonKey(name: "pic.uk_sepatu") final dynamic picUkSepatu,
      @JsonKey(name: "pic.desc") final dynamic picDesc,
      @JsonKey(name: "pic.is_active") final dynamic picIsActive,
      @JsonKey(name: "pic.creator_id") final dynamic picCreatorId,
      @JsonKey(name: "pic.last_editor_id") final dynamic picLastEditorId,
      @JsonKey(name: "pic.created_at") final dynamic picCreatedAt,
      @JsonKey(name: "pic.updated_at") final dynamic picUpdatedAt,
      @JsonKey(name: "pic.m_standart_gaji_id") final dynamic picMStandartGajiId,
      @JsonKey(name: "pic.periode_gaji_id") final dynamic picPeriodeGajiId,
      @JsonKey(name: "pic.ref_id") final dynamic picRefId,
      @JsonKey(name: "pic.presensi_lokasi_default_id")
      final dynamic picPresensiLokasiDefaultId,
      @JsonKey(name: "pic.exp_date_cuti") final dynamic picExpDateCuti,
      @JsonKey(name: "pic.limit_potong") final dynamic picLimitPotong,
      @JsonKey(name: "pic.atasan_id") final dynamic picAtasanId,
      @JsonKey(name: "pic.cuti_p24") final dynamic picCutiP24,
      @JsonKey(name: "pic.cuti_sisa_p24") final dynamic picCutiSisaP24,
      @JsonKey(name: "creator.id") final int? creatorId,
      @JsonKey(name: "creator.name") final String? creatorName,
      @JsonKey(name: "creator.email") final dynamic creatorEmail,
      @JsonKey(name: "creator.username") final String? creatorUsername,
      @JsonKey(name: "creator.email_verified_at")
      final dynamic creatorEmailVerifiedAt,
      @JsonKey(name: "creator.password") final String? creatorPassword,
      @JsonKey(name: "creator.m_comp_id") final int? creatorMCompId,
      @JsonKey(name: "creator.m_dir_id") final int? creatorMDirId,
      @JsonKey(name: "creator.is_active") final bool? creatorIsActive,
      @JsonKey(name: "creator.creator_id") final int? creatorCreatorId,
      @JsonKey(name: "creator.last_editor_id")
      final dynamic creatorLastEditorId,
      @JsonKey(name: "creator.remember_token")
      final dynamic creatorRememberToken,
      @JsonKey(name: "creator.created_at") final String? creatorCreatedAt,
      @JsonKey(name: "creator.updated_at") final String? creatorUpdatedAt,
      @JsonKey(name: "creator.profil_image") final String? creatorProfilImage,
      @JsonKey(name: "creator.telp") final dynamic creatorTelp,
      @JsonKey(name: "creator.m_kary_id") final int? creatorMKaryId,
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
      @JsonKey(name: "last_editor.m_kary_id") final dynamic lastEditorMKaryId,
      @JsonKey(name: "approval_note") final String? approvalNote,
      @JsonKey(name: "nama_pic") final String? namaPic}) = _$DataDinasImpl;

  factory _DataDinas.fromJson(Map<String, dynamic> json) =
      _$DataDinasImpl.fromJson;

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
  @JsonKey(name: "nomor")
  String? get nomor;
  @override
  @JsonKey(name: "m_comp_id")
  int? get datumMCompId;
  @override
  @JsonKey(name: "m_spd_id")
  int? get datumMSpdId;
  @override
  @JsonKey(name: "m_dir_id")
  int? get datumMDirId;
  @override
  @JsonKey(name: "m_divisi_id")
  int? get datumMDivisiId;
  @override
  @JsonKey(name: "m_dept_id")
  int? get datumMDeptId;
  @override
  @JsonKey(name: "m_posisi_id")
  int? get datumMPosisiId;
  @override
  @JsonKey(name: "tanggal")
  String? get tanggal;
  @override
  @JsonKey(name: "tgl_acara_awal")
  String? get tglAcaraAwal;
  @override
  @JsonKey(name: "tgl_acara_akhir")
  String? get tglAcaraAkhir;
  @override
  @JsonKey(name: "jenis_spd_id")
  int? get datumJenisSpdId;
  @override
  @JsonKey(name: "m_zona_asal_id")
  int? get datumMZonaAsalId;
  @override
  @JsonKey(name: "m_zona_tujuan_id")
  int? get datumMZonaTujuanId;
  @override
  @JsonKey(name: "m_lokasi_tujuan_id")
  int? get datumMLokasiTujuanId;
  @override
  @JsonKey(name: "m_kary_id")
  int? get datumMKaryId;
  @override
  @JsonKey(name: "pic_id")
  int? get datumPicId;
  @override
  @JsonKey(name: "total_biaya")
  int? get totalBiaya;
  @override
  @JsonKey(name: "kegiatan")
  dynamic get kegiatan;
  @override
  @JsonKey(name: "keterangan")
  dynamic get keterangan;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "creator_id")
  int? get datumCreatorId;
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
  @JsonKey(name: "is_kend_dinas")
  bool? get isKendDinas;
  @override
  @JsonKey(name: "interval")
  int? get interval;
  @override
  @JsonKey(name: "catatan_kend")
  String? get catatanKend;
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
  @JsonKey(name: "m_spd.id")
  int? get mSpdId;
  @override
  @JsonKey(name: "m_spd.m_comp_id")
  int? get mSpdMCompId;
  @override
  @JsonKey(name: "m_spd.m_dir_id")
  int? get mSpdMDirId;
  @override
  @JsonKey(name: "m_spd.kode")
  String? get mSpdKode;
  @override
  @JsonKey(name: "m_spd.m_divisi_id")
  int? get mSpdMDivisiId;
  @override
  @JsonKey(name: "m_spd.m_posisi_id")
  int? get mSpdMPosisiId;
  @override
  @JsonKey(name: "m_spd.m_dept_id")
  int? get mSpdMDeptId;
  @override
  @JsonKey(name: "m_spd.m_zona_id")
  int? get mSpdMZonaId;
  @override
  @JsonKey(name: "m_spd.grading_id")
  dynamic get mSpdGradingId;
  @override
  @JsonKey(name: "m_spd.grading")
  dynamic get mSpdGrading;
  @override
  @JsonKey(name: "m_spd.desc")
  String? get mSpdDesc;
  @override
  @JsonKey(name: "m_spd.is_active")
  bool? get mSpdIsActive;
  @override
  @JsonKey(name: "m_spd.creator_id")
  dynamic get mSpdCreatorId;
  @override
  @JsonKey(name: "m_spd.last_editor_id")
  dynamic get mSpdLastEditorId;
  @override
  @JsonKey(name: "m_spd.created_at")
  String? get mSpdCreatedAt;
  @override
  @JsonKey(name: "m_spd.updated_at")
  String? get mSpdUpdatedAt;
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
  dynamic get mDivisiDesc;
  @override
  @JsonKey(name: "m_divisi.is_active")
  bool? get mDivisiIsActive;
  @override
  @JsonKey(name: "m_divisi.creator_id")
  dynamic get mDivisiCreatorId;
  @override
  @JsonKey(name: "m_divisi.last_editor_id")
  dynamic get mDivisiLastEditorId;
  @override
  @JsonKey(name: "m_divisi.created_at")
  dynamic get mDivisiCreatedAt;
  @override
  @JsonKey(name: "m_divisi.updated_at")
  dynamic get mDivisiUpdatedAt;
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
  dynamic get mDeptDesc;
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
  dynamic get mDeptCreatedAt;
  @override
  @JsonKey(name: "m_dept.updated_at")
  dynamic get mDeptUpdatedAt;
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
  @JsonKey(name: "jenis_spd.id")
  int? get jenisSpdId;
  @override
  @JsonKey(name: "jenis_spd.m_comp_id")
  int? get jenisSpdMCompId;
  @override
  @JsonKey(name: "jenis_spd.m_dir_id")
  dynamic get jenisSpdMDirId;
  @override
  @JsonKey(name: "jenis_spd.group")
  String? get jenisSpdGroup;
  @override
  @JsonKey(name: "jenis_spd.key")
  String? get jenisSpdKey;
  @override
  @JsonKey(name: "jenis_spd.code")
  String? get jenisSpdCode;
  @override
  @JsonKey(name: "jenis_spd.value")
  String? get jenisSpdValue;
  @override
  @JsonKey(name: "jenis_spd.is_active")
  bool? get jenisSpdIsActive;
  @override
  @JsonKey(name: "jenis_spd.creator_id")
  dynamic get jenisSpdCreatorId;
  @override
  @JsonKey(name: "jenis_spd.last_editor_id")
  dynamic get jenisSpdLastEditorId;
  @override
  @JsonKey(name: "jenis_spd.created_at")
  dynamic get jenisSpdCreatedAt;
  @override
  @JsonKey(name: "jenis_spd.updated_at")
  dynamic get jenisSpdUpdatedAt;
  @override
  @JsonKey(name: "jenis_spd.value_2")
  dynamic get jenisSpdValue2;
  @override
  @JsonKey(name: "jenis_spd.value_3")
  dynamic get jenisSpdValue3;
  @override
  @JsonKey(name: "m_zona_asal.id")
  int? get mZonaAsalId;
  @override
  @JsonKey(name: "m_zona_asal.m_comp_id")
  int? get mZonaAsalMCompId;
  @override
  @JsonKey(name: "m_zona_asal.m_dir_id")
  int? get mZonaAsalMDirId;
  @override
  @JsonKey(name: "m_zona_asal.kode")
  String? get mZonaAsalKode;
  @override
  @JsonKey(name: "m_zona_asal.nama")
  String? get mZonaAsalNama;
  @override
  @JsonKey(name: "m_zona_asal.desc")
  String? get mZonaAsalDesc;
  @override
  @JsonKey(name: "m_zona_asal.is_active")
  bool? get mZonaAsalIsActive;
  @override
  @JsonKey(name: "m_zona_asal.creator_id")
  dynamic get mZonaAsalCreatorId;
  @override
  @JsonKey(name: "m_zona_asal.last_editor_id")
  dynamic get mZonaAsalLastEditorId;
  @override
  @JsonKey(name: "m_zona_asal.created_at")
  String? get mZonaAsalCreatedAt;
  @override
  @JsonKey(name: "m_zona_asal.updated_at")
  String? get mZonaAsalUpdatedAt;
  @override
  @JsonKey(name: "m_zona_tujuan.id")
  int? get mZonaTujuanId;
  @override
  @JsonKey(name: "m_zona_tujuan.m_comp_id")
  int? get mZonaTujuanMCompId;
  @override
  @JsonKey(name: "m_zona_tujuan.m_dir_id")
  int? get mZonaTujuanMDirId;
  @override
  @JsonKey(name: "m_zona_tujuan.kode")
  String? get mZonaTujuanKode;
  @override
  @JsonKey(name: "m_zona_tujuan.nama")
  String? get mZonaTujuanNama;
  @override
  @JsonKey(name: "m_zona_tujuan.desc")
  String? get mZonaTujuanDesc;
  @override
  @JsonKey(name: "m_zona_tujuan.is_active")
  bool? get mZonaTujuanIsActive;
  @override
  @JsonKey(name: "m_zona_tujuan.creator_id")
  dynamic get mZonaTujuanCreatorId;
  @override
  @JsonKey(name: "m_zona_tujuan.last_editor_id")
  dynamic get mZonaTujuanLastEditorId;
  @override
  @JsonKey(name: "m_zona_tujuan.created_at")
  String? get mZonaTujuanCreatedAt;
  @override
  @JsonKey(name: "m_zona_tujuan.updated_at")
  String? get mZonaTujuanUpdatedAt;
  @override
  @JsonKey(name: "m_lokasi_tujuan.id")
  int? get mLokasiTujuanId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.m_comp_id")
  int? get mLokasiTujuanMCompId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.m_dir_id")
  int? get mLokasiTujuanMDirId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.kode")
  String? get mLokasiTujuanKode;
  @override
  @JsonKey(name: "m_lokasi_tujuan.nama")
  String? get mLokasiTujuanNama;
  @override
  @JsonKey(name: "m_lokasi_tujuan.desc")
  String? get mLokasiTujuanDesc;
  @override
  @JsonKey(name: "m_lokasi_tujuan.is_active")
  bool? get mLokasiTujuanIsActive;
  @override
  @JsonKey(name: "m_lokasi_tujuan.creator_id")
  dynamic get mLokasiTujuanCreatorId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.last_editor_id")
  dynamic get mLokasiTujuanLastEditorId;
  @override
  @JsonKey(name: "m_lokasi_tujuan.created_at")
  String? get mLokasiTujuanCreatedAt;
  @override
  @JsonKey(name: "m_lokasi_tujuan.updated_at")
  String? get mLokasiTujuanUpdatedAt;
  @override
  @JsonKey(name: "m_kary.id")
  int? get mKaryId;
  @override
  @JsonKey(name: "m_kary.m_comp_id")
  int? get mKaryMCompId;
  @override
  @JsonKey(name: "m_kary.m_dir_id")
  int? get mKaryMDirId;
  @override
  @JsonKey(name: "m_kary.m_divisi_id")
  int? get mKaryMDivisiId;
  @override
  @JsonKey(name: "m_kary.m_dept_id")
  int? get mKaryMDeptId;
  @override
  @JsonKey(name: "m_kary.m_zona_id")
  int? get mKaryMZonaId;
  @override
  @JsonKey(name: "m_kary.grading_id")
  int? get mKaryGradingId;
  @override
  @JsonKey(name: "m_kary.costcontre_id")
  int? get mKaryCostcontreId;
  @override
  @JsonKey(name: "m_kary.kode")
  String? get mKaryKode;
  @override
  @JsonKey(name: "m_kary.m_posisi_id")
  int? get mKaryMPosisiId;
  @override
  @JsonKey(name: "m_kary.m_jam_kerja_id")
  int? get mKaryMJamKerjaId;
  @override
  @JsonKey(name: "m_kary.kode_presensi")
  String? get mKaryKodePresensi;
  @override
  @JsonKey(name: "m_kary.nik")
  String? get mKaryNik;
  @override
  @JsonKey(name: "m_kary.nama_depan")
  String? get mKaryNamaDepan;
  @override
  @JsonKey(name: "m_kary.nama_belakang")
  String? get mKaryNamaBelakang;
  @override
  @JsonKey(name: "m_kary.nama_lengkap")
  String? get mKaryNamaLengkap;
  @override
  @JsonKey(name: "m_kary.nama_panggilan")
  String? get mKaryNamaPanggilan;
  @override
  @JsonKey(name: "m_kary.jk_id")
  int? get mKaryJkId;
  @override
  @JsonKey(name: "m_kary.tempat_lahir")
  String? get mKaryTempatLahir;
  @override
  @JsonKey(name: "m_kary.tgl_lahir")
  String? get mKaryTglLahir;
  @override
  @JsonKey(name: "m_kary.provinsi_id")
  int? get mKaryProvinsiId;
  @override
  @JsonKey(name: "m_kary.kota_id")
  int? get mKaryKotaId;
  @override
  @JsonKey(name: "m_kary.kecamatan_id")
  int? get mKaryKecamatanId;
  @override
  @JsonKey(name: "m_kary.kode_pos")
  String? get mKaryKodePos;
  @override
  @JsonKey(name: "m_kary.alamat_asli")
  String? get mKaryAlamatAsli;
  @override
  @JsonKey(name: "m_kary.alamat_domisili")
  String? get mKaryAlamatDomisili;
  @override
  @JsonKey(name: "m_kary.no_tlp")
  String? get mKaryNoTlp;
  @override
  @JsonKey(name: "m_kary.no_tlp_lainnya")
  String? get mKaryNoTlpLainnya;
  @override
  @JsonKey(name: "m_kary.no_darurat")
  String? get mKaryNoDarurat;
  @override
  @JsonKey(name: "m_kary.nama_kontak_darurat")
  String? get mKaryNamaKontakDarurat;
  @override
  @JsonKey(name: "m_kary.agama_id")
  int? get mKaryAgamaId;
  @override
  @JsonKey(name: "m_kary.gol_darah_id")
  int? get mKaryGolDarahId;
  @override
  @JsonKey(name: "m_kary.status_nikah_id")
  int? get mKaryStatusNikahId;
  @override
  @JsonKey(name: "m_kary.tanggungan_id")
  int? get mKaryTanggunganId;
  @override
  @JsonKey(name: "m_kary.hub_dgn_karyawan")
  String? get mKaryHubDgnKaryawan;
  @override
  @JsonKey(name: "m_kary.cuti_jatah_reguler")
  int? get mKaryCutiJatahReguler;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_reguler")
  int? get mKaryCutiSisaReguler;
  @override
  @JsonKey(name: "m_kary.cuti_panjang")
  int? get mKaryCutiPanjang;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_panjang")
  int? get mKaryCutiSisaPanjang;
  @override
  @JsonKey(name: "m_kary.status_kary_id")
  dynamic get mKaryStatusKaryId;
  @override
  @JsonKey(name: "m_kary.lama_kontrak_awal")
  dynamic get mKaryLamaKontrakAwal;
  @override
  @JsonKey(name: "m_kary.lama_kontrak_akhir")
  dynamic get mKaryLamaKontrakAkhir;
  @override
  @JsonKey(name: "m_kary.tgl_masuk")
  dynamic get mKaryTglMasuk;
  @override
  @JsonKey(name: "m_kary.tgl_berhenti")
  dynamic get mKaryTglBerhenti;
  @override
  @JsonKey(name: "m_kary.alasan_berhenti")
  dynamic get mKaryAlasanBerhenti;
  @override
  @JsonKey(name: "m_kary.uk_baju")
  String? get mKaryUkBaju;
  @override
  @JsonKey(name: "m_kary.uk_celana")
  String? get mKaryUkCelana;
  @override
  @JsonKey(name: "m_kary.uk_sepatu")
  String? get mKaryUkSepatu;
  @override
  @JsonKey(name: "m_kary.desc")
  dynamic get mKaryDesc;
  @override
  @JsonKey(name: "m_kary.is_active")
  bool? get mKaryIsActive;
  @override
  @JsonKey(name: "m_kary.creator_id")
  dynamic get mKaryCreatorId;
  @override
  @JsonKey(name: "m_kary.last_editor_id")
  dynamic get mKaryLastEditorId;
  @override
  @JsonKey(name: "m_kary.created_at")
  String? get mKaryCreatedAt;
  @override
  @JsonKey(name: "m_kary.updated_at")
  String? get mKaryUpdatedAt;
  @override
  @JsonKey(name: "m_kary.m_standart_gaji_id")
  int? get mKaryMStandartGajiId;
  @override
  @JsonKey(name: "m_kary.periode_gaji_id")
  int? get mKaryPeriodeGajiId;
  @override
  @JsonKey(name: "m_kary.ref_id")
  int? get mKaryRefId;
  @override
  @JsonKey(name: "m_kary.presensi_lokasi_default_id")
  dynamic get mKaryPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "m_kary.exp_date_cuti")
  dynamic get mKaryExpDateCuti;
  @override
  @JsonKey(name: "m_kary.limit_potong")
  int? get mKaryLimitPotong;
  @override
  @JsonKey(name: "m_kary.atasan_id")
  int? get mKaryAtasanId;
  @override
  @JsonKey(name: "m_kary.cuti_p24")
  dynamic get mKaryCutiP24;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_p24")
  dynamic get mKaryCutiSisaP24;
  @override
  @JsonKey(name: "pic.id")
  dynamic get picId;
  @override
  @JsonKey(name: "pic.m_comp_id")
  dynamic get picMCompId;
  @override
  @JsonKey(name: "pic.m_dir_id")
  dynamic get picMDirId;
  @override
  @JsonKey(name: "pic.m_divisi_id")
  dynamic get picMDivisiId;
  @override
  @JsonKey(name: "pic.m_dept_id")
  dynamic get picMDeptId;
  @override
  @JsonKey(name: "pic.m_zona_id")
  dynamic get picMZonaId;
  @override
  @JsonKey(name: "pic.grading_id")
  dynamic get picGradingId;
  @override
  @JsonKey(name: "pic.costcontre_id")
  dynamic get picCostcontreId;
  @override
  @JsonKey(name: "pic.kode")
  dynamic get picKode;
  @override
  @JsonKey(name: "pic.m_posisi_id")
  dynamic get picMPosisiId;
  @override
  @JsonKey(name: "pic.m_jam_kerja_id")
  dynamic get picMJamKerjaId;
  @override
  @JsonKey(name: "pic.kode_presensi")
  dynamic get picKodePresensi;
  @override
  @JsonKey(name: "pic.nik")
  dynamic get picNik;
  @override
  @JsonKey(name: "pic.nama_depan")
  dynamic get picNamaDepan;
  @override
  @JsonKey(name: "pic.nama_belakang")
  dynamic get picNamaBelakang;
  @override
  @JsonKey(name: "pic.nama_lengkap")
  dynamic get picNamaLengkap;
  @override
  @JsonKey(name: "pic.nama_panggilan")
  dynamic get picNamaPanggilan;
  @override
  @JsonKey(name: "pic.jk_id")
  dynamic get picJkId;
  @override
  @JsonKey(name: "pic.tempat_lahir")
  dynamic get picTempatLahir;
  @override
  @JsonKey(name: "pic.tgl_lahir")
  dynamic get picTglLahir;
  @override
  @JsonKey(name: "pic.provinsi_id")
  dynamic get picProvinsiId;
  @override
  @JsonKey(name: "pic.kota_id")
  dynamic get picKotaId;
  @override
  @JsonKey(name: "pic.kecamatan_id")
  dynamic get picKecamatanId;
  @override
  @JsonKey(name: "pic.kode_pos")
  dynamic get picKodePos;
  @override
  @JsonKey(name: "pic.alamat_asli")
  dynamic get picAlamatAsli;
  @override
  @JsonKey(name: "pic.alamat_domisili")
  dynamic get picAlamatDomisili;
  @override
  @JsonKey(name: "pic.no_tlp")
  dynamic get picNoTlp;
  @override
  @JsonKey(name: "pic.no_tlp_lainnya")
  dynamic get picNoTlpLainnya;
  @override
  @JsonKey(name: "pic.no_darurat")
  dynamic get picNoDarurat;
  @override
  @JsonKey(name: "pic.nama_kontak_darurat")
  dynamic get picNamaKontakDarurat;
  @override
  @JsonKey(name: "pic.agama_id")
  dynamic get picAgamaId;
  @override
  @JsonKey(name: "pic.gol_darah_id")
  dynamic get picGolDarahId;
  @override
  @JsonKey(name: "pic.status_nikah_id")
  dynamic get picStatusNikahId;
  @override
  @JsonKey(name: "pic.tanggungan_id")
  dynamic get picTanggunganId;
  @override
  @JsonKey(name: "pic.hub_dgn_karyawan")
  dynamic get picHubDgnKaryawan;
  @override
  @JsonKey(name: "pic.cuti_jatah_reguler")
  dynamic get picCutiJatahReguler;
  @override
  @JsonKey(name: "pic.cuti_sisa_reguler")
  dynamic get picCutiSisaReguler;
  @override
  @JsonKey(name: "pic.cuti_panjang")
  dynamic get picCutiPanjang;
  @override
  @JsonKey(name: "pic.cuti_sisa_panjang")
  dynamic get picCutiSisaPanjang;
  @override
  @JsonKey(name: "pic.status_kary_id")
  dynamic get picStatusKaryId;
  @override
  @JsonKey(name: "pic.lama_kontrak_awal")
  dynamic get picLamaKontrakAwal;
  @override
  @JsonKey(name: "pic.lama_kontrak_akhir")
  dynamic get picLamaKontrakAkhir;
  @override
  @JsonKey(name: "pic.tgl_masuk")
  dynamic get picTglMasuk;
  @override
  @JsonKey(name: "pic.tgl_berhenti")
  dynamic get picTglBerhenti;
  @override
  @JsonKey(name: "pic.alasan_berhenti")
  dynamic get picAlasanBerhenti;
  @override
  @JsonKey(name: "pic.uk_baju")
  dynamic get picUkBaju;
  @override
  @JsonKey(name: "pic.uk_celana")
  dynamic get picUkCelana;
  @override
  @JsonKey(name: "pic.uk_sepatu")
  dynamic get picUkSepatu;
  @override
  @JsonKey(name: "pic.desc")
  dynamic get picDesc;
  @override
  @JsonKey(name: "pic.is_active")
  dynamic get picIsActive;
  @override
  @JsonKey(name: "pic.creator_id")
  dynamic get picCreatorId;
  @override
  @JsonKey(name: "pic.last_editor_id")
  dynamic get picLastEditorId;
  @override
  @JsonKey(name: "pic.created_at")
  dynamic get picCreatedAt;
  @override
  @JsonKey(name: "pic.updated_at")
  dynamic get picUpdatedAt;
  @override
  @JsonKey(name: "pic.m_standart_gaji_id")
  dynamic get picMStandartGajiId;
  @override
  @JsonKey(name: "pic.periode_gaji_id")
  dynamic get picPeriodeGajiId;
  @override
  @JsonKey(name: "pic.ref_id")
  dynamic get picRefId;
  @override
  @JsonKey(name: "pic.presensi_lokasi_default_id")
  dynamic get picPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "pic.exp_date_cuti")
  dynamic get picExpDateCuti;
  @override
  @JsonKey(name: "pic.limit_potong")
  dynamic get picLimitPotong;
  @override
  @JsonKey(name: "pic.atasan_id")
  dynamic get picAtasanId;
  @override
  @JsonKey(name: "pic.cuti_p24")
  dynamic get picCutiP24;
  @override
  @JsonKey(name: "pic.cuti_sisa_p24")
  dynamic get picCutiSisaP24;
  @override
  @JsonKey(name: "creator.id")
  int? get creatorId;
  @override
  @JsonKey(name: "creator.name")
  String? get creatorName;
  @override
  @JsonKey(name: "creator.email")
  dynamic get creatorEmail;
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
  int? get creatorCreatorId;
  @override
  @JsonKey(name: "creator.last_editor_id")
  dynamic get creatorLastEditorId;
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
  @JsonKey(name: "approval_note")
  String? get approvalNote;
  @override
  @JsonKey(name: "nama_pic")
  String? get namaPic;
  @override
  @JsonKey(ignore: true)
  _$$DataDinasImplCopyWith<_$DataDinasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

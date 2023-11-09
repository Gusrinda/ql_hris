// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_cuti_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCutiModel _$ListCutiModelFromJson(Map<String, dynamic> json) {
  return _ListCutiModel.fromJson(json);
}

/// @nodoc
mixin _$ListCutiModel {
  @JsonKey(name: "data")
  List<Datum>? get data => throw _privateConstructorUsedError;
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
  $ListCutiModelCopyWith<ListCutiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCutiModelCopyWith<$Res> {
  factory $ListCutiModelCopyWith(
          ListCutiModel value, $Res Function(ListCutiModel) then) =
      _$ListCutiModelCopyWithImpl<$Res, ListCutiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<Datum>? data,
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
class _$ListCutiModelCopyWithImpl<$Res, $Val extends ListCutiModel>
    implements $ListCutiModelCopyWith<$Res> {
  _$ListCutiModelCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
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
abstract class _$$ListCutiModelImplCopyWith<$Res>
    implements $ListCutiModelCopyWith<$Res> {
  factory _$$ListCutiModelImplCopyWith(
          _$ListCutiModelImpl value, $Res Function(_$ListCutiModelImpl) then) =
      __$$ListCutiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<Datum>? data,
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
class __$$ListCutiModelImplCopyWithImpl<$Res>
    extends _$ListCutiModelCopyWithImpl<$Res, _$ListCutiModelImpl>
    implements _$$ListCutiModelImplCopyWith<$Res> {
  __$$ListCutiModelImplCopyWithImpl(
      _$ListCutiModelImpl _value, $Res Function(_$ListCutiModelImpl) _then)
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
    return _then(_$ListCutiModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
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
class _$ListCutiModelImpl implements _ListCutiModel {
  const _$ListCutiModelImpl(
      {@JsonKey(name: "data") final List<Datum>? data,
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

  factory _$ListCutiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListCutiModelImplFromJson(json);

  final List<Datum>? _data;
  @override
  @JsonKey(name: "data")
  List<Datum>? get data {
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
    return 'ListCutiModel(data: $data, total: $total, currentPage: $currentPage, perPage: $perPage, from: $from, to: $to, lastPage: $lastPage, hasNext: $hasNext, prev: $prev, next: $next, processedTime: $processedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCutiModelImpl &&
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
  _$$ListCutiModelImplCopyWith<_$ListCutiModelImpl> get copyWith =>
      __$$ListCutiModelImplCopyWithImpl<_$ListCutiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListCutiModelImplToJson(
      this,
    );
  }
}

abstract class _ListCutiModel implements ListCutiModel {
  const factory _ListCutiModel(
          {@JsonKey(name: "data") final List<Datum>? data,
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
      _$ListCutiModelImpl;

  factory _ListCutiModel.fromJson(Map<String, dynamic> json) =
      _$ListCutiModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<Datum>? get data;
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
  _$$ListCutiModelImplCopyWith<_$ListCutiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
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
  @JsonKey(name: "m_dir_id")
  int? get datumMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  dynamic get datumMKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan_id")
  int? get datumAlasanId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti_id")
  int? get datumTipeCutiId => throw _privateConstructorUsedError;
  @JsonKey(name: "date_from")
  String? get dateFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "date_to")
  String? get dateTo => throw _privateConstructorUsedError;
  @JsonKey(name: "time_from")
  String? get timeFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "time_to")
  String? get timeTo => throw _privateConstructorUsedError;
  @JsonKey(name: "keterangan")
  String? get keterangan => throw _privateConstructorUsedError;
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
  int? get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.m_comp_id")
  int? get mDirMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.nama")
  String? get mDirNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.desc")
  dynamic get mDirDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.is_active")
  bool? get mDirIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.creator_id")
  dynamic get mDirCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.last_editor_id")
  dynamic get mDirLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.created_at")
  dynamic get mDirCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir.updated_at")
  dynamic get mDirUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.id")
  dynamic get mKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_comp_id")
  dynamic get mKaryMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_dir_id")
  dynamic get mKaryMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_divisi_id")
  dynamic get mKaryMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_dept_id")
  dynamic get mKaryMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_zona_id")
  dynamic get mKaryMZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.grading_id")
  dynamic get mKaryGradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.costcontre_id")
  dynamic get mKaryCostcontreId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kode")
  dynamic get mKaryKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_posisi_id")
  dynamic get mKaryMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_jam_kerja_id")
  dynamic get mKaryMJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kode_presensi")
  dynamic get mKaryKodePresensi => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nik")
  dynamic get mKaryNik => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_depan")
  dynamic get mKaryNamaDepan => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_belakang")
  dynamic get mKaryNamaBelakang => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_lengkap")
  dynamic get mKaryNamaLengkap => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_panggilan")
  dynamic get mKaryNamaPanggilan => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.jk_id")
  dynamic get mKaryJkId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.tempat_lahir")
  dynamic get mKaryTempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.tgl_lahir")
  dynamic get mKaryTglLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.provinsi_id")
  dynamic get mKaryProvinsiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kota_id")
  dynamic get mKaryKotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kecamatan_id")
  dynamic get mKaryKecamatanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.kode_pos")
  dynamic get mKaryKodePos => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.alamat_asli")
  dynamic get mKaryAlamatAsli => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.alamat_domisili")
  dynamic get mKaryAlamatDomisili => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.no_tlp")
  dynamic get mKaryNoTlp => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.no_tlp_lainnya")
  dynamic get mKaryNoTlpLainnya => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.no_darurat")
  dynamic get mKaryNoDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.nama_kontak_darurat")
  dynamic get mKaryNamaKontakDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.agama_id")
  dynamic get mKaryAgamaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.gol_darah_id")
  dynamic get mKaryGolDarahId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.status_nikah_id")
  dynamic get mKaryStatusNikahId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.jml_tanggungan")
  dynamic get mKaryJmlTanggungan => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.hub_dgn_karyawan")
  dynamic get mKaryHubDgnKaryawan => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_jatah_reguler")
  dynamic get mKaryCutiJatahReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_sisa_reguler")
  dynamic get mKaryCutiSisaReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_panjang")
  dynamic get mKaryCutiPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.cuti_sisa_panjang")
  dynamic get mKaryCutiSisaPanjang => throw _privateConstructorUsedError;
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
  dynamic get mKaryUkBaju => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.uk_celana")
  dynamic get mKaryUkCelana => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.uk_sepatu")
  dynamic get mKaryUkSepatu => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.desc")
  dynamic get mKaryDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.is_active")
  dynamic get mKaryIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.creator_id")
  dynamic get mKaryCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.last_editor_id")
  dynamic get mKaryLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.created_at")
  dynamic get mKaryCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.updated_at")
  dynamic get mKaryUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.id")
  int? get alasanId => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.m_comp_id")
  int? get alasanMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.m_dir_id")
  dynamic get alasanMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.group")
  String? get alasanGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.key")
  String? get alasanKey => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.code")
  String? get alasanCode => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.value")
  String? get alasanValue => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.is_active")
  bool? get alasanIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.creator_id")
  dynamic get alasanCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.last_editor_id")
  dynamic get alasanLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.created_at")
  String? get alasanCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan.updated_at")
  String? get alasanUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.id")
  int? get tipeCutiId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.m_comp_id")
  int? get tipeCutiMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.m_dir_id")
  dynamic get tipeCutiMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.group")
  String? get tipeCutiGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.key")
  String? get tipeCutiKey => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.code")
  String? get tipeCutiCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.value")
  String? get tipeCutiValue => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.is_active")
  bool? get tipeCutiIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.creator_id")
  dynamic get tipeCutiCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.last_editor_id")
  dynamic get tipeCutiLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.created_at")
  String? get tipeCutiCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_cuti.updated_at")
  String? get tipeCutiUpdatedAt => throw _privateConstructorUsedError;
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
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "m_comp_id") int? datumMCompId,
      @JsonKey(name: "m_dir_id") int? datumMDirId,
      @JsonKey(name: "m_kary_id") dynamic datumMKaryId,
      @JsonKey(name: "alasan_id") int? datumAlasanId,
      @JsonKey(name: "tipe_cuti_id") int? datumTipeCutiId,
      @JsonKey(name: "date_from") String? dateFrom,
      @JsonKey(name: "date_to") String? dateTo,
      @JsonKey(name: "time_from") String? timeFrom,
      @JsonKey(name: "time_to") String? timeTo,
      @JsonKey(name: "keterangan") String? keterangan,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "creator_id") int? datumCreatorId,
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
      @JsonKey(name: "m_dir.id") int? mDirId,
      @JsonKey(name: "m_dir.m_comp_id") int? mDirMCompId,
      @JsonKey(name: "m_dir.nama") String? mDirNama,
      @JsonKey(name: "m_dir.desc") dynamic mDirDesc,
      @JsonKey(name: "m_dir.is_active") bool? mDirIsActive,
      @JsonKey(name: "m_dir.creator_id") dynamic mDirCreatorId,
      @JsonKey(name: "m_dir.last_editor_id") dynamic mDirLastEditorId,
      @JsonKey(name: "m_dir.created_at") dynamic mDirCreatedAt,
      @JsonKey(name: "m_dir.updated_at") dynamic mDirUpdatedAt,
      @JsonKey(name: "m_kary.id") dynamic mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") dynamic mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") dynamic mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") dynamic mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") dynamic mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") dynamic mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") dynamic mKaryGradingId,
      @JsonKey(name: "m_kary.costcontre_id") dynamic mKaryCostcontreId,
      @JsonKey(name: "m_kary.kode") dynamic mKaryKode,
      @JsonKey(name: "m_kary.m_posisi_id") dynamic mKaryMPosisiId,
      @JsonKey(name: "m_kary.m_jam_kerja_id") dynamic mKaryMJamKerjaId,
      @JsonKey(name: "m_kary.kode_presensi") dynamic mKaryKodePresensi,
      @JsonKey(name: "m_kary.nik") dynamic mKaryNik,
      @JsonKey(name: "m_kary.nama_depan") dynamic mKaryNamaDepan,
      @JsonKey(name: "m_kary.nama_belakang") dynamic mKaryNamaBelakang,
      @JsonKey(name: "m_kary.nama_lengkap") dynamic mKaryNamaLengkap,
      @JsonKey(name: "m_kary.nama_panggilan") dynamic mKaryNamaPanggilan,
      @JsonKey(name: "m_kary.jk_id") dynamic mKaryJkId,
      @JsonKey(name: "m_kary.tempat_lahir") dynamic mKaryTempatLahir,
      @JsonKey(name: "m_kary.tgl_lahir") dynamic mKaryTglLahir,
      @JsonKey(name: "m_kary.provinsi_id") dynamic mKaryProvinsiId,
      @JsonKey(name: "m_kary.kota_id") dynamic mKaryKotaId,
      @JsonKey(name: "m_kary.kecamatan_id") dynamic mKaryKecamatanId,
      @JsonKey(name: "m_kary.kode_pos") dynamic mKaryKodePos,
      @JsonKey(name: "m_kary.alamat_asli") dynamic mKaryAlamatAsli,
      @JsonKey(name: "m_kary.alamat_domisili") dynamic mKaryAlamatDomisili,
      @JsonKey(name: "m_kary.no_tlp") dynamic mKaryNoTlp,
      @JsonKey(name: "m_kary.no_tlp_lainnya") dynamic mKaryNoTlpLainnya,
      @JsonKey(name: "m_kary.no_darurat") dynamic mKaryNoDarurat,
      @JsonKey(name: "m_kary.nama_kontak_darurat")
      dynamic mKaryNamaKontakDarurat,
      @JsonKey(name: "m_kary.agama_id") dynamic mKaryAgamaId,
      @JsonKey(name: "m_kary.gol_darah_id") dynamic mKaryGolDarahId,
      @JsonKey(name: "m_kary.status_nikah_id") dynamic mKaryStatusNikahId,
      @JsonKey(name: "m_kary.jml_tanggungan") dynamic mKaryJmlTanggungan,
      @JsonKey(name: "m_kary.hub_dgn_karyawan") dynamic mKaryHubDgnKaryawan,
      @JsonKey(name: "m_kary.cuti_jatah_reguler") dynamic mKaryCutiJatahReguler,
      @JsonKey(name: "m_kary.cuti_sisa_reguler") dynamic mKaryCutiSisaReguler,
      @JsonKey(name: "m_kary.cuti_panjang") dynamic mKaryCutiPanjang,
      @JsonKey(name: "m_kary.cuti_sisa_panjang") dynamic mKaryCutiSisaPanjang,
      @JsonKey(name: "m_kary.status_kary_id") dynamic mKaryStatusKaryId,
      @JsonKey(name: "m_kary.lama_kontrak_awal") dynamic mKaryLamaKontrakAwal,
      @JsonKey(name: "m_kary.lama_kontrak_akhir") dynamic mKaryLamaKontrakAkhir,
      @JsonKey(name: "m_kary.tgl_masuk") dynamic mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") dynamic mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti") dynamic mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") dynamic mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") dynamic mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") dynamic mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") dynamic mKaryDesc,
      @JsonKey(name: "m_kary.is_active") dynamic mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") dynamic mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") dynamic mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") dynamic mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") dynamic mKaryUpdatedAt,
      @JsonKey(name: "alasan.id") int? alasanId,
      @JsonKey(name: "alasan.m_comp_id") int? alasanMCompId,
      @JsonKey(name: "alasan.m_dir_id") dynamic alasanMDirId,
      @JsonKey(name: "alasan.group") String? alasanGroup,
      @JsonKey(name: "alasan.key") String? alasanKey,
      @JsonKey(name: "alasan.code") String? alasanCode,
      @JsonKey(name: "alasan.value") String? alasanValue,
      @JsonKey(name: "alasan.is_active") bool? alasanIsActive,
      @JsonKey(name: "alasan.creator_id") dynamic alasanCreatorId,
      @JsonKey(name: "alasan.last_editor_id") dynamic alasanLastEditorId,
      @JsonKey(name: "alasan.created_at") String? alasanCreatedAt,
      @JsonKey(name: "alasan.updated_at") String? alasanUpdatedAt,
      @JsonKey(name: "tipe_cuti.id") int? tipeCutiId,
      @JsonKey(name: "tipe_cuti.m_comp_id") int? tipeCutiMCompId,
      @JsonKey(name: "tipe_cuti.m_dir_id") dynamic tipeCutiMDirId,
      @JsonKey(name: "tipe_cuti.group") String? tipeCutiGroup,
      @JsonKey(name: "tipe_cuti.key") String? tipeCutiKey,
      @JsonKey(name: "tipe_cuti.code") String? tipeCutiCode,
      @JsonKey(name: "tipe_cuti.value") String? tipeCutiValue,
      @JsonKey(name: "tipe_cuti.is_active") bool? tipeCutiIsActive,
      @JsonKey(name: "tipe_cuti.creator_id") dynamic tipeCutiCreatorId,
      @JsonKey(name: "tipe_cuti.last_editor_id") dynamic tipeCutiLastEditorId,
      @JsonKey(name: "tipe_cuti.created_at") String? tipeCutiCreatedAt,
      @JsonKey(name: "tipe_cuti.updated_at") String? tipeCutiUpdatedAt,
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
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

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
    Object? datumMDirId = freezed,
    Object? datumMKaryId = freezed,
    Object? datumAlasanId = freezed,
    Object? datumTipeCutiId = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
    Object? keterangan = freezed,
    Object? status = freezed,
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
    Object? mKaryJmlTanggungan = freezed,
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
    Object? alasanId = freezed,
    Object? alasanMCompId = freezed,
    Object? alasanMDirId = freezed,
    Object? alasanGroup = freezed,
    Object? alasanKey = freezed,
    Object? alasanCode = freezed,
    Object? alasanValue = freezed,
    Object? alasanIsActive = freezed,
    Object? alasanCreatorId = freezed,
    Object? alasanLastEditorId = freezed,
    Object? alasanCreatedAt = freezed,
    Object? alasanUpdatedAt = freezed,
    Object? tipeCutiId = freezed,
    Object? tipeCutiMCompId = freezed,
    Object? tipeCutiMDirId = freezed,
    Object? tipeCutiGroup = freezed,
    Object? tipeCutiKey = freezed,
    Object? tipeCutiCode = freezed,
    Object? tipeCutiValue = freezed,
    Object? tipeCutiIsActive = freezed,
    Object? tipeCutiCreatorId = freezed,
    Object? tipeCutiLastEditorId = freezed,
    Object? tipeCutiCreatedAt = freezed,
    Object? tipeCutiUpdatedAt = freezed,
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
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      datumMCompId: freezed == datumMCompId
          ? _value.datumMCompId
          : datumMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMDirId: freezed == datumMDirId
          ? _value.datumMDirId
          : datumMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMKaryId: freezed == datumMKaryId
          ? _value.datumMKaryId
          : datumMKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      datumAlasanId: freezed == datumAlasanId
          ? _value.datumAlasanId
          : datumAlasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumTipeCutiId: freezed == datumTipeCutiId
          ? _value.datumTipeCutiId
          : datumTipeCutiId // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFrom: freezed == timeFrom
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int?,
      mDirMCompId: freezed == mDirMCompId
          ? _value.mDirMCompId
          : mDirMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDirNama: freezed == mDirNama
          ? _value.mDirNama
          : mDirNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mDirDesc: freezed == mDirDesc
          ? _value.mDirDesc
          : mDirDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirIsActive: freezed == mDirIsActive
          ? _value.mDirIsActive
          : mDirIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMCompId: freezed == mKaryMCompId
          ? _value.mKaryMCompId
          : mKaryMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMDirId: freezed == mKaryMDirId
          ? _value.mKaryMDirId
          : mKaryMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMDivisiId: freezed == mKaryMDivisiId
          ? _value.mKaryMDivisiId
          : mKaryMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMDeptId: freezed == mKaryMDeptId
          ? _value.mKaryMDeptId
          : mKaryMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMZonaId: freezed == mKaryMZonaId
          ? _value.mKaryMZonaId
          : mKaryMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryGradingId: freezed == mKaryGradingId
          ? _value.mKaryGradingId
          : mKaryGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCostcontreId: freezed == mKaryCostcontreId
          ? _value.mKaryCostcontreId
          : mKaryCostcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKode: freezed == mKaryKode
          ? _value.mKaryKode
          : mKaryKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMPosisiId: freezed == mKaryMPosisiId
          ? _value.mKaryMPosisiId
          : mKaryMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMJamKerjaId: freezed == mKaryMJamKerjaId
          ? _value.mKaryMJamKerjaId
          : mKaryMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKodePresensi: freezed == mKaryKodePresensi
          ? _value.mKaryKodePresensi
          : mKaryKodePresensi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNik: freezed == mKaryNik
          ? _value.mKaryNik
          : mKaryNik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaDepan: freezed == mKaryNamaDepan
          ? _value.mKaryNamaDepan
          : mKaryNamaDepan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaBelakang: freezed == mKaryNamaBelakang
          ? _value.mKaryNamaBelakang
          : mKaryNamaBelakang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaLengkap: freezed == mKaryNamaLengkap
          ? _value.mKaryNamaLengkap
          : mKaryNamaLengkap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaPanggilan: freezed == mKaryNamaPanggilan
          ? _value.mKaryNamaPanggilan
          : mKaryNamaPanggilan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryJkId: freezed == mKaryJkId
          ? _value.mKaryJkId
          : mKaryJkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryTempatLahir: freezed == mKaryTempatLahir
          ? _value.mKaryTempatLahir
          : mKaryTempatLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryTglLahir: freezed == mKaryTglLahir
          ? _value.mKaryTglLahir
          : mKaryTglLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryProvinsiId: freezed == mKaryProvinsiId
          ? _value.mKaryProvinsiId
          : mKaryProvinsiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKotaId: freezed == mKaryKotaId
          ? _value.mKaryKotaId
          : mKaryKotaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKecamatanId: freezed == mKaryKecamatanId
          ? _value.mKaryKecamatanId
          : mKaryKecamatanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKodePos: freezed == mKaryKodePos
          ? _value.mKaryKodePos
          : mKaryKodePos // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryAlamatAsli: freezed == mKaryAlamatAsli
          ? _value.mKaryAlamatAsli
          : mKaryAlamatAsli // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryAlamatDomisili: freezed == mKaryAlamatDomisili
          ? _value.mKaryAlamatDomisili
          : mKaryAlamatDomisili // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNoTlp: freezed == mKaryNoTlp
          ? _value.mKaryNoTlp
          : mKaryNoTlp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNoTlpLainnya: freezed == mKaryNoTlpLainnya
          ? _value.mKaryNoTlpLainnya
          : mKaryNoTlpLainnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNoDarurat: freezed == mKaryNoDarurat
          ? _value.mKaryNoDarurat
          : mKaryNoDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaKontakDarurat: freezed == mKaryNamaKontakDarurat
          ? _value.mKaryNamaKontakDarurat
          : mKaryNamaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryAgamaId: freezed == mKaryAgamaId
          ? _value.mKaryAgamaId
          : mKaryAgamaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryGolDarahId: freezed == mKaryGolDarahId
          ? _value.mKaryGolDarahId
          : mKaryGolDarahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryStatusNikahId: freezed == mKaryStatusNikahId
          ? _value.mKaryStatusNikahId
          : mKaryStatusNikahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryJmlTanggungan: freezed == mKaryJmlTanggungan
          ? _value.mKaryJmlTanggungan
          : mKaryJmlTanggungan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryHubDgnKaryawan: freezed == mKaryHubDgnKaryawan
          ? _value.mKaryHubDgnKaryawan
          : mKaryHubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiJatahReguler: freezed == mKaryCutiJatahReguler
          ? _value.mKaryCutiJatahReguler
          : mKaryCutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiSisaReguler: freezed == mKaryCutiSisaReguler
          ? _value.mKaryCutiSisaReguler
          : mKaryCutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiPanjang: freezed == mKaryCutiPanjang
          ? _value.mKaryCutiPanjang
          : mKaryCutiPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiSisaPanjang: freezed == mKaryCutiSisaPanjang
          ? _value.mKaryCutiSisaPanjang
          : mKaryCutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      mKaryUkCelana: freezed == mKaryUkCelana
          ? _value.mKaryUkCelana
          : mKaryUkCelana // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryUkSepatu: freezed == mKaryUkSepatu
          ? _value.mKaryUkSepatu
          : mKaryUkSepatu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryDesc: freezed == mKaryDesc
          ? _value.mKaryDesc
          : mKaryDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryIsActive: freezed == mKaryIsActive
          ? _value.mKaryIsActive
          : mKaryIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      mKaryUpdatedAt: freezed == mKaryUpdatedAt
          ? _value.mKaryUpdatedAt
          : mKaryUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanId: freezed == alasanId
          ? _value.alasanId
          : alasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      alasanMCompId: freezed == alasanMCompId
          ? _value.alasanMCompId
          : alasanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      alasanMDirId: freezed == alasanMDirId
          ? _value.alasanMDirId
          : alasanMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanGroup: freezed == alasanGroup
          ? _value.alasanGroup
          : alasanGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanKey: freezed == alasanKey
          ? _value.alasanKey
          : alasanKey // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanCode: freezed == alasanCode
          ? _value.alasanCode
          : alasanCode // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanValue: freezed == alasanValue
          ? _value.alasanValue
          : alasanValue // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanIsActive: freezed == alasanIsActive
          ? _value.alasanIsActive
          : alasanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      alasanCreatorId: freezed == alasanCreatorId
          ? _value.alasanCreatorId
          : alasanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanLastEditorId: freezed == alasanLastEditorId
          ? _value.alasanLastEditorId
          : alasanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanCreatedAt: freezed == alasanCreatedAt
          ? _value.alasanCreatedAt
          : alasanCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanUpdatedAt: freezed == alasanUpdatedAt
          ? _value.alasanUpdatedAt
          : alasanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiId: freezed == tipeCutiId
          ? _value.tipeCutiId
          : tipeCutiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeCutiMCompId: freezed == tipeCutiMCompId
          ? _value.tipeCutiMCompId
          : tipeCutiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeCutiMDirId: freezed == tipeCutiMDirId
          ? _value.tipeCutiMDirId
          : tipeCutiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeCutiGroup: freezed == tipeCutiGroup
          ? _value.tipeCutiGroup
          : tipeCutiGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiKey: freezed == tipeCutiKey
          ? _value.tipeCutiKey
          : tipeCutiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiCode: freezed == tipeCutiCode
          ? _value.tipeCutiCode
          : tipeCutiCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiValue: freezed == tipeCutiValue
          ? _value.tipeCutiValue
          : tipeCutiValue // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiIsActive: freezed == tipeCutiIsActive
          ? _value.tipeCutiIsActive
          : tipeCutiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tipeCutiCreatorId: freezed == tipeCutiCreatorId
          ? _value.tipeCutiCreatorId
          : tipeCutiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeCutiLastEditorId: freezed == tipeCutiLastEditorId
          ? _value.tipeCutiLastEditorId
          : tipeCutiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeCutiCreatedAt: freezed == tipeCutiCreatedAt
          ? _value.tipeCutiCreatedAt
          : tipeCutiCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiUpdatedAt: freezed == tipeCutiUpdatedAt
          ? _value.tipeCutiUpdatedAt
          : tipeCutiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "m_dir_id") int? datumMDirId,
      @JsonKey(name: "m_kary_id") dynamic datumMKaryId,
      @JsonKey(name: "alasan_id") int? datumAlasanId,
      @JsonKey(name: "tipe_cuti_id") int? datumTipeCutiId,
      @JsonKey(name: "date_from") String? dateFrom,
      @JsonKey(name: "date_to") String? dateTo,
      @JsonKey(name: "time_from") String? timeFrom,
      @JsonKey(name: "time_to") String? timeTo,
      @JsonKey(name: "keterangan") String? keterangan,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "creator_id") int? datumCreatorId,
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
      @JsonKey(name: "m_dir.id") int? mDirId,
      @JsonKey(name: "m_dir.m_comp_id") int? mDirMCompId,
      @JsonKey(name: "m_dir.nama") String? mDirNama,
      @JsonKey(name: "m_dir.desc") dynamic mDirDesc,
      @JsonKey(name: "m_dir.is_active") bool? mDirIsActive,
      @JsonKey(name: "m_dir.creator_id") dynamic mDirCreatorId,
      @JsonKey(name: "m_dir.last_editor_id") dynamic mDirLastEditorId,
      @JsonKey(name: "m_dir.created_at") dynamic mDirCreatedAt,
      @JsonKey(name: "m_dir.updated_at") dynamic mDirUpdatedAt,
      @JsonKey(name: "m_kary.id") dynamic mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") dynamic mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") dynamic mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") dynamic mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") dynamic mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") dynamic mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") dynamic mKaryGradingId,
      @JsonKey(name: "m_kary.costcontre_id") dynamic mKaryCostcontreId,
      @JsonKey(name: "m_kary.kode") dynamic mKaryKode,
      @JsonKey(name: "m_kary.m_posisi_id") dynamic mKaryMPosisiId,
      @JsonKey(name: "m_kary.m_jam_kerja_id") dynamic mKaryMJamKerjaId,
      @JsonKey(name: "m_kary.kode_presensi") dynamic mKaryKodePresensi,
      @JsonKey(name: "m_kary.nik") dynamic mKaryNik,
      @JsonKey(name: "m_kary.nama_depan") dynamic mKaryNamaDepan,
      @JsonKey(name: "m_kary.nama_belakang") dynamic mKaryNamaBelakang,
      @JsonKey(name: "m_kary.nama_lengkap") dynamic mKaryNamaLengkap,
      @JsonKey(name: "m_kary.nama_panggilan") dynamic mKaryNamaPanggilan,
      @JsonKey(name: "m_kary.jk_id") dynamic mKaryJkId,
      @JsonKey(name: "m_kary.tempat_lahir") dynamic mKaryTempatLahir,
      @JsonKey(name: "m_kary.tgl_lahir") dynamic mKaryTglLahir,
      @JsonKey(name: "m_kary.provinsi_id") dynamic mKaryProvinsiId,
      @JsonKey(name: "m_kary.kota_id") dynamic mKaryKotaId,
      @JsonKey(name: "m_kary.kecamatan_id") dynamic mKaryKecamatanId,
      @JsonKey(name: "m_kary.kode_pos") dynamic mKaryKodePos,
      @JsonKey(name: "m_kary.alamat_asli") dynamic mKaryAlamatAsli,
      @JsonKey(name: "m_kary.alamat_domisili") dynamic mKaryAlamatDomisili,
      @JsonKey(name: "m_kary.no_tlp") dynamic mKaryNoTlp,
      @JsonKey(name: "m_kary.no_tlp_lainnya") dynamic mKaryNoTlpLainnya,
      @JsonKey(name: "m_kary.no_darurat") dynamic mKaryNoDarurat,
      @JsonKey(name: "m_kary.nama_kontak_darurat")
      dynamic mKaryNamaKontakDarurat,
      @JsonKey(name: "m_kary.agama_id") dynamic mKaryAgamaId,
      @JsonKey(name: "m_kary.gol_darah_id") dynamic mKaryGolDarahId,
      @JsonKey(name: "m_kary.status_nikah_id") dynamic mKaryStatusNikahId,
      @JsonKey(name: "m_kary.jml_tanggungan") dynamic mKaryJmlTanggungan,
      @JsonKey(name: "m_kary.hub_dgn_karyawan") dynamic mKaryHubDgnKaryawan,
      @JsonKey(name: "m_kary.cuti_jatah_reguler") dynamic mKaryCutiJatahReguler,
      @JsonKey(name: "m_kary.cuti_sisa_reguler") dynamic mKaryCutiSisaReguler,
      @JsonKey(name: "m_kary.cuti_panjang") dynamic mKaryCutiPanjang,
      @JsonKey(name: "m_kary.cuti_sisa_panjang") dynamic mKaryCutiSisaPanjang,
      @JsonKey(name: "m_kary.status_kary_id") dynamic mKaryStatusKaryId,
      @JsonKey(name: "m_kary.lama_kontrak_awal") dynamic mKaryLamaKontrakAwal,
      @JsonKey(name: "m_kary.lama_kontrak_akhir") dynamic mKaryLamaKontrakAkhir,
      @JsonKey(name: "m_kary.tgl_masuk") dynamic mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") dynamic mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti") dynamic mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") dynamic mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") dynamic mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") dynamic mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") dynamic mKaryDesc,
      @JsonKey(name: "m_kary.is_active") dynamic mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") dynamic mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") dynamic mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") dynamic mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") dynamic mKaryUpdatedAt,
      @JsonKey(name: "alasan.id") int? alasanId,
      @JsonKey(name: "alasan.m_comp_id") int? alasanMCompId,
      @JsonKey(name: "alasan.m_dir_id") dynamic alasanMDirId,
      @JsonKey(name: "alasan.group") String? alasanGroup,
      @JsonKey(name: "alasan.key") String? alasanKey,
      @JsonKey(name: "alasan.code") String? alasanCode,
      @JsonKey(name: "alasan.value") String? alasanValue,
      @JsonKey(name: "alasan.is_active") bool? alasanIsActive,
      @JsonKey(name: "alasan.creator_id") dynamic alasanCreatorId,
      @JsonKey(name: "alasan.last_editor_id") dynamic alasanLastEditorId,
      @JsonKey(name: "alasan.created_at") String? alasanCreatedAt,
      @JsonKey(name: "alasan.updated_at") String? alasanUpdatedAt,
      @JsonKey(name: "tipe_cuti.id") int? tipeCutiId,
      @JsonKey(name: "tipe_cuti.m_comp_id") int? tipeCutiMCompId,
      @JsonKey(name: "tipe_cuti.m_dir_id") dynamic tipeCutiMDirId,
      @JsonKey(name: "tipe_cuti.group") String? tipeCutiGroup,
      @JsonKey(name: "tipe_cuti.key") String? tipeCutiKey,
      @JsonKey(name: "tipe_cuti.code") String? tipeCutiCode,
      @JsonKey(name: "tipe_cuti.value") String? tipeCutiValue,
      @JsonKey(name: "tipe_cuti.is_active") bool? tipeCutiIsActive,
      @JsonKey(name: "tipe_cuti.creator_id") dynamic tipeCutiCreatorId,
      @JsonKey(name: "tipe_cuti.last_editor_id") dynamic tipeCutiLastEditorId,
      @JsonKey(name: "tipe_cuti.created_at") String? tipeCutiCreatedAt,
      @JsonKey(name: "tipe_cuti.updated_at") String? tipeCutiUpdatedAt,
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
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
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
    Object? datumMDirId = freezed,
    Object? datumMKaryId = freezed,
    Object? datumAlasanId = freezed,
    Object? datumTipeCutiId = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
    Object? keterangan = freezed,
    Object? status = freezed,
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
    Object? mKaryJmlTanggungan = freezed,
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
    Object? alasanId = freezed,
    Object? alasanMCompId = freezed,
    Object? alasanMDirId = freezed,
    Object? alasanGroup = freezed,
    Object? alasanKey = freezed,
    Object? alasanCode = freezed,
    Object? alasanValue = freezed,
    Object? alasanIsActive = freezed,
    Object? alasanCreatorId = freezed,
    Object? alasanLastEditorId = freezed,
    Object? alasanCreatedAt = freezed,
    Object? alasanUpdatedAt = freezed,
    Object? tipeCutiId = freezed,
    Object? tipeCutiMCompId = freezed,
    Object? tipeCutiMDirId = freezed,
    Object? tipeCutiGroup = freezed,
    Object? tipeCutiKey = freezed,
    Object? tipeCutiCode = freezed,
    Object? tipeCutiValue = freezed,
    Object? tipeCutiIsActive = freezed,
    Object? tipeCutiCreatorId = freezed,
    Object? tipeCutiLastEditorId = freezed,
    Object? tipeCutiCreatedAt = freezed,
    Object? tipeCutiUpdatedAt = freezed,
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
    return _then(_$DatumImpl(
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
      datumMDirId: freezed == datumMDirId
          ? _value.datumMDirId
          : datumMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumMKaryId: freezed == datumMKaryId
          ? _value.datumMKaryId
          : datumMKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      datumAlasanId: freezed == datumAlasanId
          ? _value.datumAlasanId
          : datumAlasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      datumTipeCutiId: freezed == datumTipeCutiId
          ? _value.datumTipeCutiId
          : datumTipeCutiId // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFrom: freezed == timeFrom
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int?,
      mDirMCompId: freezed == mDirMCompId
          ? _value.mDirMCompId
          : mDirMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDirNama: freezed == mDirNama
          ? _value.mDirNama
          : mDirNama // ignore: cast_nullable_to_non_nullable
              as String?,
      mDirDesc: freezed == mDirDesc
          ? _value.mDirDesc
          : mDirDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mDirIsActive: freezed == mDirIsActive
          ? _value.mDirIsActive
          : mDirIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      mKaryId: freezed == mKaryId
          ? _value.mKaryId
          : mKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMCompId: freezed == mKaryMCompId
          ? _value.mKaryMCompId
          : mKaryMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMDirId: freezed == mKaryMDirId
          ? _value.mKaryMDirId
          : mKaryMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMDivisiId: freezed == mKaryMDivisiId
          ? _value.mKaryMDivisiId
          : mKaryMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMDeptId: freezed == mKaryMDeptId
          ? _value.mKaryMDeptId
          : mKaryMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMZonaId: freezed == mKaryMZonaId
          ? _value.mKaryMZonaId
          : mKaryMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryGradingId: freezed == mKaryGradingId
          ? _value.mKaryGradingId
          : mKaryGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCostcontreId: freezed == mKaryCostcontreId
          ? _value.mKaryCostcontreId
          : mKaryCostcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKode: freezed == mKaryKode
          ? _value.mKaryKode
          : mKaryKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMPosisiId: freezed == mKaryMPosisiId
          ? _value.mKaryMPosisiId
          : mKaryMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryMJamKerjaId: freezed == mKaryMJamKerjaId
          ? _value.mKaryMJamKerjaId
          : mKaryMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKodePresensi: freezed == mKaryKodePresensi
          ? _value.mKaryKodePresensi
          : mKaryKodePresensi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNik: freezed == mKaryNik
          ? _value.mKaryNik
          : mKaryNik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaDepan: freezed == mKaryNamaDepan
          ? _value.mKaryNamaDepan
          : mKaryNamaDepan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaBelakang: freezed == mKaryNamaBelakang
          ? _value.mKaryNamaBelakang
          : mKaryNamaBelakang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaLengkap: freezed == mKaryNamaLengkap
          ? _value.mKaryNamaLengkap
          : mKaryNamaLengkap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaPanggilan: freezed == mKaryNamaPanggilan
          ? _value.mKaryNamaPanggilan
          : mKaryNamaPanggilan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryJkId: freezed == mKaryJkId
          ? _value.mKaryJkId
          : mKaryJkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryTempatLahir: freezed == mKaryTempatLahir
          ? _value.mKaryTempatLahir
          : mKaryTempatLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryTglLahir: freezed == mKaryTglLahir
          ? _value.mKaryTglLahir
          : mKaryTglLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryProvinsiId: freezed == mKaryProvinsiId
          ? _value.mKaryProvinsiId
          : mKaryProvinsiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKotaId: freezed == mKaryKotaId
          ? _value.mKaryKotaId
          : mKaryKotaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKecamatanId: freezed == mKaryKecamatanId
          ? _value.mKaryKecamatanId
          : mKaryKecamatanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryKodePos: freezed == mKaryKodePos
          ? _value.mKaryKodePos
          : mKaryKodePos // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryAlamatAsli: freezed == mKaryAlamatAsli
          ? _value.mKaryAlamatAsli
          : mKaryAlamatAsli // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryAlamatDomisili: freezed == mKaryAlamatDomisili
          ? _value.mKaryAlamatDomisili
          : mKaryAlamatDomisili // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNoTlp: freezed == mKaryNoTlp
          ? _value.mKaryNoTlp
          : mKaryNoTlp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNoTlpLainnya: freezed == mKaryNoTlpLainnya
          ? _value.mKaryNoTlpLainnya
          : mKaryNoTlpLainnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNoDarurat: freezed == mKaryNoDarurat
          ? _value.mKaryNoDarurat
          : mKaryNoDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryNamaKontakDarurat: freezed == mKaryNamaKontakDarurat
          ? _value.mKaryNamaKontakDarurat
          : mKaryNamaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryAgamaId: freezed == mKaryAgamaId
          ? _value.mKaryAgamaId
          : mKaryAgamaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryGolDarahId: freezed == mKaryGolDarahId
          ? _value.mKaryGolDarahId
          : mKaryGolDarahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryStatusNikahId: freezed == mKaryStatusNikahId
          ? _value.mKaryStatusNikahId
          : mKaryStatusNikahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryJmlTanggungan: freezed == mKaryJmlTanggungan
          ? _value.mKaryJmlTanggungan
          : mKaryJmlTanggungan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryHubDgnKaryawan: freezed == mKaryHubDgnKaryawan
          ? _value.mKaryHubDgnKaryawan
          : mKaryHubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiJatahReguler: freezed == mKaryCutiJatahReguler
          ? _value.mKaryCutiJatahReguler
          : mKaryCutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiSisaReguler: freezed == mKaryCutiSisaReguler
          ? _value.mKaryCutiSisaReguler
          : mKaryCutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiPanjang: freezed == mKaryCutiPanjang
          ? _value.mKaryCutiPanjang
          : mKaryCutiPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryCutiSisaPanjang: freezed == mKaryCutiSisaPanjang
          ? _value.mKaryCutiSisaPanjang
          : mKaryCutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      mKaryUkCelana: freezed == mKaryUkCelana
          ? _value.mKaryUkCelana
          : mKaryUkCelana // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryUkSepatu: freezed == mKaryUkSepatu
          ? _value.mKaryUkSepatu
          : mKaryUkSepatu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryDesc: freezed == mKaryDesc
          ? _value.mKaryDesc
          : mKaryDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryIsActive: freezed == mKaryIsActive
          ? _value.mKaryIsActive
          : mKaryIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      mKaryUpdatedAt: freezed == mKaryUpdatedAt
          ? _value.mKaryUpdatedAt
          : mKaryUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanId: freezed == alasanId
          ? _value.alasanId
          : alasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      alasanMCompId: freezed == alasanMCompId
          ? _value.alasanMCompId
          : alasanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      alasanMDirId: freezed == alasanMDirId
          ? _value.alasanMDirId
          : alasanMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanGroup: freezed == alasanGroup
          ? _value.alasanGroup
          : alasanGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanKey: freezed == alasanKey
          ? _value.alasanKey
          : alasanKey // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanCode: freezed == alasanCode
          ? _value.alasanCode
          : alasanCode // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanValue: freezed == alasanValue
          ? _value.alasanValue
          : alasanValue // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanIsActive: freezed == alasanIsActive
          ? _value.alasanIsActive
          : alasanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      alasanCreatorId: freezed == alasanCreatorId
          ? _value.alasanCreatorId
          : alasanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanLastEditorId: freezed == alasanLastEditorId
          ? _value.alasanLastEditorId
          : alasanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanCreatedAt: freezed == alasanCreatedAt
          ? _value.alasanCreatedAt
          : alasanCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      alasanUpdatedAt: freezed == alasanUpdatedAt
          ? _value.alasanUpdatedAt
          : alasanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiId: freezed == tipeCutiId
          ? _value.tipeCutiId
          : tipeCutiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeCutiMCompId: freezed == tipeCutiMCompId
          ? _value.tipeCutiMCompId
          : tipeCutiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeCutiMDirId: freezed == tipeCutiMDirId
          ? _value.tipeCutiMDirId
          : tipeCutiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeCutiGroup: freezed == tipeCutiGroup
          ? _value.tipeCutiGroup
          : tipeCutiGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiKey: freezed == tipeCutiKey
          ? _value.tipeCutiKey
          : tipeCutiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiCode: freezed == tipeCutiCode
          ? _value.tipeCutiCode
          : tipeCutiCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiValue: freezed == tipeCutiValue
          ? _value.tipeCutiValue
          : tipeCutiValue // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiIsActive: freezed == tipeCutiIsActive
          ? _value.tipeCutiIsActive
          : tipeCutiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tipeCutiCreatorId: freezed == tipeCutiCreatorId
          ? _value.tipeCutiCreatorId
          : tipeCutiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeCutiLastEditorId: freezed == tipeCutiLastEditorId
          ? _value.tipeCutiLastEditorId
          : tipeCutiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeCutiCreatedAt: freezed == tipeCutiCreatedAt
          ? _value.tipeCutiCreatedAt
          : tipeCutiCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeCutiUpdatedAt: freezed == tipeCutiUpdatedAt
          ? _value.tipeCutiUpdatedAt
          : tipeCutiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "meta_read") this.metaRead,
      @JsonKey(name: "meta_delete") this.metaDelete,
      @JsonKey(name: "meta_update") this.metaUpdate,
      @JsonKey(name: "meta_create") this.metaCreate,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "nomor") this.nomor,
      @JsonKey(name: "m_comp_id") this.datumMCompId,
      @JsonKey(name: "m_dir_id") this.datumMDirId,
      @JsonKey(name: "m_kary_id") this.datumMKaryId,
      @JsonKey(name: "alasan_id") this.datumAlasanId,
      @JsonKey(name: "tipe_cuti_id") this.datumTipeCutiId,
      @JsonKey(name: "date_from") this.dateFrom,
      @JsonKey(name: "date_to") this.dateTo,
      @JsonKey(name: "time_from") this.timeFrom,
      @JsonKey(name: "time_to") this.timeTo,
      @JsonKey(name: "keterangan") this.keterangan,
      @JsonKey(name: "status") this.status,
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
      @JsonKey(name: "m_kary.jml_tanggungan") this.mKaryJmlTanggungan,
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
      @JsonKey(name: "alasan.id") this.alasanId,
      @JsonKey(name: "alasan.m_comp_id") this.alasanMCompId,
      @JsonKey(name: "alasan.m_dir_id") this.alasanMDirId,
      @JsonKey(name: "alasan.group") this.alasanGroup,
      @JsonKey(name: "alasan.key") this.alasanKey,
      @JsonKey(name: "alasan.code") this.alasanCode,
      @JsonKey(name: "alasan.value") this.alasanValue,
      @JsonKey(name: "alasan.is_active") this.alasanIsActive,
      @JsonKey(name: "alasan.creator_id") this.alasanCreatorId,
      @JsonKey(name: "alasan.last_editor_id") this.alasanLastEditorId,
      @JsonKey(name: "alasan.created_at") this.alasanCreatedAt,
      @JsonKey(name: "alasan.updated_at") this.alasanUpdatedAt,
      @JsonKey(name: "tipe_cuti.id") this.tipeCutiId,
      @JsonKey(name: "tipe_cuti.m_comp_id") this.tipeCutiMCompId,
      @JsonKey(name: "tipe_cuti.m_dir_id") this.tipeCutiMDirId,
      @JsonKey(name: "tipe_cuti.group") this.tipeCutiGroup,
      @JsonKey(name: "tipe_cuti.key") this.tipeCutiKey,
      @JsonKey(name: "tipe_cuti.code") this.tipeCutiCode,
      @JsonKey(name: "tipe_cuti.value") this.tipeCutiValue,
      @JsonKey(name: "tipe_cuti.is_active") this.tipeCutiIsActive,
      @JsonKey(name: "tipe_cuti.creator_id") this.tipeCutiCreatorId,
      @JsonKey(name: "tipe_cuti.last_editor_id") this.tipeCutiLastEditorId,
      @JsonKey(name: "tipe_cuti.created_at") this.tipeCutiCreatedAt,
      @JsonKey(name: "tipe_cuti.updated_at") this.tipeCutiUpdatedAt,
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

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

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
  @JsonKey(name: "m_dir_id")
  final int? datumMDirId;
  @override
  @JsonKey(name: "m_kary_id")
  final dynamic datumMKaryId;
  @override
  @JsonKey(name: "alasan_id")
  final int? datumAlasanId;
  @override
  @JsonKey(name: "tipe_cuti_id")
  final int? datumTipeCutiId;
  @override
  @JsonKey(name: "date_from")
  final String? dateFrom;
  @override
  @JsonKey(name: "date_to")
  final String? dateTo;
  @override
  @JsonKey(name: "time_from")
  final String? timeFrom;
  @override
  @JsonKey(name: "time_to")
  final String? timeTo;
  @override
  @JsonKey(name: "keterangan")
  final String? keterangan;
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
  final int? mDirId;
  @override
  @JsonKey(name: "m_dir.m_comp_id")
  final int? mDirMCompId;
  @override
  @JsonKey(name: "m_dir.nama")
  final String? mDirNama;
  @override
  @JsonKey(name: "m_dir.desc")
  final dynamic mDirDesc;
  @override
  @JsonKey(name: "m_dir.is_active")
  final bool? mDirIsActive;
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
  @JsonKey(name: "m_kary.id")
  final dynamic mKaryId;
  @override
  @JsonKey(name: "m_kary.m_comp_id")
  final dynamic mKaryMCompId;
  @override
  @JsonKey(name: "m_kary.m_dir_id")
  final dynamic mKaryMDirId;
  @override
  @JsonKey(name: "m_kary.m_divisi_id")
  final dynamic mKaryMDivisiId;
  @override
  @JsonKey(name: "m_kary.m_dept_id")
  final dynamic mKaryMDeptId;
  @override
  @JsonKey(name: "m_kary.m_zona_id")
  final dynamic mKaryMZonaId;
  @override
  @JsonKey(name: "m_kary.grading_id")
  final dynamic mKaryGradingId;
  @override
  @JsonKey(name: "m_kary.costcontre_id")
  final dynamic mKaryCostcontreId;
  @override
  @JsonKey(name: "m_kary.kode")
  final dynamic mKaryKode;
  @override
  @JsonKey(name: "m_kary.m_posisi_id")
  final dynamic mKaryMPosisiId;
  @override
  @JsonKey(name: "m_kary.m_jam_kerja_id")
  final dynamic mKaryMJamKerjaId;
  @override
  @JsonKey(name: "m_kary.kode_presensi")
  final dynamic mKaryKodePresensi;
  @override
  @JsonKey(name: "m_kary.nik")
  final dynamic mKaryNik;
  @override
  @JsonKey(name: "m_kary.nama_depan")
  final dynamic mKaryNamaDepan;
  @override
  @JsonKey(name: "m_kary.nama_belakang")
  final dynamic mKaryNamaBelakang;
  @override
  @JsonKey(name: "m_kary.nama_lengkap")
  final dynamic mKaryNamaLengkap;
  @override
  @JsonKey(name: "m_kary.nama_panggilan")
  final dynamic mKaryNamaPanggilan;
  @override
  @JsonKey(name: "m_kary.jk_id")
  final dynamic mKaryJkId;
  @override
  @JsonKey(name: "m_kary.tempat_lahir")
  final dynamic mKaryTempatLahir;
  @override
  @JsonKey(name: "m_kary.tgl_lahir")
  final dynamic mKaryTglLahir;
  @override
  @JsonKey(name: "m_kary.provinsi_id")
  final dynamic mKaryProvinsiId;
  @override
  @JsonKey(name: "m_kary.kota_id")
  final dynamic mKaryKotaId;
  @override
  @JsonKey(name: "m_kary.kecamatan_id")
  final dynamic mKaryKecamatanId;
  @override
  @JsonKey(name: "m_kary.kode_pos")
  final dynamic mKaryKodePos;
  @override
  @JsonKey(name: "m_kary.alamat_asli")
  final dynamic mKaryAlamatAsli;
  @override
  @JsonKey(name: "m_kary.alamat_domisili")
  final dynamic mKaryAlamatDomisili;
  @override
  @JsonKey(name: "m_kary.no_tlp")
  final dynamic mKaryNoTlp;
  @override
  @JsonKey(name: "m_kary.no_tlp_lainnya")
  final dynamic mKaryNoTlpLainnya;
  @override
  @JsonKey(name: "m_kary.no_darurat")
  final dynamic mKaryNoDarurat;
  @override
  @JsonKey(name: "m_kary.nama_kontak_darurat")
  final dynamic mKaryNamaKontakDarurat;
  @override
  @JsonKey(name: "m_kary.agama_id")
  final dynamic mKaryAgamaId;
  @override
  @JsonKey(name: "m_kary.gol_darah_id")
  final dynamic mKaryGolDarahId;
  @override
  @JsonKey(name: "m_kary.status_nikah_id")
  final dynamic mKaryStatusNikahId;
  @override
  @JsonKey(name: "m_kary.jml_tanggungan")
  final dynamic mKaryJmlTanggungan;
  @override
  @JsonKey(name: "m_kary.hub_dgn_karyawan")
  final dynamic mKaryHubDgnKaryawan;
  @override
  @JsonKey(name: "m_kary.cuti_jatah_reguler")
  final dynamic mKaryCutiJatahReguler;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_reguler")
  final dynamic mKaryCutiSisaReguler;
  @override
  @JsonKey(name: "m_kary.cuti_panjang")
  final dynamic mKaryCutiPanjang;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_panjang")
  final dynamic mKaryCutiSisaPanjang;
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
  final dynamic mKaryUkBaju;
  @override
  @JsonKey(name: "m_kary.uk_celana")
  final dynamic mKaryUkCelana;
  @override
  @JsonKey(name: "m_kary.uk_sepatu")
  final dynamic mKaryUkSepatu;
  @override
  @JsonKey(name: "m_kary.desc")
  final dynamic mKaryDesc;
  @override
  @JsonKey(name: "m_kary.is_active")
  final dynamic mKaryIsActive;
  @override
  @JsonKey(name: "m_kary.creator_id")
  final dynamic mKaryCreatorId;
  @override
  @JsonKey(name: "m_kary.last_editor_id")
  final dynamic mKaryLastEditorId;
  @override
  @JsonKey(name: "m_kary.created_at")
  final dynamic mKaryCreatedAt;
  @override
  @JsonKey(name: "m_kary.updated_at")
  final dynamic mKaryUpdatedAt;
  @override
  @JsonKey(name: "alasan.id")
  final int? alasanId;
  @override
  @JsonKey(name: "alasan.m_comp_id")
  final int? alasanMCompId;
  @override
  @JsonKey(name: "alasan.m_dir_id")
  final dynamic alasanMDirId;
  @override
  @JsonKey(name: "alasan.group")
  final String? alasanGroup;
  @override
  @JsonKey(name: "alasan.key")
  final String? alasanKey;
  @override
  @JsonKey(name: "alasan.code")
  final String? alasanCode;
  @override
  @JsonKey(name: "alasan.value")
  final String? alasanValue;
  @override
  @JsonKey(name: "alasan.is_active")
  final bool? alasanIsActive;
  @override
  @JsonKey(name: "alasan.creator_id")
  final dynamic alasanCreatorId;
  @override
  @JsonKey(name: "alasan.last_editor_id")
  final dynamic alasanLastEditorId;
  @override
  @JsonKey(name: "alasan.created_at")
  final String? alasanCreatedAt;
  @override
  @JsonKey(name: "alasan.updated_at")
  final String? alasanUpdatedAt;
  @override
  @JsonKey(name: "tipe_cuti.id")
  final int? tipeCutiId;
  @override
  @JsonKey(name: "tipe_cuti.m_comp_id")
  final int? tipeCutiMCompId;
  @override
  @JsonKey(name: "tipe_cuti.m_dir_id")
  final dynamic tipeCutiMDirId;
  @override
  @JsonKey(name: "tipe_cuti.group")
  final String? tipeCutiGroup;
  @override
  @JsonKey(name: "tipe_cuti.key")
  final String? tipeCutiKey;
  @override
  @JsonKey(name: "tipe_cuti.code")
  final String? tipeCutiCode;
  @override
  @JsonKey(name: "tipe_cuti.value")
  final String? tipeCutiValue;
  @override
  @JsonKey(name: "tipe_cuti.is_active")
  final bool? tipeCutiIsActive;
  @override
  @JsonKey(name: "tipe_cuti.creator_id")
  final dynamic tipeCutiCreatorId;
  @override
  @JsonKey(name: "tipe_cuti.last_editor_id")
  final dynamic tipeCutiLastEditorId;
  @override
  @JsonKey(name: "tipe_cuti.created_at")
  final String? tipeCutiCreatedAt;
  @override
  @JsonKey(name: "tipe_cuti.updated_at")
  final String? tipeCutiUpdatedAt;
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
    return 'Datum(metaRead: $metaRead, metaDelete: $metaDelete, metaUpdate: $metaUpdate, metaCreate: $metaCreate, id: $id, nomor: $nomor, datumMCompId: $datumMCompId, datumMDirId: $datumMDirId, datumMKaryId: $datumMKaryId, datumAlasanId: $datumAlasanId, datumTipeCutiId: $datumTipeCutiId, dateFrom: $dateFrom, dateTo: $dateTo, timeFrom: $timeFrom, timeTo: $timeTo, keterangan: $keterangan, status: $status, datumCreatorId: $datumCreatorId, datumLastEditorId: $datumLastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, mCompId: $mCompId, mCompNama: $mCompNama, mCompIsActive: $mCompIsActive, mCompDesc: $mCompDesc, mCompCreatorId: $mCompCreatorId, mCompLastEditorId: $mCompLastEditorId, mCompCreatedAt: $mCompCreatedAt, mCompUpdatedAt: $mCompUpdatedAt, mDirId: $mDirId, mDirMCompId: $mDirMCompId, mDirNama: $mDirNama, mDirDesc: $mDirDesc, mDirIsActive: $mDirIsActive, mDirCreatorId: $mDirCreatorId, mDirLastEditorId: $mDirLastEditorId, mDirCreatedAt: $mDirCreatedAt, mDirUpdatedAt: $mDirUpdatedAt, mKaryId: $mKaryId, mKaryMCompId: $mKaryMCompId, mKaryMDirId: $mKaryMDirId, mKaryMDivisiId: $mKaryMDivisiId, mKaryMDeptId: $mKaryMDeptId, mKaryMZonaId: $mKaryMZonaId, mKaryGradingId: $mKaryGradingId, mKaryCostcontreId: $mKaryCostcontreId, mKaryKode: $mKaryKode, mKaryMPosisiId: $mKaryMPosisiId, mKaryMJamKerjaId: $mKaryMJamKerjaId, mKaryKodePresensi: $mKaryKodePresensi, mKaryNik: $mKaryNik, mKaryNamaDepan: $mKaryNamaDepan, mKaryNamaBelakang: $mKaryNamaBelakang, mKaryNamaLengkap: $mKaryNamaLengkap, mKaryNamaPanggilan: $mKaryNamaPanggilan, mKaryJkId: $mKaryJkId, mKaryTempatLahir: $mKaryTempatLahir, mKaryTglLahir: $mKaryTglLahir, mKaryProvinsiId: $mKaryProvinsiId, mKaryKotaId: $mKaryKotaId, mKaryKecamatanId: $mKaryKecamatanId, mKaryKodePos: $mKaryKodePos, mKaryAlamatAsli: $mKaryAlamatAsli, mKaryAlamatDomisili: $mKaryAlamatDomisili, mKaryNoTlp: $mKaryNoTlp, mKaryNoTlpLainnya: $mKaryNoTlpLainnya, mKaryNoDarurat: $mKaryNoDarurat, mKaryNamaKontakDarurat: $mKaryNamaKontakDarurat, mKaryAgamaId: $mKaryAgamaId, mKaryGolDarahId: $mKaryGolDarahId, mKaryStatusNikahId: $mKaryStatusNikahId, mKaryJmlTanggungan: $mKaryJmlTanggungan, mKaryHubDgnKaryawan: $mKaryHubDgnKaryawan, mKaryCutiJatahReguler: $mKaryCutiJatahReguler, mKaryCutiSisaReguler: $mKaryCutiSisaReguler, mKaryCutiPanjang: $mKaryCutiPanjang, mKaryCutiSisaPanjang: $mKaryCutiSisaPanjang, mKaryStatusKaryId: $mKaryStatusKaryId, mKaryLamaKontrakAwal: $mKaryLamaKontrakAwal, mKaryLamaKontrakAkhir: $mKaryLamaKontrakAkhir, mKaryTglMasuk: $mKaryTglMasuk, mKaryTglBerhenti: $mKaryTglBerhenti, mKaryAlasanBerhenti: $mKaryAlasanBerhenti, mKaryUkBaju: $mKaryUkBaju, mKaryUkCelana: $mKaryUkCelana, mKaryUkSepatu: $mKaryUkSepatu, mKaryDesc: $mKaryDesc, mKaryIsActive: $mKaryIsActive, mKaryCreatorId: $mKaryCreatorId, mKaryLastEditorId: $mKaryLastEditorId, mKaryCreatedAt: $mKaryCreatedAt, mKaryUpdatedAt: $mKaryUpdatedAt, alasanId: $alasanId, alasanMCompId: $alasanMCompId, alasanMDirId: $alasanMDirId, alasanGroup: $alasanGroup, alasanKey: $alasanKey, alasanCode: $alasanCode, alasanValue: $alasanValue, alasanIsActive: $alasanIsActive, alasanCreatorId: $alasanCreatorId, alasanLastEditorId: $alasanLastEditorId, alasanCreatedAt: $alasanCreatedAt, alasanUpdatedAt: $alasanUpdatedAt, tipeCutiId: $tipeCutiId, tipeCutiMCompId: $tipeCutiMCompId, tipeCutiMDirId: $tipeCutiMDirId, tipeCutiGroup: $tipeCutiGroup, tipeCutiKey: $tipeCutiKey, tipeCutiCode: $tipeCutiCode, tipeCutiValue: $tipeCutiValue, tipeCutiIsActive: $tipeCutiIsActive, tipeCutiCreatorId: $tipeCutiCreatorId, tipeCutiLastEditorId: $tipeCutiLastEditorId, tipeCutiCreatedAt: $tipeCutiCreatedAt, tipeCutiUpdatedAt: $tipeCutiUpdatedAt, creatorId: $creatorId, creatorName: $creatorName, creatorEmail: $creatorEmail, creatorUsername: $creatorUsername, creatorEmailVerifiedAt: $creatorEmailVerifiedAt, creatorPassword: $creatorPassword, creatorMCompId: $creatorMCompId, creatorMDirId: $creatorMDirId, creatorIsActive: $creatorIsActive, creatorCreatorId: $creatorCreatorId, creatorLastEditorId: $creatorLastEditorId, creatorRememberToken: $creatorRememberToken, creatorCreatedAt: $creatorCreatedAt, creatorUpdatedAt: $creatorUpdatedAt, creatorProfilImage: $creatorProfilImage, creatorTelp: $creatorTelp, creatorMKaryId: $creatorMKaryId, lastEditorId: $lastEditorId, lastEditorName: $lastEditorName, lastEditorEmail: $lastEditorEmail, lastEditorUsername: $lastEditorUsername, lastEditorEmailVerifiedAt: $lastEditorEmailVerifiedAt, lastEditorPassword: $lastEditorPassword, lastEditorMCompId: $lastEditorMCompId, lastEditorMDirId: $lastEditorMDirId, lastEditorIsActive: $lastEditorIsActive, lastEditorCreatorId: $lastEditorCreatorId, lastEditorLastEditorId: $lastEditorLastEditorId, lastEditorRememberToken: $lastEditorRememberToken, lastEditorCreatedAt: $lastEditorCreatedAt, lastEditorUpdatedAt: $lastEditorUpdatedAt, lastEditorProfilImage: $lastEditorProfilImage, lastEditorTelp: $lastEditorTelp, lastEditorMKaryId: $lastEditorMKaryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
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
            (identical(other.datumMDirId, datumMDirId) ||
                other.datumMDirId == datumMDirId) &&
            const DeepCollectionEquality()
                .equals(other.datumMKaryId, datumMKaryId) &&
            (identical(other.datumAlasanId, datumAlasanId) ||
                other.datumAlasanId == datumAlasanId) &&
            (identical(other.datumTipeCutiId, datumTipeCutiId) ||
                other.datumTipeCutiId == datumTipeCutiId) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.timeFrom, timeFrom) ||
                other.timeFrom == timeFrom) &&
            (identical(other.timeTo, timeTo) || other.timeTo == timeTo) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.datumCreatorId, datumCreatorId) ||
                other.datumCreatorId == datumCreatorId) &&
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
            (identical(other.mDirId, mDirId) || other.mDirId == mDirId) &&
            (identical(other.mDirMCompId, mDirMCompId) ||
                other.mDirMCompId == mDirMCompId) &&
            (identical(other.mDirNama, mDirNama) ||
                other.mDirNama == mDirNama) &&
            const DeepCollectionEquality().equals(other.mDirDesc, mDirDesc) &&
            (identical(other.mDirIsActive, mDirIsActive) ||
                other.mDirIsActive == mDirIsActive) &&
            const DeepCollectionEquality()
                .equals(other.mDirCreatorId, mDirCreatorId) &&
            const DeepCollectionEquality()
                .equals(other.mDirLastEditorId, mDirLastEditorId) &&
            const DeepCollectionEquality()
                .equals(other.mDirCreatedAt, mDirCreatedAt) &&
            const DeepCollectionEquality()
                .equals(other.mDirUpdatedAt, mDirUpdatedAt) &&
            const DeepCollectionEquality().equals(other.mKaryId, mKaryId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryMCompId, mKaryMCompId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryMDirId, mKaryMDirId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryMDivisiId, mKaryMDivisiId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryMDeptId, mKaryMDeptId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryMZonaId, mKaryMZonaId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryGradingId, mKaryGradingId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryCostcontreId, mKaryCostcontreId) &&
            const DeepCollectionEquality().equals(other.mKaryKode, mKaryKode) &&
            const DeepCollectionEquality()
                .equals(other.mKaryMPosisiId, mKaryMPosisiId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryMJamKerjaId, mKaryMJamKerjaId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryKodePresensi, mKaryKodePresensi) &&
            const DeepCollectionEquality().equals(other.mKaryNik, mKaryNik) &&
            const DeepCollectionEquality()
                .equals(other.mKaryNamaDepan, mKaryNamaDepan) &&
            const DeepCollectionEquality()
                .equals(other.mKaryNamaBelakang, mKaryNamaBelakang) &&
            const DeepCollectionEquality()
                .equals(other.mKaryNamaLengkap, mKaryNamaLengkap) &&
            const DeepCollectionEquality().equals(other.mKaryNamaPanggilan, mKaryNamaPanggilan) &&
            const DeepCollectionEquality().equals(other.mKaryJkId, mKaryJkId) &&
            const DeepCollectionEquality().equals(other.mKaryTempatLahir, mKaryTempatLahir) &&
            const DeepCollectionEquality().equals(other.mKaryTglLahir, mKaryTglLahir) &&
            const DeepCollectionEquality().equals(other.mKaryProvinsiId, mKaryProvinsiId) &&
            const DeepCollectionEquality().equals(other.mKaryKotaId, mKaryKotaId) &&
            const DeepCollectionEquality().equals(other.mKaryKecamatanId, mKaryKecamatanId) &&
            const DeepCollectionEquality().equals(other.mKaryKodePos, mKaryKodePos) &&
            const DeepCollectionEquality().equals(other.mKaryAlamatAsli, mKaryAlamatAsli) &&
            const DeepCollectionEquality().equals(other.mKaryAlamatDomisili, mKaryAlamatDomisili) &&
            const DeepCollectionEquality().equals(other.mKaryNoTlp, mKaryNoTlp) &&
            const DeepCollectionEquality().equals(other.mKaryNoTlpLainnya, mKaryNoTlpLainnya) &&
            const DeepCollectionEquality().equals(other.mKaryNoDarurat, mKaryNoDarurat) &&
            const DeepCollectionEquality().equals(other.mKaryNamaKontakDarurat, mKaryNamaKontakDarurat) &&
            const DeepCollectionEquality().equals(other.mKaryAgamaId, mKaryAgamaId) &&
            const DeepCollectionEquality().equals(other.mKaryGolDarahId, mKaryGolDarahId) &&
            const DeepCollectionEquality().equals(other.mKaryStatusNikahId, mKaryStatusNikahId) &&
            const DeepCollectionEquality().equals(other.mKaryJmlTanggungan, mKaryJmlTanggungan) &&
            const DeepCollectionEquality().equals(other.mKaryHubDgnKaryawan, mKaryHubDgnKaryawan) &&
            const DeepCollectionEquality().equals(other.mKaryCutiJatahReguler, mKaryCutiJatahReguler) &&
            const DeepCollectionEquality().equals(other.mKaryCutiSisaReguler, mKaryCutiSisaReguler) &&
            const DeepCollectionEquality().equals(other.mKaryCutiPanjang, mKaryCutiPanjang) &&
            const DeepCollectionEquality().equals(other.mKaryCutiSisaPanjang, mKaryCutiSisaPanjang) &&
            const DeepCollectionEquality().equals(other.mKaryStatusKaryId, mKaryStatusKaryId) &&
            const DeepCollectionEquality().equals(other.mKaryLamaKontrakAwal, mKaryLamaKontrakAwal) &&
            const DeepCollectionEquality().equals(other.mKaryLamaKontrakAkhir, mKaryLamaKontrakAkhir) &&
            const DeepCollectionEquality().equals(other.mKaryTglMasuk, mKaryTglMasuk) &&
            const DeepCollectionEquality().equals(other.mKaryTglBerhenti, mKaryTglBerhenti) &&
            const DeepCollectionEquality().equals(other.mKaryAlasanBerhenti, mKaryAlasanBerhenti) &&
            const DeepCollectionEquality().equals(other.mKaryUkBaju, mKaryUkBaju) &&
            const DeepCollectionEquality().equals(other.mKaryUkCelana, mKaryUkCelana) &&
            const DeepCollectionEquality().equals(other.mKaryUkSepatu, mKaryUkSepatu) &&
            const DeepCollectionEquality().equals(other.mKaryDesc, mKaryDesc) &&
            const DeepCollectionEquality().equals(other.mKaryIsActive, mKaryIsActive) &&
            const DeepCollectionEquality().equals(other.mKaryCreatorId, mKaryCreatorId) &&
            const DeepCollectionEquality().equals(other.mKaryLastEditorId, mKaryLastEditorId) &&
            const DeepCollectionEquality().equals(other.mKaryCreatedAt, mKaryCreatedAt) &&
            const DeepCollectionEquality().equals(other.mKaryUpdatedAt, mKaryUpdatedAt) &&
            (identical(other.alasanId, alasanId) || other.alasanId == alasanId) &&
            (identical(other.alasanMCompId, alasanMCompId) || other.alasanMCompId == alasanMCompId) &&
            const DeepCollectionEquality().equals(other.alasanMDirId, alasanMDirId) &&
            (identical(other.alasanGroup, alasanGroup) || other.alasanGroup == alasanGroup) &&
            (identical(other.alasanKey, alasanKey) || other.alasanKey == alasanKey) &&
            (identical(other.alasanCode, alasanCode) || other.alasanCode == alasanCode) &&
            (identical(other.alasanValue, alasanValue) || other.alasanValue == alasanValue) &&
            (identical(other.alasanIsActive, alasanIsActive) || other.alasanIsActive == alasanIsActive) &&
            const DeepCollectionEquality().equals(other.alasanCreatorId, alasanCreatorId) &&
            const DeepCollectionEquality().equals(other.alasanLastEditorId, alasanLastEditorId) &&
            (identical(other.alasanCreatedAt, alasanCreatedAt) || other.alasanCreatedAt == alasanCreatedAt) &&
            (identical(other.alasanUpdatedAt, alasanUpdatedAt) || other.alasanUpdatedAt == alasanUpdatedAt) &&
            (identical(other.tipeCutiId, tipeCutiId) || other.tipeCutiId == tipeCutiId) &&
            (identical(other.tipeCutiMCompId, tipeCutiMCompId) || other.tipeCutiMCompId == tipeCutiMCompId) &&
            const DeepCollectionEquality().equals(other.tipeCutiMDirId, tipeCutiMDirId) &&
            (identical(other.tipeCutiGroup, tipeCutiGroup) || other.tipeCutiGroup == tipeCutiGroup) &&
            (identical(other.tipeCutiKey, tipeCutiKey) || other.tipeCutiKey == tipeCutiKey) &&
            (identical(other.tipeCutiCode, tipeCutiCode) || other.tipeCutiCode == tipeCutiCode) &&
            (identical(other.tipeCutiValue, tipeCutiValue) || other.tipeCutiValue == tipeCutiValue) &&
            (identical(other.tipeCutiIsActive, tipeCutiIsActive) || other.tipeCutiIsActive == tipeCutiIsActive) &&
            const DeepCollectionEquality().equals(other.tipeCutiCreatorId, tipeCutiCreatorId) &&
            const DeepCollectionEquality().equals(other.tipeCutiLastEditorId, tipeCutiLastEditorId) &&
            (identical(other.tipeCutiCreatedAt, tipeCutiCreatedAt) || other.tipeCutiCreatedAt == tipeCutiCreatedAt) &&
            (identical(other.tipeCutiUpdatedAt, tipeCutiUpdatedAt) || other.tipeCutiUpdatedAt == tipeCutiUpdatedAt) &&
            (identical(other.creatorId, creatorId) || other.creatorId == creatorId) &&
            (identical(other.creatorName, creatorName) || other.creatorName == creatorName) &&
            (identical(other.creatorEmail, creatorEmail) || other.creatorEmail == creatorEmail) &&
            (identical(other.creatorUsername, creatorUsername) || other.creatorUsername == creatorUsername) &&
            const DeepCollectionEquality().equals(other.creatorEmailVerifiedAt, creatorEmailVerifiedAt) &&
            (identical(other.creatorPassword, creatorPassword) || other.creatorPassword == creatorPassword) &&
            (identical(other.creatorMCompId, creatorMCompId) || other.creatorMCompId == creatorMCompId) &&
            (identical(other.creatorMDirId, creatorMDirId) || other.creatorMDirId == creatorMDirId) &&
            (identical(other.creatorIsActive, creatorIsActive) || other.creatorIsActive == creatorIsActive) &&
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
        nomor,
        datumMCompId,
        datumMDirId,
        const DeepCollectionEquality().hash(datumMKaryId),
        datumAlasanId,
        datumTipeCutiId,
        dateFrom,
        dateTo,
        timeFrom,
        timeTo,
        keterangan,
        status,
        datumCreatorId,
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
        mDirId,
        mDirMCompId,
        mDirNama,
        const DeepCollectionEquality().hash(mDirDesc),
        mDirIsActive,
        const DeepCollectionEquality().hash(mDirCreatorId),
        const DeepCollectionEquality().hash(mDirLastEditorId),
        const DeepCollectionEquality().hash(mDirCreatedAt),
        const DeepCollectionEquality().hash(mDirUpdatedAt),
        const DeepCollectionEquality().hash(mKaryId),
        const DeepCollectionEquality().hash(mKaryMCompId),
        const DeepCollectionEquality().hash(mKaryMDirId),
        const DeepCollectionEquality().hash(mKaryMDivisiId),
        const DeepCollectionEquality().hash(mKaryMDeptId),
        const DeepCollectionEquality().hash(mKaryMZonaId),
        const DeepCollectionEquality().hash(mKaryGradingId),
        const DeepCollectionEquality().hash(mKaryCostcontreId),
        const DeepCollectionEquality().hash(mKaryKode),
        const DeepCollectionEquality().hash(mKaryMPosisiId),
        const DeepCollectionEquality().hash(mKaryMJamKerjaId),
        const DeepCollectionEquality().hash(mKaryKodePresensi),
        const DeepCollectionEquality().hash(mKaryNik),
        const DeepCollectionEquality().hash(mKaryNamaDepan),
        const DeepCollectionEquality().hash(mKaryNamaBelakang),
        const DeepCollectionEquality().hash(mKaryNamaLengkap),
        const DeepCollectionEquality().hash(mKaryNamaPanggilan),
        const DeepCollectionEquality().hash(mKaryJkId),
        const DeepCollectionEquality().hash(mKaryTempatLahir),
        const DeepCollectionEquality().hash(mKaryTglLahir),
        const DeepCollectionEquality().hash(mKaryProvinsiId),
        const DeepCollectionEquality().hash(mKaryKotaId),
        const DeepCollectionEquality().hash(mKaryKecamatanId),
        const DeepCollectionEquality().hash(mKaryKodePos),
        const DeepCollectionEquality().hash(mKaryAlamatAsli),
        const DeepCollectionEquality().hash(mKaryAlamatDomisili),
        const DeepCollectionEquality().hash(mKaryNoTlp),
        const DeepCollectionEquality().hash(mKaryNoTlpLainnya),
        const DeepCollectionEquality().hash(mKaryNoDarurat),
        const DeepCollectionEquality().hash(mKaryNamaKontakDarurat),
        const DeepCollectionEquality().hash(mKaryAgamaId),
        const DeepCollectionEquality().hash(mKaryGolDarahId),
        const DeepCollectionEquality().hash(mKaryStatusNikahId),
        const DeepCollectionEquality().hash(mKaryJmlTanggungan),
        const DeepCollectionEquality().hash(mKaryHubDgnKaryawan),
        const DeepCollectionEquality().hash(mKaryCutiJatahReguler),
        const DeepCollectionEquality().hash(mKaryCutiSisaReguler),
        const DeepCollectionEquality().hash(mKaryCutiPanjang),
        const DeepCollectionEquality().hash(mKaryCutiSisaPanjang),
        const DeepCollectionEquality().hash(mKaryStatusKaryId),
        const DeepCollectionEquality().hash(mKaryLamaKontrakAwal),
        const DeepCollectionEquality().hash(mKaryLamaKontrakAkhir),
        const DeepCollectionEquality().hash(mKaryTglMasuk),
        const DeepCollectionEquality().hash(mKaryTglBerhenti),
        const DeepCollectionEquality().hash(mKaryAlasanBerhenti),
        const DeepCollectionEquality().hash(mKaryUkBaju),
        const DeepCollectionEquality().hash(mKaryUkCelana),
        const DeepCollectionEquality().hash(mKaryUkSepatu),
        const DeepCollectionEquality().hash(mKaryDesc),
        const DeepCollectionEquality().hash(mKaryIsActive),
        const DeepCollectionEquality().hash(mKaryCreatorId),
        const DeepCollectionEquality().hash(mKaryLastEditorId),
        const DeepCollectionEquality().hash(mKaryCreatedAt),
        const DeepCollectionEquality().hash(mKaryUpdatedAt),
        alasanId,
        alasanMCompId,
        const DeepCollectionEquality().hash(alasanMDirId),
        alasanGroup,
        alasanKey,
        alasanCode,
        alasanValue,
        alasanIsActive,
        const DeepCollectionEquality().hash(alasanCreatorId),
        const DeepCollectionEquality().hash(alasanLastEditorId),
        alasanCreatedAt,
        alasanUpdatedAt,
        tipeCutiId,
        tipeCutiMCompId,
        const DeepCollectionEquality().hash(tipeCutiMDirId),
        tipeCutiGroup,
        tipeCutiKey,
        tipeCutiCode,
        tipeCutiValue,
        tipeCutiIsActive,
        const DeepCollectionEquality().hash(tipeCutiCreatorId),
        const DeepCollectionEquality().hash(tipeCutiLastEditorId),
        tipeCutiCreatedAt,
        tipeCutiUpdatedAt,
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
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: "meta_read") final bool? metaRead,
      @JsonKey(name: "meta_delete") final bool? metaDelete,
      @JsonKey(name: "meta_update") final bool? metaUpdate,
      @JsonKey(name: "meta_create") final bool? metaCreate,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "nomor") final String? nomor,
      @JsonKey(name: "m_comp_id") final int? datumMCompId,
      @JsonKey(name: "m_dir_id") final int? datumMDirId,
      @JsonKey(name: "m_kary_id") final dynamic datumMKaryId,
      @JsonKey(name: "alasan_id") final int? datumAlasanId,
      @JsonKey(name: "tipe_cuti_id") final int? datumTipeCutiId,
      @JsonKey(name: "date_from") final String? dateFrom,
      @JsonKey(name: "date_to") final String? dateTo,
      @JsonKey(name: "time_from") final String? timeFrom,
      @JsonKey(name: "time_to") final String? timeTo,
      @JsonKey(name: "keterangan") final String? keterangan,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "creator_id") final int? datumCreatorId,
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
      @JsonKey(name: "m_dir.id") final int? mDirId,
      @JsonKey(name: "m_dir.m_comp_id") final int? mDirMCompId,
      @JsonKey(name: "m_dir.nama") final String? mDirNama,
      @JsonKey(name: "m_dir.desc") final dynamic mDirDesc,
      @JsonKey(name: "m_dir.is_active") final bool? mDirIsActive,
      @JsonKey(name: "m_dir.creator_id") final dynamic mDirCreatorId,
      @JsonKey(name: "m_dir.last_editor_id") final dynamic mDirLastEditorId,
      @JsonKey(name: "m_dir.created_at") final dynamic mDirCreatedAt,
      @JsonKey(name: "m_dir.updated_at") final dynamic mDirUpdatedAt,
      @JsonKey(name: "m_kary.id") final dynamic mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") final dynamic mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") final dynamic mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") final dynamic mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") final dynamic mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") final dynamic mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") final dynamic mKaryGradingId,
      @JsonKey(name: "m_kary.costcontre_id") final dynamic mKaryCostcontreId,
      @JsonKey(name: "m_kary.kode") final dynamic mKaryKode,
      @JsonKey(name: "m_kary.m_posisi_id") final dynamic mKaryMPosisiId,
      @JsonKey(name: "m_kary.m_jam_kerja_id") final dynamic mKaryMJamKerjaId,
      @JsonKey(name: "m_kary.kode_presensi") final dynamic mKaryKodePresensi,
      @JsonKey(name: "m_kary.nik") final dynamic mKaryNik,
      @JsonKey(name: "m_kary.nama_depan") final dynamic mKaryNamaDepan,
      @JsonKey(name: "m_kary.nama_belakang") final dynamic mKaryNamaBelakang,
      @JsonKey(name: "m_kary.nama_lengkap") final dynamic mKaryNamaLengkap,
      @JsonKey(name: "m_kary.nama_panggilan") final dynamic mKaryNamaPanggilan,
      @JsonKey(name: "m_kary.jk_id") final dynamic mKaryJkId,
      @JsonKey(name: "m_kary.tempat_lahir") final dynamic mKaryTempatLahir,
      @JsonKey(name: "m_kary.tgl_lahir") final dynamic mKaryTglLahir,
      @JsonKey(name: "m_kary.provinsi_id") final dynamic mKaryProvinsiId,
      @JsonKey(name: "m_kary.kota_id") final dynamic mKaryKotaId,
      @JsonKey(name: "m_kary.kecamatan_id") final dynamic mKaryKecamatanId,
      @JsonKey(name: "m_kary.kode_pos") final dynamic mKaryKodePos,
      @JsonKey(name: "m_kary.alamat_asli") final dynamic mKaryAlamatAsli,
      @JsonKey(name: "m_kary.alamat_domisili")
      final dynamic mKaryAlamatDomisili,
      @JsonKey(name: "m_kary.no_tlp") final dynamic mKaryNoTlp,
      @JsonKey(name: "m_kary.no_tlp_lainnya") final dynamic mKaryNoTlpLainnya,
      @JsonKey(name: "m_kary.no_darurat") final dynamic mKaryNoDarurat,
      @JsonKey(name: "m_kary.nama_kontak_darurat")
      final dynamic mKaryNamaKontakDarurat,
      @JsonKey(name: "m_kary.agama_id") final dynamic mKaryAgamaId,
      @JsonKey(name: "m_kary.gol_darah_id") final dynamic mKaryGolDarahId,
      @JsonKey(name: "m_kary.status_nikah_id") final dynamic mKaryStatusNikahId,
      @JsonKey(name: "m_kary.jml_tanggungan") final dynamic mKaryJmlTanggungan,
      @JsonKey(name: "m_kary.hub_dgn_karyawan")
      final dynamic mKaryHubDgnKaryawan,
      @JsonKey(name: "m_kary.cuti_jatah_reguler")
      final dynamic mKaryCutiJatahReguler,
      @JsonKey(name: "m_kary.cuti_sisa_reguler")
      final dynamic mKaryCutiSisaReguler,
      @JsonKey(name: "m_kary.cuti_panjang") final dynamic mKaryCutiPanjang,
      @JsonKey(name: "m_kary.cuti_sisa_panjang")
      final dynamic mKaryCutiSisaPanjang,
      @JsonKey(name: "m_kary.status_kary_id") final dynamic mKaryStatusKaryId,
      @JsonKey(name: "m_kary.lama_kontrak_awal")
      final dynamic mKaryLamaKontrakAwal,
      @JsonKey(name: "m_kary.lama_kontrak_akhir")
      final dynamic mKaryLamaKontrakAkhir,
      @JsonKey(name: "m_kary.tgl_masuk") final dynamic mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") final dynamic mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti")
      final dynamic mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") final dynamic mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") final dynamic mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") final dynamic mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") final dynamic mKaryDesc,
      @JsonKey(name: "m_kary.is_active") final dynamic mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") final dynamic mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") final dynamic mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") final dynamic mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") final dynamic mKaryUpdatedAt,
      @JsonKey(name: "alasan.id") final int? alasanId,
      @JsonKey(name: "alasan.m_comp_id") final int? alasanMCompId,
      @JsonKey(name: "alasan.m_dir_id") final dynamic alasanMDirId,
      @JsonKey(name: "alasan.group") final String? alasanGroup,
      @JsonKey(name: "alasan.key") final String? alasanKey,
      @JsonKey(name: "alasan.code") final String? alasanCode,
      @JsonKey(name: "alasan.value") final String? alasanValue,
      @JsonKey(name: "alasan.is_active") final bool? alasanIsActive,
      @JsonKey(name: "alasan.creator_id") final dynamic alasanCreatorId,
      @JsonKey(name: "alasan.last_editor_id") final dynamic alasanLastEditorId,
      @JsonKey(name: "alasan.created_at") final String? alasanCreatedAt,
      @JsonKey(name: "alasan.updated_at") final String? alasanUpdatedAt,
      @JsonKey(name: "tipe_cuti.id") final int? tipeCutiId,
      @JsonKey(name: "tipe_cuti.m_comp_id") final int? tipeCutiMCompId,
      @JsonKey(name: "tipe_cuti.m_dir_id") final dynamic tipeCutiMDirId,
      @JsonKey(name: "tipe_cuti.group") final String? tipeCutiGroup,
      @JsonKey(name: "tipe_cuti.key") final String? tipeCutiKey,
      @JsonKey(name: "tipe_cuti.code") final String? tipeCutiCode,
      @JsonKey(name: "tipe_cuti.value") final String? tipeCutiValue,
      @JsonKey(name: "tipe_cuti.is_active") final bool? tipeCutiIsActive,
      @JsonKey(name: "tipe_cuti.creator_id") final dynamic tipeCutiCreatorId,
      @JsonKey(name: "tipe_cuti.last_editor_id")
      final dynamic tipeCutiLastEditorId,
      @JsonKey(name: "tipe_cuti.created_at") final String? tipeCutiCreatedAt,
      @JsonKey(name: "tipe_cuti.updated_at") final String? tipeCutiUpdatedAt,
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
      final dynamic lastEditorMKaryId}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

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
  @JsonKey(name: "m_dir_id")
  int? get datumMDirId;
  @override
  @JsonKey(name: "m_kary_id")
  dynamic get datumMKaryId;
  @override
  @JsonKey(name: "alasan_id")
  int? get datumAlasanId;
  @override
  @JsonKey(name: "tipe_cuti_id")
  int? get datumTipeCutiId;
  @override
  @JsonKey(name: "date_from")
  String? get dateFrom;
  @override
  @JsonKey(name: "date_to")
  String? get dateTo;
  @override
  @JsonKey(name: "time_from")
  String? get timeFrom;
  @override
  @JsonKey(name: "time_to")
  String? get timeTo;
  @override
  @JsonKey(name: "keterangan")
  String? get keterangan;
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
  int? get mDirId;
  @override
  @JsonKey(name: "m_dir.m_comp_id")
  int? get mDirMCompId;
  @override
  @JsonKey(name: "m_dir.nama")
  String? get mDirNama;
  @override
  @JsonKey(name: "m_dir.desc")
  dynamic get mDirDesc;
  @override
  @JsonKey(name: "m_dir.is_active")
  bool? get mDirIsActive;
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
  @JsonKey(name: "m_kary.id")
  dynamic get mKaryId;
  @override
  @JsonKey(name: "m_kary.m_comp_id")
  dynamic get mKaryMCompId;
  @override
  @JsonKey(name: "m_kary.m_dir_id")
  dynamic get mKaryMDirId;
  @override
  @JsonKey(name: "m_kary.m_divisi_id")
  dynamic get mKaryMDivisiId;
  @override
  @JsonKey(name: "m_kary.m_dept_id")
  dynamic get mKaryMDeptId;
  @override
  @JsonKey(name: "m_kary.m_zona_id")
  dynamic get mKaryMZonaId;
  @override
  @JsonKey(name: "m_kary.grading_id")
  dynamic get mKaryGradingId;
  @override
  @JsonKey(name: "m_kary.costcontre_id")
  dynamic get mKaryCostcontreId;
  @override
  @JsonKey(name: "m_kary.kode")
  dynamic get mKaryKode;
  @override
  @JsonKey(name: "m_kary.m_posisi_id")
  dynamic get mKaryMPosisiId;
  @override
  @JsonKey(name: "m_kary.m_jam_kerja_id")
  dynamic get mKaryMJamKerjaId;
  @override
  @JsonKey(name: "m_kary.kode_presensi")
  dynamic get mKaryKodePresensi;
  @override
  @JsonKey(name: "m_kary.nik")
  dynamic get mKaryNik;
  @override
  @JsonKey(name: "m_kary.nama_depan")
  dynamic get mKaryNamaDepan;
  @override
  @JsonKey(name: "m_kary.nama_belakang")
  dynamic get mKaryNamaBelakang;
  @override
  @JsonKey(name: "m_kary.nama_lengkap")
  dynamic get mKaryNamaLengkap;
  @override
  @JsonKey(name: "m_kary.nama_panggilan")
  dynamic get mKaryNamaPanggilan;
  @override
  @JsonKey(name: "m_kary.jk_id")
  dynamic get mKaryJkId;
  @override
  @JsonKey(name: "m_kary.tempat_lahir")
  dynamic get mKaryTempatLahir;
  @override
  @JsonKey(name: "m_kary.tgl_lahir")
  dynamic get mKaryTglLahir;
  @override
  @JsonKey(name: "m_kary.provinsi_id")
  dynamic get mKaryProvinsiId;
  @override
  @JsonKey(name: "m_kary.kota_id")
  dynamic get mKaryKotaId;
  @override
  @JsonKey(name: "m_kary.kecamatan_id")
  dynamic get mKaryKecamatanId;
  @override
  @JsonKey(name: "m_kary.kode_pos")
  dynamic get mKaryKodePos;
  @override
  @JsonKey(name: "m_kary.alamat_asli")
  dynamic get mKaryAlamatAsli;
  @override
  @JsonKey(name: "m_kary.alamat_domisili")
  dynamic get mKaryAlamatDomisili;
  @override
  @JsonKey(name: "m_kary.no_tlp")
  dynamic get mKaryNoTlp;
  @override
  @JsonKey(name: "m_kary.no_tlp_lainnya")
  dynamic get mKaryNoTlpLainnya;
  @override
  @JsonKey(name: "m_kary.no_darurat")
  dynamic get mKaryNoDarurat;
  @override
  @JsonKey(name: "m_kary.nama_kontak_darurat")
  dynamic get mKaryNamaKontakDarurat;
  @override
  @JsonKey(name: "m_kary.agama_id")
  dynamic get mKaryAgamaId;
  @override
  @JsonKey(name: "m_kary.gol_darah_id")
  dynamic get mKaryGolDarahId;
  @override
  @JsonKey(name: "m_kary.status_nikah_id")
  dynamic get mKaryStatusNikahId;
  @override
  @JsonKey(name: "m_kary.jml_tanggungan")
  dynamic get mKaryJmlTanggungan;
  @override
  @JsonKey(name: "m_kary.hub_dgn_karyawan")
  dynamic get mKaryHubDgnKaryawan;
  @override
  @JsonKey(name: "m_kary.cuti_jatah_reguler")
  dynamic get mKaryCutiJatahReguler;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_reguler")
  dynamic get mKaryCutiSisaReguler;
  @override
  @JsonKey(name: "m_kary.cuti_panjang")
  dynamic get mKaryCutiPanjang;
  @override
  @JsonKey(name: "m_kary.cuti_sisa_panjang")
  dynamic get mKaryCutiSisaPanjang;
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
  dynamic get mKaryUkBaju;
  @override
  @JsonKey(name: "m_kary.uk_celana")
  dynamic get mKaryUkCelana;
  @override
  @JsonKey(name: "m_kary.uk_sepatu")
  dynamic get mKaryUkSepatu;
  @override
  @JsonKey(name: "m_kary.desc")
  dynamic get mKaryDesc;
  @override
  @JsonKey(name: "m_kary.is_active")
  dynamic get mKaryIsActive;
  @override
  @JsonKey(name: "m_kary.creator_id")
  dynamic get mKaryCreatorId;
  @override
  @JsonKey(name: "m_kary.last_editor_id")
  dynamic get mKaryLastEditorId;
  @override
  @JsonKey(name: "m_kary.created_at")
  dynamic get mKaryCreatedAt;
  @override
  @JsonKey(name: "m_kary.updated_at")
  dynamic get mKaryUpdatedAt;
  @override
  @JsonKey(name: "alasan.id")
  int? get alasanId;
  @override
  @JsonKey(name: "alasan.m_comp_id")
  int? get alasanMCompId;
  @override
  @JsonKey(name: "alasan.m_dir_id")
  dynamic get alasanMDirId;
  @override
  @JsonKey(name: "alasan.group")
  String? get alasanGroup;
  @override
  @JsonKey(name: "alasan.key")
  String? get alasanKey;
  @override
  @JsonKey(name: "alasan.code")
  String? get alasanCode;
  @override
  @JsonKey(name: "alasan.value")
  String? get alasanValue;
  @override
  @JsonKey(name: "alasan.is_active")
  bool? get alasanIsActive;
  @override
  @JsonKey(name: "alasan.creator_id")
  dynamic get alasanCreatorId;
  @override
  @JsonKey(name: "alasan.last_editor_id")
  dynamic get alasanLastEditorId;
  @override
  @JsonKey(name: "alasan.created_at")
  String? get alasanCreatedAt;
  @override
  @JsonKey(name: "alasan.updated_at")
  String? get alasanUpdatedAt;
  @override
  @JsonKey(name: "tipe_cuti.id")
  int? get tipeCutiId;
  @override
  @JsonKey(name: "tipe_cuti.m_comp_id")
  int? get tipeCutiMCompId;
  @override
  @JsonKey(name: "tipe_cuti.m_dir_id")
  dynamic get tipeCutiMDirId;
  @override
  @JsonKey(name: "tipe_cuti.group")
  String? get tipeCutiGroup;
  @override
  @JsonKey(name: "tipe_cuti.key")
  String? get tipeCutiKey;
  @override
  @JsonKey(name: "tipe_cuti.code")
  String? get tipeCutiCode;
  @override
  @JsonKey(name: "tipe_cuti.value")
  String? get tipeCutiValue;
  @override
  @JsonKey(name: "tipe_cuti.is_active")
  bool? get tipeCutiIsActive;
  @override
  @JsonKey(name: "tipe_cuti.creator_id")
  dynamic get tipeCutiCreatorId;
  @override
  @JsonKey(name: "tipe_cuti.last_editor_id")
  dynamic get tipeCutiLastEditorId;
  @override
  @JsonKey(name: "tipe_cuti.created_at")
  String? get tipeCutiCreatedAt;
  @override
  @JsonKey(name: "tipe_cuti.updated_at")
  String? get tipeCutiUpdatedAt;
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
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

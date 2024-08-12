// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_all_karyawan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseAllKaryawan _$ResponseAllKaryawanFromJson(Map<String, dynamic> json) {
  return _ResponseAllKaryawan.fromJson(json);
}

/// @nodoc
mixin _$ResponseAllKaryawan {
  @JsonKey(name: "data")
  List<DataAllKaryawan>? get data => throw _privateConstructorUsedError;
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
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: "processed_time")
  double? get processedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseAllKaryawanCopyWith<ResponseAllKaryawan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseAllKaryawanCopyWith<$Res> {
  factory $ResponseAllKaryawanCopyWith(
          ResponseAllKaryawan value, $Res Function(ResponseAllKaryawan) then) =
      _$ResponseAllKaryawanCopyWithImpl<$Res, ResponseAllKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataAllKaryawan>? data,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "has_next") bool? hasNext,
      @JsonKey(name: "prev") dynamic prev,
      @JsonKey(name: "next") String? next,
      @JsonKey(name: "processed_time") double? processedTime});
}

/// @nodoc
class _$ResponseAllKaryawanCopyWithImpl<$Res, $Val extends ResponseAllKaryawan>
    implements $ResponseAllKaryawanCopyWith<$Res> {
  _$ResponseAllKaryawanCopyWithImpl(this._value, this._then);

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
              as List<DataAllKaryawan>?,
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
              as String?,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseAllKaryawanImplCopyWith<$Res>
    implements $ResponseAllKaryawanCopyWith<$Res> {
  factory _$$ResponseAllKaryawanImplCopyWith(_$ResponseAllKaryawanImpl value,
          $Res Function(_$ResponseAllKaryawanImpl) then) =
      __$$ResponseAllKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataAllKaryawan>? data,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "has_next") bool? hasNext,
      @JsonKey(name: "prev") dynamic prev,
      @JsonKey(name: "next") String? next,
      @JsonKey(name: "processed_time") double? processedTime});
}

/// @nodoc
class __$$ResponseAllKaryawanImplCopyWithImpl<$Res>
    extends _$ResponseAllKaryawanCopyWithImpl<$Res, _$ResponseAllKaryawanImpl>
    implements _$$ResponseAllKaryawanImplCopyWith<$Res> {
  __$$ResponseAllKaryawanImplCopyWithImpl(_$ResponseAllKaryawanImpl _value,
      $Res Function(_$ResponseAllKaryawanImpl) _then)
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
    return _then(_$ResponseAllKaryawanImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataAllKaryawan>?,
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
              as String?,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseAllKaryawanImpl implements _ResponseAllKaryawan {
  const _$ResponseAllKaryawanImpl(
      {@JsonKey(name: "data") final List<DataAllKaryawan>? data,
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

  factory _$ResponseAllKaryawanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseAllKaryawanImplFromJson(json);

  final List<DataAllKaryawan>? _data;
  @override
  @JsonKey(name: "data")
  List<DataAllKaryawan>? get data {
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
  final String? next;
  @override
  @JsonKey(name: "processed_time")
  final double? processedTime;

  @override
  String toString() {
    return 'ResponseAllKaryawan(data: $data, total: $total, currentPage: $currentPage, perPage: $perPage, from: $from, to: $to, lastPage: $lastPage, hasNext: $hasNext, prev: $prev, next: $next, processedTime: $processedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseAllKaryawanImpl &&
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
            (identical(other.next, next) || other.next == next) &&
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
      next,
      processedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseAllKaryawanImplCopyWith<_$ResponseAllKaryawanImpl> get copyWith =>
      __$$ResponseAllKaryawanImplCopyWithImpl<_$ResponseAllKaryawanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseAllKaryawanImplToJson(
      this,
    );
  }
}

abstract class _ResponseAllKaryawan implements ResponseAllKaryawan {
  const factory _ResponseAllKaryawan(
          {@JsonKey(name: "data") final List<DataAllKaryawan>? data,
          @JsonKey(name: "total") final int? total,
          @JsonKey(name: "current_page") final int? currentPage,
          @JsonKey(name: "per_page") final int? perPage,
          @JsonKey(name: "from") final int? from,
          @JsonKey(name: "to") final int? to,
          @JsonKey(name: "last_page") final int? lastPage,
          @JsonKey(name: "has_next") final bool? hasNext,
          @JsonKey(name: "prev") final dynamic prev,
          @JsonKey(name: "next") final String? next,
          @JsonKey(name: "processed_time") final double? processedTime}) =
      _$ResponseAllKaryawanImpl;

  factory _ResponseAllKaryawan.fromJson(Map<String, dynamic> json) =
      _$ResponseAllKaryawanImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<DataAllKaryawan>? get data;
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
  String? get next;
  @override
  @JsonKey(name: "processed_time")
  double? get processedTime;
  @override
  @JsonKey(ignore: true)
  _$$ResponseAllKaryawanImplCopyWith<_$ResponseAllKaryawanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataAllKaryawan _$DataAllKaryawanFromJson(Map<String, dynamic> json) {
  return _DataAllKaryawan.fromJson(json);
}

/// @nodoc
mixin _$DataAllKaryawan {
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
  dynamic get DataAllKaryawanMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  dynamic get DataAllKaryawanMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi_id")
  int? get DataAllKaryawanMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept_id")
  int? get DataAllKaryawanMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_id")
  dynamic get DataAllKaryawanMZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading_id")
  dynamic get DataAllKaryawanGradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre_id")
  dynamic get DataAllKaryawanCostcontreId => throw _privateConstructorUsedError;
  @JsonKey(name: "kode")
  String? get kode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi_id")
  int? get DataAllKaryawanMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja_id")
  dynamic get DataAllKaryawanMJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "kode_presensi")
  String? get kodePresensi => throw _privateConstructorUsedError;
  @JsonKey(name: "nik")
  String? get nik => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_depan")
  String? get namaDepan => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_belakang")
  String? get namaBelakang => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_lengkap")
  String? get namaLengkap => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_panggilan")
  String? get namaPanggilan => throw _privateConstructorUsedError;
  @JsonKey(name: "jk_id")
  int? get DataAllKaryawanJkId => throw _privateConstructorUsedError;
  @JsonKey(name: "tempat_lahir")
  String? get tempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_lahir")
  String? get tglLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi_id")
  int? get DataAllKaryawanProvinsiId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_id")
  int? get DataAllKaryawanKotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan_id")
  int? get DataAllKaryawanKecamatanId => throw _privateConstructorUsedError;
  @JsonKey(name: "kode_pos")
  String? get kodePos => throw _privateConstructorUsedError;
  @JsonKey(name: "alamat_asli")
  String? get alamatAsli => throw _privateConstructorUsedError;
  @JsonKey(name: "alamat_domisili")
  String? get alamatDomisili => throw _privateConstructorUsedError;
  @JsonKey(name: "no_tlp")
  String? get noTlp => throw _privateConstructorUsedError;
  @JsonKey(name: "no_tlp_lainnya")
  String? get noTlpLainnya => throw _privateConstructorUsedError;
  @JsonKey(name: "no_darurat")
  String? get noDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_kontak_darurat")
  String? get namaKontakDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "agama_id")
  int? get DataAllKaryawanAgamaId => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah_id")
  int? get DataAllKaryawanGolDarahId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah_id")
  int? get DataAllKaryawanStatusNikahId => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan_id")
  int? get DataAllKaryawanTanggunganId => throw _privateConstructorUsedError;
  @JsonKey(name: "hub_dgn_karyawan")
  String? get hubDgnKaryawan => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_jatah_reguler")
  dynamic get cutiJatahReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_sisa_reguler")
  dynamic get cutiSisaReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_panjang")
  dynamic get cutiPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_sisa_panjang")
  dynamic get cutiSisaPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary_id")
  dynamic get DataAllKaryawanStatusKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "lama_kontrak_awal")
  dynamic get lamaKontrakAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "lama_kontrak_akhir")
  dynamic get lamaKontrakAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_masuk")
  String? get tglMasuk => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_berhenti")
  dynamic get tglBerhenti => throw _privateConstructorUsedError;
  @JsonKey(name: "alasan_berhenti")
  dynamic get alasanBerhenti => throw _privateConstructorUsedError;
  @JsonKey(name: "uk_baju")
  String? get ukBaju => throw _privateConstructorUsedError;
  @JsonKey(name: "uk_celana")
  String? get ukCelana => throw _privateConstructorUsedError;
  @JsonKey(name: "uk_sepatu")
  String? get ukSepatu => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  dynamic get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get DataAllKaryawanCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  int? get DataAllKaryawanLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji_id")
  dynamic get DataAllKaryawanMStandartGajiId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji_id")
  int? get DataAllKaryawanPeriodeGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref_id")
  dynamic get DataAllKaryawanRefId => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default_id")
  int? get DataAllKaryawanPresensiLokasiDefaultId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "exp_date_cuti")
  dynamic get expDateCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "limit_potong")
  int? get limitPotong => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan_id")
  int? get DataAllKaryawanAtasanId => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_p24")
  int? get cutiP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_sisa_p24")
  dynamic get cutiSisaP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja_id")
  dynamic get DataAllKaryawanTipeJamKerjaId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja_id")
  dynamic get DataAllKaryawanTJadwalKerjaId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.id")
  dynamic get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.nama")
  dynamic get mCompNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp.is_active")
  dynamic get mCompIsActive => throw _privateConstructorUsedError;
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
  dynamic get mDivisiMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.m_dir_id")
  int? get mDivisiMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.nama")
  String? get mDivisiNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.desc")
  dynamic get mDivisiDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.is_active")
  bool? get mDivisiIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.creator_id")
  int? get mDivisiCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi.last_editor_id")
  dynamic get mDivisiLastEditorId => throw _privateConstructorUsedError;
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
  dynamic get mDeptDesc => throw _privateConstructorUsedError;
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
  dynamic get mZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.m_comp_id")
  dynamic get mZonaMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.m_dir_id")
  dynamic get mZonaMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.kode")
  dynamic get mZonaKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.nama")
  dynamic get mZonaNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.desc")
  dynamic get mZonaDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.is_active")
  dynamic get mZonaIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.creator_id")
  dynamic get mZonaCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.last_editor_id")
  dynamic get mZonaLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.created_at")
  dynamic get mZonaCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona.updated_at")
  dynamic get mZonaUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.id")
  dynamic get gradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.m_comp_id")
  dynamic get gradingMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.m_dir_id")
  dynamic get gradingMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.group")
  dynamic get gradingGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.key")
  dynamic get gradingKey => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.code")
  dynamic get gradingCode => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.value")
  dynamic get gradingValue => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.is_active")
  dynamic get gradingIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.creator_id")
  dynamic get gradingCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.last_editor_id")
  dynamic get gradingLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.created_at")
  dynamic get gradingCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.updated_at")
  dynamic get gradingUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.value_2")
  dynamic get gradingValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "grading.value_3")
  dynamic get gradingValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.id")
  dynamic get costcontreId => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.m_comp_id")
  dynamic get costcontreMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.m_dir_id")
  dynamic get costcontreMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.group")
  dynamic get costcontreGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.key")
  dynamic get costcontreKey => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.code")
  dynamic get costcontreCode => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.value")
  dynamic get costcontreValue => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.is_active")
  dynamic get costcontreIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.creator_id")
  dynamic get costcontreCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.last_editor_id")
  dynamic get costcontreLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.created_at")
  dynamic get costcontreCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.updated_at")
  dynamic get costcontreUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.value_2")
  dynamic get costcontreValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre.value_3")
  dynamic get costcontreValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.id")
  int? get mPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.m_comp_id")
  dynamic get mPosisiMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.m_dir_id")
  dynamic get mPosisiMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.kode")
  String? get mPosisiKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.desc_kerja")
  String? get mPosisiDescKerja => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.desc_kerja_1")
  String? get mPosisiDescKerja1 => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.desc_kerja_2")
  dynamic get mPosisiDescKerja2 => throw _privateConstructorUsedError;
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
  dynamic get mPosisiTipeBpjsId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi.potongan_bpjs")
  dynamic get mPosisiPotonganBpjs => throw _privateConstructorUsedError;
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
  @JsonKey(name: "m_jam_kerja.id")
  dynamic get mJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.m_comp_id")
  dynamic get mJamKerjaMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.m_dir_id")
  dynamic get mJamKerjaMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.kode")
  dynamic get mJamKerjaKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.tipe_jam_kerja_id")
  dynamic get mJamKerjaTipeJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.waktu_mulai")
  dynamic get mJamKerjaWaktuMulai => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.waktu_akhir")
  dynamic get mJamKerjaWaktuAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.is_hari_berikutnya")
  dynamic get mJamKerjaIsHariBerikutnya => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.desc")
  dynamic get mJamKerjaDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.is_active")
  dynamic get mJamKerjaIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.creator_id")
  dynamic get mJamKerjaCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.last_editor_id")
  dynamic get mJamKerjaLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.created_at")
  dynamic get mJamKerjaCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja.updated_at")
  dynamic get mJamKerjaUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.id")
  int? get jkId => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.m_comp_id")
  int? get jkMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.m_dir_id")
  dynamic get jkMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.group")
  String? get jkGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.key")
  String? get jkKey => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.code")
  String? get jkCode => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.value")
  String? get jkValue => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.is_active")
  bool? get jkIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.creator_id")
  dynamic get jkCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.last_editor_id")
  dynamic get jkLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.created_at")
  String? get jkCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.updated_at")
  String? get jkUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.value_2")
  dynamic get jkValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "jk.value_3")
  dynamic get jkValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.id")
  int? get provinsiId => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.m_comp_id")
  int? get provinsiMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.m_dir_id")
  dynamic get provinsiMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.group")
  String? get provinsiGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.key")
  dynamic get provinsiKey => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.code")
  dynamic get provinsiCode => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.value")
  String? get provinsiValue => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.is_active")
  bool? get provinsiIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.creator_id")
  dynamic get provinsiCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.last_editor_id")
  dynamic get provinsiLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.created_at")
  dynamic get provinsiCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.updated_at")
  String? get provinsiUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.value_2")
  dynamic get provinsiValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi.value_3")
  dynamic get provinsiValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.id")
  int? get kotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.m_comp_id")
  int? get kotaMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.m_dir_id")
  dynamic get kotaMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.group")
  String? get kotaGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.key")
  String? get kotaKey => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.code")
  dynamic get kotaCode => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.value")
  String? get kotaValue => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.is_active")
  bool? get kotaIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.creator_id")
  dynamic get kotaCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.last_editor_id")
  dynamic get kotaLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.created_at")
  dynamic get kotaCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.updated_at")
  dynamic get kotaUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.value_2")
  dynamic get kotaValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "kota.value_3")
  dynamic get kotaValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.id")
  int? get kecamatanId => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.m_comp_id")
  int? get kecamatanMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.m_dir_id")
  dynamic get kecamatanMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.group")
  String? get kecamatanGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.key")
  String? get kecamatanKey => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.code")
  dynamic get kecamatanCode => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.value")
  String? get kecamatanValue => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.is_active")
  bool? get kecamatanIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.creator_id")
  dynamic get kecamatanCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.last_editor_id")
  dynamic get kecamatanLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.created_at")
  dynamic get kecamatanCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.updated_at")
  dynamic get kecamatanUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.value_2")
  dynamic get kecamatanValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan.value_3")
  dynamic get kecamatanValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.id")
  int? get agamaId => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.m_comp_id")
  int? get agamaMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.m_dir_id")
  dynamic get agamaMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.group")
  String? get agamaGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.key")
  String? get agamaKey => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.code")
  String? get agamaCode => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.value")
  String? get agamaValue => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.is_active")
  bool? get agamaIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.creator_id")
  dynamic get agamaCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.last_editor_id")
  dynamic get agamaLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.created_at")
  String? get agamaCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.updated_at")
  String? get agamaUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.value_2")
  dynamic get agamaValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "agama.value_3")
  dynamic get agamaValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.id")
  int? get golDarahId => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.m_comp_id")
  int? get golDarahMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.m_dir_id")
  dynamic get golDarahMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.group")
  String? get golDarahGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.key")
  String? get golDarahKey => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.code")
  String? get golDarahCode => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.value")
  String? get golDarahValue => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.is_active")
  bool? get golDarahIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.creator_id")
  dynamic get golDarahCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.last_editor_id")
  dynamic get golDarahLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.created_at")
  String? get golDarahCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.updated_at")
  String? get golDarahUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.value_2")
  dynamic get golDarahValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah.value_3")
  dynamic get golDarahValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.id")
  int? get statusNikahId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.m_comp_id")
  int? get statusNikahMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.m_dir_id")
  dynamic get statusNikahMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.group")
  String? get statusNikahGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.key")
  String? get statusNikahKey => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.code")
  String? get statusNikahCode => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.value")
  String? get statusNikahValue => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.is_active")
  bool? get statusNikahIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.creator_id")
  dynamic get statusNikahCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.last_editor_id")
  dynamic get statusNikahLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.created_at")
  String? get statusNikahCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.updated_at")
  String? get statusNikahUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.value_2")
  dynamic get statusNikahValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah.value_3")
  dynamic get statusNikahValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.id")
  int? get tanggunganId => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.m_comp_id")
  int? get tanggunganMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.m_dir_id")
  int? get tanggunganMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.group")
  String? get tanggunganGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.key")
  String? get tanggunganKey => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.code")
  String? get tanggunganCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.value")
  String? get tanggunganValue => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.is_active")
  bool? get tanggunganIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.creator_id")
  dynamic get tanggunganCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.last_editor_id")
  dynamic get tanggunganLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.created_at")
  String? get tanggunganCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.updated_at")
  String? get tanggunganUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.value_2")
  String? get tanggunganValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan.value_3")
  dynamic get tanggunganValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.id")
  dynamic get statusKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.m_comp_id")
  dynamic get statusKaryMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.m_dir_id")
  dynamic get statusKaryMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.group")
  dynamic get statusKaryGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.key")
  dynamic get statusKaryKey => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.code")
  dynamic get statusKaryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.value")
  dynamic get statusKaryValue => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.is_active")
  dynamic get statusKaryIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.creator_id")
  dynamic get statusKaryCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.last_editor_id")
  dynamic get statusKaryLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.created_at")
  dynamic get statusKaryCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.updated_at")
  dynamic get statusKaryUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.value_2")
  dynamic get statusKaryValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary.value_3")
  dynamic get statusKaryValue3 => throw _privateConstructorUsedError;
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
  dynamic get lastEditorLastEditorId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "m_standart_gaji.id")
  dynamic get mStandartGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.m_comp_id")
  dynamic get mStandartGajiMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.m_dir_id")
  dynamic get mStandartGajiMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.kode")
  dynamic get mStandartGajiKode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.m_divisi_id")
  dynamic get mStandartGajiMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.m_dept_id")
  dynamic get mStandartGajiMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.m_zona_id")
  dynamic get mStandartGajiMZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.m_posisi_id")
  dynamic get mStandartGajiMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.grading_id")
  dynamic get mStandartGajiGradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.gaji_pokok")
  dynamic get mStandartGajiGajiPokok => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.gaji_pokok_periode")
  dynamic get mStandartGajiGajiPokokPeriode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.uang_saku")
  dynamic get mStandartGajiUangSaku => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.uang_saku_periode")
  dynamic get mStandartGajiUangSakuPeriode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.tunjangan_posisi")
  dynamic get mStandartGajiTunjanganPosisi =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.tunjangan_posisi_periode")
  dynamic get mStandartGajiTunjanganPosisiPeriode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_id")
  dynamic get mStandartGajiTunjanganKemahalanId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_periode")
  dynamic get mStandartGajiTunjanganKemahalanPeriode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.uang_makan")
  dynamic get mStandartGajiUangMakan => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.uang_makan_periode")
  dynamic get mStandartGajiUangMakanPeriode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.tunjangan_tetap")
  dynamic get mStandartGajiTunjanganTetap => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.tunjangan_tetap_periode")
  dynamic get mStandartGajiTunjanganTetapPeriode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.desc")
  dynamic get mStandartGajiDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.is_active")
  dynamic get mStandartGajiIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.creator_id")
  dynamic get mStandartGajiCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.last_editor_id")
  dynamic get mStandartGajiLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.created_at")
  dynamic get mStandartGajiCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji.updated_at")
  dynamic get mStandartGajiUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.id")
  int? get periodeGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.m_comp_id")
  int? get periodeGajiMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.m_dir_id")
  dynamic get periodeGajiMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.group")
  String? get periodeGajiGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.key")
  String? get periodeGajiKey => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.code")
  String? get periodeGajiCode => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.value")
  String? get periodeGajiValue => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.is_active")
  bool? get periodeGajiIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.creator_id")
  dynamic get periodeGajiCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.last_editor_id")
  dynamic get periodeGajiLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.created_at")
  String? get periodeGajiCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.updated_at")
  String? get periodeGajiUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.value_2")
  dynamic get periodeGajiValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji.value_3")
  dynamic get periodeGajiValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.id")
  dynamic get refId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.nomor")
  dynamic get refNomor => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.m_comp_id")
  dynamic get refMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.m_dir_id")
  dynamic get refMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.nama_pelamar")
  dynamic get refNamaPelamar => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.ktp_no")
  dynamic get refKtpNo => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.tanggal")
  dynamic get refTanggal => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.ref")
  dynamic get refRef => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.telp")
  dynamic get refTelp => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.jk_id")
  dynamic get refJkId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.tgl_lahir")
  dynamic get refTglLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.salary")
  dynamic get refSalary => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.deskripsi")
  dynamic get refDeskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.status")
  dynamic get refStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.creator_id")
  dynamic get refCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.last_editor_id")
  dynamic get refLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.created_at")
  dynamic get refCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.updated_at")
  dynamic get refUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.m_divisi_id")
  dynamic get refMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.m_dept_id")
  dynamic get refMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.m_posisi_id")
  dynamic get refMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.tempat_lahir")
  dynamic get refTempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "ref.t_loker_id")
  dynamic get refTLokerId => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.id")
  int? get presensiLokasiDefaultId => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.comp_id")
  int? get presensiLokasiDefaultCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.default_user_id")
  dynamic get presensiLokasiDefaultDefaultUserId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.nama")
  String? get presensiLokasiDefaultNama => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.lat")
  String? get presensiLokasiDefaultLat => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.long")
  String? get presensiLokasiDefaultLong => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.is_active")
  bool? get presensiLokasiDefaultIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.creator_id")
  int? get presensiLokasiDefaultCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.last_editor_id")
  dynamic get presensiLokasiDefaultLastEditorId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.created_at")
  String? get presensiLokasiDefaultCreatedAt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default.updated_at")
  dynamic get presensiLokasiDefaultUpdatedAt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.id")
  dynamic get atasanId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.m_comp_id")
  dynamic get atasanMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.m_dir_id")
  dynamic get atasanMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.m_divisi_id")
  dynamic get atasanMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.m_dept_id")
  dynamic get atasanMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.m_zona_id")
  dynamic get atasanMZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.grading_id")
  dynamic get atasanGradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.costcontre_id")
  dynamic get atasanCostcontreId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.kode")
  dynamic get atasanKode => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.m_posisi_id")
  dynamic get atasanMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.m_jam_kerja_id")
  dynamic get atasanMJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.kode_presensi")
  dynamic get atasanKodePresensi => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.nik")
  dynamic get atasanNik => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.nama_depan")
  dynamic get atasanNamaDepan => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.nama_belakang")
  dynamic get atasanNamaBelakang => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.nama_lengkap")
  dynamic get atasanNamaLengkap => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.nama_panggilan")
  dynamic get atasanNamaPanggilan => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.jk_id")
  dynamic get atasanJkId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.tempat_lahir")
  dynamic get atasanTempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.tgl_lahir")
  dynamic get atasanTglLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.provinsi_id")
  dynamic get atasanProvinsiId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.kota_id")
  dynamic get atasanKotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.kecamatan_id")
  dynamic get atasanKecamatanId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.kode_pos")
  dynamic get atasanKodePos => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.alamat_asli")
  dynamic get atasanAlamatAsli => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.alamat_domisili")
  dynamic get atasanAlamatDomisili => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.no_tlp")
  dynamic get atasanNoTlp => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.no_tlp_lainnya")
  dynamic get atasanNoTlpLainnya => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.no_darurat")
  dynamic get atasanNoDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.nama_kontak_darurat")
  dynamic get atasanNamaKontakDarurat => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.agama_id")
  dynamic get atasanAgamaId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.gol_darah_id")
  dynamic get atasanGolDarahId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.status_nikah_id")
  dynamic get atasanStatusNikahId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.tanggungan_id")
  dynamic get atasanTanggunganId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.hub_dgn_karyawan")
  dynamic get atasanHubDgnKaryawan => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.cuti_jatah_reguler")
  dynamic get atasanCutiJatahReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.cuti_sisa_reguler")
  dynamic get atasanCutiSisaReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.cuti_panjang")
  dynamic get atasanCutiPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.cuti_sisa_panjang")
  dynamic get atasanCutiSisaPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.status_kary_id")
  dynamic get atasanStatusKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.lama_kontrak_awal")
  dynamic get atasanLamaKontrakAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.lama_kontrak_akhir")
  dynamic get atasanLamaKontrakAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.tgl_masuk")
  dynamic get atasanTglMasuk => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.tgl_berhenti")
  dynamic get atasanTglBerhenti => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.alasan_berhenti")
  dynamic get atasanAlasanBerhenti => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.uk_baju")
  dynamic get atasanUkBaju => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.uk_celana")
  dynamic get atasanUkCelana => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.uk_sepatu")
  dynamic get atasanUkSepatu => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.desc")
  dynamic get atasanDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.is_active")
  dynamic get atasanIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.creator_id")
  dynamic get atasanCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.last_editor_id")
  dynamic get atasanLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.created_at")
  dynamic get atasanCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.updated_at")
  dynamic get atasanUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.m_standart_gaji_id")
  dynamic get atasanMStandartGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.periode_gaji_id")
  dynamic get atasanPeriodeGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.ref_id")
  dynamic get atasanRefId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.presensi_lokasi_default_id")
  dynamic get atasanPresensiLokasiDefaultId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.exp_date_cuti")
  dynamic get atasanExpDateCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.limit_potong")
  dynamic get atasanLimitPotong => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.atasan_id")
  dynamic get atasanAtasanId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.cuti_p24")
  dynamic get atasanCutiP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.cuti_sisa_p24")
  dynamic get atasanCutiSisaP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.tipe_jam_kerja_id")
  dynamic get atasanTipeJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan.t_jadwal_kerja_id")
  dynamic get atasanTJadwalKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.id")
  dynamic get tipeJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.m_comp_id")
  dynamic get tipeJamKerjaMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.m_dir_id")
  dynamic get tipeJamKerjaMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.group")
  dynamic get tipeJamKerjaGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.key")
  dynamic get tipeJamKerjaKey => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.code")
  dynamic get tipeJamKerjaCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.value")
  dynamic get tipeJamKerjaValue => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.is_active")
  dynamic get tipeJamKerjaIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.creator_id")
  dynamic get tipeJamKerjaCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.last_editor_id")
  dynamic get tipeJamKerjaLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.created_at")
  dynamic get tipeJamKerjaCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.updated_at")
  dynamic get tipeJamKerjaUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.value_2")
  dynamic get tipeJamKerjaValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_jam_kerja.value_3")
  dynamic get tipeJamKerjaValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.id")
  dynamic get tJadwalKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.nomor")
  dynamic get tJadwalKerjaNomor => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.m_comp_id")
  dynamic get tJadwalKerjaMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.m_dir_id")
  dynamic get tJadwalKerjaMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.m_divisi_id")
  dynamic get tJadwalKerjaMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.m_dept_id")
  dynamic get tJadwalKerjaMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.tipe_jam_kerja_id")
  dynamic get tJadwalKerjaTipeJamKerjaId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.keterangan")
  dynamic get tJadwalKerjaKeterangan => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.status")
  dynamic get tJadwalKerjaStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.creator_id")
  dynamic get tJadwalKerjaCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.last_editor_id")
  dynamic get tJadwalKerjaLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.created_at")
  dynamic get tJadwalKerjaCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_jadwal_kerja.updated_at")
  dynamic get tJadwalKerjaUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "nomor_ktp")
  String? get nomorKtp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAllKaryawanCopyWith<DataAllKaryawan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAllKaryawanCopyWith<$Res> {
  factory $DataAllKaryawanCopyWith(
          DataAllKaryawan value, $Res Function(DataAllKaryawan) then) =
      _$DataAllKaryawanCopyWithImpl<$Res, DataAllKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") dynamic DataAllKaryawanMCompId,
      @JsonKey(name: "m_dir_id") dynamic DataAllKaryawanMDirId,
      @JsonKey(name: "m_divisi_id") int? DataAllKaryawanMDivisiId,
      @JsonKey(name: "m_dept_id") int? DataAllKaryawanMDeptId,
      @JsonKey(name: "m_zona_id") dynamic DataAllKaryawanMZonaId,
      @JsonKey(name: "grading_id") dynamic DataAllKaryawanGradingId,
      @JsonKey(name: "costcontre_id") dynamic DataAllKaryawanCostcontreId,
      @JsonKey(name: "kode") String? kode,
      @JsonKey(name: "m_posisi_id") int? DataAllKaryawanMPosisiId,
      @JsonKey(name: "m_jam_kerja_id") dynamic DataAllKaryawanMJamKerjaId,
      @JsonKey(name: "kode_presensi") String? kodePresensi,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "nama_depan") String? namaDepan,
      @JsonKey(name: "nama_belakang") String? namaBelakang,
      @JsonKey(name: "nama_lengkap") String? namaLengkap,
      @JsonKey(name: "nama_panggilan") String? namaPanggilan,
      @JsonKey(name: "jk_id") int? DataAllKaryawanJkId,
      @JsonKey(name: "tempat_lahir") String? tempatLahir,
      @JsonKey(name: "tgl_lahir") String? tglLahir,
      @JsonKey(name: "provinsi_id") int? DataAllKaryawanProvinsiId,
      @JsonKey(name: "kota_id") int? DataAllKaryawanKotaId,
      @JsonKey(name: "kecamatan_id") int? DataAllKaryawanKecamatanId,
      @JsonKey(name: "kode_pos") String? kodePos,
      @JsonKey(name: "alamat_asli") String? alamatAsli,
      @JsonKey(name: "alamat_domisili") String? alamatDomisili,
      @JsonKey(name: "no_tlp") String? noTlp,
      @JsonKey(name: "no_tlp_lainnya") String? noTlpLainnya,
      @JsonKey(name: "no_darurat") String? noDarurat,
      @JsonKey(name: "nama_kontak_darurat") String? namaKontakDarurat,
      @JsonKey(name: "agama_id") int? DataAllKaryawanAgamaId,
      @JsonKey(name: "gol_darah_id") int? DataAllKaryawanGolDarahId,
      @JsonKey(name: "status_nikah_id") int? DataAllKaryawanStatusNikahId,
      @JsonKey(name: "tanggungan_id") int? DataAllKaryawanTanggunganId,
      @JsonKey(name: "hub_dgn_karyawan") String? hubDgnKaryawan,
      @JsonKey(name: "cuti_jatah_reguler") dynamic cutiJatahReguler,
      @JsonKey(name: "cuti_sisa_reguler") dynamic cutiSisaReguler,
      @JsonKey(name: "cuti_panjang") dynamic cutiPanjang,
      @JsonKey(name: "cuti_sisa_panjang") dynamic cutiSisaPanjang,
      @JsonKey(name: "status_kary_id") dynamic DataAllKaryawanStatusKaryId,
      @JsonKey(name: "lama_kontrak_awal") dynamic lamaKontrakAwal,
      @JsonKey(name: "lama_kontrak_akhir") dynamic lamaKontrakAkhir,
      @JsonKey(name: "tgl_masuk") String? tglMasuk,
      @JsonKey(name: "tgl_berhenti") dynamic tglBerhenti,
      @JsonKey(name: "alasan_berhenti") dynamic alasanBerhenti,
      @JsonKey(name: "uk_baju") String? ukBaju,
      @JsonKey(name: "uk_celana") String? ukCelana,
      @JsonKey(name: "uk_sepatu") String? ukSepatu,
      @JsonKey(name: "desc") dynamic desc,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") int? DataAllKaryawanCreatorId,
      @JsonKey(name: "last_editor_id") int? DataAllKaryawanLastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "m_standart_gaji_id")
      dynamic DataAllKaryawanMStandartGajiId,
      @JsonKey(name: "periode_gaji_id") int? DataAllKaryawanPeriodeGajiId,
      @JsonKey(name: "ref_id") dynamic DataAllKaryawanRefId,
      @JsonKey(name: "presensi_lokasi_default_id")
      int? DataAllKaryawanPresensiLokasiDefaultId,
      @JsonKey(name: "exp_date_cuti") dynamic expDateCuti,
      @JsonKey(name: "limit_potong") int? limitPotong,
      @JsonKey(name: "atasan_id") int? DataAllKaryawanAtasanId,
      @JsonKey(name: "cuti_p24") int? cutiP24,
      @JsonKey(name: "cuti_sisa_p24") dynamic cutiSisaP24,
      @JsonKey(name: "tipe_jam_kerja_id") dynamic DataAllKaryawanTipeJamKerjaId,
      @JsonKey(name: "t_jadwal_kerja_id") dynamic DataAllKaryawanTJadwalKerjaId,
      @JsonKey(name: "m_comp.id") dynamic mCompId,
      @JsonKey(name: "m_comp.nama") dynamic mCompNama,
      @JsonKey(name: "m_comp.is_active") dynamic mCompIsActive,
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
      @JsonKey(name: "m_divisi.m_comp_id") dynamic mDivisiMCompId,
      @JsonKey(name: "m_divisi.m_dir_id") int? mDivisiMDirId,
      @JsonKey(name: "m_divisi.nama") String? mDivisiNama,
      @JsonKey(name: "m_divisi.desc") dynamic mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") bool? mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") int? mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id") dynamic mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") String? mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") String? mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") int? mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") int? mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") int? mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") String? mDeptNama,
      @JsonKey(name: "m_dept.desc") dynamic mDeptDesc,
      @JsonKey(name: "m_dept.is_active") bool? mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") dynamic mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") dynamic mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") String? mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") String? mDeptUpdatedAt,
      @JsonKey(name: "m_zona.id") dynamic mZonaId,
      @JsonKey(name: "m_zona.m_comp_id") dynamic mZonaMCompId,
      @JsonKey(name: "m_zona.m_dir_id") dynamic mZonaMDirId,
      @JsonKey(name: "m_zona.kode") dynamic mZonaKode,
      @JsonKey(name: "m_zona.nama") dynamic mZonaNama,
      @JsonKey(name: "m_zona.desc") dynamic mZonaDesc,
      @JsonKey(name: "m_zona.is_active") dynamic mZonaIsActive,
      @JsonKey(name: "m_zona.creator_id") dynamic mZonaCreatorId,
      @JsonKey(name: "m_zona.last_editor_id") dynamic mZonaLastEditorId,
      @JsonKey(name: "m_zona.created_at") dynamic mZonaCreatedAt,
      @JsonKey(name: "m_zona.updated_at") dynamic mZonaUpdatedAt,
      @JsonKey(name: "grading.id") dynamic gradingId,
      @JsonKey(name: "grading.m_comp_id") dynamic gradingMCompId,
      @JsonKey(name: "grading.m_dir_id") dynamic gradingMDirId,
      @JsonKey(name: "grading.group") dynamic gradingGroup,
      @JsonKey(name: "grading.key") dynamic gradingKey,
      @JsonKey(name: "grading.code") dynamic gradingCode,
      @JsonKey(name: "grading.value") dynamic gradingValue,
      @JsonKey(name: "grading.is_active") dynamic gradingIsActive,
      @JsonKey(name: "grading.creator_id") dynamic gradingCreatorId,
      @JsonKey(name: "grading.last_editor_id") dynamic gradingLastEditorId,
      @JsonKey(name: "grading.created_at") dynamic gradingCreatedAt,
      @JsonKey(name: "grading.updated_at") dynamic gradingUpdatedAt,
      @JsonKey(name: "grading.value_2") dynamic gradingValue2,
      @JsonKey(name: "grading.value_3") dynamic gradingValue3,
      @JsonKey(name: "costcontre.id") dynamic costcontreId,
      @JsonKey(name: "costcontre.m_comp_id") dynamic costcontreMCompId,
      @JsonKey(name: "costcontre.m_dir_id") dynamic costcontreMDirId,
      @JsonKey(name: "costcontre.group") dynamic costcontreGroup,
      @JsonKey(name: "costcontre.key") dynamic costcontreKey,
      @JsonKey(name: "costcontre.code") dynamic costcontreCode,
      @JsonKey(name: "costcontre.value") dynamic costcontreValue,
      @JsonKey(name: "costcontre.is_active") dynamic costcontreIsActive,
      @JsonKey(name: "costcontre.creator_id") dynamic costcontreCreatorId,
      @JsonKey(name: "costcontre.last_editor_id")
      dynamic costcontreLastEditorId,
      @JsonKey(name: "costcontre.created_at") dynamic costcontreCreatedAt,
      @JsonKey(name: "costcontre.updated_at") dynamic costcontreUpdatedAt,
      @JsonKey(name: "costcontre.value_2") dynamic costcontreValue2,
      @JsonKey(name: "costcontre.value_3") dynamic costcontreValue3,
      @JsonKey(name: "m_posisi.id") int? mPosisiId,
      @JsonKey(name: "m_posisi.m_comp_id") dynamic mPosisiMCompId,
      @JsonKey(name: "m_posisi.m_dir_id") dynamic mPosisiMDirId,
      @JsonKey(name: "m_posisi.kode") String? mPosisiKode,
      @JsonKey(name: "m_posisi.desc_kerja") String? mPosisiDescKerja,
      @JsonKey(name: "m_posisi.desc_kerja_1") String? mPosisiDescKerja1,
      @JsonKey(name: "m_posisi.desc_kerja_2") dynamic mPosisiDescKerja2,
      @JsonKey(name: "m_posisi.min_pengalaman") String? mPosisiMinPengalaman,
      @JsonKey(name: "m_posisi.min_pendidikan_id") int? mPosisiMinPendidikanId,
      @JsonKey(name: "m_posisi.min_gaji_pokok") String? mPosisiMinGajiPokok,
      @JsonKey(name: "m_posisi.max_gaji_pokok") String? mPosisiMaxGajiPokok,
      @JsonKey(name: "m_posisi.biaya") dynamic mPosisiBiaya,
      @JsonKey(name: "m_posisi.tipe_bpjs_id") dynamic mPosisiTipeBpjsId,
      @JsonKey(name: "m_posisi.potongan_bpjs") dynamic mPosisiPotonganBpjs,
      @JsonKey(name: "m_posisi.desc") dynamic mPosisiDesc,
      @JsonKey(name: "m_posisi.is_active") bool? mPosisiIsActive,
      @JsonKey(name: "m_posisi.creator_id") dynamic mPosisiCreatorId,
      @JsonKey(name: "m_posisi.last_editor_id") dynamic mPosisiLastEditorId,
      @JsonKey(name: "m_posisi.created_at") String? mPosisiCreatedAt,
      @JsonKey(name: "m_posisi.updated_at") String? mPosisiUpdatedAt,
      @JsonKey(name: "m_jam_kerja.id") dynamic mJamKerjaId,
      @JsonKey(name: "m_jam_kerja.m_comp_id") dynamic mJamKerjaMCompId,
      @JsonKey(name: "m_jam_kerja.m_dir_id") dynamic mJamKerjaMDirId,
      @JsonKey(name: "m_jam_kerja.kode") dynamic mJamKerjaKode,
      @JsonKey(name: "m_jam_kerja.tipe_jam_kerja_id")
      dynamic mJamKerjaTipeJamKerjaId,
      @JsonKey(name: "m_jam_kerja.waktu_mulai") dynamic mJamKerjaWaktuMulai,
      @JsonKey(name: "m_jam_kerja.waktu_akhir") dynamic mJamKerjaWaktuAkhir,
      @JsonKey(name: "m_jam_kerja.is_hari_berikutnya")
      dynamic mJamKerjaIsHariBerikutnya,
      @JsonKey(name: "m_jam_kerja.desc") dynamic mJamKerjaDesc,
      @JsonKey(name: "m_jam_kerja.is_active") dynamic mJamKerjaIsActive,
      @JsonKey(name: "m_jam_kerja.creator_id") dynamic mJamKerjaCreatorId,
      @JsonKey(name: "m_jam_kerja.last_editor_id")
      dynamic mJamKerjaLastEditorId,
      @JsonKey(name: "m_jam_kerja.created_at") dynamic mJamKerjaCreatedAt,
      @JsonKey(name: "m_jam_kerja.updated_at") dynamic mJamKerjaUpdatedAt,
      @JsonKey(name: "jk.id") int? jkId,
      @JsonKey(name: "jk.m_comp_id") int? jkMCompId,
      @JsonKey(name: "jk.m_dir_id") dynamic jkMDirId,
      @JsonKey(name: "jk.group") String? jkGroup,
      @JsonKey(name: "jk.key") String? jkKey,
      @JsonKey(name: "jk.code") String? jkCode,
      @JsonKey(name: "jk.value") String? jkValue,
      @JsonKey(name: "jk.is_active") bool? jkIsActive,
      @JsonKey(name: "jk.creator_id") dynamic jkCreatorId,
      @JsonKey(name: "jk.last_editor_id") dynamic jkLastEditorId,
      @JsonKey(name: "jk.created_at") String? jkCreatedAt,
      @JsonKey(name: "jk.updated_at") String? jkUpdatedAt,
      @JsonKey(name: "jk.value_2") dynamic jkValue2,
      @JsonKey(name: "jk.value_3") dynamic jkValue3,
      @JsonKey(name: "provinsi.id") int? provinsiId,
      @JsonKey(name: "provinsi.m_comp_id") int? provinsiMCompId,
      @JsonKey(name: "provinsi.m_dir_id") dynamic provinsiMDirId,
      @JsonKey(name: "provinsi.group") String? provinsiGroup,
      @JsonKey(name: "provinsi.key") dynamic provinsiKey,
      @JsonKey(name: "provinsi.code") dynamic provinsiCode,
      @JsonKey(name: "provinsi.value") String? provinsiValue,
      @JsonKey(name: "provinsi.is_active") bool? provinsiIsActive,
      @JsonKey(name: "provinsi.creator_id") dynamic provinsiCreatorId,
      @JsonKey(name: "provinsi.last_editor_id") dynamic provinsiLastEditorId,
      @JsonKey(name: "provinsi.created_at") dynamic provinsiCreatedAt,
      @JsonKey(name: "provinsi.updated_at") String? provinsiUpdatedAt,
      @JsonKey(name: "provinsi.value_2") dynamic provinsiValue2,
      @JsonKey(name: "provinsi.value_3") dynamic provinsiValue3,
      @JsonKey(name: "kota.id") int? kotaId,
      @JsonKey(name: "kota.m_comp_id") int? kotaMCompId,
      @JsonKey(name: "kota.m_dir_id") dynamic kotaMDirId,
      @JsonKey(name: "kota.group") String? kotaGroup,
      @JsonKey(name: "kota.key") String? kotaKey,
      @JsonKey(name: "kota.code") dynamic kotaCode,
      @JsonKey(name: "kota.value") String? kotaValue,
      @JsonKey(name: "kota.is_active") bool? kotaIsActive,
      @JsonKey(name: "kota.creator_id") dynamic kotaCreatorId,
      @JsonKey(name: "kota.last_editor_id") dynamic kotaLastEditorId,
      @JsonKey(name: "kota.created_at") dynamic kotaCreatedAt,
      @JsonKey(name: "kota.updated_at") dynamic kotaUpdatedAt,
      @JsonKey(name: "kota.value_2") dynamic kotaValue2,
      @JsonKey(name: "kota.value_3") dynamic kotaValue3,
      @JsonKey(name: "kecamatan.id") int? kecamatanId,
      @JsonKey(name: "kecamatan.m_comp_id") int? kecamatanMCompId,
      @JsonKey(name: "kecamatan.m_dir_id") dynamic kecamatanMDirId,
      @JsonKey(name: "kecamatan.group") String? kecamatanGroup,
      @JsonKey(name: "kecamatan.key") String? kecamatanKey,
      @JsonKey(name: "kecamatan.code") dynamic kecamatanCode,
      @JsonKey(name: "kecamatan.value") String? kecamatanValue,
      @JsonKey(name: "kecamatan.is_active") bool? kecamatanIsActive,
      @JsonKey(name: "kecamatan.creator_id") dynamic kecamatanCreatorId,
      @JsonKey(name: "kecamatan.last_editor_id") dynamic kecamatanLastEditorId,
      @JsonKey(name: "kecamatan.created_at") dynamic kecamatanCreatedAt,
      @JsonKey(name: "kecamatan.updated_at") dynamic kecamatanUpdatedAt,
      @JsonKey(name: "kecamatan.value_2") dynamic kecamatanValue2,
      @JsonKey(name: "kecamatan.value_3") dynamic kecamatanValue3,
      @JsonKey(name: "agama.id") int? agamaId,
      @JsonKey(name: "agama.m_comp_id") int? agamaMCompId,
      @JsonKey(name: "agama.m_dir_id") dynamic agamaMDirId,
      @JsonKey(name: "agama.group") String? agamaGroup,
      @JsonKey(name: "agama.key") String? agamaKey,
      @JsonKey(name: "agama.code") String? agamaCode,
      @JsonKey(name: "agama.value") String? agamaValue,
      @JsonKey(name: "agama.is_active") bool? agamaIsActive,
      @JsonKey(name: "agama.creator_id") dynamic agamaCreatorId,
      @JsonKey(name: "agama.last_editor_id") dynamic agamaLastEditorId,
      @JsonKey(name: "agama.created_at") String? agamaCreatedAt,
      @JsonKey(name: "agama.updated_at") String? agamaUpdatedAt,
      @JsonKey(name: "agama.value_2") dynamic agamaValue2,
      @JsonKey(name: "agama.value_3") dynamic agamaValue3,
      @JsonKey(name: "gol_darah.id") int? golDarahId,
      @JsonKey(name: "gol_darah.m_comp_id") int? golDarahMCompId,
      @JsonKey(name: "gol_darah.m_dir_id") dynamic golDarahMDirId,
      @JsonKey(name: "gol_darah.group") String? golDarahGroup,
      @JsonKey(name: "gol_darah.key") String? golDarahKey,
      @JsonKey(name: "gol_darah.code") String? golDarahCode,
      @JsonKey(name: "gol_darah.value") String? golDarahValue,
      @JsonKey(name: "gol_darah.is_active") bool? golDarahIsActive,
      @JsonKey(name: "gol_darah.creator_id") dynamic golDarahCreatorId,
      @JsonKey(name: "gol_darah.last_editor_id") dynamic golDarahLastEditorId,
      @JsonKey(name: "gol_darah.created_at") String? golDarahCreatedAt,
      @JsonKey(name: "gol_darah.updated_at") String? golDarahUpdatedAt,
      @JsonKey(name: "gol_darah.value_2") dynamic golDarahValue2,
      @JsonKey(name: "gol_darah.value_3") dynamic golDarahValue3,
      @JsonKey(name: "status_nikah.id") int? statusNikahId,
      @JsonKey(name: "status_nikah.m_comp_id") int? statusNikahMCompId,
      @JsonKey(name: "status_nikah.m_dir_id") dynamic statusNikahMDirId,
      @JsonKey(name: "status_nikah.group") String? statusNikahGroup,
      @JsonKey(name: "status_nikah.key") String? statusNikahKey,
      @JsonKey(name: "status_nikah.code") String? statusNikahCode,
      @JsonKey(name: "status_nikah.value") String? statusNikahValue,
      @JsonKey(name: "status_nikah.is_active") bool? statusNikahIsActive,
      @JsonKey(name: "status_nikah.creator_id") dynamic statusNikahCreatorId,
      @JsonKey(name: "status_nikah.last_editor_id")
      dynamic statusNikahLastEditorId,
      @JsonKey(name: "status_nikah.created_at") String? statusNikahCreatedAt,
      @JsonKey(name: "status_nikah.updated_at") String? statusNikahUpdatedAt,
      @JsonKey(name: "status_nikah.value_2") dynamic statusNikahValue2,
      @JsonKey(name: "status_nikah.value_3") dynamic statusNikahValue3,
      @JsonKey(name: "tanggungan.id") int? tanggunganId,
      @JsonKey(name: "tanggungan.m_comp_id") int? tanggunganMCompId,
      @JsonKey(name: "tanggungan.m_dir_id") int? tanggunganMDirId,
      @JsonKey(name: "tanggungan.group") String? tanggunganGroup,
      @JsonKey(name: "tanggungan.key") String? tanggunganKey,
      @JsonKey(name: "tanggungan.code") String? tanggunganCode,
      @JsonKey(name: "tanggungan.value") String? tanggunganValue,
      @JsonKey(name: "tanggungan.is_active") bool? tanggunganIsActive,
      @JsonKey(name: "tanggungan.creator_id") dynamic tanggunganCreatorId,
      @JsonKey(name: "tanggungan.last_editor_id")
      dynamic tanggunganLastEditorId,
      @JsonKey(name: "tanggungan.created_at") String? tanggunganCreatedAt,
      @JsonKey(name: "tanggungan.updated_at") String? tanggunganUpdatedAt,
      @JsonKey(name: "tanggungan.value_2") String? tanggunganValue2,
      @JsonKey(name: "tanggungan.value_3") dynamic tanggunganValue3,
      @JsonKey(name: "status_kary.id") dynamic statusKaryId,
      @JsonKey(name: "status_kary.m_comp_id") dynamic statusKaryMCompId,
      @JsonKey(name: "status_kary.m_dir_id") dynamic statusKaryMDirId,
      @JsonKey(name: "status_kary.group") dynamic statusKaryGroup,
      @JsonKey(name: "status_kary.key") dynamic statusKaryKey,
      @JsonKey(name: "status_kary.code") dynamic statusKaryCode,
      @JsonKey(name: "status_kary.value") dynamic statusKaryValue,
      @JsonKey(name: "status_kary.is_active") dynamic statusKaryIsActive,
      @JsonKey(name: "status_kary.creator_id") dynamic statusKaryCreatorId,
      @JsonKey(name: "status_kary.last_editor_id")
      dynamic statusKaryLastEditorId,
      @JsonKey(name: "status_kary.created_at") dynamic statusKaryCreatedAt,
      @JsonKey(name: "status_kary.updated_at") dynamic statusKaryUpdatedAt,
      @JsonKey(name: "status_kary.value_2") dynamic statusKaryValue2,
      @JsonKey(name: "status_kary.value_3") dynamic statusKaryValue3,
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
      @JsonKey(name: "last_editor.last_editor_id")
      dynamic lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at") String? lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at") String? lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image") String? lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") int? lastEditorMKaryId,
      @JsonKey(name: "m_standart_gaji.id") dynamic mStandartGajiId,
      @JsonKey(name: "m_standart_gaji.m_comp_id") dynamic mStandartGajiMCompId,
      @JsonKey(name: "m_standart_gaji.m_dir_id") dynamic mStandartGajiMDirId,
      @JsonKey(name: "m_standart_gaji.kode") dynamic mStandartGajiKode,
      @JsonKey(name: "m_standart_gaji.m_divisi_id")
      dynamic mStandartGajiMDivisiId,
      @JsonKey(name: "m_standart_gaji.m_dept_id") dynamic mStandartGajiMDeptId,
      @JsonKey(name: "m_standart_gaji.m_zona_id") dynamic mStandartGajiMZonaId,
      @JsonKey(name: "m_standart_gaji.m_posisi_id")
      dynamic mStandartGajiMPosisiId,
      @JsonKey(name: "m_standart_gaji.grading_id")
      dynamic mStandartGajiGradingId,
      @JsonKey(name: "m_standart_gaji.gaji_pokok")
      dynamic mStandartGajiGajiPokok,
      @JsonKey(name: "m_standart_gaji.gaji_pokok_periode")
      dynamic mStandartGajiGajiPokokPeriode,
      @JsonKey(name: "m_standart_gaji.uang_saku") dynamic mStandartGajiUangSaku,
      @JsonKey(name: "m_standart_gaji.uang_saku_periode")
      dynamic mStandartGajiUangSakuPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_posisi")
      dynamic mStandartGajiTunjanganPosisi,
      @JsonKey(name: "m_standart_gaji.tunjangan_posisi_periode")
      dynamic mStandartGajiTunjanganPosisiPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_id")
      dynamic mStandartGajiTunjanganKemahalanId,
      @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_periode")
      dynamic mStandartGajiTunjanganKemahalanPeriode,
      @JsonKey(name: "m_standart_gaji.uang_makan")
      dynamic mStandartGajiUangMakan,
      @JsonKey(name: "m_standart_gaji.uang_makan_periode")
      dynamic mStandartGajiUangMakanPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_tetap")
      dynamic mStandartGajiTunjanganTetap,
      @JsonKey(name: "m_standart_gaji.tunjangan_tetap_periode")
      dynamic mStandartGajiTunjanganTetapPeriode,
      @JsonKey(name: "m_standart_gaji.desc") dynamic mStandartGajiDesc,
      @JsonKey(name: "m_standart_gaji.is_active") dynamic mStandartGajiIsActive,
      @JsonKey(name: "m_standart_gaji.creator_id")
      dynamic mStandartGajiCreatorId,
      @JsonKey(name: "m_standart_gaji.last_editor_id")
      dynamic mStandartGajiLastEditorId,
      @JsonKey(name: "m_standart_gaji.created_at")
      dynamic mStandartGajiCreatedAt,
      @JsonKey(name: "m_standart_gaji.updated_at")
      dynamic mStandartGajiUpdatedAt,
      @JsonKey(name: "periode_gaji.id") int? periodeGajiId,
      @JsonKey(name: "periode_gaji.m_comp_id") int? periodeGajiMCompId,
      @JsonKey(name: "periode_gaji.m_dir_id") dynamic periodeGajiMDirId,
      @JsonKey(name: "periode_gaji.group") String? periodeGajiGroup,
      @JsonKey(name: "periode_gaji.key") String? periodeGajiKey,
      @JsonKey(name: "periode_gaji.code") String? periodeGajiCode,
      @JsonKey(name: "periode_gaji.value") String? periodeGajiValue,
      @JsonKey(name: "periode_gaji.is_active") bool? periodeGajiIsActive,
      @JsonKey(name: "periode_gaji.creator_id") dynamic periodeGajiCreatorId,
      @JsonKey(name: "periode_gaji.last_editor_id")
      dynamic periodeGajiLastEditorId,
      @JsonKey(name: "periode_gaji.created_at") String? periodeGajiCreatedAt,
      @JsonKey(name: "periode_gaji.updated_at") String? periodeGajiUpdatedAt,
      @JsonKey(name: "periode_gaji.value_2") dynamic periodeGajiValue2,
      @JsonKey(name: "periode_gaji.value_3") dynamic periodeGajiValue3,
      @JsonKey(name: "ref.id") dynamic refId,
      @JsonKey(name: "ref.nomor") dynamic refNomor,
      @JsonKey(name: "ref.m_comp_id") dynamic refMCompId,
      @JsonKey(name: "ref.m_dir_id") dynamic refMDirId,
      @JsonKey(name: "ref.nama_pelamar") dynamic refNamaPelamar,
      @JsonKey(name: "ref.ktp_no") dynamic refKtpNo,
      @JsonKey(name: "ref.tanggal") dynamic refTanggal,
      @JsonKey(name: "ref.ref") dynamic refRef,
      @JsonKey(name: "ref.telp") dynamic refTelp,
      @JsonKey(name: "ref.jk_id") dynamic refJkId,
      @JsonKey(name: "ref.tgl_lahir") dynamic refTglLahir,
      @JsonKey(name: "ref.salary") dynamic refSalary,
      @JsonKey(name: "ref.deskripsi") dynamic refDeskripsi,
      @JsonKey(name: "ref.status") dynamic refStatus,
      @JsonKey(name: "ref.creator_id") dynamic refCreatorId,
      @JsonKey(name: "ref.last_editor_id") dynamic refLastEditorId,
      @JsonKey(name: "ref.created_at") dynamic refCreatedAt,
      @JsonKey(name: "ref.updated_at") dynamic refUpdatedAt,
      @JsonKey(name: "ref.m_divisi_id") dynamic refMDivisiId,
      @JsonKey(name: "ref.m_dept_id") dynamic refMDeptId,
      @JsonKey(name: "ref.m_posisi_id") dynamic refMPosisiId,
      @JsonKey(name: "ref.tempat_lahir") dynamic refTempatLahir,
      @JsonKey(name: "ref.t_loker_id") dynamic refTLokerId,
      @JsonKey(name: "presensi_lokasi_default.id") int? presensiLokasiDefaultId,
      @JsonKey(name: "presensi_lokasi_default.comp_id")
      int? presensiLokasiDefaultCompId,
      @JsonKey(name: "presensi_lokasi_default.default_user_id")
      dynamic presensiLokasiDefaultDefaultUserId,
      @JsonKey(name: "presensi_lokasi_default.nama")
      String? presensiLokasiDefaultNama,
      @JsonKey(name: "presensi_lokasi_default.lat")
      String? presensiLokasiDefaultLat,
      @JsonKey(name: "presensi_lokasi_default.long")
      String? presensiLokasiDefaultLong,
      @JsonKey(name: "presensi_lokasi_default.is_active")
      bool? presensiLokasiDefaultIsActive,
      @JsonKey(name: "presensi_lokasi_default.creator_id")
      int? presensiLokasiDefaultCreatorId,
      @JsonKey(name: "presensi_lokasi_default.last_editor_id")
      dynamic presensiLokasiDefaultLastEditorId,
      @JsonKey(name: "presensi_lokasi_default.created_at")
      String? presensiLokasiDefaultCreatedAt,
      @JsonKey(name: "presensi_lokasi_default.updated_at")
      dynamic presensiLokasiDefaultUpdatedAt,
      @JsonKey(name: "atasan.id") dynamic atasanId,
      @JsonKey(name: "atasan.m_comp_id") dynamic atasanMCompId,
      @JsonKey(name: "atasan.m_dir_id") dynamic atasanMDirId,
      @JsonKey(name: "atasan.m_divisi_id") dynamic atasanMDivisiId,
      @JsonKey(name: "atasan.m_dept_id") dynamic atasanMDeptId,
      @JsonKey(name: "atasan.m_zona_id") dynamic atasanMZonaId,
      @JsonKey(name: "atasan.grading_id") dynamic atasanGradingId,
      @JsonKey(name: "atasan.costcontre_id") dynamic atasanCostcontreId,
      @JsonKey(name: "atasan.kode") dynamic atasanKode,
      @JsonKey(name: "atasan.m_posisi_id") dynamic atasanMPosisiId,
      @JsonKey(name: "atasan.m_jam_kerja_id") dynamic atasanMJamKerjaId,
      @JsonKey(name: "atasan.kode_presensi") dynamic atasanKodePresensi,
      @JsonKey(name: "atasan.nik") dynamic atasanNik,
      @JsonKey(name: "atasan.nama_depan") dynamic atasanNamaDepan,
      @JsonKey(name: "atasan.nama_belakang") dynamic atasanNamaBelakang,
      @JsonKey(name: "atasan.nama_lengkap") dynamic atasanNamaLengkap,
      @JsonKey(name: "atasan.nama_panggilan") dynamic atasanNamaPanggilan,
      @JsonKey(name: "atasan.jk_id") dynamic atasanJkId,
      @JsonKey(name: "atasan.tempat_lahir") dynamic atasanTempatLahir,
      @JsonKey(name: "atasan.tgl_lahir") dynamic atasanTglLahir,
      @JsonKey(name: "atasan.provinsi_id") dynamic atasanProvinsiId,
      @JsonKey(name: "atasan.kota_id") dynamic atasanKotaId,
      @JsonKey(name: "atasan.kecamatan_id") dynamic atasanKecamatanId,
      @JsonKey(name: "atasan.kode_pos") dynamic atasanKodePos,
      @JsonKey(name: "atasan.alamat_asli") dynamic atasanAlamatAsli,
      @JsonKey(name: "atasan.alamat_domisili") dynamic atasanAlamatDomisili,
      @JsonKey(name: "atasan.no_tlp") dynamic atasanNoTlp,
      @JsonKey(name: "atasan.no_tlp_lainnya") dynamic atasanNoTlpLainnya,
      @JsonKey(name: "atasan.no_darurat") dynamic atasanNoDarurat,
      @JsonKey(name: "atasan.nama_kontak_darurat")
      dynamic atasanNamaKontakDarurat,
      @JsonKey(name: "atasan.agama_id") dynamic atasanAgamaId,
      @JsonKey(name: "atasan.gol_darah_id") dynamic atasanGolDarahId,
      @JsonKey(name: "atasan.status_nikah_id") dynamic atasanStatusNikahId,
      @JsonKey(name: "atasan.tanggungan_id") dynamic atasanTanggunganId,
      @JsonKey(name: "atasan.hub_dgn_karyawan") dynamic atasanHubDgnKaryawan,
      @JsonKey(name: "atasan.cuti_jatah_reguler")
      dynamic atasanCutiJatahReguler,
      @JsonKey(name: "atasan.cuti_sisa_reguler") dynamic atasanCutiSisaReguler,
      @JsonKey(name: "atasan.cuti_panjang") dynamic atasanCutiPanjang,
      @JsonKey(name: "atasan.cuti_sisa_panjang") dynamic atasanCutiSisaPanjang,
      @JsonKey(name: "atasan.status_kary_id") dynamic atasanStatusKaryId,
      @JsonKey(name: "atasan.lama_kontrak_awal") dynamic atasanLamaKontrakAwal,
      @JsonKey(name: "atasan.lama_kontrak_akhir")
      dynamic atasanLamaKontrakAkhir,
      @JsonKey(name: "atasan.tgl_masuk") dynamic atasanTglMasuk,
      @JsonKey(name: "atasan.tgl_berhenti") dynamic atasanTglBerhenti,
      @JsonKey(name: "atasan.alasan_berhenti") dynamic atasanAlasanBerhenti,
      @JsonKey(name: "atasan.uk_baju") dynamic atasanUkBaju,
      @JsonKey(name: "atasan.uk_celana") dynamic atasanUkCelana,
      @JsonKey(name: "atasan.uk_sepatu") dynamic atasanUkSepatu,
      @JsonKey(name: "atasan.desc") dynamic atasanDesc,
      @JsonKey(name: "atasan.is_active") dynamic atasanIsActive,
      @JsonKey(name: "atasan.creator_id") dynamic atasanCreatorId,
      @JsonKey(name: "atasan.last_editor_id") dynamic atasanLastEditorId,
      @JsonKey(name: "atasan.created_at") dynamic atasanCreatedAt,
      @JsonKey(name: "atasan.updated_at") dynamic atasanUpdatedAt,
      @JsonKey(name: "atasan.m_standart_gaji_id") dynamic atasanMStandartGajiId,
      @JsonKey(name: "atasan.periode_gaji_id") dynamic atasanPeriodeGajiId,
      @JsonKey(name: "atasan.ref_id") dynamic atasanRefId,
      @JsonKey(name: "atasan.presensi_lokasi_default_id")
      dynamic atasanPresensiLokasiDefaultId,
      @JsonKey(name: "atasan.exp_date_cuti") dynamic atasanExpDateCuti,
      @JsonKey(name: "atasan.limit_potong") dynamic atasanLimitPotong,
      @JsonKey(name: "atasan.atasan_id") dynamic atasanAtasanId,
      @JsonKey(name: "atasan.cuti_p24") dynamic atasanCutiP24,
      @JsonKey(name: "atasan.cuti_sisa_p24") dynamic atasanCutiSisaP24,
      @JsonKey(name: "atasan.tipe_jam_kerja_id") dynamic atasanTipeJamKerjaId,
      @JsonKey(name: "atasan.t_jadwal_kerja_id") dynamic atasanTJadwalKerjaId,
      @JsonKey(name: "tipe_jam_kerja.id") dynamic tipeJamKerjaId,
      @JsonKey(name: "tipe_jam_kerja.m_comp_id") dynamic tipeJamKerjaMCompId,
      @JsonKey(name: "tipe_jam_kerja.m_dir_id") dynamic tipeJamKerjaMDirId,
      @JsonKey(name: "tipe_jam_kerja.group") dynamic tipeJamKerjaGroup,
      @JsonKey(name: "tipe_jam_kerja.key") dynamic tipeJamKerjaKey,
      @JsonKey(name: "tipe_jam_kerja.code") dynamic tipeJamKerjaCode,
      @JsonKey(name: "tipe_jam_kerja.value") dynamic tipeJamKerjaValue,
      @JsonKey(name: "tipe_jam_kerja.is_active") dynamic tipeJamKerjaIsActive,
      @JsonKey(name: "tipe_jam_kerja.creator_id") dynamic tipeJamKerjaCreatorId,
      @JsonKey(name: "tipe_jam_kerja.last_editor_id")
      dynamic tipeJamKerjaLastEditorId,
      @JsonKey(name: "tipe_jam_kerja.created_at") dynamic tipeJamKerjaCreatedAt,
      @JsonKey(name: "tipe_jam_kerja.updated_at") dynamic tipeJamKerjaUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.value_2") dynamic tipeJamKerjaValue2,
      @JsonKey(name: "tipe_jam_kerja.value_3") dynamic tipeJamKerjaValue3,
      @JsonKey(name: "t_jadwal_kerja.id") dynamic tJadwalKerjaId,
      @JsonKey(name: "t_jadwal_kerja.nomor") dynamic tJadwalKerjaNomor,
      @JsonKey(name: "t_jadwal_kerja.m_comp_id") dynamic tJadwalKerjaMCompId,
      @JsonKey(name: "t_jadwal_kerja.m_dir_id") dynamic tJadwalKerjaMDirId,
      @JsonKey(name: "t_jadwal_kerja.m_divisi_id")
      dynamic tJadwalKerjaMDivisiId,
      @JsonKey(name: "t_jadwal_kerja.m_dept_id") dynamic tJadwalKerjaMDeptId,
      @JsonKey(name: "t_jadwal_kerja.tipe_jam_kerja_id")
      dynamic tJadwalKerjaTipeJamKerjaId,
      @JsonKey(name: "t_jadwal_kerja.keterangan")
      dynamic tJadwalKerjaKeterangan,
      @JsonKey(name: "t_jadwal_kerja.status") dynamic tJadwalKerjaStatus,
      @JsonKey(name: "t_jadwal_kerja.creator_id") dynamic tJadwalKerjaCreatorId,
      @JsonKey(name: "t_jadwal_kerja.last_editor_id")
      dynamic tJadwalKerjaLastEditorId,
      @JsonKey(name: "t_jadwal_kerja.created_at") dynamic tJadwalKerjaCreatedAt,
      @JsonKey(name: "t_jadwal_kerja.updated_at") dynamic tJadwalKerjaUpdatedAt,
      @JsonKey(name: "nomor_ktp") String? nomorKtp});
}

/// @nodoc
class _$DataAllKaryawanCopyWithImpl<$Res, $Val extends DataAllKaryawan>
    implements $DataAllKaryawanCopyWith<$Res> {
  _$DataAllKaryawanCopyWithImpl(this._value, this._then);

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
    Object? DataAllKaryawanMCompId = freezed,
    Object? DataAllKaryawanMDirId = freezed,
    Object? DataAllKaryawanMDivisiId = freezed,
    Object? DataAllKaryawanMDeptId = freezed,
    Object? DataAllKaryawanMZonaId = freezed,
    Object? DataAllKaryawanGradingId = freezed,
    Object? DataAllKaryawanCostcontreId = freezed,
    Object? kode = freezed,
    Object? DataAllKaryawanMPosisiId = freezed,
    Object? DataAllKaryawanMJamKerjaId = freezed,
    Object? kodePresensi = freezed,
    Object? nik = freezed,
    Object? namaDepan = freezed,
    Object? namaBelakang = freezed,
    Object? namaLengkap = freezed,
    Object? namaPanggilan = freezed,
    Object? DataAllKaryawanJkId = freezed,
    Object? tempatLahir = freezed,
    Object? tglLahir = freezed,
    Object? DataAllKaryawanProvinsiId = freezed,
    Object? DataAllKaryawanKotaId = freezed,
    Object? DataAllKaryawanKecamatanId = freezed,
    Object? kodePos = freezed,
    Object? alamatAsli = freezed,
    Object? alamatDomisili = freezed,
    Object? noTlp = freezed,
    Object? noTlpLainnya = freezed,
    Object? noDarurat = freezed,
    Object? namaKontakDarurat = freezed,
    Object? DataAllKaryawanAgamaId = freezed,
    Object? DataAllKaryawanGolDarahId = freezed,
    Object? DataAllKaryawanStatusNikahId = freezed,
    Object? DataAllKaryawanTanggunganId = freezed,
    Object? hubDgnKaryawan = freezed,
    Object? cutiJatahReguler = freezed,
    Object? cutiSisaReguler = freezed,
    Object? cutiPanjang = freezed,
    Object? cutiSisaPanjang = freezed,
    Object? DataAllKaryawanStatusKaryId = freezed,
    Object? lamaKontrakAwal = freezed,
    Object? lamaKontrakAkhir = freezed,
    Object? tglMasuk = freezed,
    Object? tglBerhenti = freezed,
    Object? alasanBerhenti = freezed,
    Object? ukBaju = freezed,
    Object? ukCelana = freezed,
    Object? ukSepatu = freezed,
    Object? desc = freezed,
    Object? isActive = freezed,
    Object? DataAllKaryawanCreatorId = freezed,
    Object? DataAllKaryawanLastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? DataAllKaryawanMStandartGajiId = freezed,
    Object? DataAllKaryawanPeriodeGajiId = freezed,
    Object? DataAllKaryawanRefId = freezed,
    Object? DataAllKaryawanPresensiLokasiDefaultId = freezed,
    Object? expDateCuti = freezed,
    Object? limitPotong = freezed,
    Object? DataAllKaryawanAtasanId = freezed,
    Object? cutiP24 = freezed,
    Object? cutiSisaP24 = freezed,
    Object? DataAllKaryawanTipeJamKerjaId = freezed,
    Object? DataAllKaryawanTJadwalKerjaId = freezed,
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
    Object? mZonaKode = freezed,
    Object? mZonaNama = freezed,
    Object? mZonaDesc = freezed,
    Object? mZonaIsActive = freezed,
    Object? mZonaCreatorId = freezed,
    Object? mZonaLastEditorId = freezed,
    Object? mZonaCreatedAt = freezed,
    Object? mZonaUpdatedAt = freezed,
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
    Object? costcontreId = freezed,
    Object? costcontreMCompId = freezed,
    Object? costcontreMDirId = freezed,
    Object? costcontreGroup = freezed,
    Object? costcontreKey = freezed,
    Object? costcontreCode = freezed,
    Object? costcontreValue = freezed,
    Object? costcontreIsActive = freezed,
    Object? costcontreCreatorId = freezed,
    Object? costcontreLastEditorId = freezed,
    Object? costcontreCreatedAt = freezed,
    Object? costcontreUpdatedAt = freezed,
    Object? costcontreValue2 = freezed,
    Object? costcontreValue3 = freezed,
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
    Object? mJamKerjaId = freezed,
    Object? mJamKerjaMCompId = freezed,
    Object? mJamKerjaMDirId = freezed,
    Object? mJamKerjaKode = freezed,
    Object? mJamKerjaTipeJamKerjaId = freezed,
    Object? mJamKerjaWaktuMulai = freezed,
    Object? mJamKerjaWaktuAkhir = freezed,
    Object? mJamKerjaIsHariBerikutnya = freezed,
    Object? mJamKerjaDesc = freezed,
    Object? mJamKerjaIsActive = freezed,
    Object? mJamKerjaCreatorId = freezed,
    Object? mJamKerjaLastEditorId = freezed,
    Object? mJamKerjaCreatedAt = freezed,
    Object? mJamKerjaUpdatedAt = freezed,
    Object? jkId = freezed,
    Object? jkMCompId = freezed,
    Object? jkMDirId = freezed,
    Object? jkGroup = freezed,
    Object? jkKey = freezed,
    Object? jkCode = freezed,
    Object? jkValue = freezed,
    Object? jkIsActive = freezed,
    Object? jkCreatorId = freezed,
    Object? jkLastEditorId = freezed,
    Object? jkCreatedAt = freezed,
    Object? jkUpdatedAt = freezed,
    Object? jkValue2 = freezed,
    Object? jkValue3 = freezed,
    Object? provinsiId = freezed,
    Object? provinsiMCompId = freezed,
    Object? provinsiMDirId = freezed,
    Object? provinsiGroup = freezed,
    Object? provinsiKey = freezed,
    Object? provinsiCode = freezed,
    Object? provinsiValue = freezed,
    Object? provinsiIsActive = freezed,
    Object? provinsiCreatorId = freezed,
    Object? provinsiLastEditorId = freezed,
    Object? provinsiCreatedAt = freezed,
    Object? provinsiUpdatedAt = freezed,
    Object? provinsiValue2 = freezed,
    Object? provinsiValue3 = freezed,
    Object? kotaId = freezed,
    Object? kotaMCompId = freezed,
    Object? kotaMDirId = freezed,
    Object? kotaGroup = freezed,
    Object? kotaKey = freezed,
    Object? kotaCode = freezed,
    Object? kotaValue = freezed,
    Object? kotaIsActive = freezed,
    Object? kotaCreatorId = freezed,
    Object? kotaLastEditorId = freezed,
    Object? kotaCreatedAt = freezed,
    Object? kotaUpdatedAt = freezed,
    Object? kotaValue2 = freezed,
    Object? kotaValue3 = freezed,
    Object? kecamatanId = freezed,
    Object? kecamatanMCompId = freezed,
    Object? kecamatanMDirId = freezed,
    Object? kecamatanGroup = freezed,
    Object? kecamatanKey = freezed,
    Object? kecamatanCode = freezed,
    Object? kecamatanValue = freezed,
    Object? kecamatanIsActive = freezed,
    Object? kecamatanCreatorId = freezed,
    Object? kecamatanLastEditorId = freezed,
    Object? kecamatanCreatedAt = freezed,
    Object? kecamatanUpdatedAt = freezed,
    Object? kecamatanValue2 = freezed,
    Object? kecamatanValue3 = freezed,
    Object? agamaId = freezed,
    Object? agamaMCompId = freezed,
    Object? agamaMDirId = freezed,
    Object? agamaGroup = freezed,
    Object? agamaKey = freezed,
    Object? agamaCode = freezed,
    Object? agamaValue = freezed,
    Object? agamaIsActive = freezed,
    Object? agamaCreatorId = freezed,
    Object? agamaLastEditorId = freezed,
    Object? agamaCreatedAt = freezed,
    Object? agamaUpdatedAt = freezed,
    Object? agamaValue2 = freezed,
    Object? agamaValue3 = freezed,
    Object? golDarahId = freezed,
    Object? golDarahMCompId = freezed,
    Object? golDarahMDirId = freezed,
    Object? golDarahGroup = freezed,
    Object? golDarahKey = freezed,
    Object? golDarahCode = freezed,
    Object? golDarahValue = freezed,
    Object? golDarahIsActive = freezed,
    Object? golDarahCreatorId = freezed,
    Object? golDarahLastEditorId = freezed,
    Object? golDarahCreatedAt = freezed,
    Object? golDarahUpdatedAt = freezed,
    Object? golDarahValue2 = freezed,
    Object? golDarahValue3 = freezed,
    Object? statusNikahId = freezed,
    Object? statusNikahMCompId = freezed,
    Object? statusNikahMDirId = freezed,
    Object? statusNikahGroup = freezed,
    Object? statusNikahKey = freezed,
    Object? statusNikahCode = freezed,
    Object? statusNikahValue = freezed,
    Object? statusNikahIsActive = freezed,
    Object? statusNikahCreatorId = freezed,
    Object? statusNikahLastEditorId = freezed,
    Object? statusNikahCreatedAt = freezed,
    Object? statusNikahUpdatedAt = freezed,
    Object? statusNikahValue2 = freezed,
    Object? statusNikahValue3 = freezed,
    Object? tanggunganId = freezed,
    Object? tanggunganMCompId = freezed,
    Object? tanggunganMDirId = freezed,
    Object? tanggunganGroup = freezed,
    Object? tanggunganKey = freezed,
    Object? tanggunganCode = freezed,
    Object? tanggunganValue = freezed,
    Object? tanggunganIsActive = freezed,
    Object? tanggunganCreatorId = freezed,
    Object? tanggunganLastEditorId = freezed,
    Object? tanggunganCreatedAt = freezed,
    Object? tanggunganUpdatedAt = freezed,
    Object? tanggunganValue2 = freezed,
    Object? tanggunganValue3 = freezed,
    Object? statusKaryId = freezed,
    Object? statusKaryMCompId = freezed,
    Object? statusKaryMDirId = freezed,
    Object? statusKaryGroup = freezed,
    Object? statusKaryKey = freezed,
    Object? statusKaryCode = freezed,
    Object? statusKaryValue = freezed,
    Object? statusKaryIsActive = freezed,
    Object? statusKaryCreatorId = freezed,
    Object? statusKaryLastEditorId = freezed,
    Object? statusKaryCreatedAt = freezed,
    Object? statusKaryUpdatedAt = freezed,
    Object? statusKaryValue2 = freezed,
    Object? statusKaryValue3 = freezed,
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
    Object? mStandartGajiId = freezed,
    Object? mStandartGajiMCompId = freezed,
    Object? mStandartGajiMDirId = freezed,
    Object? mStandartGajiKode = freezed,
    Object? mStandartGajiMDivisiId = freezed,
    Object? mStandartGajiMDeptId = freezed,
    Object? mStandartGajiMZonaId = freezed,
    Object? mStandartGajiMPosisiId = freezed,
    Object? mStandartGajiGradingId = freezed,
    Object? mStandartGajiGajiPokok = freezed,
    Object? mStandartGajiGajiPokokPeriode = freezed,
    Object? mStandartGajiUangSaku = freezed,
    Object? mStandartGajiUangSakuPeriode = freezed,
    Object? mStandartGajiTunjanganPosisi = freezed,
    Object? mStandartGajiTunjanganPosisiPeriode = freezed,
    Object? mStandartGajiTunjanganKemahalanId = freezed,
    Object? mStandartGajiTunjanganKemahalanPeriode = freezed,
    Object? mStandartGajiUangMakan = freezed,
    Object? mStandartGajiUangMakanPeriode = freezed,
    Object? mStandartGajiTunjanganTetap = freezed,
    Object? mStandartGajiTunjanganTetapPeriode = freezed,
    Object? mStandartGajiDesc = freezed,
    Object? mStandartGajiIsActive = freezed,
    Object? mStandartGajiCreatorId = freezed,
    Object? mStandartGajiLastEditorId = freezed,
    Object? mStandartGajiCreatedAt = freezed,
    Object? mStandartGajiUpdatedAt = freezed,
    Object? periodeGajiId = freezed,
    Object? periodeGajiMCompId = freezed,
    Object? periodeGajiMDirId = freezed,
    Object? periodeGajiGroup = freezed,
    Object? periodeGajiKey = freezed,
    Object? periodeGajiCode = freezed,
    Object? periodeGajiValue = freezed,
    Object? periodeGajiIsActive = freezed,
    Object? periodeGajiCreatorId = freezed,
    Object? periodeGajiLastEditorId = freezed,
    Object? periodeGajiCreatedAt = freezed,
    Object? periodeGajiUpdatedAt = freezed,
    Object? periodeGajiValue2 = freezed,
    Object? periodeGajiValue3 = freezed,
    Object? refId = freezed,
    Object? refNomor = freezed,
    Object? refMCompId = freezed,
    Object? refMDirId = freezed,
    Object? refNamaPelamar = freezed,
    Object? refKtpNo = freezed,
    Object? refTanggal = freezed,
    Object? refRef = freezed,
    Object? refTelp = freezed,
    Object? refJkId = freezed,
    Object? refTglLahir = freezed,
    Object? refSalary = freezed,
    Object? refDeskripsi = freezed,
    Object? refStatus = freezed,
    Object? refCreatorId = freezed,
    Object? refLastEditorId = freezed,
    Object? refCreatedAt = freezed,
    Object? refUpdatedAt = freezed,
    Object? refMDivisiId = freezed,
    Object? refMDeptId = freezed,
    Object? refMPosisiId = freezed,
    Object? refTempatLahir = freezed,
    Object? refTLokerId = freezed,
    Object? presensiLokasiDefaultId = freezed,
    Object? presensiLokasiDefaultCompId = freezed,
    Object? presensiLokasiDefaultDefaultUserId = freezed,
    Object? presensiLokasiDefaultNama = freezed,
    Object? presensiLokasiDefaultLat = freezed,
    Object? presensiLokasiDefaultLong = freezed,
    Object? presensiLokasiDefaultIsActive = freezed,
    Object? presensiLokasiDefaultCreatorId = freezed,
    Object? presensiLokasiDefaultLastEditorId = freezed,
    Object? presensiLokasiDefaultCreatedAt = freezed,
    Object? presensiLokasiDefaultUpdatedAt = freezed,
    Object? atasanId = freezed,
    Object? atasanMCompId = freezed,
    Object? atasanMDirId = freezed,
    Object? atasanMDivisiId = freezed,
    Object? atasanMDeptId = freezed,
    Object? atasanMZonaId = freezed,
    Object? atasanGradingId = freezed,
    Object? atasanCostcontreId = freezed,
    Object? atasanKode = freezed,
    Object? atasanMPosisiId = freezed,
    Object? atasanMJamKerjaId = freezed,
    Object? atasanKodePresensi = freezed,
    Object? atasanNik = freezed,
    Object? atasanNamaDepan = freezed,
    Object? atasanNamaBelakang = freezed,
    Object? atasanNamaLengkap = freezed,
    Object? atasanNamaPanggilan = freezed,
    Object? atasanJkId = freezed,
    Object? atasanTempatLahir = freezed,
    Object? atasanTglLahir = freezed,
    Object? atasanProvinsiId = freezed,
    Object? atasanKotaId = freezed,
    Object? atasanKecamatanId = freezed,
    Object? atasanKodePos = freezed,
    Object? atasanAlamatAsli = freezed,
    Object? atasanAlamatDomisili = freezed,
    Object? atasanNoTlp = freezed,
    Object? atasanNoTlpLainnya = freezed,
    Object? atasanNoDarurat = freezed,
    Object? atasanNamaKontakDarurat = freezed,
    Object? atasanAgamaId = freezed,
    Object? atasanGolDarahId = freezed,
    Object? atasanStatusNikahId = freezed,
    Object? atasanTanggunganId = freezed,
    Object? atasanHubDgnKaryawan = freezed,
    Object? atasanCutiJatahReguler = freezed,
    Object? atasanCutiSisaReguler = freezed,
    Object? atasanCutiPanjang = freezed,
    Object? atasanCutiSisaPanjang = freezed,
    Object? atasanStatusKaryId = freezed,
    Object? atasanLamaKontrakAwal = freezed,
    Object? atasanLamaKontrakAkhir = freezed,
    Object? atasanTglMasuk = freezed,
    Object? atasanTglBerhenti = freezed,
    Object? atasanAlasanBerhenti = freezed,
    Object? atasanUkBaju = freezed,
    Object? atasanUkCelana = freezed,
    Object? atasanUkSepatu = freezed,
    Object? atasanDesc = freezed,
    Object? atasanIsActive = freezed,
    Object? atasanCreatorId = freezed,
    Object? atasanLastEditorId = freezed,
    Object? atasanCreatedAt = freezed,
    Object? atasanUpdatedAt = freezed,
    Object? atasanMStandartGajiId = freezed,
    Object? atasanPeriodeGajiId = freezed,
    Object? atasanRefId = freezed,
    Object? atasanPresensiLokasiDefaultId = freezed,
    Object? atasanExpDateCuti = freezed,
    Object? atasanLimitPotong = freezed,
    Object? atasanAtasanId = freezed,
    Object? atasanCutiP24 = freezed,
    Object? atasanCutiSisaP24 = freezed,
    Object? atasanTipeJamKerjaId = freezed,
    Object? atasanTJadwalKerjaId = freezed,
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
    Object? tJadwalKerjaId = freezed,
    Object? tJadwalKerjaNomor = freezed,
    Object? tJadwalKerjaMCompId = freezed,
    Object? tJadwalKerjaMDirId = freezed,
    Object? tJadwalKerjaMDivisiId = freezed,
    Object? tJadwalKerjaMDeptId = freezed,
    Object? tJadwalKerjaTipeJamKerjaId = freezed,
    Object? tJadwalKerjaKeterangan = freezed,
    Object? tJadwalKerjaStatus = freezed,
    Object? tJadwalKerjaCreatorId = freezed,
    Object? tJadwalKerjaLastEditorId = freezed,
    Object? tJadwalKerjaCreatedAt = freezed,
    Object? tJadwalKerjaUpdatedAt = freezed,
    Object? nomorKtp = freezed,
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
      DataAllKaryawanMCompId: freezed == DataAllKaryawanMCompId
          ? _value.DataAllKaryawanMCompId
          : DataAllKaryawanMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanMDirId: freezed == DataAllKaryawanMDirId
          ? _value.DataAllKaryawanMDirId
          : DataAllKaryawanMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanMDivisiId: freezed == DataAllKaryawanMDivisiId
          ? _value.DataAllKaryawanMDivisiId
          : DataAllKaryawanMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanMDeptId: freezed == DataAllKaryawanMDeptId
          ? _value.DataAllKaryawanMDeptId
          : DataAllKaryawanMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanMZonaId: freezed == DataAllKaryawanMZonaId
          ? _value.DataAllKaryawanMZonaId
          : DataAllKaryawanMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanGradingId: freezed == DataAllKaryawanGradingId
          ? _value.DataAllKaryawanGradingId
          : DataAllKaryawanGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanCostcontreId: freezed == DataAllKaryawanCostcontreId
          ? _value.DataAllKaryawanCostcontreId
          : DataAllKaryawanCostcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanMPosisiId: freezed == DataAllKaryawanMPosisiId
          ? _value.DataAllKaryawanMPosisiId
          : DataAllKaryawanMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanMJamKerjaId: freezed == DataAllKaryawanMJamKerjaId
          ? _value.DataAllKaryawanMJamKerjaId
          : DataAllKaryawanMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kodePresensi: freezed == kodePresensi
          ? _value.kodePresensi
          : kodePresensi // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      namaDepan: freezed == namaDepan
          ? _value.namaDepan
          : namaDepan // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBelakang: freezed == namaBelakang
          ? _value.namaBelakang
          : namaBelakang // ignore: cast_nullable_to_non_nullable
              as String?,
      namaLengkap: freezed == namaLengkap
          ? _value.namaLengkap
          : namaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      namaPanggilan: freezed == namaPanggilan
          ? _value.namaPanggilan
          : namaPanggilan // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanJkId: freezed == DataAllKaryawanJkId
          ? _value.DataAllKaryawanJkId
          : DataAllKaryawanJkId // ignore: cast_nullable_to_non_nullable
              as int?,
      tempatLahir: freezed == tempatLahir
          ? _value.tempatLahir
          : tempatLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      tglLahir: freezed == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanProvinsiId: freezed == DataAllKaryawanProvinsiId
          ? _value.DataAllKaryawanProvinsiId
          : DataAllKaryawanProvinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanKotaId: freezed == DataAllKaryawanKotaId
          ? _value.DataAllKaryawanKotaId
          : DataAllKaryawanKotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanKecamatanId: freezed == DataAllKaryawanKecamatanId
          ? _value.DataAllKaryawanKecamatanId
          : DataAllKaryawanKecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
      kodePos: freezed == kodePos
          ? _value.kodePos
          : kodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      alamatAsli: freezed == alamatAsli
          ? _value.alamatAsli
          : alamatAsli // ignore: cast_nullable_to_non_nullable
              as String?,
      alamatDomisili: freezed == alamatDomisili
          ? _value.alamatDomisili
          : alamatDomisili // ignore: cast_nullable_to_non_nullable
              as String?,
      noTlp: freezed == noTlp
          ? _value.noTlp
          : noTlp // ignore: cast_nullable_to_non_nullable
              as String?,
      noTlpLainnya: freezed == noTlpLainnya
          ? _value.noTlpLainnya
          : noTlpLainnya // ignore: cast_nullable_to_non_nullable
              as String?,
      noDarurat: freezed == noDarurat
          ? _value.noDarurat
          : noDarurat // ignore: cast_nullable_to_non_nullable
              as String?,
      namaKontakDarurat: freezed == namaKontakDarurat
          ? _value.namaKontakDarurat
          : namaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanAgamaId: freezed == DataAllKaryawanAgamaId
          ? _value.DataAllKaryawanAgamaId
          : DataAllKaryawanAgamaId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanGolDarahId: freezed == DataAllKaryawanGolDarahId
          ? _value.DataAllKaryawanGolDarahId
          : DataAllKaryawanGolDarahId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanStatusNikahId: freezed == DataAllKaryawanStatusNikahId
          ? _value.DataAllKaryawanStatusNikahId
          : DataAllKaryawanStatusNikahId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanTanggunganId: freezed == DataAllKaryawanTanggunganId
          ? _value.DataAllKaryawanTanggunganId
          : DataAllKaryawanTanggunganId // ignore: cast_nullable_to_non_nullable
              as int?,
      hubDgnKaryawan: freezed == hubDgnKaryawan
          ? _value.hubDgnKaryawan
          : hubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as String?,
      cutiJatahReguler: freezed == cutiJatahReguler
          ? _value.cutiJatahReguler
          : cutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cutiSisaReguler: freezed == cutiSisaReguler
          ? _value.cutiSisaReguler
          : cutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cutiPanjang: freezed == cutiPanjang
          ? _value.cutiPanjang
          : cutiPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cutiSisaPanjang: freezed == cutiSisaPanjang
          ? _value.cutiSisaPanjang
          : cutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanStatusKaryId: freezed == DataAllKaryawanStatusKaryId
          ? _value.DataAllKaryawanStatusKaryId
          : DataAllKaryawanStatusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lamaKontrakAwal: freezed == lamaKontrakAwal
          ? _value.lamaKontrakAwal
          : lamaKontrakAwal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lamaKontrakAkhir: freezed == lamaKontrakAkhir
          ? _value.lamaKontrakAkhir
          : lamaKontrakAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tglMasuk: freezed == tglMasuk
          ? _value.tglMasuk
          : tglMasuk // ignore: cast_nullable_to_non_nullable
              as String?,
      tglBerhenti: freezed == tglBerhenti
          ? _value.tglBerhenti
          : tglBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanBerhenti: freezed == alasanBerhenti
          ? _value.alasanBerhenti
          : alasanBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ukBaju: freezed == ukBaju
          ? _value.ukBaju
          : ukBaju // ignore: cast_nullable_to_non_nullable
              as String?,
      ukCelana: freezed == ukCelana
          ? _value.ukCelana
          : ukCelana // ignore: cast_nullable_to_non_nullable
              as String?,
      ukSepatu: freezed == ukSepatu
          ? _value.ukSepatu
          : ukSepatu // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      DataAllKaryawanCreatorId: freezed == DataAllKaryawanCreatorId
          ? _value.DataAllKaryawanCreatorId
          : DataAllKaryawanCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanLastEditorId: freezed == DataAllKaryawanLastEditorId
          ? _value.DataAllKaryawanLastEditorId
          : DataAllKaryawanLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanMStandartGajiId: freezed == DataAllKaryawanMStandartGajiId
          ? _value.DataAllKaryawanMStandartGajiId
          : DataAllKaryawanMStandartGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanPeriodeGajiId: freezed == DataAllKaryawanPeriodeGajiId
          ? _value.DataAllKaryawanPeriodeGajiId
          : DataAllKaryawanPeriodeGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanRefId: freezed == DataAllKaryawanRefId
          ? _value.DataAllKaryawanRefId
          : DataAllKaryawanRefId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanPresensiLokasiDefaultId: freezed ==
              DataAllKaryawanPresensiLokasiDefaultId
          ? _value.DataAllKaryawanPresensiLokasiDefaultId
          : DataAllKaryawanPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as int?,
      expDateCuti: freezed == expDateCuti
          ? _value.expDateCuti
          : expDateCuti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      limitPotong: freezed == limitPotong
          ? _value.limitPotong
          : limitPotong // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanAtasanId: freezed == DataAllKaryawanAtasanId
          ? _value.DataAllKaryawanAtasanId
          : DataAllKaryawanAtasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiP24: freezed == cutiP24
          ? _value.cutiP24
          : cutiP24 // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiSisaP24: freezed == cutiSisaP24
          ? _value.cutiSisaP24
          : cutiSisaP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanTipeJamKerjaId: freezed == DataAllKaryawanTipeJamKerjaId
          ? _value.DataAllKaryawanTipeJamKerjaId
          : DataAllKaryawanTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanTJadwalKerjaId: freezed == DataAllKaryawanTJadwalKerjaId
          ? _value.DataAllKaryawanTJadwalKerjaId
          : DataAllKaryawanTJadwalKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompNama: freezed == mCompNama
          ? _value.mCompNama
          : mCompNama // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompIsActive: freezed == mCompIsActive
          ? _value.mCompIsActive
          : mCompIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
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
              as int?,
      mDivisiLastEditorId: freezed == mDivisiLastEditorId
          ? _value.mDivisiLastEditorId
          : mDivisiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as String?,
      mDeptUpdatedAt: freezed == mDeptUpdatedAt
          ? _value.mDeptUpdatedAt
          : mDeptUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaId: freezed == mZonaId
          ? _value.mZonaId
          : mZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaMCompId: freezed == mZonaMCompId
          ? _value.mZonaMCompId
          : mZonaMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaMDirId: freezed == mZonaMDirId
          ? _value.mZonaMDirId
          : mZonaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaKode: freezed == mZonaKode
          ? _value.mZonaKode
          : mZonaKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaNama: freezed == mZonaNama
          ? _value.mZonaNama
          : mZonaNama // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaDesc: freezed == mZonaDesc
          ? _value.mZonaDesc
          : mZonaDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaIsActive: freezed == mZonaIsActive
          ? _value.mZonaIsActive
          : mZonaIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      mZonaUpdatedAt: freezed == mZonaUpdatedAt
          ? _value.mZonaUpdatedAt
          : mZonaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingId: freezed == gradingId
          ? _value.gradingId
          : gradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingMCompId: freezed == gradingMCompId
          ? _value.gradingMCompId
          : gradingMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingMDirId: freezed == gradingMDirId
          ? _value.gradingMDirId
          : gradingMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingGroup: freezed == gradingGroup
          ? _value.gradingGroup
          : gradingGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingKey: freezed == gradingKey
          ? _value.gradingKey
          : gradingKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingCode: freezed == gradingCode
          ? _value.gradingCode
          : gradingCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingValue: freezed == gradingValue
          ? _value.gradingValue
          : gradingValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingIsActive: freezed == gradingIsActive
          ? _value.gradingIsActive
          : gradingIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      gradingUpdatedAt: freezed == gradingUpdatedAt
          ? _value.gradingUpdatedAt
          : gradingUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingValue2: freezed == gradingValue2
          ? _value.gradingValue2
          : gradingValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingValue3: freezed == gradingValue3
          ? _value.gradingValue3
          : gradingValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreId: freezed == costcontreId
          ? _value.costcontreId
          : costcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreMCompId: freezed == costcontreMCompId
          ? _value.costcontreMCompId
          : costcontreMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreMDirId: freezed == costcontreMDirId
          ? _value.costcontreMDirId
          : costcontreMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreGroup: freezed == costcontreGroup
          ? _value.costcontreGroup
          : costcontreGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreKey: freezed == costcontreKey
          ? _value.costcontreKey
          : costcontreKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreCode: freezed == costcontreCode
          ? _value.costcontreCode
          : costcontreCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreValue: freezed == costcontreValue
          ? _value.costcontreValue
          : costcontreValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreIsActive: freezed == costcontreIsActive
          ? _value.costcontreIsActive
          : costcontreIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreCreatorId: freezed == costcontreCreatorId
          ? _value.costcontreCreatorId
          : costcontreCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreLastEditorId: freezed == costcontreLastEditorId
          ? _value.costcontreLastEditorId
          : costcontreLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreCreatedAt: freezed == costcontreCreatedAt
          ? _value.costcontreCreatedAt
          : costcontreCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreUpdatedAt: freezed == costcontreUpdatedAt
          ? _value.costcontreUpdatedAt
          : costcontreUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreValue2: freezed == costcontreValue2
          ? _value.costcontreValue2
          : costcontreValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreValue3: freezed == costcontreValue3
          ? _value.costcontreValue3
          : costcontreValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiId: freezed == mPosisiId
          ? _value.mPosisiId
          : mPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiMCompId: freezed == mPosisiMCompId
          ? _value.mPosisiMCompId
          : mPosisiMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiMDirId: freezed == mPosisiMDirId
          ? _value.mPosisiMDirId
          : mPosisiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
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
              as dynamic,
      mPosisiPotonganBpjs: freezed == mPosisiPotonganBpjs
          ? _value.mPosisiPotonganBpjs
          : mPosisiPotonganBpjs // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      mJamKerjaId: freezed == mJamKerjaId
          ? _value.mJamKerjaId
          : mJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaMCompId: freezed == mJamKerjaMCompId
          ? _value.mJamKerjaMCompId
          : mJamKerjaMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaMDirId: freezed == mJamKerjaMDirId
          ? _value.mJamKerjaMDirId
          : mJamKerjaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaKode: freezed == mJamKerjaKode
          ? _value.mJamKerjaKode
          : mJamKerjaKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaTipeJamKerjaId: freezed == mJamKerjaTipeJamKerjaId
          ? _value.mJamKerjaTipeJamKerjaId
          : mJamKerjaTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaWaktuMulai: freezed == mJamKerjaWaktuMulai
          ? _value.mJamKerjaWaktuMulai
          : mJamKerjaWaktuMulai // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaWaktuAkhir: freezed == mJamKerjaWaktuAkhir
          ? _value.mJamKerjaWaktuAkhir
          : mJamKerjaWaktuAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaIsHariBerikutnya: freezed == mJamKerjaIsHariBerikutnya
          ? _value.mJamKerjaIsHariBerikutnya
          : mJamKerjaIsHariBerikutnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaDesc: freezed == mJamKerjaDesc
          ? _value.mJamKerjaDesc
          : mJamKerjaDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaIsActive: freezed == mJamKerjaIsActive
          ? _value.mJamKerjaIsActive
          : mJamKerjaIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaCreatorId: freezed == mJamKerjaCreatorId
          ? _value.mJamKerjaCreatorId
          : mJamKerjaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaLastEditorId: freezed == mJamKerjaLastEditorId
          ? _value.mJamKerjaLastEditorId
          : mJamKerjaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaCreatedAt: freezed == mJamKerjaCreatedAt
          ? _value.mJamKerjaCreatedAt
          : mJamKerjaCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaUpdatedAt: freezed == mJamKerjaUpdatedAt
          ? _value.mJamKerjaUpdatedAt
          : mJamKerjaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkId: freezed == jkId
          ? _value.jkId
          : jkId // ignore: cast_nullable_to_non_nullable
              as int?,
      jkMCompId: freezed == jkMCompId
          ? _value.jkMCompId
          : jkMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      jkMDirId: freezed == jkMDirId
          ? _value.jkMDirId
          : jkMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkGroup: freezed == jkGroup
          ? _value.jkGroup
          : jkGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      jkKey: freezed == jkKey
          ? _value.jkKey
          : jkKey // ignore: cast_nullable_to_non_nullable
              as String?,
      jkCode: freezed == jkCode
          ? _value.jkCode
          : jkCode // ignore: cast_nullable_to_non_nullable
              as String?,
      jkValue: freezed == jkValue
          ? _value.jkValue
          : jkValue // ignore: cast_nullable_to_non_nullable
              as String?,
      jkIsActive: freezed == jkIsActive
          ? _value.jkIsActive
          : jkIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      jkCreatorId: freezed == jkCreatorId
          ? _value.jkCreatorId
          : jkCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkLastEditorId: freezed == jkLastEditorId
          ? _value.jkLastEditorId
          : jkLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkCreatedAt: freezed == jkCreatedAt
          ? _value.jkCreatedAt
          : jkCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      jkUpdatedAt: freezed == jkUpdatedAt
          ? _value.jkUpdatedAt
          : jkUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      jkValue2: freezed == jkValue2
          ? _value.jkValue2
          : jkValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkValue3: freezed == jkValue3
          ? _value.jkValue3
          : jkValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiId: freezed == provinsiId
          ? _value.provinsiId
          : provinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      provinsiMCompId: freezed == provinsiMCompId
          ? _value.provinsiMCompId
          : provinsiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      provinsiMDirId: freezed == provinsiMDirId
          ? _value.provinsiMDirId
          : provinsiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiGroup: freezed == provinsiGroup
          ? _value.provinsiGroup
          : provinsiGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsiKey: freezed == provinsiKey
          ? _value.provinsiKey
          : provinsiKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiCode: freezed == provinsiCode
          ? _value.provinsiCode
          : provinsiCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiValue: freezed == provinsiValue
          ? _value.provinsiValue
          : provinsiValue // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsiIsActive: freezed == provinsiIsActive
          ? _value.provinsiIsActive
          : provinsiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      provinsiCreatorId: freezed == provinsiCreatorId
          ? _value.provinsiCreatorId
          : provinsiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiLastEditorId: freezed == provinsiLastEditorId
          ? _value.provinsiLastEditorId
          : provinsiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiCreatedAt: freezed == provinsiCreatedAt
          ? _value.provinsiCreatedAt
          : provinsiCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiUpdatedAt: freezed == provinsiUpdatedAt
          ? _value.provinsiUpdatedAt
          : provinsiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsiValue2: freezed == provinsiValue2
          ? _value.provinsiValue2
          : provinsiValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiValue3: freezed == provinsiValue3
          ? _value.provinsiValue3
          : provinsiValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaMCompId: freezed == kotaMCompId
          ? _value.kotaMCompId
          : kotaMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaMDirId: freezed == kotaMDirId
          ? _value.kotaMDirId
          : kotaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaGroup: freezed == kotaGroup
          ? _value.kotaGroup
          : kotaGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaKey: freezed == kotaKey
          ? _value.kotaKey
          : kotaKey // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaCode: freezed == kotaCode
          ? _value.kotaCode
          : kotaCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaValue: freezed == kotaValue
          ? _value.kotaValue
          : kotaValue // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIsActive: freezed == kotaIsActive
          ? _value.kotaIsActive
          : kotaIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      kotaCreatorId: freezed == kotaCreatorId
          ? _value.kotaCreatorId
          : kotaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaLastEditorId: freezed == kotaLastEditorId
          ? _value.kotaLastEditorId
          : kotaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaCreatedAt: freezed == kotaCreatedAt
          ? _value.kotaCreatedAt
          : kotaCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaUpdatedAt: freezed == kotaUpdatedAt
          ? _value.kotaUpdatedAt
          : kotaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaValue2: freezed == kotaValue2
          ? _value.kotaValue2
          : kotaValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaValue3: freezed == kotaValue3
          ? _value.kotaValue3
          : kotaValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanId: freezed == kecamatanId
          ? _value.kecamatanId
          : kecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
      kecamatanMCompId: freezed == kecamatanMCompId
          ? _value.kecamatanMCompId
          : kecamatanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      kecamatanMDirId: freezed == kecamatanMDirId
          ? _value.kecamatanMDirId
          : kecamatanMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanGroup: freezed == kecamatanGroup
          ? _value.kecamatanGroup
          : kecamatanGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatanKey: freezed == kecamatanKey
          ? _value.kecamatanKey
          : kecamatanKey // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatanCode: freezed == kecamatanCode
          ? _value.kecamatanCode
          : kecamatanCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanValue: freezed == kecamatanValue
          ? _value.kecamatanValue
          : kecamatanValue // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatanIsActive: freezed == kecamatanIsActive
          ? _value.kecamatanIsActive
          : kecamatanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      kecamatanCreatorId: freezed == kecamatanCreatorId
          ? _value.kecamatanCreatorId
          : kecamatanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanLastEditorId: freezed == kecamatanLastEditorId
          ? _value.kecamatanLastEditorId
          : kecamatanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanCreatedAt: freezed == kecamatanCreatedAt
          ? _value.kecamatanCreatedAt
          : kecamatanCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanUpdatedAt: freezed == kecamatanUpdatedAt
          ? _value.kecamatanUpdatedAt
          : kecamatanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanValue2: freezed == kecamatanValue2
          ? _value.kecamatanValue2
          : kecamatanValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanValue3: freezed == kecamatanValue3
          ? _value.kecamatanValue3
          : kecamatanValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaId: freezed == agamaId
          ? _value.agamaId
          : agamaId // ignore: cast_nullable_to_non_nullable
              as int?,
      agamaMCompId: freezed == agamaMCompId
          ? _value.agamaMCompId
          : agamaMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      agamaMDirId: freezed == agamaMDirId
          ? _value.agamaMDirId
          : agamaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaGroup: freezed == agamaGroup
          ? _value.agamaGroup
          : agamaGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaKey: freezed == agamaKey
          ? _value.agamaKey
          : agamaKey // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaCode: freezed == agamaCode
          ? _value.agamaCode
          : agamaCode // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaValue: freezed == agamaValue
          ? _value.agamaValue
          : agamaValue // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaIsActive: freezed == agamaIsActive
          ? _value.agamaIsActive
          : agamaIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      agamaCreatorId: freezed == agamaCreatorId
          ? _value.agamaCreatorId
          : agamaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaLastEditorId: freezed == agamaLastEditorId
          ? _value.agamaLastEditorId
          : agamaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaCreatedAt: freezed == agamaCreatedAt
          ? _value.agamaCreatedAt
          : agamaCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaUpdatedAt: freezed == agamaUpdatedAt
          ? _value.agamaUpdatedAt
          : agamaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaValue2: freezed == agamaValue2
          ? _value.agamaValue2
          : agamaValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaValue3: freezed == agamaValue3
          ? _value.agamaValue3
          : agamaValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahId: freezed == golDarahId
          ? _value.golDarahId
          : golDarahId // ignore: cast_nullable_to_non_nullable
              as int?,
      golDarahMCompId: freezed == golDarahMCompId
          ? _value.golDarahMCompId
          : golDarahMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      golDarahMDirId: freezed == golDarahMDirId
          ? _value.golDarahMDirId
          : golDarahMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahGroup: freezed == golDarahGroup
          ? _value.golDarahGroup
          : golDarahGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahKey: freezed == golDarahKey
          ? _value.golDarahKey
          : golDarahKey // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahCode: freezed == golDarahCode
          ? _value.golDarahCode
          : golDarahCode // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahValue: freezed == golDarahValue
          ? _value.golDarahValue
          : golDarahValue // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahIsActive: freezed == golDarahIsActive
          ? _value.golDarahIsActive
          : golDarahIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      golDarahCreatorId: freezed == golDarahCreatorId
          ? _value.golDarahCreatorId
          : golDarahCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahLastEditorId: freezed == golDarahLastEditorId
          ? _value.golDarahLastEditorId
          : golDarahLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahCreatedAt: freezed == golDarahCreatedAt
          ? _value.golDarahCreatedAt
          : golDarahCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahUpdatedAt: freezed == golDarahUpdatedAt
          ? _value.golDarahUpdatedAt
          : golDarahUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahValue2: freezed == golDarahValue2
          ? _value.golDarahValue2
          : golDarahValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahValue3: freezed == golDarahValue3
          ? _value.golDarahValue3
          : golDarahValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahId: freezed == statusNikahId
          ? _value.statusNikahId
          : statusNikahId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusNikahMCompId: freezed == statusNikahMCompId
          ? _value.statusNikahMCompId
          : statusNikahMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusNikahMDirId: freezed == statusNikahMDirId
          ? _value.statusNikahMDirId
          : statusNikahMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahGroup: freezed == statusNikahGroup
          ? _value.statusNikahGroup
          : statusNikahGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahKey: freezed == statusNikahKey
          ? _value.statusNikahKey
          : statusNikahKey // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahCode: freezed == statusNikahCode
          ? _value.statusNikahCode
          : statusNikahCode // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahValue: freezed == statusNikahValue
          ? _value.statusNikahValue
          : statusNikahValue // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahIsActive: freezed == statusNikahIsActive
          ? _value.statusNikahIsActive
          : statusNikahIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusNikahCreatorId: freezed == statusNikahCreatorId
          ? _value.statusNikahCreatorId
          : statusNikahCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahLastEditorId: freezed == statusNikahLastEditorId
          ? _value.statusNikahLastEditorId
          : statusNikahLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahCreatedAt: freezed == statusNikahCreatedAt
          ? _value.statusNikahCreatedAt
          : statusNikahCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahUpdatedAt: freezed == statusNikahUpdatedAt
          ? _value.statusNikahUpdatedAt
          : statusNikahUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahValue2: freezed == statusNikahValue2
          ? _value.statusNikahValue2
          : statusNikahValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahValue3: freezed == statusNikahValue3
          ? _value.statusNikahValue3
          : statusNikahValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tanggunganId: freezed == tanggunganId
          ? _value.tanggunganId
          : tanggunganId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggunganMCompId: freezed == tanggunganMCompId
          ? _value.tanggunganMCompId
          : tanggunganMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggunganMDirId: freezed == tanggunganMDirId
          ? _value.tanggunganMDirId
          : tanggunganMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggunganGroup: freezed == tanggunganGroup
          ? _value.tanggunganGroup
          : tanggunganGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganKey: freezed == tanggunganKey
          ? _value.tanggunganKey
          : tanggunganKey // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganCode: freezed == tanggunganCode
          ? _value.tanggunganCode
          : tanggunganCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganValue: freezed == tanggunganValue
          ? _value.tanggunganValue
          : tanggunganValue // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganIsActive: freezed == tanggunganIsActive
          ? _value.tanggunganIsActive
          : tanggunganIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tanggunganCreatorId: freezed == tanggunganCreatorId
          ? _value.tanggunganCreatorId
          : tanggunganCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tanggunganLastEditorId: freezed == tanggunganLastEditorId
          ? _value.tanggunganLastEditorId
          : tanggunganLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tanggunganCreatedAt: freezed == tanggunganCreatedAt
          ? _value.tanggunganCreatedAt
          : tanggunganCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganUpdatedAt: freezed == tanggunganUpdatedAt
          ? _value.tanggunganUpdatedAt
          : tanggunganUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganValue2: freezed == tanggunganValue2
          ? _value.tanggunganValue2
          : tanggunganValue2 // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganValue3: freezed == tanggunganValue3
          ? _value.tanggunganValue3
          : tanggunganValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryId: freezed == statusKaryId
          ? _value.statusKaryId
          : statusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryMCompId: freezed == statusKaryMCompId
          ? _value.statusKaryMCompId
          : statusKaryMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryMDirId: freezed == statusKaryMDirId
          ? _value.statusKaryMDirId
          : statusKaryMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryGroup: freezed == statusKaryGroup
          ? _value.statusKaryGroup
          : statusKaryGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryKey: freezed == statusKaryKey
          ? _value.statusKaryKey
          : statusKaryKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryCode: freezed == statusKaryCode
          ? _value.statusKaryCode
          : statusKaryCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryValue: freezed == statusKaryValue
          ? _value.statusKaryValue
          : statusKaryValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryIsActive: freezed == statusKaryIsActive
          ? _value.statusKaryIsActive
          : statusKaryIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryCreatorId: freezed == statusKaryCreatorId
          ? _value.statusKaryCreatorId
          : statusKaryCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryLastEditorId: freezed == statusKaryLastEditorId
          ? _value.statusKaryLastEditorId
          : statusKaryLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryCreatedAt: freezed == statusKaryCreatedAt
          ? _value.statusKaryCreatedAt
          : statusKaryCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryUpdatedAt: freezed == statusKaryUpdatedAt
          ? _value.statusKaryUpdatedAt
          : statusKaryUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryValue2: freezed == statusKaryValue2
          ? _value.statusKaryValue2
          : statusKaryValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryValue3: freezed == statusKaryValue3
          ? _value.statusKaryValue3
          : statusKaryValue3 // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
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
      mStandartGajiId: freezed == mStandartGajiId
          ? _value.mStandartGajiId
          : mStandartGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMCompId: freezed == mStandartGajiMCompId
          ? _value.mStandartGajiMCompId
          : mStandartGajiMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMDirId: freezed == mStandartGajiMDirId
          ? _value.mStandartGajiMDirId
          : mStandartGajiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiKode: freezed == mStandartGajiKode
          ? _value.mStandartGajiKode
          : mStandartGajiKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMDivisiId: freezed == mStandartGajiMDivisiId
          ? _value.mStandartGajiMDivisiId
          : mStandartGajiMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMDeptId: freezed == mStandartGajiMDeptId
          ? _value.mStandartGajiMDeptId
          : mStandartGajiMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMZonaId: freezed == mStandartGajiMZonaId
          ? _value.mStandartGajiMZonaId
          : mStandartGajiMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMPosisiId: freezed == mStandartGajiMPosisiId
          ? _value.mStandartGajiMPosisiId
          : mStandartGajiMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiGradingId: freezed == mStandartGajiGradingId
          ? _value.mStandartGajiGradingId
          : mStandartGajiGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiGajiPokok: freezed == mStandartGajiGajiPokok
          ? _value.mStandartGajiGajiPokok
          : mStandartGajiGajiPokok // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiGajiPokokPeriode: freezed == mStandartGajiGajiPokokPeriode
          ? _value.mStandartGajiGajiPokokPeriode
          : mStandartGajiGajiPokokPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUangSaku: freezed == mStandartGajiUangSaku
          ? _value.mStandartGajiUangSaku
          : mStandartGajiUangSaku // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUangSakuPeriode: freezed == mStandartGajiUangSakuPeriode
          ? _value.mStandartGajiUangSakuPeriode
          : mStandartGajiUangSakuPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganPosisi: freezed == mStandartGajiTunjanganPosisi
          ? _value.mStandartGajiTunjanganPosisi
          : mStandartGajiTunjanganPosisi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganPosisiPeriode: freezed ==
              mStandartGajiTunjanganPosisiPeriode
          ? _value.mStandartGajiTunjanganPosisiPeriode
          : mStandartGajiTunjanganPosisiPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganKemahalanId: freezed ==
              mStandartGajiTunjanganKemahalanId
          ? _value.mStandartGajiTunjanganKemahalanId
          : mStandartGajiTunjanganKemahalanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganKemahalanPeriode: freezed ==
              mStandartGajiTunjanganKemahalanPeriode
          ? _value.mStandartGajiTunjanganKemahalanPeriode
          : mStandartGajiTunjanganKemahalanPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUangMakan: freezed == mStandartGajiUangMakan
          ? _value.mStandartGajiUangMakan
          : mStandartGajiUangMakan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUangMakanPeriode: freezed == mStandartGajiUangMakanPeriode
          ? _value.mStandartGajiUangMakanPeriode
          : mStandartGajiUangMakanPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganTetap: freezed == mStandartGajiTunjanganTetap
          ? _value.mStandartGajiTunjanganTetap
          : mStandartGajiTunjanganTetap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganTetapPeriode: freezed ==
              mStandartGajiTunjanganTetapPeriode
          ? _value.mStandartGajiTunjanganTetapPeriode
          : mStandartGajiTunjanganTetapPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiDesc: freezed == mStandartGajiDesc
          ? _value.mStandartGajiDesc
          : mStandartGajiDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiIsActive: freezed == mStandartGajiIsActive
          ? _value.mStandartGajiIsActive
          : mStandartGajiIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiCreatorId: freezed == mStandartGajiCreatorId
          ? _value.mStandartGajiCreatorId
          : mStandartGajiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiLastEditorId: freezed == mStandartGajiLastEditorId
          ? _value.mStandartGajiLastEditorId
          : mStandartGajiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiCreatedAt: freezed == mStandartGajiCreatedAt
          ? _value.mStandartGajiCreatedAt
          : mStandartGajiCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUpdatedAt: freezed == mStandartGajiUpdatedAt
          ? _value.mStandartGajiUpdatedAt
          : mStandartGajiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiId: freezed == periodeGajiId
          ? _value.periodeGajiId
          : periodeGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      periodeGajiMCompId: freezed == periodeGajiMCompId
          ? _value.periodeGajiMCompId
          : periodeGajiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      periodeGajiMDirId: freezed == periodeGajiMDirId
          ? _value.periodeGajiMDirId
          : periodeGajiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiGroup: freezed == periodeGajiGroup
          ? _value.periodeGajiGroup
          : periodeGajiGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiKey: freezed == periodeGajiKey
          ? _value.periodeGajiKey
          : periodeGajiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiCode: freezed == periodeGajiCode
          ? _value.periodeGajiCode
          : periodeGajiCode // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiValue: freezed == periodeGajiValue
          ? _value.periodeGajiValue
          : periodeGajiValue // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiIsActive: freezed == periodeGajiIsActive
          ? _value.periodeGajiIsActive
          : periodeGajiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      periodeGajiCreatorId: freezed == periodeGajiCreatorId
          ? _value.periodeGajiCreatorId
          : periodeGajiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiLastEditorId: freezed == periodeGajiLastEditorId
          ? _value.periodeGajiLastEditorId
          : periodeGajiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiCreatedAt: freezed == periodeGajiCreatedAt
          ? _value.periodeGajiCreatedAt
          : periodeGajiCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiUpdatedAt: freezed == periodeGajiUpdatedAt
          ? _value.periodeGajiUpdatedAt
          : periodeGajiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiValue2: freezed == periodeGajiValue2
          ? _value.periodeGajiValue2
          : periodeGajiValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiValue3: freezed == periodeGajiValue3
          ? _value.periodeGajiValue3
          : periodeGajiValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refNomor: freezed == refNomor
          ? _value.refNomor
          : refNomor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMCompId: freezed == refMCompId
          ? _value.refMCompId
          : refMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMDirId: freezed == refMDirId
          ? _value.refMDirId
          : refMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refNamaPelamar: freezed == refNamaPelamar
          ? _value.refNamaPelamar
          : refNamaPelamar // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refKtpNo: freezed == refKtpNo
          ? _value.refKtpNo
          : refKtpNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTanggal: freezed == refTanggal
          ? _value.refTanggal
          : refTanggal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refRef: freezed == refRef
          ? _value.refRef
          : refRef // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTelp: freezed == refTelp
          ? _value.refTelp
          : refTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refJkId: freezed == refJkId
          ? _value.refJkId
          : refJkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTglLahir: freezed == refTglLahir
          ? _value.refTglLahir
          : refTglLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refSalary: freezed == refSalary
          ? _value.refSalary
          : refSalary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refDeskripsi: freezed == refDeskripsi
          ? _value.refDeskripsi
          : refDeskripsi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refStatus: freezed == refStatus
          ? _value.refStatus
          : refStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refCreatorId: freezed == refCreatorId
          ? _value.refCreatorId
          : refCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refLastEditorId: freezed == refLastEditorId
          ? _value.refLastEditorId
          : refLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refCreatedAt: freezed == refCreatedAt
          ? _value.refCreatedAt
          : refCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refUpdatedAt: freezed == refUpdatedAt
          ? _value.refUpdatedAt
          : refUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMDivisiId: freezed == refMDivisiId
          ? _value.refMDivisiId
          : refMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMDeptId: freezed == refMDeptId
          ? _value.refMDeptId
          : refMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMPosisiId: freezed == refMPosisiId
          ? _value.refMPosisiId
          : refMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTempatLahir: freezed == refTempatLahir
          ? _value.refTempatLahir
          : refTempatLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTLokerId: freezed == refTLokerId
          ? _value.refTLokerId
          : refTLokerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      presensiLokasiDefaultId: freezed == presensiLokasiDefaultId
          ? _value.presensiLokasiDefaultId
          : presensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as int?,
      presensiLokasiDefaultCompId: freezed == presensiLokasiDefaultCompId
          ? _value.presensiLokasiDefaultCompId
          : presensiLokasiDefaultCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      presensiLokasiDefaultDefaultUserId: freezed ==
              presensiLokasiDefaultDefaultUserId
          ? _value.presensiLokasiDefaultDefaultUserId
          : presensiLokasiDefaultDefaultUserId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      presensiLokasiDefaultNama: freezed == presensiLokasiDefaultNama
          ? _value.presensiLokasiDefaultNama
          : presensiLokasiDefaultNama // ignore: cast_nullable_to_non_nullable
              as String?,
      presensiLokasiDefaultLat: freezed == presensiLokasiDefaultLat
          ? _value.presensiLokasiDefaultLat
          : presensiLokasiDefaultLat // ignore: cast_nullable_to_non_nullable
              as String?,
      presensiLokasiDefaultLong: freezed == presensiLokasiDefaultLong
          ? _value.presensiLokasiDefaultLong
          : presensiLokasiDefaultLong // ignore: cast_nullable_to_non_nullable
              as String?,
      presensiLokasiDefaultIsActive: freezed == presensiLokasiDefaultIsActive
          ? _value.presensiLokasiDefaultIsActive
          : presensiLokasiDefaultIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      presensiLokasiDefaultCreatorId: freezed == presensiLokasiDefaultCreatorId
          ? _value.presensiLokasiDefaultCreatorId
          : presensiLokasiDefaultCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      presensiLokasiDefaultLastEditorId: freezed ==
              presensiLokasiDefaultLastEditorId
          ? _value.presensiLokasiDefaultLastEditorId
          : presensiLokasiDefaultLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      presensiLokasiDefaultCreatedAt: freezed == presensiLokasiDefaultCreatedAt
          ? _value.presensiLokasiDefaultCreatedAt
          : presensiLokasiDefaultCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      presensiLokasiDefaultUpdatedAt: freezed == presensiLokasiDefaultUpdatedAt
          ? _value.presensiLokasiDefaultUpdatedAt
          : presensiLokasiDefaultUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanId: freezed == atasanId
          ? _value.atasanId
          : atasanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMCompId: freezed == atasanMCompId
          ? _value.atasanMCompId
          : atasanMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMDirId: freezed == atasanMDirId
          ? _value.atasanMDirId
          : atasanMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMDivisiId: freezed == atasanMDivisiId
          ? _value.atasanMDivisiId
          : atasanMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMDeptId: freezed == atasanMDeptId
          ? _value.atasanMDeptId
          : atasanMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMZonaId: freezed == atasanMZonaId
          ? _value.atasanMZonaId
          : atasanMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanGradingId: freezed == atasanGradingId
          ? _value.atasanGradingId
          : atasanGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCostcontreId: freezed == atasanCostcontreId
          ? _value.atasanCostcontreId
          : atasanCostcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKode: freezed == atasanKode
          ? _value.atasanKode
          : atasanKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMPosisiId: freezed == atasanMPosisiId
          ? _value.atasanMPosisiId
          : atasanMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMJamKerjaId: freezed == atasanMJamKerjaId
          ? _value.atasanMJamKerjaId
          : atasanMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKodePresensi: freezed == atasanKodePresensi
          ? _value.atasanKodePresensi
          : atasanKodePresensi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNik: freezed == atasanNik
          ? _value.atasanNik
          : atasanNik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaDepan: freezed == atasanNamaDepan
          ? _value.atasanNamaDepan
          : atasanNamaDepan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaBelakang: freezed == atasanNamaBelakang
          ? _value.atasanNamaBelakang
          : atasanNamaBelakang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaLengkap: freezed == atasanNamaLengkap
          ? _value.atasanNamaLengkap
          : atasanNamaLengkap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaPanggilan: freezed == atasanNamaPanggilan
          ? _value.atasanNamaPanggilan
          : atasanNamaPanggilan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanJkId: freezed == atasanJkId
          ? _value.atasanJkId
          : atasanJkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTempatLahir: freezed == atasanTempatLahir
          ? _value.atasanTempatLahir
          : atasanTempatLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTglLahir: freezed == atasanTglLahir
          ? _value.atasanTglLahir
          : atasanTglLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanProvinsiId: freezed == atasanProvinsiId
          ? _value.atasanProvinsiId
          : atasanProvinsiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKotaId: freezed == atasanKotaId
          ? _value.atasanKotaId
          : atasanKotaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKecamatanId: freezed == atasanKecamatanId
          ? _value.atasanKecamatanId
          : atasanKecamatanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKodePos: freezed == atasanKodePos
          ? _value.atasanKodePos
          : atasanKodePos // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAlamatAsli: freezed == atasanAlamatAsli
          ? _value.atasanAlamatAsli
          : atasanAlamatAsli // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAlamatDomisili: freezed == atasanAlamatDomisili
          ? _value.atasanAlamatDomisili
          : atasanAlamatDomisili // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNoTlp: freezed == atasanNoTlp
          ? _value.atasanNoTlp
          : atasanNoTlp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNoTlpLainnya: freezed == atasanNoTlpLainnya
          ? _value.atasanNoTlpLainnya
          : atasanNoTlpLainnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNoDarurat: freezed == atasanNoDarurat
          ? _value.atasanNoDarurat
          : atasanNoDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaKontakDarurat: freezed == atasanNamaKontakDarurat
          ? _value.atasanNamaKontakDarurat
          : atasanNamaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAgamaId: freezed == atasanAgamaId
          ? _value.atasanAgamaId
          : atasanAgamaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanGolDarahId: freezed == atasanGolDarahId
          ? _value.atasanGolDarahId
          : atasanGolDarahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanStatusNikahId: freezed == atasanStatusNikahId
          ? _value.atasanStatusNikahId
          : atasanStatusNikahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTanggunganId: freezed == atasanTanggunganId
          ? _value.atasanTanggunganId
          : atasanTanggunganId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanHubDgnKaryawan: freezed == atasanHubDgnKaryawan
          ? _value.atasanHubDgnKaryawan
          : atasanHubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiJatahReguler: freezed == atasanCutiJatahReguler
          ? _value.atasanCutiJatahReguler
          : atasanCutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiSisaReguler: freezed == atasanCutiSisaReguler
          ? _value.atasanCutiSisaReguler
          : atasanCutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiPanjang: freezed == atasanCutiPanjang
          ? _value.atasanCutiPanjang
          : atasanCutiPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiSisaPanjang: freezed == atasanCutiSisaPanjang
          ? _value.atasanCutiSisaPanjang
          : atasanCutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanStatusKaryId: freezed == atasanStatusKaryId
          ? _value.atasanStatusKaryId
          : atasanStatusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanLamaKontrakAwal: freezed == atasanLamaKontrakAwal
          ? _value.atasanLamaKontrakAwal
          : atasanLamaKontrakAwal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanLamaKontrakAkhir: freezed == atasanLamaKontrakAkhir
          ? _value.atasanLamaKontrakAkhir
          : atasanLamaKontrakAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTglMasuk: freezed == atasanTglMasuk
          ? _value.atasanTglMasuk
          : atasanTglMasuk // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTglBerhenti: freezed == atasanTglBerhenti
          ? _value.atasanTglBerhenti
          : atasanTglBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAlasanBerhenti: freezed == atasanAlasanBerhenti
          ? _value.atasanAlasanBerhenti
          : atasanAlasanBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanUkBaju: freezed == atasanUkBaju
          ? _value.atasanUkBaju
          : atasanUkBaju // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanUkCelana: freezed == atasanUkCelana
          ? _value.atasanUkCelana
          : atasanUkCelana // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanUkSepatu: freezed == atasanUkSepatu
          ? _value.atasanUkSepatu
          : atasanUkSepatu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanDesc: freezed == atasanDesc
          ? _value.atasanDesc
          : atasanDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanIsActive: freezed == atasanIsActive
          ? _value.atasanIsActive
          : atasanIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCreatorId: freezed == atasanCreatorId
          ? _value.atasanCreatorId
          : atasanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanLastEditorId: freezed == atasanLastEditorId
          ? _value.atasanLastEditorId
          : atasanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCreatedAt: freezed == atasanCreatedAt
          ? _value.atasanCreatedAt
          : atasanCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanUpdatedAt: freezed == atasanUpdatedAt
          ? _value.atasanUpdatedAt
          : atasanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMStandartGajiId: freezed == atasanMStandartGajiId
          ? _value.atasanMStandartGajiId
          : atasanMStandartGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanPeriodeGajiId: freezed == atasanPeriodeGajiId
          ? _value.atasanPeriodeGajiId
          : atasanPeriodeGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanRefId: freezed == atasanRefId
          ? _value.atasanRefId
          : atasanRefId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanPresensiLokasiDefaultId: freezed == atasanPresensiLokasiDefaultId
          ? _value.atasanPresensiLokasiDefaultId
          : atasanPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanExpDateCuti: freezed == atasanExpDateCuti
          ? _value.atasanExpDateCuti
          : atasanExpDateCuti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanLimitPotong: freezed == atasanLimitPotong
          ? _value.atasanLimitPotong
          : atasanLimitPotong // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAtasanId: freezed == atasanAtasanId
          ? _value.atasanAtasanId
          : atasanAtasanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiP24: freezed == atasanCutiP24
          ? _value.atasanCutiP24
          : atasanCutiP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiSisaP24: freezed == atasanCutiSisaP24
          ? _value.atasanCutiSisaP24
          : atasanCutiSisaP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTipeJamKerjaId: freezed == atasanTipeJamKerjaId
          ? _value.atasanTipeJamKerjaId
          : atasanTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTJadwalKerjaId: freezed == atasanTJadwalKerjaId
          ? _value.atasanTJadwalKerjaId
          : atasanTJadwalKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaId: freezed == tipeJamKerjaId
          ? _value.tipeJamKerjaId
          : tipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaMCompId: freezed == tipeJamKerjaMCompId
          ? _value.tipeJamKerjaMCompId
          : tipeJamKerjaMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaMDirId: freezed == tipeJamKerjaMDirId
          ? _value.tipeJamKerjaMDirId
          : tipeJamKerjaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaGroup: freezed == tipeJamKerjaGroup
          ? _value.tipeJamKerjaGroup
          : tipeJamKerjaGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaKey: freezed == tipeJamKerjaKey
          ? _value.tipeJamKerjaKey
          : tipeJamKerjaKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaCode: freezed == tipeJamKerjaCode
          ? _value.tipeJamKerjaCode
          : tipeJamKerjaCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaValue: freezed == tipeJamKerjaValue
          ? _value.tipeJamKerjaValue
          : tipeJamKerjaValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaIsActive: freezed == tipeJamKerjaIsActive
          ? _value.tipeJamKerjaIsActive
          : tipeJamKerjaIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      tipeJamKerjaUpdatedAt: freezed == tipeJamKerjaUpdatedAt
          ? _value.tipeJamKerjaUpdatedAt
          : tipeJamKerjaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaValue2: freezed == tipeJamKerjaValue2
          ? _value.tipeJamKerjaValue2
          : tipeJamKerjaValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaValue3: freezed == tipeJamKerjaValue3
          ? _value.tipeJamKerjaValue3
          : tipeJamKerjaValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaId: freezed == tJadwalKerjaId
          ? _value.tJadwalKerjaId
          : tJadwalKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaNomor: freezed == tJadwalKerjaNomor
          ? _value.tJadwalKerjaNomor
          : tJadwalKerjaNomor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaMCompId: freezed == tJadwalKerjaMCompId
          ? _value.tJadwalKerjaMCompId
          : tJadwalKerjaMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaMDirId: freezed == tJadwalKerjaMDirId
          ? _value.tJadwalKerjaMDirId
          : tJadwalKerjaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaMDivisiId: freezed == tJadwalKerjaMDivisiId
          ? _value.tJadwalKerjaMDivisiId
          : tJadwalKerjaMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaMDeptId: freezed == tJadwalKerjaMDeptId
          ? _value.tJadwalKerjaMDeptId
          : tJadwalKerjaMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaTipeJamKerjaId: freezed == tJadwalKerjaTipeJamKerjaId
          ? _value.tJadwalKerjaTipeJamKerjaId
          : tJadwalKerjaTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaKeterangan: freezed == tJadwalKerjaKeterangan
          ? _value.tJadwalKerjaKeterangan
          : tJadwalKerjaKeterangan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaStatus: freezed == tJadwalKerjaStatus
          ? _value.tJadwalKerjaStatus
          : tJadwalKerjaStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaCreatorId: freezed == tJadwalKerjaCreatorId
          ? _value.tJadwalKerjaCreatorId
          : tJadwalKerjaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaLastEditorId: freezed == tJadwalKerjaLastEditorId
          ? _value.tJadwalKerjaLastEditorId
          : tJadwalKerjaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaCreatedAt: freezed == tJadwalKerjaCreatedAt
          ? _value.tJadwalKerjaCreatedAt
          : tJadwalKerjaCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaUpdatedAt: freezed == tJadwalKerjaUpdatedAt
          ? _value.tJadwalKerjaUpdatedAt
          : tJadwalKerjaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nomorKtp: freezed == nomorKtp
          ? _value.nomorKtp
          : nomorKtp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataAllKaryawanImplCopyWith<$Res>
    implements $DataAllKaryawanCopyWith<$Res> {
  factory _$$DataAllKaryawanImplCopyWith(_$DataAllKaryawanImpl value,
          $Res Function(_$DataAllKaryawanImpl) then) =
      __$$DataAllKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") dynamic DataAllKaryawanMCompId,
      @JsonKey(name: "m_dir_id") dynamic DataAllKaryawanMDirId,
      @JsonKey(name: "m_divisi_id") int? DataAllKaryawanMDivisiId,
      @JsonKey(name: "m_dept_id") int? DataAllKaryawanMDeptId,
      @JsonKey(name: "m_zona_id") dynamic DataAllKaryawanMZonaId,
      @JsonKey(name: "grading_id") dynamic DataAllKaryawanGradingId,
      @JsonKey(name: "costcontre_id") dynamic DataAllKaryawanCostcontreId,
      @JsonKey(name: "kode") String? kode,
      @JsonKey(name: "m_posisi_id") int? DataAllKaryawanMPosisiId,
      @JsonKey(name: "m_jam_kerja_id") dynamic DataAllKaryawanMJamKerjaId,
      @JsonKey(name: "kode_presensi") String? kodePresensi,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "nama_depan") String? namaDepan,
      @JsonKey(name: "nama_belakang") String? namaBelakang,
      @JsonKey(name: "nama_lengkap") String? namaLengkap,
      @JsonKey(name: "nama_panggilan") String? namaPanggilan,
      @JsonKey(name: "jk_id") int? DataAllKaryawanJkId,
      @JsonKey(name: "tempat_lahir") String? tempatLahir,
      @JsonKey(name: "tgl_lahir") String? tglLahir,
      @JsonKey(name: "provinsi_id") int? DataAllKaryawanProvinsiId,
      @JsonKey(name: "kota_id") int? DataAllKaryawanKotaId,
      @JsonKey(name: "kecamatan_id") int? DataAllKaryawanKecamatanId,
      @JsonKey(name: "kode_pos") String? kodePos,
      @JsonKey(name: "alamat_asli") String? alamatAsli,
      @JsonKey(name: "alamat_domisili") String? alamatDomisili,
      @JsonKey(name: "no_tlp") String? noTlp,
      @JsonKey(name: "no_tlp_lainnya") String? noTlpLainnya,
      @JsonKey(name: "no_darurat") String? noDarurat,
      @JsonKey(name: "nama_kontak_darurat") String? namaKontakDarurat,
      @JsonKey(name: "agama_id") int? DataAllKaryawanAgamaId,
      @JsonKey(name: "gol_darah_id") int? DataAllKaryawanGolDarahId,
      @JsonKey(name: "status_nikah_id") int? DataAllKaryawanStatusNikahId,
      @JsonKey(name: "tanggungan_id") int? DataAllKaryawanTanggunganId,
      @JsonKey(name: "hub_dgn_karyawan") String? hubDgnKaryawan,
      @JsonKey(name: "cuti_jatah_reguler") dynamic cutiJatahReguler,
      @JsonKey(name: "cuti_sisa_reguler") dynamic cutiSisaReguler,
      @JsonKey(name: "cuti_panjang") dynamic cutiPanjang,
      @JsonKey(name: "cuti_sisa_panjang") dynamic cutiSisaPanjang,
      @JsonKey(name: "status_kary_id") dynamic DataAllKaryawanStatusKaryId,
      @JsonKey(name: "lama_kontrak_awal") dynamic lamaKontrakAwal,
      @JsonKey(name: "lama_kontrak_akhir") dynamic lamaKontrakAkhir,
      @JsonKey(name: "tgl_masuk") String? tglMasuk,
      @JsonKey(name: "tgl_berhenti") dynamic tglBerhenti,
      @JsonKey(name: "alasan_berhenti") dynamic alasanBerhenti,
      @JsonKey(name: "uk_baju") String? ukBaju,
      @JsonKey(name: "uk_celana") String? ukCelana,
      @JsonKey(name: "uk_sepatu") String? ukSepatu,
      @JsonKey(name: "desc") dynamic desc,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") int? DataAllKaryawanCreatorId,
      @JsonKey(name: "last_editor_id") int? DataAllKaryawanLastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "m_standart_gaji_id")
      dynamic DataAllKaryawanMStandartGajiId,
      @JsonKey(name: "periode_gaji_id") int? DataAllKaryawanPeriodeGajiId,
      @JsonKey(name: "ref_id") dynamic DataAllKaryawanRefId,
      @JsonKey(name: "presensi_lokasi_default_id")
      int? DataAllKaryawanPresensiLokasiDefaultId,
      @JsonKey(name: "exp_date_cuti") dynamic expDateCuti,
      @JsonKey(name: "limit_potong") int? limitPotong,
      @JsonKey(name: "atasan_id") int? DataAllKaryawanAtasanId,
      @JsonKey(name: "cuti_p24") int? cutiP24,
      @JsonKey(name: "cuti_sisa_p24") dynamic cutiSisaP24,
      @JsonKey(name: "tipe_jam_kerja_id") dynamic DataAllKaryawanTipeJamKerjaId,
      @JsonKey(name: "t_jadwal_kerja_id") dynamic DataAllKaryawanTJadwalKerjaId,
      @JsonKey(name: "m_comp.id") dynamic mCompId,
      @JsonKey(name: "m_comp.nama") dynamic mCompNama,
      @JsonKey(name: "m_comp.is_active") dynamic mCompIsActive,
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
      @JsonKey(name: "m_divisi.m_comp_id") dynamic mDivisiMCompId,
      @JsonKey(name: "m_divisi.m_dir_id") int? mDivisiMDirId,
      @JsonKey(name: "m_divisi.nama") String? mDivisiNama,
      @JsonKey(name: "m_divisi.desc") dynamic mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") bool? mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") int? mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id") dynamic mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") String? mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") String? mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") int? mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") int? mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") int? mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") String? mDeptNama,
      @JsonKey(name: "m_dept.desc") dynamic mDeptDesc,
      @JsonKey(name: "m_dept.is_active") bool? mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") dynamic mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") dynamic mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") String? mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") String? mDeptUpdatedAt,
      @JsonKey(name: "m_zona.id") dynamic mZonaId,
      @JsonKey(name: "m_zona.m_comp_id") dynamic mZonaMCompId,
      @JsonKey(name: "m_zona.m_dir_id") dynamic mZonaMDirId,
      @JsonKey(name: "m_zona.kode") dynamic mZonaKode,
      @JsonKey(name: "m_zona.nama") dynamic mZonaNama,
      @JsonKey(name: "m_zona.desc") dynamic mZonaDesc,
      @JsonKey(name: "m_zona.is_active") dynamic mZonaIsActive,
      @JsonKey(name: "m_zona.creator_id") dynamic mZonaCreatorId,
      @JsonKey(name: "m_zona.last_editor_id") dynamic mZonaLastEditorId,
      @JsonKey(name: "m_zona.created_at") dynamic mZonaCreatedAt,
      @JsonKey(name: "m_zona.updated_at") dynamic mZonaUpdatedAt,
      @JsonKey(name: "grading.id") dynamic gradingId,
      @JsonKey(name: "grading.m_comp_id") dynamic gradingMCompId,
      @JsonKey(name: "grading.m_dir_id") dynamic gradingMDirId,
      @JsonKey(name: "grading.group") dynamic gradingGroup,
      @JsonKey(name: "grading.key") dynamic gradingKey,
      @JsonKey(name: "grading.code") dynamic gradingCode,
      @JsonKey(name: "grading.value") dynamic gradingValue,
      @JsonKey(name: "grading.is_active") dynamic gradingIsActive,
      @JsonKey(name: "grading.creator_id") dynamic gradingCreatorId,
      @JsonKey(name: "grading.last_editor_id") dynamic gradingLastEditorId,
      @JsonKey(name: "grading.created_at") dynamic gradingCreatedAt,
      @JsonKey(name: "grading.updated_at") dynamic gradingUpdatedAt,
      @JsonKey(name: "grading.value_2") dynamic gradingValue2,
      @JsonKey(name: "grading.value_3") dynamic gradingValue3,
      @JsonKey(name: "costcontre.id") dynamic costcontreId,
      @JsonKey(name: "costcontre.m_comp_id") dynamic costcontreMCompId,
      @JsonKey(name: "costcontre.m_dir_id") dynamic costcontreMDirId,
      @JsonKey(name: "costcontre.group") dynamic costcontreGroup,
      @JsonKey(name: "costcontre.key") dynamic costcontreKey,
      @JsonKey(name: "costcontre.code") dynamic costcontreCode,
      @JsonKey(name: "costcontre.value") dynamic costcontreValue,
      @JsonKey(name: "costcontre.is_active") dynamic costcontreIsActive,
      @JsonKey(name: "costcontre.creator_id") dynamic costcontreCreatorId,
      @JsonKey(name: "costcontre.last_editor_id")
      dynamic costcontreLastEditorId,
      @JsonKey(name: "costcontre.created_at") dynamic costcontreCreatedAt,
      @JsonKey(name: "costcontre.updated_at") dynamic costcontreUpdatedAt,
      @JsonKey(name: "costcontre.value_2") dynamic costcontreValue2,
      @JsonKey(name: "costcontre.value_3") dynamic costcontreValue3,
      @JsonKey(name: "m_posisi.id") int? mPosisiId,
      @JsonKey(name: "m_posisi.m_comp_id") dynamic mPosisiMCompId,
      @JsonKey(name: "m_posisi.m_dir_id") dynamic mPosisiMDirId,
      @JsonKey(name: "m_posisi.kode") String? mPosisiKode,
      @JsonKey(name: "m_posisi.desc_kerja") String? mPosisiDescKerja,
      @JsonKey(name: "m_posisi.desc_kerja_1") String? mPosisiDescKerja1,
      @JsonKey(name: "m_posisi.desc_kerja_2") dynamic mPosisiDescKerja2,
      @JsonKey(name: "m_posisi.min_pengalaman") String? mPosisiMinPengalaman,
      @JsonKey(name: "m_posisi.min_pendidikan_id") int? mPosisiMinPendidikanId,
      @JsonKey(name: "m_posisi.min_gaji_pokok") String? mPosisiMinGajiPokok,
      @JsonKey(name: "m_posisi.max_gaji_pokok") String? mPosisiMaxGajiPokok,
      @JsonKey(name: "m_posisi.biaya") dynamic mPosisiBiaya,
      @JsonKey(name: "m_posisi.tipe_bpjs_id") dynamic mPosisiTipeBpjsId,
      @JsonKey(name: "m_posisi.potongan_bpjs") dynamic mPosisiPotonganBpjs,
      @JsonKey(name: "m_posisi.desc") dynamic mPosisiDesc,
      @JsonKey(name: "m_posisi.is_active") bool? mPosisiIsActive,
      @JsonKey(name: "m_posisi.creator_id") dynamic mPosisiCreatorId,
      @JsonKey(name: "m_posisi.last_editor_id") dynamic mPosisiLastEditorId,
      @JsonKey(name: "m_posisi.created_at") String? mPosisiCreatedAt,
      @JsonKey(name: "m_posisi.updated_at") String? mPosisiUpdatedAt,
      @JsonKey(name: "m_jam_kerja.id") dynamic mJamKerjaId,
      @JsonKey(name: "m_jam_kerja.m_comp_id") dynamic mJamKerjaMCompId,
      @JsonKey(name: "m_jam_kerja.m_dir_id") dynamic mJamKerjaMDirId,
      @JsonKey(name: "m_jam_kerja.kode") dynamic mJamKerjaKode,
      @JsonKey(name: "m_jam_kerja.tipe_jam_kerja_id")
      dynamic mJamKerjaTipeJamKerjaId,
      @JsonKey(name: "m_jam_kerja.waktu_mulai") dynamic mJamKerjaWaktuMulai,
      @JsonKey(name: "m_jam_kerja.waktu_akhir") dynamic mJamKerjaWaktuAkhir,
      @JsonKey(name: "m_jam_kerja.is_hari_berikutnya")
      dynamic mJamKerjaIsHariBerikutnya,
      @JsonKey(name: "m_jam_kerja.desc") dynamic mJamKerjaDesc,
      @JsonKey(name: "m_jam_kerja.is_active") dynamic mJamKerjaIsActive,
      @JsonKey(name: "m_jam_kerja.creator_id") dynamic mJamKerjaCreatorId,
      @JsonKey(name: "m_jam_kerja.last_editor_id")
      dynamic mJamKerjaLastEditorId,
      @JsonKey(name: "m_jam_kerja.created_at") dynamic mJamKerjaCreatedAt,
      @JsonKey(name: "m_jam_kerja.updated_at") dynamic mJamKerjaUpdatedAt,
      @JsonKey(name: "jk.id") int? jkId,
      @JsonKey(name: "jk.m_comp_id") int? jkMCompId,
      @JsonKey(name: "jk.m_dir_id") dynamic jkMDirId,
      @JsonKey(name: "jk.group") String? jkGroup,
      @JsonKey(name: "jk.key") String? jkKey,
      @JsonKey(name: "jk.code") String? jkCode,
      @JsonKey(name: "jk.value") String? jkValue,
      @JsonKey(name: "jk.is_active") bool? jkIsActive,
      @JsonKey(name: "jk.creator_id") dynamic jkCreatorId,
      @JsonKey(name: "jk.last_editor_id") dynamic jkLastEditorId,
      @JsonKey(name: "jk.created_at") String? jkCreatedAt,
      @JsonKey(name: "jk.updated_at") String? jkUpdatedAt,
      @JsonKey(name: "jk.value_2") dynamic jkValue2,
      @JsonKey(name: "jk.value_3") dynamic jkValue3,
      @JsonKey(name: "provinsi.id") int? provinsiId,
      @JsonKey(name: "provinsi.m_comp_id") int? provinsiMCompId,
      @JsonKey(name: "provinsi.m_dir_id") dynamic provinsiMDirId,
      @JsonKey(name: "provinsi.group") String? provinsiGroup,
      @JsonKey(name: "provinsi.key") dynamic provinsiKey,
      @JsonKey(name: "provinsi.code") dynamic provinsiCode,
      @JsonKey(name: "provinsi.value") String? provinsiValue,
      @JsonKey(name: "provinsi.is_active") bool? provinsiIsActive,
      @JsonKey(name: "provinsi.creator_id") dynamic provinsiCreatorId,
      @JsonKey(name: "provinsi.last_editor_id") dynamic provinsiLastEditorId,
      @JsonKey(name: "provinsi.created_at") dynamic provinsiCreatedAt,
      @JsonKey(name: "provinsi.updated_at") String? provinsiUpdatedAt,
      @JsonKey(name: "provinsi.value_2") dynamic provinsiValue2,
      @JsonKey(name: "provinsi.value_3") dynamic provinsiValue3,
      @JsonKey(name: "kota.id") int? kotaId,
      @JsonKey(name: "kota.m_comp_id") int? kotaMCompId,
      @JsonKey(name: "kota.m_dir_id") dynamic kotaMDirId,
      @JsonKey(name: "kota.group") String? kotaGroup,
      @JsonKey(name: "kota.key") String? kotaKey,
      @JsonKey(name: "kota.code") dynamic kotaCode,
      @JsonKey(name: "kota.value") String? kotaValue,
      @JsonKey(name: "kota.is_active") bool? kotaIsActive,
      @JsonKey(name: "kota.creator_id") dynamic kotaCreatorId,
      @JsonKey(name: "kota.last_editor_id") dynamic kotaLastEditorId,
      @JsonKey(name: "kota.created_at") dynamic kotaCreatedAt,
      @JsonKey(name: "kota.updated_at") dynamic kotaUpdatedAt,
      @JsonKey(name: "kota.value_2") dynamic kotaValue2,
      @JsonKey(name: "kota.value_3") dynamic kotaValue3,
      @JsonKey(name: "kecamatan.id") int? kecamatanId,
      @JsonKey(name: "kecamatan.m_comp_id") int? kecamatanMCompId,
      @JsonKey(name: "kecamatan.m_dir_id") dynamic kecamatanMDirId,
      @JsonKey(name: "kecamatan.group") String? kecamatanGroup,
      @JsonKey(name: "kecamatan.key") String? kecamatanKey,
      @JsonKey(name: "kecamatan.code") dynamic kecamatanCode,
      @JsonKey(name: "kecamatan.value") String? kecamatanValue,
      @JsonKey(name: "kecamatan.is_active") bool? kecamatanIsActive,
      @JsonKey(name: "kecamatan.creator_id") dynamic kecamatanCreatorId,
      @JsonKey(name: "kecamatan.last_editor_id") dynamic kecamatanLastEditorId,
      @JsonKey(name: "kecamatan.created_at") dynamic kecamatanCreatedAt,
      @JsonKey(name: "kecamatan.updated_at") dynamic kecamatanUpdatedAt,
      @JsonKey(name: "kecamatan.value_2") dynamic kecamatanValue2,
      @JsonKey(name: "kecamatan.value_3") dynamic kecamatanValue3,
      @JsonKey(name: "agama.id") int? agamaId,
      @JsonKey(name: "agama.m_comp_id") int? agamaMCompId,
      @JsonKey(name: "agama.m_dir_id") dynamic agamaMDirId,
      @JsonKey(name: "agama.group") String? agamaGroup,
      @JsonKey(name: "agama.key") String? agamaKey,
      @JsonKey(name: "agama.code") String? agamaCode,
      @JsonKey(name: "agama.value") String? agamaValue,
      @JsonKey(name: "agama.is_active") bool? agamaIsActive,
      @JsonKey(name: "agama.creator_id") dynamic agamaCreatorId,
      @JsonKey(name: "agama.last_editor_id") dynamic agamaLastEditorId,
      @JsonKey(name: "agama.created_at") String? agamaCreatedAt,
      @JsonKey(name: "agama.updated_at") String? agamaUpdatedAt,
      @JsonKey(name: "agama.value_2") dynamic agamaValue2,
      @JsonKey(name: "agama.value_3") dynamic agamaValue3,
      @JsonKey(name: "gol_darah.id") int? golDarahId,
      @JsonKey(name: "gol_darah.m_comp_id") int? golDarahMCompId,
      @JsonKey(name: "gol_darah.m_dir_id") dynamic golDarahMDirId,
      @JsonKey(name: "gol_darah.group") String? golDarahGroup,
      @JsonKey(name: "gol_darah.key") String? golDarahKey,
      @JsonKey(name: "gol_darah.code") String? golDarahCode,
      @JsonKey(name: "gol_darah.value") String? golDarahValue,
      @JsonKey(name: "gol_darah.is_active") bool? golDarahIsActive,
      @JsonKey(name: "gol_darah.creator_id") dynamic golDarahCreatorId,
      @JsonKey(name: "gol_darah.last_editor_id") dynamic golDarahLastEditorId,
      @JsonKey(name: "gol_darah.created_at") String? golDarahCreatedAt,
      @JsonKey(name: "gol_darah.updated_at") String? golDarahUpdatedAt,
      @JsonKey(name: "gol_darah.value_2") dynamic golDarahValue2,
      @JsonKey(name: "gol_darah.value_3") dynamic golDarahValue3,
      @JsonKey(name: "status_nikah.id") int? statusNikahId,
      @JsonKey(name: "status_nikah.m_comp_id") int? statusNikahMCompId,
      @JsonKey(name: "status_nikah.m_dir_id") dynamic statusNikahMDirId,
      @JsonKey(name: "status_nikah.group") String? statusNikahGroup,
      @JsonKey(name: "status_nikah.key") String? statusNikahKey,
      @JsonKey(name: "status_nikah.code") String? statusNikahCode,
      @JsonKey(name: "status_nikah.value") String? statusNikahValue,
      @JsonKey(name: "status_nikah.is_active") bool? statusNikahIsActive,
      @JsonKey(name: "status_nikah.creator_id") dynamic statusNikahCreatorId,
      @JsonKey(name: "status_nikah.last_editor_id")
      dynamic statusNikahLastEditorId,
      @JsonKey(name: "status_nikah.created_at") String? statusNikahCreatedAt,
      @JsonKey(name: "status_nikah.updated_at") String? statusNikahUpdatedAt,
      @JsonKey(name: "status_nikah.value_2") dynamic statusNikahValue2,
      @JsonKey(name: "status_nikah.value_3") dynamic statusNikahValue3,
      @JsonKey(name: "tanggungan.id") int? tanggunganId,
      @JsonKey(name: "tanggungan.m_comp_id") int? tanggunganMCompId,
      @JsonKey(name: "tanggungan.m_dir_id") int? tanggunganMDirId,
      @JsonKey(name: "tanggungan.group") String? tanggunganGroup,
      @JsonKey(name: "tanggungan.key") String? tanggunganKey,
      @JsonKey(name: "tanggungan.code") String? tanggunganCode,
      @JsonKey(name: "tanggungan.value") String? tanggunganValue,
      @JsonKey(name: "tanggungan.is_active") bool? tanggunganIsActive,
      @JsonKey(name: "tanggungan.creator_id") dynamic tanggunganCreatorId,
      @JsonKey(name: "tanggungan.last_editor_id")
      dynamic tanggunganLastEditorId,
      @JsonKey(name: "tanggungan.created_at") String? tanggunganCreatedAt,
      @JsonKey(name: "tanggungan.updated_at") String? tanggunganUpdatedAt,
      @JsonKey(name: "tanggungan.value_2") String? tanggunganValue2,
      @JsonKey(name: "tanggungan.value_3") dynamic tanggunganValue3,
      @JsonKey(name: "status_kary.id") dynamic statusKaryId,
      @JsonKey(name: "status_kary.m_comp_id") dynamic statusKaryMCompId,
      @JsonKey(name: "status_kary.m_dir_id") dynamic statusKaryMDirId,
      @JsonKey(name: "status_kary.group") dynamic statusKaryGroup,
      @JsonKey(name: "status_kary.key") dynamic statusKaryKey,
      @JsonKey(name: "status_kary.code") dynamic statusKaryCode,
      @JsonKey(name: "status_kary.value") dynamic statusKaryValue,
      @JsonKey(name: "status_kary.is_active") dynamic statusKaryIsActive,
      @JsonKey(name: "status_kary.creator_id") dynamic statusKaryCreatorId,
      @JsonKey(name: "status_kary.last_editor_id")
      dynamic statusKaryLastEditorId,
      @JsonKey(name: "status_kary.created_at") dynamic statusKaryCreatedAt,
      @JsonKey(name: "status_kary.updated_at") dynamic statusKaryUpdatedAt,
      @JsonKey(name: "status_kary.value_2") dynamic statusKaryValue2,
      @JsonKey(name: "status_kary.value_3") dynamic statusKaryValue3,
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
      @JsonKey(name: "last_editor.last_editor_id")
      dynamic lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at") String? lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at") String? lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image") String? lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") int? lastEditorMKaryId,
      @JsonKey(name: "m_standart_gaji.id") dynamic mStandartGajiId,
      @JsonKey(name: "m_standart_gaji.m_comp_id") dynamic mStandartGajiMCompId,
      @JsonKey(name: "m_standart_gaji.m_dir_id") dynamic mStandartGajiMDirId,
      @JsonKey(name: "m_standart_gaji.kode") dynamic mStandartGajiKode,
      @JsonKey(name: "m_standart_gaji.m_divisi_id")
      dynamic mStandartGajiMDivisiId,
      @JsonKey(name: "m_standart_gaji.m_dept_id") dynamic mStandartGajiMDeptId,
      @JsonKey(name: "m_standart_gaji.m_zona_id") dynamic mStandartGajiMZonaId,
      @JsonKey(name: "m_standart_gaji.m_posisi_id")
      dynamic mStandartGajiMPosisiId,
      @JsonKey(name: "m_standart_gaji.grading_id")
      dynamic mStandartGajiGradingId,
      @JsonKey(name: "m_standart_gaji.gaji_pokok")
      dynamic mStandartGajiGajiPokok,
      @JsonKey(name: "m_standart_gaji.gaji_pokok_periode")
      dynamic mStandartGajiGajiPokokPeriode,
      @JsonKey(name: "m_standart_gaji.uang_saku") dynamic mStandartGajiUangSaku,
      @JsonKey(name: "m_standart_gaji.uang_saku_periode")
      dynamic mStandartGajiUangSakuPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_posisi")
      dynamic mStandartGajiTunjanganPosisi,
      @JsonKey(name: "m_standart_gaji.tunjangan_posisi_periode")
      dynamic mStandartGajiTunjanganPosisiPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_id")
      dynamic mStandartGajiTunjanganKemahalanId,
      @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_periode")
      dynamic mStandartGajiTunjanganKemahalanPeriode,
      @JsonKey(name: "m_standart_gaji.uang_makan")
      dynamic mStandartGajiUangMakan,
      @JsonKey(name: "m_standart_gaji.uang_makan_periode")
      dynamic mStandartGajiUangMakanPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_tetap")
      dynamic mStandartGajiTunjanganTetap,
      @JsonKey(name: "m_standart_gaji.tunjangan_tetap_periode")
      dynamic mStandartGajiTunjanganTetapPeriode,
      @JsonKey(name: "m_standart_gaji.desc") dynamic mStandartGajiDesc,
      @JsonKey(name: "m_standart_gaji.is_active") dynamic mStandartGajiIsActive,
      @JsonKey(name: "m_standart_gaji.creator_id")
      dynamic mStandartGajiCreatorId,
      @JsonKey(name: "m_standart_gaji.last_editor_id")
      dynamic mStandartGajiLastEditorId,
      @JsonKey(name: "m_standart_gaji.created_at")
      dynamic mStandartGajiCreatedAt,
      @JsonKey(name: "m_standart_gaji.updated_at")
      dynamic mStandartGajiUpdatedAt,
      @JsonKey(name: "periode_gaji.id") int? periodeGajiId,
      @JsonKey(name: "periode_gaji.m_comp_id") int? periodeGajiMCompId,
      @JsonKey(name: "periode_gaji.m_dir_id") dynamic periodeGajiMDirId,
      @JsonKey(name: "periode_gaji.group") String? periodeGajiGroup,
      @JsonKey(name: "periode_gaji.key") String? periodeGajiKey,
      @JsonKey(name: "periode_gaji.code") String? periodeGajiCode,
      @JsonKey(name: "periode_gaji.value") String? periodeGajiValue,
      @JsonKey(name: "periode_gaji.is_active") bool? periodeGajiIsActive,
      @JsonKey(name: "periode_gaji.creator_id") dynamic periodeGajiCreatorId,
      @JsonKey(name: "periode_gaji.last_editor_id")
      dynamic periodeGajiLastEditorId,
      @JsonKey(name: "periode_gaji.created_at") String? periodeGajiCreatedAt,
      @JsonKey(name: "periode_gaji.updated_at") String? periodeGajiUpdatedAt,
      @JsonKey(name: "periode_gaji.value_2") dynamic periodeGajiValue2,
      @JsonKey(name: "periode_gaji.value_3") dynamic periodeGajiValue3,
      @JsonKey(name: "ref.id") dynamic refId,
      @JsonKey(name: "ref.nomor") dynamic refNomor,
      @JsonKey(name: "ref.m_comp_id") dynamic refMCompId,
      @JsonKey(name: "ref.m_dir_id") dynamic refMDirId,
      @JsonKey(name: "ref.nama_pelamar") dynamic refNamaPelamar,
      @JsonKey(name: "ref.ktp_no") dynamic refKtpNo,
      @JsonKey(name: "ref.tanggal") dynamic refTanggal,
      @JsonKey(name: "ref.ref") dynamic refRef,
      @JsonKey(name: "ref.telp") dynamic refTelp,
      @JsonKey(name: "ref.jk_id") dynamic refJkId,
      @JsonKey(name: "ref.tgl_lahir") dynamic refTglLahir,
      @JsonKey(name: "ref.salary") dynamic refSalary,
      @JsonKey(name: "ref.deskripsi") dynamic refDeskripsi,
      @JsonKey(name: "ref.status") dynamic refStatus,
      @JsonKey(name: "ref.creator_id") dynamic refCreatorId,
      @JsonKey(name: "ref.last_editor_id") dynamic refLastEditorId,
      @JsonKey(name: "ref.created_at") dynamic refCreatedAt,
      @JsonKey(name: "ref.updated_at") dynamic refUpdatedAt,
      @JsonKey(name: "ref.m_divisi_id") dynamic refMDivisiId,
      @JsonKey(name: "ref.m_dept_id") dynamic refMDeptId,
      @JsonKey(name: "ref.m_posisi_id") dynamic refMPosisiId,
      @JsonKey(name: "ref.tempat_lahir") dynamic refTempatLahir,
      @JsonKey(name: "ref.t_loker_id") dynamic refTLokerId,
      @JsonKey(name: "presensi_lokasi_default.id") int? presensiLokasiDefaultId,
      @JsonKey(name: "presensi_lokasi_default.comp_id")
      int? presensiLokasiDefaultCompId,
      @JsonKey(name: "presensi_lokasi_default.default_user_id")
      dynamic presensiLokasiDefaultDefaultUserId,
      @JsonKey(name: "presensi_lokasi_default.nama")
      String? presensiLokasiDefaultNama,
      @JsonKey(name: "presensi_lokasi_default.lat")
      String? presensiLokasiDefaultLat,
      @JsonKey(name: "presensi_lokasi_default.long")
      String? presensiLokasiDefaultLong,
      @JsonKey(name: "presensi_lokasi_default.is_active")
      bool? presensiLokasiDefaultIsActive,
      @JsonKey(name: "presensi_lokasi_default.creator_id")
      int? presensiLokasiDefaultCreatorId,
      @JsonKey(name: "presensi_lokasi_default.last_editor_id")
      dynamic presensiLokasiDefaultLastEditorId,
      @JsonKey(name: "presensi_lokasi_default.created_at")
      String? presensiLokasiDefaultCreatedAt,
      @JsonKey(name: "presensi_lokasi_default.updated_at")
      dynamic presensiLokasiDefaultUpdatedAt,
      @JsonKey(name: "atasan.id") dynamic atasanId,
      @JsonKey(name: "atasan.m_comp_id") dynamic atasanMCompId,
      @JsonKey(name: "atasan.m_dir_id") dynamic atasanMDirId,
      @JsonKey(name: "atasan.m_divisi_id") dynamic atasanMDivisiId,
      @JsonKey(name: "atasan.m_dept_id") dynamic atasanMDeptId,
      @JsonKey(name: "atasan.m_zona_id") dynamic atasanMZonaId,
      @JsonKey(name: "atasan.grading_id") dynamic atasanGradingId,
      @JsonKey(name: "atasan.costcontre_id") dynamic atasanCostcontreId,
      @JsonKey(name: "atasan.kode") dynamic atasanKode,
      @JsonKey(name: "atasan.m_posisi_id") dynamic atasanMPosisiId,
      @JsonKey(name: "atasan.m_jam_kerja_id") dynamic atasanMJamKerjaId,
      @JsonKey(name: "atasan.kode_presensi") dynamic atasanKodePresensi,
      @JsonKey(name: "atasan.nik") dynamic atasanNik,
      @JsonKey(name: "atasan.nama_depan") dynamic atasanNamaDepan,
      @JsonKey(name: "atasan.nama_belakang") dynamic atasanNamaBelakang,
      @JsonKey(name: "atasan.nama_lengkap") dynamic atasanNamaLengkap,
      @JsonKey(name: "atasan.nama_panggilan") dynamic atasanNamaPanggilan,
      @JsonKey(name: "atasan.jk_id") dynamic atasanJkId,
      @JsonKey(name: "atasan.tempat_lahir") dynamic atasanTempatLahir,
      @JsonKey(name: "atasan.tgl_lahir") dynamic atasanTglLahir,
      @JsonKey(name: "atasan.provinsi_id") dynamic atasanProvinsiId,
      @JsonKey(name: "atasan.kota_id") dynamic atasanKotaId,
      @JsonKey(name: "atasan.kecamatan_id") dynamic atasanKecamatanId,
      @JsonKey(name: "atasan.kode_pos") dynamic atasanKodePos,
      @JsonKey(name: "atasan.alamat_asli") dynamic atasanAlamatAsli,
      @JsonKey(name: "atasan.alamat_domisili") dynamic atasanAlamatDomisili,
      @JsonKey(name: "atasan.no_tlp") dynamic atasanNoTlp,
      @JsonKey(name: "atasan.no_tlp_lainnya") dynamic atasanNoTlpLainnya,
      @JsonKey(name: "atasan.no_darurat") dynamic atasanNoDarurat,
      @JsonKey(name: "atasan.nama_kontak_darurat")
      dynamic atasanNamaKontakDarurat,
      @JsonKey(name: "atasan.agama_id") dynamic atasanAgamaId,
      @JsonKey(name: "atasan.gol_darah_id") dynamic atasanGolDarahId,
      @JsonKey(name: "atasan.status_nikah_id") dynamic atasanStatusNikahId,
      @JsonKey(name: "atasan.tanggungan_id") dynamic atasanTanggunganId,
      @JsonKey(name: "atasan.hub_dgn_karyawan") dynamic atasanHubDgnKaryawan,
      @JsonKey(name: "atasan.cuti_jatah_reguler")
      dynamic atasanCutiJatahReguler,
      @JsonKey(name: "atasan.cuti_sisa_reguler") dynamic atasanCutiSisaReguler,
      @JsonKey(name: "atasan.cuti_panjang") dynamic atasanCutiPanjang,
      @JsonKey(name: "atasan.cuti_sisa_panjang") dynamic atasanCutiSisaPanjang,
      @JsonKey(name: "atasan.status_kary_id") dynamic atasanStatusKaryId,
      @JsonKey(name: "atasan.lama_kontrak_awal") dynamic atasanLamaKontrakAwal,
      @JsonKey(name: "atasan.lama_kontrak_akhir")
      dynamic atasanLamaKontrakAkhir,
      @JsonKey(name: "atasan.tgl_masuk") dynamic atasanTglMasuk,
      @JsonKey(name: "atasan.tgl_berhenti") dynamic atasanTglBerhenti,
      @JsonKey(name: "atasan.alasan_berhenti") dynamic atasanAlasanBerhenti,
      @JsonKey(name: "atasan.uk_baju") dynamic atasanUkBaju,
      @JsonKey(name: "atasan.uk_celana") dynamic atasanUkCelana,
      @JsonKey(name: "atasan.uk_sepatu") dynamic atasanUkSepatu,
      @JsonKey(name: "atasan.desc") dynamic atasanDesc,
      @JsonKey(name: "atasan.is_active") dynamic atasanIsActive,
      @JsonKey(name: "atasan.creator_id") dynamic atasanCreatorId,
      @JsonKey(name: "atasan.last_editor_id") dynamic atasanLastEditorId,
      @JsonKey(name: "atasan.created_at") dynamic atasanCreatedAt,
      @JsonKey(name: "atasan.updated_at") dynamic atasanUpdatedAt,
      @JsonKey(name: "atasan.m_standart_gaji_id") dynamic atasanMStandartGajiId,
      @JsonKey(name: "atasan.periode_gaji_id") dynamic atasanPeriodeGajiId,
      @JsonKey(name: "atasan.ref_id") dynamic atasanRefId,
      @JsonKey(name: "atasan.presensi_lokasi_default_id")
      dynamic atasanPresensiLokasiDefaultId,
      @JsonKey(name: "atasan.exp_date_cuti") dynamic atasanExpDateCuti,
      @JsonKey(name: "atasan.limit_potong") dynamic atasanLimitPotong,
      @JsonKey(name: "atasan.atasan_id") dynamic atasanAtasanId,
      @JsonKey(name: "atasan.cuti_p24") dynamic atasanCutiP24,
      @JsonKey(name: "atasan.cuti_sisa_p24") dynamic atasanCutiSisaP24,
      @JsonKey(name: "atasan.tipe_jam_kerja_id") dynamic atasanTipeJamKerjaId,
      @JsonKey(name: "atasan.t_jadwal_kerja_id") dynamic atasanTJadwalKerjaId,
      @JsonKey(name: "tipe_jam_kerja.id") dynamic tipeJamKerjaId,
      @JsonKey(name: "tipe_jam_kerja.m_comp_id") dynamic tipeJamKerjaMCompId,
      @JsonKey(name: "tipe_jam_kerja.m_dir_id") dynamic tipeJamKerjaMDirId,
      @JsonKey(name: "tipe_jam_kerja.group") dynamic tipeJamKerjaGroup,
      @JsonKey(name: "tipe_jam_kerja.key") dynamic tipeJamKerjaKey,
      @JsonKey(name: "tipe_jam_kerja.code") dynamic tipeJamKerjaCode,
      @JsonKey(name: "tipe_jam_kerja.value") dynamic tipeJamKerjaValue,
      @JsonKey(name: "tipe_jam_kerja.is_active") dynamic tipeJamKerjaIsActive,
      @JsonKey(name: "tipe_jam_kerja.creator_id") dynamic tipeJamKerjaCreatorId,
      @JsonKey(name: "tipe_jam_kerja.last_editor_id")
      dynamic tipeJamKerjaLastEditorId,
      @JsonKey(name: "tipe_jam_kerja.created_at") dynamic tipeJamKerjaCreatedAt,
      @JsonKey(name: "tipe_jam_kerja.updated_at") dynamic tipeJamKerjaUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.value_2") dynamic tipeJamKerjaValue2,
      @JsonKey(name: "tipe_jam_kerja.value_3") dynamic tipeJamKerjaValue3,
      @JsonKey(name: "t_jadwal_kerja.id") dynamic tJadwalKerjaId,
      @JsonKey(name: "t_jadwal_kerja.nomor") dynamic tJadwalKerjaNomor,
      @JsonKey(name: "t_jadwal_kerja.m_comp_id") dynamic tJadwalKerjaMCompId,
      @JsonKey(name: "t_jadwal_kerja.m_dir_id") dynamic tJadwalKerjaMDirId,
      @JsonKey(name: "t_jadwal_kerja.m_divisi_id")
      dynamic tJadwalKerjaMDivisiId,
      @JsonKey(name: "t_jadwal_kerja.m_dept_id") dynamic tJadwalKerjaMDeptId,
      @JsonKey(name: "t_jadwal_kerja.tipe_jam_kerja_id")
      dynamic tJadwalKerjaTipeJamKerjaId,
      @JsonKey(name: "t_jadwal_kerja.keterangan")
      dynamic tJadwalKerjaKeterangan,
      @JsonKey(name: "t_jadwal_kerja.status") dynamic tJadwalKerjaStatus,
      @JsonKey(name: "t_jadwal_kerja.creator_id") dynamic tJadwalKerjaCreatorId,
      @JsonKey(name: "t_jadwal_kerja.last_editor_id")
      dynamic tJadwalKerjaLastEditorId,
      @JsonKey(name: "t_jadwal_kerja.created_at") dynamic tJadwalKerjaCreatedAt,
      @JsonKey(name: "t_jadwal_kerja.updated_at") dynamic tJadwalKerjaUpdatedAt,
      @JsonKey(name: "nomor_ktp") String? nomorKtp});
}

/// @nodoc
class __$$DataAllKaryawanImplCopyWithImpl<$Res>
    extends _$DataAllKaryawanCopyWithImpl<$Res, _$DataAllKaryawanImpl>
    implements _$$DataAllKaryawanImplCopyWith<$Res> {
  __$$DataAllKaryawanImplCopyWithImpl(
      _$DataAllKaryawanImpl _value, $Res Function(_$DataAllKaryawanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRead = freezed,
    Object? metaDelete = freezed,
    Object? metaUpdate = freezed,
    Object? metaCreate = freezed,
    Object? id = freezed,
    Object? DataAllKaryawanMCompId = freezed,
    Object? DataAllKaryawanMDirId = freezed,
    Object? DataAllKaryawanMDivisiId = freezed,
    Object? DataAllKaryawanMDeptId = freezed,
    Object? DataAllKaryawanMZonaId = freezed,
    Object? DataAllKaryawanGradingId = freezed,
    Object? DataAllKaryawanCostcontreId = freezed,
    Object? kode = freezed,
    Object? DataAllKaryawanMPosisiId = freezed,
    Object? DataAllKaryawanMJamKerjaId = freezed,
    Object? kodePresensi = freezed,
    Object? nik = freezed,
    Object? namaDepan = freezed,
    Object? namaBelakang = freezed,
    Object? namaLengkap = freezed,
    Object? namaPanggilan = freezed,
    Object? DataAllKaryawanJkId = freezed,
    Object? tempatLahir = freezed,
    Object? tglLahir = freezed,
    Object? DataAllKaryawanProvinsiId = freezed,
    Object? DataAllKaryawanKotaId = freezed,
    Object? DataAllKaryawanKecamatanId = freezed,
    Object? kodePos = freezed,
    Object? alamatAsli = freezed,
    Object? alamatDomisili = freezed,
    Object? noTlp = freezed,
    Object? noTlpLainnya = freezed,
    Object? noDarurat = freezed,
    Object? namaKontakDarurat = freezed,
    Object? DataAllKaryawanAgamaId = freezed,
    Object? DataAllKaryawanGolDarahId = freezed,
    Object? DataAllKaryawanStatusNikahId = freezed,
    Object? DataAllKaryawanTanggunganId = freezed,
    Object? hubDgnKaryawan = freezed,
    Object? cutiJatahReguler = freezed,
    Object? cutiSisaReguler = freezed,
    Object? cutiPanjang = freezed,
    Object? cutiSisaPanjang = freezed,
    Object? DataAllKaryawanStatusKaryId = freezed,
    Object? lamaKontrakAwal = freezed,
    Object? lamaKontrakAkhir = freezed,
    Object? tglMasuk = freezed,
    Object? tglBerhenti = freezed,
    Object? alasanBerhenti = freezed,
    Object? ukBaju = freezed,
    Object? ukCelana = freezed,
    Object? ukSepatu = freezed,
    Object? desc = freezed,
    Object? isActive = freezed,
    Object? DataAllKaryawanCreatorId = freezed,
    Object? DataAllKaryawanLastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? DataAllKaryawanMStandartGajiId = freezed,
    Object? DataAllKaryawanPeriodeGajiId = freezed,
    Object? DataAllKaryawanRefId = freezed,
    Object? DataAllKaryawanPresensiLokasiDefaultId = freezed,
    Object? expDateCuti = freezed,
    Object? limitPotong = freezed,
    Object? DataAllKaryawanAtasanId = freezed,
    Object? cutiP24 = freezed,
    Object? cutiSisaP24 = freezed,
    Object? DataAllKaryawanTipeJamKerjaId = freezed,
    Object? DataAllKaryawanTJadwalKerjaId = freezed,
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
    Object? mZonaKode = freezed,
    Object? mZonaNama = freezed,
    Object? mZonaDesc = freezed,
    Object? mZonaIsActive = freezed,
    Object? mZonaCreatorId = freezed,
    Object? mZonaLastEditorId = freezed,
    Object? mZonaCreatedAt = freezed,
    Object? mZonaUpdatedAt = freezed,
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
    Object? costcontreId = freezed,
    Object? costcontreMCompId = freezed,
    Object? costcontreMDirId = freezed,
    Object? costcontreGroup = freezed,
    Object? costcontreKey = freezed,
    Object? costcontreCode = freezed,
    Object? costcontreValue = freezed,
    Object? costcontreIsActive = freezed,
    Object? costcontreCreatorId = freezed,
    Object? costcontreLastEditorId = freezed,
    Object? costcontreCreatedAt = freezed,
    Object? costcontreUpdatedAt = freezed,
    Object? costcontreValue2 = freezed,
    Object? costcontreValue3 = freezed,
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
    Object? mJamKerjaId = freezed,
    Object? mJamKerjaMCompId = freezed,
    Object? mJamKerjaMDirId = freezed,
    Object? mJamKerjaKode = freezed,
    Object? mJamKerjaTipeJamKerjaId = freezed,
    Object? mJamKerjaWaktuMulai = freezed,
    Object? mJamKerjaWaktuAkhir = freezed,
    Object? mJamKerjaIsHariBerikutnya = freezed,
    Object? mJamKerjaDesc = freezed,
    Object? mJamKerjaIsActive = freezed,
    Object? mJamKerjaCreatorId = freezed,
    Object? mJamKerjaLastEditorId = freezed,
    Object? mJamKerjaCreatedAt = freezed,
    Object? mJamKerjaUpdatedAt = freezed,
    Object? jkId = freezed,
    Object? jkMCompId = freezed,
    Object? jkMDirId = freezed,
    Object? jkGroup = freezed,
    Object? jkKey = freezed,
    Object? jkCode = freezed,
    Object? jkValue = freezed,
    Object? jkIsActive = freezed,
    Object? jkCreatorId = freezed,
    Object? jkLastEditorId = freezed,
    Object? jkCreatedAt = freezed,
    Object? jkUpdatedAt = freezed,
    Object? jkValue2 = freezed,
    Object? jkValue3 = freezed,
    Object? provinsiId = freezed,
    Object? provinsiMCompId = freezed,
    Object? provinsiMDirId = freezed,
    Object? provinsiGroup = freezed,
    Object? provinsiKey = freezed,
    Object? provinsiCode = freezed,
    Object? provinsiValue = freezed,
    Object? provinsiIsActive = freezed,
    Object? provinsiCreatorId = freezed,
    Object? provinsiLastEditorId = freezed,
    Object? provinsiCreatedAt = freezed,
    Object? provinsiUpdatedAt = freezed,
    Object? provinsiValue2 = freezed,
    Object? provinsiValue3 = freezed,
    Object? kotaId = freezed,
    Object? kotaMCompId = freezed,
    Object? kotaMDirId = freezed,
    Object? kotaGroup = freezed,
    Object? kotaKey = freezed,
    Object? kotaCode = freezed,
    Object? kotaValue = freezed,
    Object? kotaIsActive = freezed,
    Object? kotaCreatorId = freezed,
    Object? kotaLastEditorId = freezed,
    Object? kotaCreatedAt = freezed,
    Object? kotaUpdatedAt = freezed,
    Object? kotaValue2 = freezed,
    Object? kotaValue3 = freezed,
    Object? kecamatanId = freezed,
    Object? kecamatanMCompId = freezed,
    Object? kecamatanMDirId = freezed,
    Object? kecamatanGroup = freezed,
    Object? kecamatanKey = freezed,
    Object? kecamatanCode = freezed,
    Object? kecamatanValue = freezed,
    Object? kecamatanIsActive = freezed,
    Object? kecamatanCreatorId = freezed,
    Object? kecamatanLastEditorId = freezed,
    Object? kecamatanCreatedAt = freezed,
    Object? kecamatanUpdatedAt = freezed,
    Object? kecamatanValue2 = freezed,
    Object? kecamatanValue3 = freezed,
    Object? agamaId = freezed,
    Object? agamaMCompId = freezed,
    Object? agamaMDirId = freezed,
    Object? agamaGroup = freezed,
    Object? agamaKey = freezed,
    Object? agamaCode = freezed,
    Object? agamaValue = freezed,
    Object? agamaIsActive = freezed,
    Object? agamaCreatorId = freezed,
    Object? agamaLastEditorId = freezed,
    Object? agamaCreatedAt = freezed,
    Object? agamaUpdatedAt = freezed,
    Object? agamaValue2 = freezed,
    Object? agamaValue3 = freezed,
    Object? golDarahId = freezed,
    Object? golDarahMCompId = freezed,
    Object? golDarahMDirId = freezed,
    Object? golDarahGroup = freezed,
    Object? golDarahKey = freezed,
    Object? golDarahCode = freezed,
    Object? golDarahValue = freezed,
    Object? golDarahIsActive = freezed,
    Object? golDarahCreatorId = freezed,
    Object? golDarahLastEditorId = freezed,
    Object? golDarahCreatedAt = freezed,
    Object? golDarahUpdatedAt = freezed,
    Object? golDarahValue2 = freezed,
    Object? golDarahValue3 = freezed,
    Object? statusNikahId = freezed,
    Object? statusNikahMCompId = freezed,
    Object? statusNikahMDirId = freezed,
    Object? statusNikahGroup = freezed,
    Object? statusNikahKey = freezed,
    Object? statusNikahCode = freezed,
    Object? statusNikahValue = freezed,
    Object? statusNikahIsActive = freezed,
    Object? statusNikahCreatorId = freezed,
    Object? statusNikahLastEditorId = freezed,
    Object? statusNikahCreatedAt = freezed,
    Object? statusNikahUpdatedAt = freezed,
    Object? statusNikahValue2 = freezed,
    Object? statusNikahValue3 = freezed,
    Object? tanggunganId = freezed,
    Object? tanggunganMCompId = freezed,
    Object? tanggunganMDirId = freezed,
    Object? tanggunganGroup = freezed,
    Object? tanggunganKey = freezed,
    Object? tanggunganCode = freezed,
    Object? tanggunganValue = freezed,
    Object? tanggunganIsActive = freezed,
    Object? tanggunganCreatorId = freezed,
    Object? tanggunganLastEditorId = freezed,
    Object? tanggunganCreatedAt = freezed,
    Object? tanggunganUpdatedAt = freezed,
    Object? tanggunganValue2 = freezed,
    Object? tanggunganValue3 = freezed,
    Object? statusKaryId = freezed,
    Object? statusKaryMCompId = freezed,
    Object? statusKaryMDirId = freezed,
    Object? statusKaryGroup = freezed,
    Object? statusKaryKey = freezed,
    Object? statusKaryCode = freezed,
    Object? statusKaryValue = freezed,
    Object? statusKaryIsActive = freezed,
    Object? statusKaryCreatorId = freezed,
    Object? statusKaryLastEditorId = freezed,
    Object? statusKaryCreatedAt = freezed,
    Object? statusKaryUpdatedAt = freezed,
    Object? statusKaryValue2 = freezed,
    Object? statusKaryValue3 = freezed,
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
    Object? mStandartGajiId = freezed,
    Object? mStandartGajiMCompId = freezed,
    Object? mStandartGajiMDirId = freezed,
    Object? mStandartGajiKode = freezed,
    Object? mStandartGajiMDivisiId = freezed,
    Object? mStandartGajiMDeptId = freezed,
    Object? mStandartGajiMZonaId = freezed,
    Object? mStandartGajiMPosisiId = freezed,
    Object? mStandartGajiGradingId = freezed,
    Object? mStandartGajiGajiPokok = freezed,
    Object? mStandartGajiGajiPokokPeriode = freezed,
    Object? mStandartGajiUangSaku = freezed,
    Object? mStandartGajiUangSakuPeriode = freezed,
    Object? mStandartGajiTunjanganPosisi = freezed,
    Object? mStandartGajiTunjanganPosisiPeriode = freezed,
    Object? mStandartGajiTunjanganKemahalanId = freezed,
    Object? mStandartGajiTunjanganKemahalanPeriode = freezed,
    Object? mStandartGajiUangMakan = freezed,
    Object? mStandartGajiUangMakanPeriode = freezed,
    Object? mStandartGajiTunjanganTetap = freezed,
    Object? mStandartGajiTunjanganTetapPeriode = freezed,
    Object? mStandartGajiDesc = freezed,
    Object? mStandartGajiIsActive = freezed,
    Object? mStandartGajiCreatorId = freezed,
    Object? mStandartGajiLastEditorId = freezed,
    Object? mStandartGajiCreatedAt = freezed,
    Object? mStandartGajiUpdatedAt = freezed,
    Object? periodeGajiId = freezed,
    Object? periodeGajiMCompId = freezed,
    Object? periodeGajiMDirId = freezed,
    Object? periodeGajiGroup = freezed,
    Object? periodeGajiKey = freezed,
    Object? periodeGajiCode = freezed,
    Object? periodeGajiValue = freezed,
    Object? periodeGajiIsActive = freezed,
    Object? periodeGajiCreatorId = freezed,
    Object? periodeGajiLastEditorId = freezed,
    Object? periodeGajiCreatedAt = freezed,
    Object? periodeGajiUpdatedAt = freezed,
    Object? periodeGajiValue2 = freezed,
    Object? periodeGajiValue3 = freezed,
    Object? refId = freezed,
    Object? refNomor = freezed,
    Object? refMCompId = freezed,
    Object? refMDirId = freezed,
    Object? refNamaPelamar = freezed,
    Object? refKtpNo = freezed,
    Object? refTanggal = freezed,
    Object? refRef = freezed,
    Object? refTelp = freezed,
    Object? refJkId = freezed,
    Object? refTglLahir = freezed,
    Object? refSalary = freezed,
    Object? refDeskripsi = freezed,
    Object? refStatus = freezed,
    Object? refCreatorId = freezed,
    Object? refLastEditorId = freezed,
    Object? refCreatedAt = freezed,
    Object? refUpdatedAt = freezed,
    Object? refMDivisiId = freezed,
    Object? refMDeptId = freezed,
    Object? refMPosisiId = freezed,
    Object? refTempatLahir = freezed,
    Object? refTLokerId = freezed,
    Object? presensiLokasiDefaultId = freezed,
    Object? presensiLokasiDefaultCompId = freezed,
    Object? presensiLokasiDefaultDefaultUserId = freezed,
    Object? presensiLokasiDefaultNama = freezed,
    Object? presensiLokasiDefaultLat = freezed,
    Object? presensiLokasiDefaultLong = freezed,
    Object? presensiLokasiDefaultIsActive = freezed,
    Object? presensiLokasiDefaultCreatorId = freezed,
    Object? presensiLokasiDefaultLastEditorId = freezed,
    Object? presensiLokasiDefaultCreatedAt = freezed,
    Object? presensiLokasiDefaultUpdatedAt = freezed,
    Object? atasanId = freezed,
    Object? atasanMCompId = freezed,
    Object? atasanMDirId = freezed,
    Object? atasanMDivisiId = freezed,
    Object? atasanMDeptId = freezed,
    Object? atasanMZonaId = freezed,
    Object? atasanGradingId = freezed,
    Object? atasanCostcontreId = freezed,
    Object? atasanKode = freezed,
    Object? atasanMPosisiId = freezed,
    Object? atasanMJamKerjaId = freezed,
    Object? atasanKodePresensi = freezed,
    Object? atasanNik = freezed,
    Object? atasanNamaDepan = freezed,
    Object? atasanNamaBelakang = freezed,
    Object? atasanNamaLengkap = freezed,
    Object? atasanNamaPanggilan = freezed,
    Object? atasanJkId = freezed,
    Object? atasanTempatLahir = freezed,
    Object? atasanTglLahir = freezed,
    Object? atasanProvinsiId = freezed,
    Object? atasanKotaId = freezed,
    Object? atasanKecamatanId = freezed,
    Object? atasanKodePos = freezed,
    Object? atasanAlamatAsli = freezed,
    Object? atasanAlamatDomisili = freezed,
    Object? atasanNoTlp = freezed,
    Object? atasanNoTlpLainnya = freezed,
    Object? atasanNoDarurat = freezed,
    Object? atasanNamaKontakDarurat = freezed,
    Object? atasanAgamaId = freezed,
    Object? atasanGolDarahId = freezed,
    Object? atasanStatusNikahId = freezed,
    Object? atasanTanggunganId = freezed,
    Object? atasanHubDgnKaryawan = freezed,
    Object? atasanCutiJatahReguler = freezed,
    Object? atasanCutiSisaReguler = freezed,
    Object? atasanCutiPanjang = freezed,
    Object? atasanCutiSisaPanjang = freezed,
    Object? atasanStatusKaryId = freezed,
    Object? atasanLamaKontrakAwal = freezed,
    Object? atasanLamaKontrakAkhir = freezed,
    Object? atasanTglMasuk = freezed,
    Object? atasanTglBerhenti = freezed,
    Object? atasanAlasanBerhenti = freezed,
    Object? atasanUkBaju = freezed,
    Object? atasanUkCelana = freezed,
    Object? atasanUkSepatu = freezed,
    Object? atasanDesc = freezed,
    Object? atasanIsActive = freezed,
    Object? atasanCreatorId = freezed,
    Object? atasanLastEditorId = freezed,
    Object? atasanCreatedAt = freezed,
    Object? atasanUpdatedAt = freezed,
    Object? atasanMStandartGajiId = freezed,
    Object? atasanPeriodeGajiId = freezed,
    Object? atasanRefId = freezed,
    Object? atasanPresensiLokasiDefaultId = freezed,
    Object? atasanExpDateCuti = freezed,
    Object? atasanLimitPotong = freezed,
    Object? atasanAtasanId = freezed,
    Object? atasanCutiP24 = freezed,
    Object? atasanCutiSisaP24 = freezed,
    Object? atasanTipeJamKerjaId = freezed,
    Object? atasanTJadwalKerjaId = freezed,
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
    Object? tJadwalKerjaId = freezed,
    Object? tJadwalKerjaNomor = freezed,
    Object? tJadwalKerjaMCompId = freezed,
    Object? tJadwalKerjaMDirId = freezed,
    Object? tJadwalKerjaMDivisiId = freezed,
    Object? tJadwalKerjaMDeptId = freezed,
    Object? tJadwalKerjaTipeJamKerjaId = freezed,
    Object? tJadwalKerjaKeterangan = freezed,
    Object? tJadwalKerjaStatus = freezed,
    Object? tJadwalKerjaCreatorId = freezed,
    Object? tJadwalKerjaLastEditorId = freezed,
    Object? tJadwalKerjaCreatedAt = freezed,
    Object? tJadwalKerjaUpdatedAt = freezed,
    Object? nomorKtp = freezed,
  }) {
    return _then(_$DataAllKaryawanImpl(
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
      DataAllKaryawanMCompId: freezed == DataAllKaryawanMCompId
          ? _value.DataAllKaryawanMCompId
          : DataAllKaryawanMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanMDirId: freezed == DataAllKaryawanMDirId
          ? _value.DataAllKaryawanMDirId
          : DataAllKaryawanMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanMDivisiId: freezed == DataAllKaryawanMDivisiId
          ? _value.DataAllKaryawanMDivisiId
          : DataAllKaryawanMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanMDeptId: freezed == DataAllKaryawanMDeptId
          ? _value.DataAllKaryawanMDeptId
          : DataAllKaryawanMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanMZonaId: freezed == DataAllKaryawanMZonaId
          ? _value.DataAllKaryawanMZonaId
          : DataAllKaryawanMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanGradingId: freezed == DataAllKaryawanGradingId
          ? _value.DataAllKaryawanGradingId
          : DataAllKaryawanGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanCostcontreId: freezed == DataAllKaryawanCostcontreId
          ? _value.DataAllKaryawanCostcontreId
          : DataAllKaryawanCostcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanMPosisiId: freezed == DataAllKaryawanMPosisiId
          ? _value.DataAllKaryawanMPosisiId
          : DataAllKaryawanMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanMJamKerjaId: freezed == DataAllKaryawanMJamKerjaId
          ? _value.DataAllKaryawanMJamKerjaId
          : DataAllKaryawanMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kodePresensi: freezed == kodePresensi
          ? _value.kodePresensi
          : kodePresensi // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      namaDepan: freezed == namaDepan
          ? _value.namaDepan
          : namaDepan // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBelakang: freezed == namaBelakang
          ? _value.namaBelakang
          : namaBelakang // ignore: cast_nullable_to_non_nullable
              as String?,
      namaLengkap: freezed == namaLengkap
          ? _value.namaLengkap
          : namaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      namaPanggilan: freezed == namaPanggilan
          ? _value.namaPanggilan
          : namaPanggilan // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanJkId: freezed == DataAllKaryawanJkId
          ? _value.DataAllKaryawanJkId
          : DataAllKaryawanJkId // ignore: cast_nullable_to_non_nullable
              as int?,
      tempatLahir: freezed == tempatLahir
          ? _value.tempatLahir
          : tempatLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      tglLahir: freezed == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanProvinsiId: freezed == DataAllKaryawanProvinsiId
          ? _value.DataAllKaryawanProvinsiId
          : DataAllKaryawanProvinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanKotaId: freezed == DataAllKaryawanKotaId
          ? _value.DataAllKaryawanKotaId
          : DataAllKaryawanKotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanKecamatanId: freezed == DataAllKaryawanKecamatanId
          ? _value.DataAllKaryawanKecamatanId
          : DataAllKaryawanKecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
      kodePos: freezed == kodePos
          ? _value.kodePos
          : kodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      alamatAsli: freezed == alamatAsli
          ? _value.alamatAsli
          : alamatAsli // ignore: cast_nullable_to_non_nullable
              as String?,
      alamatDomisili: freezed == alamatDomisili
          ? _value.alamatDomisili
          : alamatDomisili // ignore: cast_nullable_to_non_nullable
              as String?,
      noTlp: freezed == noTlp
          ? _value.noTlp
          : noTlp // ignore: cast_nullable_to_non_nullable
              as String?,
      noTlpLainnya: freezed == noTlpLainnya
          ? _value.noTlpLainnya
          : noTlpLainnya // ignore: cast_nullable_to_non_nullable
              as String?,
      noDarurat: freezed == noDarurat
          ? _value.noDarurat
          : noDarurat // ignore: cast_nullable_to_non_nullable
              as String?,
      namaKontakDarurat: freezed == namaKontakDarurat
          ? _value.namaKontakDarurat
          : namaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanAgamaId: freezed == DataAllKaryawanAgamaId
          ? _value.DataAllKaryawanAgamaId
          : DataAllKaryawanAgamaId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanGolDarahId: freezed == DataAllKaryawanGolDarahId
          ? _value.DataAllKaryawanGolDarahId
          : DataAllKaryawanGolDarahId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanStatusNikahId: freezed == DataAllKaryawanStatusNikahId
          ? _value.DataAllKaryawanStatusNikahId
          : DataAllKaryawanStatusNikahId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanTanggunganId: freezed == DataAllKaryawanTanggunganId
          ? _value.DataAllKaryawanTanggunganId
          : DataAllKaryawanTanggunganId // ignore: cast_nullable_to_non_nullable
              as int?,
      hubDgnKaryawan: freezed == hubDgnKaryawan
          ? _value.hubDgnKaryawan
          : hubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as String?,
      cutiJatahReguler: freezed == cutiJatahReguler
          ? _value.cutiJatahReguler
          : cutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cutiSisaReguler: freezed == cutiSisaReguler
          ? _value.cutiSisaReguler
          : cutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cutiPanjang: freezed == cutiPanjang
          ? _value.cutiPanjang
          : cutiPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cutiSisaPanjang: freezed == cutiSisaPanjang
          ? _value.cutiSisaPanjang
          : cutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanStatusKaryId: freezed == DataAllKaryawanStatusKaryId
          ? _value.DataAllKaryawanStatusKaryId
          : DataAllKaryawanStatusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lamaKontrakAwal: freezed == lamaKontrakAwal
          ? _value.lamaKontrakAwal
          : lamaKontrakAwal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lamaKontrakAkhir: freezed == lamaKontrakAkhir
          ? _value.lamaKontrakAkhir
          : lamaKontrakAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tglMasuk: freezed == tglMasuk
          ? _value.tglMasuk
          : tglMasuk // ignore: cast_nullable_to_non_nullable
              as String?,
      tglBerhenti: freezed == tglBerhenti
          ? _value.tglBerhenti
          : tglBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alasanBerhenti: freezed == alasanBerhenti
          ? _value.alasanBerhenti
          : alasanBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ukBaju: freezed == ukBaju
          ? _value.ukBaju
          : ukBaju // ignore: cast_nullable_to_non_nullable
              as String?,
      ukCelana: freezed == ukCelana
          ? _value.ukCelana
          : ukCelana // ignore: cast_nullable_to_non_nullable
              as String?,
      ukSepatu: freezed == ukSepatu
          ? _value.ukSepatu
          : ukSepatu // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      DataAllKaryawanCreatorId: freezed == DataAllKaryawanCreatorId
          ? _value.DataAllKaryawanCreatorId
          : DataAllKaryawanCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanLastEditorId: freezed == DataAllKaryawanLastEditorId
          ? _value.DataAllKaryawanLastEditorId
          : DataAllKaryawanLastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      DataAllKaryawanMStandartGajiId: freezed == DataAllKaryawanMStandartGajiId
          ? _value.DataAllKaryawanMStandartGajiId
          : DataAllKaryawanMStandartGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanPeriodeGajiId: freezed == DataAllKaryawanPeriodeGajiId
          ? _value.DataAllKaryawanPeriodeGajiId
          : DataAllKaryawanPeriodeGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanRefId: freezed == DataAllKaryawanRefId
          ? _value.DataAllKaryawanRefId
          : DataAllKaryawanRefId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanPresensiLokasiDefaultId: freezed ==
              DataAllKaryawanPresensiLokasiDefaultId
          ? _value.DataAllKaryawanPresensiLokasiDefaultId
          : DataAllKaryawanPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as int?,
      expDateCuti: freezed == expDateCuti
          ? _value.expDateCuti
          : expDateCuti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      limitPotong: freezed == limitPotong
          ? _value.limitPotong
          : limitPotong // ignore: cast_nullable_to_non_nullable
              as int?,
      DataAllKaryawanAtasanId: freezed == DataAllKaryawanAtasanId
          ? _value.DataAllKaryawanAtasanId
          : DataAllKaryawanAtasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiP24: freezed == cutiP24
          ? _value.cutiP24
          : cutiP24 // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiSisaP24: freezed == cutiSisaP24
          ? _value.cutiSisaP24
          : cutiSisaP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanTipeJamKerjaId: freezed == DataAllKaryawanTipeJamKerjaId
          ? _value.DataAllKaryawanTipeJamKerjaId
          : DataAllKaryawanTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      DataAllKaryawanTJadwalKerjaId: freezed == DataAllKaryawanTJadwalKerjaId
          ? _value.DataAllKaryawanTJadwalKerjaId
          : DataAllKaryawanTJadwalKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompId: freezed == mCompId
          ? _value.mCompId
          : mCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompNama: freezed == mCompNama
          ? _value.mCompNama
          : mCompNama // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mCompIsActive: freezed == mCompIsActive
          ? _value.mCompIsActive
          : mCompIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
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
              as int?,
      mDivisiLastEditorId: freezed == mDivisiLastEditorId
          ? _value.mDivisiLastEditorId
          : mDivisiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as String?,
      mDeptUpdatedAt: freezed == mDeptUpdatedAt
          ? _value.mDeptUpdatedAt
          : mDeptUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mZonaId: freezed == mZonaId
          ? _value.mZonaId
          : mZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaMCompId: freezed == mZonaMCompId
          ? _value.mZonaMCompId
          : mZonaMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaMDirId: freezed == mZonaMDirId
          ? _value.mZonaMDirId
          : mZonaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaKode: freezed == mZonaKode
          ? _value.mZonaKode
          : mZonaKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaNama: freezed == mZonaNama
          ? _value.mZonaNama
          : mZonaNama // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaDesc: freezed == mZonaDesc
          ? _value.mZonaDesc
          : mZonaDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mZonaIsActive: freezed == mZonaIsActive
          ? _value.mZonaIsActive
          : mZonaIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      mZonaUpdatedAt: freezed == mZonaUpdatedAt
          ? _value.mZonaUpdatedAt
          : mZonaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingId: freezed == gradingId
          ? _value.gradingId
          : gradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingMCompId: freezed == gradingMCompId
          ? _value.gradingMCompId
          : gradingMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingMDirId: freezed == gradingMDirId
          ? _value.gradingMDirId
          : gradingMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingGroup: freezed == gradingGroup
          ? _value.gradingGroup
          : gradingGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingKey: freezed == gradingKey
          ? _value.gradingKey
          : gradingKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingCode: freezed == gradingCode
          ? _value.gradingCode
          : gradingCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingValue: freezed == gradingValue
          ? _value.gradingValue
          : gradingValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingIsActive: freezed == gradingIsActive
          ? _value.gradingIsActive
          : gradingIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      gradingUpdatedAt: freezed == gradingUpdatedAt
          ? _value.gradingUpdatedAt
          : gradingUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingValue2: freezed == gradingValue2
          ? _value.gradingValue2
          : gradingValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradingValue3: freezed == gradingValue3
          ? _value.gradingValue3
          : gradingValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreId: freezed == costcontreId
          ? _value.costcontreId
          : costcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreMCompId: freezed == costcontreMCompId
          ? _value.costcontreMCompId
          : costcontreMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreMDirId: freezed == costcontreMDirId
          ? _value.costcontreMDirId
          : costcontreMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreGroup: freezed == costcontreGroup
          ? _value.costcontreGroup
          : costcontreGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreKey: freezed == costcontreKey
          ? _value.costcontreKey
          : costcontreKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreCode: freezed == costcontreCode
          ? _value.costcontreCode
          : costcontreCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreValue: freezed == costcontreValue
          ? _value.costcontreValue
          : costcontreValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreIsActive: freezed == costcontreIsActive
          ? _value.costcontreIsActive
          : costcontreIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreCreatorId: freezed == costcontreCreatorId
          ? _value.costcontreCreatorId
          : costcontreCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreLastEditorId: freezed == costcontreLastEditorId
          ? _value.costcontreLastEditorId
          : costcontreLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreCreatedAt: freezed == costcontreCreatedAt
          ? _value.costcontreCreatedAt
          : costcontreCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreUpdatedAt: freezed == costcontreUpdatedAt
          ? _value.costcontreUpdatedAt
          : costcontreUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreValue2: freezed == costcontreValue2
          ? _value.costcontreValue2
          : costcontreValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreValue3: freezed == costcontreValue3
          ? _value.costcontreValue3
          : costcontreValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiId: freezed == mPosisiId
          ? _value.mPosisiId
          : mPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mPosisiMCompId: freezed == mPosisiMCompId
          ? _value.mPosisiMCompId
          : mPosisiMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mPosisiMDirId: freezed == mPosisiMDirId
          ? _value.mPosisiMDirId
          : mPosisiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
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
              as dynamic,
      mPosisiPotonganBpjs: freezed == mPosisiPotonganBpjs
          ? _value.mPosisiPotonganBpjs
          : mPosisiPotonganBpjs // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      mJamKerjaId: freezed == mJamKerjaId
          ? _value.mJamKerjaId
          : mJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaMCompId: freezed == mJamKerjaMCompId
          ? _value.mJamKerjaMCompId
          : mJamKerjaMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaMDirId: freezed == mJamKerjaMDirId
          ? _value.mJamKerjaMDirId
          : mJamKerjaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaKode: freezed == mJamKerjaKode
          ? _value.mJamKerjaKode
          : mJamKerjaKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaTipeJamKerjaId: freezed == mJamKerjaTipeJamKerjaId
          ? _value.mJamKerjaTipeJamKerjaId
          : mJamKerjaTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaWaktuMulai: freezed == mJamKerjaWaktuMulai
          ? _value.mJamKerjaWaktuMulai
          : mJamKerjaWaktuMulai // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaWaktuAkhir: freezed == mJamKerjaWaktuAkhir
          ? _value.mJamKerjaWaktuAkhir
          : mJamKerjaWaktuAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaIsHariBerikutnya: freezed == mJamKerjaIsHariBerikutnya
          ? _value.mJamKerjaIsHariBerikutnya
          : mJamKerjaIsHariBerikutnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaDesc: freezed == mJamKerjaDesc
          ? _value.mJamKerjaDesc
          : mJamKerjaDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaIsActive: freezed == mJamKerjaIsActive
          ? _value.mJamKerjaIsActive
          : mJamKerjaIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaCreatorId: freezed == mJamKerjaCreatorId
          ? _value.mJamKerjaCreatorId
          : mJamKerjaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaLastEditorId: freezed == mJamKerjaLastEditorId
          ? _value.mJamKerjaLastEditorId
          : mJamKerjaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaCreatedAt: freezed == mJamKerjaCreatedAt
          ? _value.mJamKerjaCreatedAt
          : mJamKerjaCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mJamKerjaUpdatedAt: freezed == mJamKerjaUpdatedAt
          ? _value.mJamKerjaUpdatedAt
          : mJamKerjaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkId: freezed == jkId
          ? _value.jkId
          : jkId // ignore: cast_nullable_to_non_nullable
              as int?,
      jkMCompId: freezed == jkMCompId
          ? _value.jkMCompId
          : jkMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      jkMDirId: freezed == jkMDirId
          ? _value.jkMDirId
          : jkMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkGroup: freezed == jkGroup
          ? _value.jkGroup
          : jkGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      jkKey: freezed == jkKey
          ? _value.jkKey
          : jkKey // ignore: cast_nullable_to_non_nullable
              as String?,
      jkCode: freezed == jkCode
          ? _value.jkCode
          : jkCode // ignore: cast_nullable_to_non_nullable
              as String?,
      jkValue: freezed == jkValue
          ? _value.jkValue
          : jkValue // ignore: cast_nullable_to_non_nullable
              as String?,
      jkIsActive: freezed == jkIsActive
          ? _value.jkIsActive
          : jkIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      jkCreatorId: freezed == jkCreatorId
          ? _value.jkCreatorId
          : jkCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkLastEditorId: freezed == jkLastEditorId
          ? _value.jkLastEditorId
          : jkLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkCreatedAt: freezed == jkCreatedAt
          ? _value.jkCreatedAt
          : jkCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      jkUpdatedAt: freezed == jkUpdatedAt
          ? _value.jkUpdatedAt
          : jkUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      jkValue2: freezed == jkValue2
          ? _value.jkValue2
          : jkValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jkValue3: freezed == jkValue3
          ? _value.jkValue3
          : jkValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiId: freezed == provinsiId
          ? _value.provinsiId
          : provinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      provinsiMCompId: freezed == provinsiMCompId
          ? _value.provinsiMCompId
          : provinsiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      provinsiMDirId: freezed == provinsiMDirId
          ? _value.provinsiMDirId
          : provinsiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiGroup: freezed == provinsiGroup
          ? _value.provinsiGroup
          : provinsiGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsiKey: freezed == provinsiKey
          ? _value.provinsiKey
          : provinsiKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiCode: freezed == provinsiCode
          ? _value.provinsiCode
          : provinsiCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiValue: freezed == provinsiValue
          ? _value.provinsiValue
          : provinsiValue // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsiIsActive: freezed == provinsiIsActive
          ? _value.provinsiIsActive
          : provinsiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      provinsiCreatorId: freezed == provinsiCreatorId
          ? _value.provinsiCreatorId
          : provinsiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiLastEditorId: freezed == provinsiLastEditorId
          ? _value.provinsiLastEditorId
          : provinsiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiCreatedAt: freezed == provinsiCreatedAt
          ? _value.provinsiCreatedAt
          : provinsiCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiUpdatedAt: freezed == provinsiUpdatedAt
          ? _value.provinsiUpdatedAt
          : provinsiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsiValue2: freezed == provinsiValue2
          ? _value.provinsiValue2
          : provinsiValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      provinsiValue3: freezed == provinsiValue3
          ? _value.provinsiValue3
          : provinsiValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaMCompId: freezed == kotaMCompId
          ? _value.kotaMCompId
          : kotaMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaMDirId: freezed == kotaMDirId
          ? _value.kotaMDirId
          : kotaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaGroup: freezed == kotaGroup
          ? _value.kotaGroup
          : kotaGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaKey: freezed == kotaKey
          ? _value.kotaKey
          : kotaKey // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaCode: freezed == kotaCode
          ? _value.kotaCode
          : kotaCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaValue: freezed == kotaValue
          ? _value.kotaValue
          : kotaValue // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIsActive: freezed == kotaIsActive
          ? _value.kotaIsActive
          : kotaIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      kotaCreatorId: freezed == kotaCreatorId
          ? _value.kotaCreatorId
          : kotaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaLastEditorId: freezed == kotaLastEditorId
          ? _value.kotaLastEditorId
          : kotaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaCreatedAt: freezed == kotaCreatedAt
          ? _value.kotaCreatedAt
          : kotaCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaUpdatedAt: freezed == kotaUpdatedAt
          ? _value.kotaUpdatedAt
          : kotaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaValue2: freezed == kotaValue2
          ? _value.kotaValue2
          : kotaValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kotaValue3: freezed == kotaValue3
          ? _value.kotaValue3
          : kotaValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanId: freezed == kecamatanId
          ? _value.kecamatanId
          : kecamatanId // ignore: cast_nullable_to_non_nullable
              as int?,
      kecamatanMCompId: freezed == kecamatanMCompId
          ? _value.kecamatanMCompId
          : kecamatanMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      kecamatanMDirId: freezed == kecamatanMDirId
          ? _value.kecamatanMDirId
          : kecamatanMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanGroup: freezed == kecamatanGroup
          ? _value.kecamatanGroup
          : kecamatanGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatanKey: freezed == kecamatanKey
          ? _value.kecamatanKey
          : kecamatanKey // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatanCode: freezed == kecamatanCode
          ? _value.kecamatanCode
          : kecamatanCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanValue: freezed == kecamatanValue
          ? _value.kecamatanValue
          : kecamatanValue // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatanIsActive: freezed == kecamatanIsActive
          ? _value.kecamatanIsActive
          : kecamatanIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      kecamatanCreatorId: freezed == kecamatanCreatorId
          ? _value.kecamatanCreatorId
          : kecamatanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanLastEditorId: freezed == kecamatanLastEditorId
          ? _value.kecamatanLastEditorId
          : kecamatanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanCreatedAt: freezed == kecamatanCreatedAt
          ? _value.kecamatanCreatedAt
          : kecamatanCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanUpdatedAt: freezed == kecamatanUpdatedAt
          ? _value.kecamatanUpdatedAt
          : kecamatanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanValue2: freezed == kecamatanValue2
          ? _value.kecamatanValue2
          : kecamatanValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatanValue3: freezed == kecamatanValue3
          ? _value.kecamatanValue3
          : kecamatanValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaId: freezed == agamaId
          ? _value.agamaId
          : agamaId // ignore: cast_nullable_to_non_nullable
              as int?,
      agamaMCompId: freezed == agamaMCompId
          ? _value.agamaMCompId
          : agamaMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      agamaMDirId: freezed == agamaMDirId
          ? _value.agamaMDirId
          : agamaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaGroup: freezed == agamaGroup
          ? _value.agamaGroup
          : agamaGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaKey: freezed == agamaKey
          ? _value.agamaKey
          : agamaKey // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaCode: freezed == agamaCode
          ? _value.agamaCode
          : agamaCode // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaValue: freezed == agamaValue
          ? _value.agamaValue
          : agamaValue // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaIsActive: freezed == agamaIsActive
          ? _value.agamaIsActive
          : agamaIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      agamaCreatorId: freezed == agamaCreatorId
          ? _value.agamaCreatorId
          : agamaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaLastEditorId: freezed == agamaLastEditorId
          ? _value.agamaLastEditorId
          : agamaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaCreatedAt: freezed == agamaCreatedAt
          ? _value.agamaCreatedAt
          : agamaCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaUpdatedAt: freezed == agamaUpdatedAt
          ? _value.agamaUpdatedAt
          : agamaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      agamaValue2: freezed == agamaValue2
          ? _value.agamaValue2
          : agamaValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agamaValue3: freezed == agamaValue3
          ? _value.agamaValue3
          : agamaValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahId: freezed == golDarahId
          ? _value.golDarahId
          : golDarahId // ignore: cast_nullable_to_non_nullable
              as int?,
      golDarahMCompId: freezed == golDarahMCompId
          ? _value.golDarahMCompId
          : golDarahMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      golDarahMDirId: freezed == golDarahMDirId
          ? _value.golDarahMDirId
          : golDarahMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahGroup: freezed == golDarahGroup
          ? _value.golDarahGroup
          : golDarahGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahKey: freezed == golDarahKey
          ? _value.golDarahKey
          : golDarahKey // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahCode: freezed == golDarahCode
          ? _value.golDarahCode
          : golDarahCode // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahValue: freezed == golDarahValue
          ? _value.golDarahValue
          : golDarahValue // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahIsActive: freezed == golDarahIsActive
          ? _value.golDarahIsActive
          : golDarahIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      golDarahCreatorId: freezed == golDarahCreatorId
          ? _value.golDarahCreatorId
          : golDarahCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahLastEditorId: freezed == golDarahLastEditorId
          ? _value.golDarahLastEditorId
          : golDarahLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahCreatedAt: freezed == golDarahCreatedAt
          ? _value.golDarahCreatedAt
          : golDarahCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahUpdatedAt: freezed == golDarahUpdatedAt
          ? _value.golDarahUpdatedAt
          : golDarahUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarahValue2: freezed == golDarahValue2
          ? _value.golDarahValue2
          : golDarahValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      golDarahValue3: freezed == golDarahValue3
          ? _value.golDarahValue3
          : golDarahValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahId: freezed == statusNikahId
          ? _value.statusNikahId
          : statusNikahId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusNikahMCompId: freezed == statusNikahMCompId
          ? _value.statusNikahMCompId
          : statusNikahMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusNikahMDirId: freezed == statusNikahMDirId
          ? _value.statusNikahMDirId
          : statusNikahMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahGroup: freezed == statusNikahGroup
          ? _value.statusNikahGroup
          : statusNikahGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahKey: freezed == statusNikahKey
          ? _value.statusNikahKey
          : statusNikahKey // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahCode: freezed == statusNikahCode
          ? _value.statusNikahCode
          : statusNikahCode // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahValue: freezed == statusNikahValue
          ? _value.statusNikahValue
          : statusNikahValue // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahIsActive: freezed == statusNikahIsActive
          ? _value.statusNikahIsActive
          : statusNikahIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusNikahCreatorId: freezed == statusNikahCreatorId
          ? _value.statusNikahCreatorId
          : statusNikahCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahLastEditorId: freezed == statusNikahLastEditorId
          ? _value.statusNikahLastEditorId
          : statusNikahLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahCreatedAt: freezed == statusNikahCreatedAt
          ? _value.statusNikahCreatedAt
          : statusNikahCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahUpdatedAt: freezed == statusNikahUpdatedAt
          ? _value.statusNikahUpdatedAt
          : statusNikahUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikahValue2: freezed == statusNikahValue2
          ? _value.statusNikahValue2
          : statusNikahValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusNikahValue3: freezed == statusNikahValue3
          ? _value.statusNikahValue3
          : statusNikahValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tanggunganId: freezed == tanggunganId
          ? _value.tanggunganId
          : tanggunganId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggunganMCompId: freezed == tanggunganMCompId
          ? _value.tanggunganMCompId
          : tanggunganMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggunganMDirId: freezed == tanggunganMDirId
          ? _value.tanggunganMDirId
          : tanggunganMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggunganGroup: freezed == tanggunganGroup
          ? _value.tanggunganGroup
          : tanggunganGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganKey: freezed == tanggunganKey
          ? _value.tanggunganKey
          : tanggunganKey // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganCode: freezed == tanggunganCode
          ? _value.tanggunganCode
          : tanggunganCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganValue: freezed == tanggunganValue
          ? _value.tanggunganValue
          : tanggunganValue // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganIsActive: freezed == tanggunganIsActive
          ? _value.tanggunganIsActive
          : tanggunganIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tanggunganCreatorId: freezed == tanggunganCreatorId
          ? _value.tanggunganCreatorId
          : tanggunganCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tanggunganLastEditorId: freezed == tanggunganLastEditorId
          ? _value.tanggunganLastEditorId
          : tanggunganLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tanggunganCreatedAt: freezed == tanggunganCreatedAt
          ? _value.tanggunganCreatedAt
          : tanggunganCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganUpdatedAt: freezed == tanggunganUpdatedAt
          ? _value.tanggunganUpdatedAt
          : tanggunganUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganValue2: freezed == tanggunganValue2
          ? _value.tanggunganValue2
          : tanggunganValue2 // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggunganValue3: freezed == tanggunganValue3
          ? _value.tanggunganValue3
          : tanggunganValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryId: freezed == statusKaryId
          ? _value.statusKaryId
          : statusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryMCompId: freezed == statusKaryMCompId
          ? _value.statusKaryMCompId
          : statusKaryMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryMDirId: freezed == statusKaryMDirId
          ? _value.statusKaryMDirId
          : statusKaryMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryGroup: freezed == statusKaryGroup
          ? _value.statusKaryGroup
          : statusKaryGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryKey: freezed == statusKaryKey
          ? _value.statusKaryKey
          : statusKaryKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryCode: freezed == statusKaryCode
          ? _value.statusKaryCode
          : statusKaryCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryValue: freezed == statusKaryValue
          ? _value.statusKaryValue
          : statusKaryValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryIsActive: freezed == statusKaryIsActive
          ? _value.statusKaryIsActive
          : statusKaryIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryCreatorId: freezed == statusKaryCreatorId
          ? _value.statusKaryCreatorId
          : statusKaryCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryLastEditorId: freezed == statusKaryLastEditorId
          ? _value.statusKaryLastEditorId
          : statusKaryLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryCreatedAt: freezed == statusKaryCreatedAt
          ? _value.statusKaryCreatedAt
          : statusKaryCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryUpdatedAt: freezed == statusKaryUpdatedAt
          ? _value.statusKaryUpdatedAt
          : statusKaryUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryValue2: freezed == statusKaryValue2
          ? _value.statusKaryValue2
          : statusKaryValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusKaryValue3: freezed == statusKaryValue3
          ? _value.statusKaryValue3
          : statusKaryValue3 // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
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
      mStandartGajiId: freezed == mStandartGajiId
          ? _value.mStandartGajiId
          : mStandartGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMCompId: freezed == mStandartGajiMCompId
          ? _value.mStandartGajiMCompId
          : mStandartGajiMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMDirId: freezed == mStandartGajiMDirId
          ? _value.mStandartGajiMDirId
          : mStandartGajiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiKode: freezed == mStandartGajiKode
          ? _value.mStandartGajiKode
          : mStandartGajiKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMDivisiId: freezed == mStandartGajiMDivisiId
          ? _value.mStandartGajiMDivisiId
          : mStandartGajiMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMDeptId: freezed == mStandartGajiMDeptId
          ? _value.mStandartGajiMDeptId
          : mStandartGajiMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMZonaId: freezed == mStandartGajiMZonaId
          ? _value.mStandartGajiMZonaId
          : mStandartGajiMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiMPosisiId: freezed == mStandartGajiMPosisiId
          ? _value.mStandartGajiMPosisiId
          : mStandartGajiMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiGradingId: freezed == mStandartGajiGradingId
          ? _value.mStandartGajiGradingId
          : mStandartGajiGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiGajiPokok: freezed == mStandartGajiGajiPokok
          ? _value.mStandartGajiGajiPokok
          : mStandartGajiGajiPokok // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiGajiPokokPeriode: freezed == mStandartGajiGajiPokokPeriode
          ? _value.mStandartGajiGajiPokokPeriode
          : mStandartGajiGajiPokokPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUangSaku: freezed == mStandartGajiUangSaku
          ? _value.mStandartGajiUangSaku
          : mStandartGajiUangSaku // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUangSakuPeriode: freezed == mStandartGajiUangSakuPeriode
          ? _value.mStandartGajiUangSakuPeriode
          : mStandartGajiUangSakuPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganPosisi: freezed == mStandartGajiTunjanganPosisi
          ? _value.mStandartGajiTunjanganPosisi
          : mStandartGajiTunjanganPosisi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganPosisiPeriode: freezed ==
              mStandartGajiTunjanganPosisiPeriode
          ? _value.mStandartGajiTunjanganPosisiPeriode
          : mStandartGajiTunjanganPosisiPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganKemahalanId: freezed ==
              mStandartGajiTunjanganKemahalanId
          ? _value.mStandartGajiTunjanganKemahalanId
          : mStandartGajiTunjanganKemahalanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganKemahalanPeriode: freezed ==
              mStandartGajiTunjanganKemahalanPeriode
          ? _value.mStandartGajiTunjanganKemahalanPeriode
          : mStandartGajiTunjanganKemahalanPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUangMakan: freezed == mStandartGajiUangMakan
          ? _value.mStandartGajiUangMakan
          : mStandartGajiUangMakan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUangMakanPeriode: freezed == mStandartGajiUangMakanPeriode
          ? _value.mStandartGajiUangMakanPeriode
          : mStandartGajiUangMakanPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganTetap: freezed == mStandartGajiTunjanganTetap
          ? _value.mStandartGajiTunjanganTetap
          : mStandartGajiTunjanganTetap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiTunjanganTetapPeriode: freezed ==
              mStandartGajiTunjanganTetapPeriode
          ? _value.mStandartGajiTunjanganTetapPeriode
          : mStandartGajiTunjanganTetapPeriode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiDesc: freezed == mStandartGajiDesc
          ? _value.mStandartGajiDesc
          : mStandartGajiDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiIsActive: freezed == mStandartGajiIsActive
          ? _value.mStandartGajiIsActive
          : mStandartGajiIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiCreatorId: freezed == mStandartGajiCreatorId
          ? _value.mStandartGajiCreatorId
          : mStandartGajiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiLastEditorId: freezed == mStandartGajiLastEditorId
          ? _value.mStandartGajiLastEditorId
          : mStandartGajiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiCreatedAt: freezed == mStandartGajiCreatedAt
          ? _value.mStandartGajiCreatedAt
          : mStandartGajiCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mStandartGajiUpdatedAt: freezed == mStandartGajiUpdatedAt
          ? _value.mStandartGajiUpdatedAt
          : mStandartGajiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiId: freezed == periodeGajiId
          ? _value.periodeGajiId
          : periodeGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      periodeGajiMCompId: freezed == periodeGajiMCompId
          ? _value.periodeGajiMCompId
          : periodeGajiMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      periodeGajiMDirId: freezed == periodeGajiMDirId
          ? _value.periodeGajiMDirId
          : periodeGajiMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiGroup: freezed == periodeGajiGroup
          ? _value.periodeGajiGroup
          : periodeGajiGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiKey: freezed == periodeGajiKey
          ? _value.periodeGajiKey
          : periodeGajiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiCode: freezed == periodeGajiCode
          ? _value.periodeGajiCode
          : periodeGajiCode // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiValue: freezed == periodeGajiValue
          ? _value.periodeGajiValue
          : periodeGajiValue // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiIsActive: freezed == periodeGajiIsActive
          ? _value.periodeGajiIsActive
          : periodeGajiIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      periodeGajiCreatorId: freezed == periodeGajiCreatorId
          ? _value.periodeGajiCreatorId
          : periodeGajiCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiLastEditorId: freezed == periodeGajiLastEditorId
          ? _value.periodeGajiLastEditorId
          : periodeGajiLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiCreatedAt: freezed == periodeGajiCreatedAt
          ? _value.periodeGajiCreatedAt
          : periodeGajiCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiUpdatedAt: freezed == periodeGajiUpdatedAt
          ? _value.periodeGajiUpdatedAt
          : periodeGajiUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      periodeGajiValue2: freezed == periodeGajiValue2
          ? _value.periodeGajiValue2
          : periodeGajiValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      periodeGajiValue3: freezed == periodeGajiValue3
          ? _value.periodeGajiValue3
          : periodeGajiValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refNomor: freezed == refNomor
          ? _value.refNomor
          : refNomor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMCompId: freezed == refMCompId
          ? _value.refMCompId
          : refMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMDirId: freezed == refMDirId
          ? _value.refMDirId
          : refMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refNamaPelamar: freezed == refNamaPelamar
          ? _value.refNamaPelamar
          : refNamaPelamar // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refKtpNo: freezed == refKtpNo
          ? _value.refKtpNo
          : refKtpNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTanggal: freezed == refTanggal
          ? _value.refTanggal
          : refTanggal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refRef: freezed == refRef
          ? _value.refRef
          : refRef // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTelp: freezed == refTelp
          ? _value.refTelp
          : refTelp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refJkId: freezed == refJkId
          ? _value.refJkId
          : refJkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTglLahir: freezed == refTglLahir
          ? _value.refTglLahir
          : refTglLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refSalary: freezed == refSalary
          ? _value.refSalary
          : refSalary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refDeskripsi: freezed == refDeskripsi
          ? _value.refDeskripsi
          : refDeskripsi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refStatus: freezed == refStatus
          ? _value.refStatus
          : refStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refCreatorId: freezed == refCreatorId
          ? _value.refCreatorId
          : refCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refLastEditorId: freezed == refLastEditorId
          ? _value.refLastEditorId
          : refLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refCreatedAt: freezed == refCreatedAt
          ? _value.refCreatedAt
          : refCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refUpdatedAt: freezed == refUpdatedAt
          ? _value.refUpdatedAt
          : refUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMDivisiId: freezed == refMDivisiId
          ? _value.refMDivisiId
          : refMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMDeptId: freezed == refMDeptId
          ? _value.refMDeptId
          : refMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refMPosisiId: freezed == refMPosisiId
          ? _value.refMPosisiId
          : refMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTempatLahir: freezed == refTempatLahir
          ? _value.refTempatLahir
          : refTempatLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refTLokerId: freezed == refTLokerId
          ? _value.refTLokerId
          : refTLokerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      presensiLokasiDefaultId: freezed == presensiLokasiDefaultId
          ? _value.presensiLokasiDefaultId
          : presensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as int?,
      presensiLokasiDefaultCompId: freezed == presensiLokasiDefaultCompId
          ? _value.presensiLokasiDefaultCompId
          : presensiLokasiDefaultCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      presensiLokasiDefaultDefaultUserId: freezed ==
              presensiLokasiDefaultDefaultUserId
          ? _value.presensiLokasiDefaultDefaultUserId
          : presensiLokasiDefaultDefaultUserId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      presensiLokasiDefaultNama: freezed == presensiLokasiDefaultNama
          ? _value.presensiLokasiDefaultNama
          : presensiLokasiDefaultNama // ignore: cast_nullable_to_non_nullable
              as String?,
      presensiLokasiDefaultLat: freezed == presensiLokasiDefaultLat
          ? _value.presensiLokasiDefaultLat
          : presensiLokasiDefaultLat // ignore: cast_nullable_to_non_nullable
              as String?,
      presensiLokasiDefaultLong: freezed == presensiLokasiDefaultLong
          ? _value.presensiLokasiDefaultLong
          : presensiLokasiDefaultLong // ignore: cast_nullable_to_non_nullable
              as String?,
      presensiLokasiDefaultIsActive: freezed == presensiLokasiDefaultIsActive
          ? _value.presensiLokasiDefaultIsActive
          : presensiLokasiDefaultIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      presensiLokasiDefaultCreatorId: freezed == presensiLokasiDefaultCreatorId
          ? _value.presensiLokasiDefaultCreatorId
          : presensiLokasiDefaultCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      presensiLokasiDefaultLastEditorId: freezed ==
              presensiLokasiDefaultLastEditorId
          ? _value.presensiLokasiDefaultLastEditorId
          : presensiLokasiDefaultLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      presensiLokasiDefaultCreatedAt: freezed == presensiLokasiDefaultCreatedAt
          ? _value.presensiLokasiDefaultCreatedAt
          : presensiLokasiDefaultCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      presensiLokasiDefaultUpdatedAt: freezed == presensiLokasiDefaultUpdatedAt
          ? _value.presensiLokasiDefaultUpdatedAt
          : presensiLokasiDefaultUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanId: freezed == atasanId
          ? _value.atasanId
          : atasanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMCompId: freezed == atasanMCompId
          ? _value.atasanMCompId
          : atasanMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMDirId: freezed == atasanMDirId
          ? _value.atasanMDirId
          : atasanMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMDivisiId: freezed == atasanMDivisiId
          ? _value.atasanMDivisiId
          : atasanMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMDeptId: freezed == atasanMDeptId
          ? _value.atasanMDeptId
          : atasanMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMZonaId: freezed == atasanMZonaId
          ? _value.atasanMZonaId
          : atasanMZonaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanGradingId: freezed == atasanGradingId
          ? _value.atasanGradingId
          : atasanGradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCostcontreId: freezed == atasanCostcontreId
          ? _value.atasanCostcontreId
          : atasanCostcontreId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKode: freezed == atasanKode
          ? _value.atasanKode
          : atasanKode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMPosisiId: freezed == atasanMPosisiId
          ? _value.atasanMPosisiId
          : atasanMPosisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMJamKerjaId: freezed == atasanMJamKerjaId
          ? _value.atasanMJamKerjaId
          : atasanMJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKodePresensi: freezed == atasanKodePresensi
          ? _value.atasanKodePresensi
          : atasanKodePresensi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNik: freezed == atasanNik
          ? _value.atasanNik
          : atasanNik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaDepan: freezed == atasanNamaDepan
          ? _value.atasanNamaDepan
          : atasanNamaDepan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaBelakang: freezed == atasanNamaBelakang
          ? _value.atasanNamaBelakang
          : atasanNamaBelakang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaLengkap: freezed == atasanNamaLengkap
          ? _value.atasanNamaLengkap
          : atasanNamaLengkap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaPanggilan: freezed == atasanNamaPanggilan
          ? _value.atasanNamaPanggilan
          : atasanNamaPanggilan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanJkId: freezed == atasanJkId
          ? _value.atasanJkId
          : atasanJkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTempatLahir: freezed == atasanTempatLahir
          ? _value.atasanTempatLahir
          : atasanTempatLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTglLahir: freezed == atasanTglLahir
          ? _value.atasanTglLahir
          : atasanTglLahir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanProvinsiId: freezed == atasanProvinsiId
          ? _value.atasanProvinsiId
          : atasanProvinsiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKotaId: freezed == atasanKotaId
          ? _value.atasanKotaId
          : atasanKotaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKecamatanId: freezed == atasanKecamatanId
          ? _value.atasanKecamatanId
          : atasanKecamatanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanKodePos: freezed == atasanKodePos
          ? _value.atasanKodePos
          : atasanKodePos // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAlamatAsli: freezed == atasanAlamatAsli
          ? _value.atasanAlamatAsli
          : atasanAlamatAsli // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAlamatDomisili: freezed == atasanAlamatDomisili
          ? _value.atasanAlamatDomisili
          : atasanAlamatDomisili // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNoTlp: freezed == atasanNoTlp
          ? _value.atasanNoTlp
          : atasanNoTlp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNoTlpLainnya: freezed == atasanNoTlpLainnya
          ? _value.atasanNoTlpLainnya
          : atasanNoTlpLainnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNoDarurat: freezed == atasanNoDarurat
          ? _value.atasanNoDarurat
          : atasanNoDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanNamaKontakDarurat: freezed == atasanNamaKontakDarurat
          ? _value.atasanNamaKontakDarurat
          : atasanNamaKontakDarurat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAgamaId: freezed == atasanAgamaId
          ? _value.atasanAgamaId
          : atasanAgamaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanGolDarahId: freezed == atasanGolDarahId
          ? _value.atasanGolDarahId
          : atasanGolDarahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanStatusNikahId: freezed == atasanStatusNikahId
          ? _value.atasanStatusNikahId
          : atasanStatusNikahId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTanggunganId: freezed == atasanTanggunganId
          ? _value.atasanTanggunganId
          : atasanTanggunganId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanHubDgnKaryawan: freezed == atasanHubDgnKaryawan
          ? _value.atasanHubDgnKaryawan
          : atasanHubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiJatahReguler: freezed == atasanCutiJatahReguler
          ? _value.atasanCutiJatahReguler
          : atasanCutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiSisaReguler: freezed == atasanCutiSisaReguler
          ? _value.atasanCutiSisaReguler
          : atasanCutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiPanjang: freezed == atasanCutiPanjang
          ? _value.atasanCutiPanjang
          : atasanCutiPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiSisaPanjang: freezed == atasanCutiSisaPanjang
          ? _value.atasanCutiSisaPanjang
          : atasanCutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanStatusKaryId: freezed == atasanStatusKaryId
          ? _value.atasanStatusKaryId
          : atasanStatusKaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanLamaKontrakAwal: freezed == atasanLamaKontrakAwal
          ? _value.atasanLamaKontrakAwal
          : atasanLamaKontrakAwal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanLamaKontrakAkhir: freezed == atasanLamaKontrakAkhir
          ? _value.atasanLamaKontrakAkhir
          : atasanLamaKontrakAkhir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTglMasuk: freezed == atasanTglMasuk
          ? _value.atasanTglMasuk
          : atasanTglMasuk // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTglBerhenti: freezed == atasanTglBerhenti
          ? _value.atasanTglBerhenti
          : atasanTglBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAlasanBerhenti: freezed == atasanAlasanBerhenti
          ? _value.atasanAlasanBerhenti
          : atasanAlasanBerhenti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanUkBaju: freezed == atasanUkBaju
          ? _value.atasanUkBaju
          : atasanUkBaju // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanUkCelana: freezed == atasanUkCelana
          ? _value.atasanUkCelana
          : atasanUkCelana // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanUkSepatu: freezed == atasanUkSepatu
          ? _value.atasanUkSepatu
          : atasanUkSepatu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanDesc: freezed == atasanDesc
          ? _value.atasanDesc
          : atasanDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanIsActive: freezed == atasanIsActive
          ? _value.atasanIsActive
          : atasanIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCreatorId: freezed == atasanCreatorId
          ? _value.atasanCreatorId
          : atasanCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanLastEditorId: freezed == atasanLastEditorId
          ? _value.atasanLastEditorId
          : atasanLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCreatedAt: freezed == atasanCreatedAt
          ? _value.atasanCreatedAt
          : atasanCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanUpdatedAt: freezed == atasanUpdatedAt
          ? _value.atasanUpdatedAt
          : atasanUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanMStandartGajiId: freezed == atasanMStandartGajiId
          ? _value.atasanMStandartGajiId
          : atasanMStandartGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanPeriodeGajiId: freezed == atasanPeriodeGajiId
          ? _value.atasanPeriodeGajiId
          : atasanPeriodeGajiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanRefId: freezed == atasanRefId
          ? _value.atasanRefId
          : atasanRefId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanPresensiLokasiDefaultId: freezed == atasanPresensiLokasiDefaultId
          ? _value.atasanPresensiLokasiDefaultId
          : atasanPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanExpDateCuti: freezed == atasanExpDateCuti
          ? _value.atasanExpDateCuti
          : atasanExpDateCuti // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanLimitPotong: freezed == atasanLimitPotong
          ? _value.atasanLimitPotong
          : atasanLimitPotong // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanAtasanId: freezed == atasanAtasanId
          ? _value.atasanAtasanId
          : atasanAtasanId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiP24: freezed == atasanCutiP24
          ? _value.atasanCutiP24
          : atasanCutiP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanCutiSisaP24: freezed == atasanCutiSisaP24
          ? _value.atasanCutiSisaP24
          : atasanCutiSisaP24 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTipeJamKerjaId: freezed == atasanTipeJamKerjaId
          ? _value.atasanTipeJamKerjaId
          : atasanTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      atasanTJadwalKerjaId: freezed == atasanTJadwalKerjaId
          ? _value.atasanTJadwalKerjaId
          : atasanTJadwalKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaId: freezed == tipeJamKerjaId
          ? _value.tipeJamKerjaId
          : tipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaMCompId: freezed == tipeJamKerjaMCompId
          ? _value.tipeJamKerjaMCompId
          : tipeJamKerjaMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaMDirId: freezed == tipeJamKerjaMDirId
          ? _value.tipeJamKerjaMDirId
          : tipeJamKerjaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaGroup: freezed == tipeJamKerjaGroup
          ? _value.tipeJamKerjaGroup
          : tipeJamKerjaGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaKey: freezed == tipeJamKerjaKey
          ? _value.tipeJamKerjaKey
          : tipeJamKerjaKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaCode: freezed == tipeJamKerjaCode
          ? _value.tipeJamKerjaCode
          : tipeJamKerjaCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaValue: freezed == tipeJamKerjaValue
          ? _value.tipeJamKerjaValue
          : tipeJamKerjaValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaIsActive: freezed == tipeJamKerjaIsActive
          ? _value.tipeJamKerjaIsActive
          : tipeJamKerjaIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      tipeJamKerjaUpdatedAt: freezed == tipeJamKerjaUpdatedAt
          ? _value.tipeJamKerjaUpdatedAt
          : tipeJamKerjaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaValue2: freezed == tipeJamKerjaValue2
          ? _value.tipeJamKerjaValue2
          : tipeJamKerjaValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeJamKerjaValue3: freezed == tipeJamKerjaValue3
          ? _value.tipeJamKerjaValue3
          : tipeJamKerjaValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaId: freezed == tJadwalKerjaId
          ? _value.tJadwalKerjaId
          : tJadwalKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaNomor: freezed == tJadwalKerjaNomor
          ? _value.tJadwalKerjaNomor
          : tJadwalKerjaNomor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaMCompId: freezed == tJadwalKerjaMCompId
          ? _value.tJadwalKerjaMCompId
          : tJadwalKerjaMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaMDirId: freezed == tJadwalKerjaMDirId
          ? _value.tJadwalKerjaMDirId
          : tJadwalKerjaMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaMDivisiId: freezed == tJadwalKerjaMDivisiId
          ? _value.tJadwalKerjaMDivisiId
          : tJadwalKerjaMDivisiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaMDeptId: freezed == tJadwalKerjaMDeptId
          ? _value.tJadwalKerjaMDeptId
          : tJadwalKerjaMDeptId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaTipeJamKerjaId: freezed == tJadwalKerjaTipeJamKerjaId
          ? _value.tJadwalKerjaTipeJamKerjaId
          : tJadwalKerjaTipeJamKerjaId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaKeterangan: freezed == tJadwalKerjaKeterangan
          ? _value.tJadwalKerjaKeterangan
          : tJadwalKerjaKeterangan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaStatus: freezed == tJadwalKerjaStatus
          ? _value.tJadwalKerjaStatus
          : tJadwalKerjaStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaCreatorId: freezed == tJadwalKerjaCreatorId
          ? _value.tJadwalKerjaCreatorId
          : tJadwalKerjaCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaLastEditorId: freezed == tJadwalKerjaLastEditorId
          ? _value.tJadwalKerjaLastEditorId
          : tJadwalKerjaLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaCreatedAt: freezed == tJadwalKerjaCreatedAt
          ? _value.tJadwalKerjaCreatedAt
          : tJadwalKerjaCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tJadwalKerjaUpdatedAt: freezed == tJadwalKerjaUpdatedAt
          ? _value.tJadwalKerjaUpdatedAt
          : tJadwalKerjaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nomorKtp: freezed == nomorKtp
          ? _value.nomorKtp
          : nomorKtp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataAllKaryawanImpl implements _DataAllKaryawan {
  const _$DataAllKaryawanImpl(
      {@JsonKey(name: "meta_read") this.metaRead,
      @JsonKey(name: "meta_delete") this.metaDelete,
      @JsonKey(name: "meta_update") this.metaUpdate,
      @JsonKey(name: "meta_create") this.metaCreate,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "m_comp_id") this.DataAllKaryawanMCompId,
      @JsonKey(name: "m_dir_id") this.DataAllKaryawanMDirId,
      @JsonKey(name: "m_divisi_id") this.DataAllKaryawanMDivisiId,
      @JsonKey(name: "m_dept_id") this.DataAllKaryawanMDeptId,
      @JsonKey(name: "m_zona_id") this.DataAllKaryawanMZonaId,
      @JsonKey(name: "grading_id") this.DataAllKaryawanGradingId,
      @JsonKey(name: "costcontre_id") this.DataAllKaryawanCostcontreId,
      @JsonKey(name: "kode") this.kode,
      @JsonKey(name: "m_posisi_id") this.DataAllKaryawanMPosisiId,
      @JsonKey(name: "m_jam_kerja_id") this.DataAllKaryawanMJamKerjaId,
      @JsonKey(name: "kode_presensi") this.kodePresensi,
      @JsonKey(name: "nik") this.nik,
      @JsonKey(name: "nama_depan") this.namaDepan,
      @JsonKey(name: "nama_belakang") this.namaBelakang,
      @JsonKey(name: "nama_lengkap") this.namaLengkap,
      @JsonKey(name: "nama_panggilan") this.namaPanggilan,
      @JsonKey(name: "jk_id") this.DataAllKaryawanJkId,
      @JsonKey(name: "tempat_lahir") this.tempatLahir,
      @JsonKey(name: "tgl_lahir") this.tglLahir,
      @JsonKey(name: "provinsi_id") this.DataAllKaryawanProvinsiId,
      @JsonKey(name: "kota_id") this.DataAllKaryawanKotaId,
      @JsonKey(name: "kecamatan_id") this.DataAllKaryawanKecamatanId,
      @JsonKey(name: "kode_pos") this.kodePos,
      @JsonKey(name: "alamat_asli") this.alamatAsli,
      @JsonKey(name: "alamat_domisili") this.alamatDomisili,
      @JsonKey(name: "no_tlp") this.noTlp,
      @JsonKey(name: "no_tlp_lainnya") this.noTlpLainnya,
      @JsonKey(name: "no_darurat") this.noDarurat,
      @JsonKey(name: "nama_kontak_darurat") this.namaKontakDarurat,
      @JsonKey(name: "agama_id") this.DataAllKaryawanAgamaId,
      @JsonKey(name: "gol_darah_id") this.DataAllKaryawanGolDarahId,
      @JsonKey(name: "status_nikah_id") this.DataAllKaryawanStatusNikahId,
      @JsonKey(name: "tanggungan_id") this.DataAllKaryawanTanggunganId,
      @JsonKey(name: "hub_dgn_karyawan") this.hubDgnKaryawan,
      @JsonKey(name: "cuti_jatah_reguler") this.cutiJatahReguler,
      @JsonKey(name: "cuti_sisa_reguler") this.cutiSisaReguler,
      @JsonKey(name: "cuti_panjang") this.cutiPanjang,
      @JsonKey(name: "cuti_sisa_panjang") this.cutiSisaPanjang,
      @JsonKey(name: "status_kary_id") this.DataAllKaryawanStatusKaryId,
      @JsonKey(name: "lama_kontrak_awal") this.lamaKontrakAwal,
      @JsonKey(name: "lama_kontrak_akhir") this.lamaKontrakAkhir,
      @JsonKey(name: "tgl_masuk") this.tglMasuk,
      @JsonKey(name: "tgl_berhenti") this.tglBerhenti,
      @JsonKey(name: "alasan_berhenti") this.alasanBerhenti,
      @JsonKey(name: "uk_baju") this.ukBaju,
      @JsonKey(name: "uk_celana") this.ukCelana,
      @JsonKey(name: "uk_sepatu") this.ukSepatu,
      @JsonKey(name: "desc") this.desc,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "creator_id") this.DataAllKaryawanCreatorId,
      @JsonKey(name: "last_editor_id") this.DataAllKaryawanLastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "m_standart_gaji_id") this.DataAllKaryawanMStandartGajiId,
      @JsonKey(name: "periode_gaji_id") this.DataAllKaryawanPeriodeGajiId,
      @JsonKey(name: "ref_id") this.DataAllKaryawanRefId,
      @JsonKey(name: "presensi_lokasi_default_id")
      this.DataAllKaryawanPresensiLokasiDefaultId,
      @JsonKey(name: "exp_date_cuti") this.expDateCuti,
      @JsonKey(name: "limit_potong") this.limitPotong,
      @JsonKey(name: "atasan_id") this.DataAllKaryawanAtasanId,
      @JsonKey(name: "cuti_p24") this.cutiP24,
      @JsonKey(name: "cuti_sisa_p24") this.cutiSisaP24,
      @JsonKey(name: "tipe_jam_kerja_id") this.DataAllKaryawanTipeJamKerjaId,
      @JsonKey(name: "t_jadwal_kerja_id") this.DataAllKaryawanTJadwalKerjaId,
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
      @JsonKey(name: "m_zona.kode") this.mZonaKode,
      @JsonKey(name: "m_zona.nama") this.mZonaNama,
      @JsonKey(name: "m_zona.desc") this.mZonaDesc,
      @JsonKey(name: "m_zona.is_active") this.mZonaIsActive,
      @JsonKey(name: "m_zona.creator_id") this.mZonaCreatorId,
      @JsonKey(name: "m_zona.last_editor_id") this.mZonaLastEditorId,
      @JsonKey(name: "m_zona.created_at") this.mZonaCreatedAt,
      @JsonKey(name: "m_zona.updated_at") this.mZonaUpdatedAt,
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
      @JsonKey(name: "costcontre.id") this.costcontreId,
      @JsonKey(name: "costcontre.m_comp_id") this.costcontreMCompId,
      @JsonKey(name: "costcontre.m_dir_id") this.costcontreMDirId,
      @JsonKey(name: "costcontre.group") this.costcontreGroup,
      @JsonKey(name: "costcontre.key") this.costcontreKey,
      @JsonKey(name: "costcontre.code") this.costcontreCode,
      @JsonKey(name: "costcontre.value") this.costcontreValue,
      @JsonKey(name: "costcontre.is_active") this.costcontreIsActive,
      @JsonKey(name: "costcontre.creator_id") this.costcontreCreatorId,
      @JsonKey(name: "costcontre.last_editor_id") this.costcontreLastEditorId,
      @JsonKey(name: "costcontre.created_at") this.costcontreCreatedAt,
      @JsonKey(name: "costcontre.updated_at") this.costcontreUpdatedAt,
      @JsonKey(name: "costcontre.value_2") this.costcontreValue2,
      @JsonKey(name: "costcontre.value_3") this.costcontreValue3,
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
      @JsonKey(name: "m_jam_kerja.id") this.mJamKerjaId,
      @JsonKey(name: "m_jam_kerja.m_comp_id") this.mJamKerjaMCompId,
      @JsonKey(name: "m_jam_kerja.m_dir_id") this.mJamKerjaMDirId,
      @JsonKey(name: "m_jam_kerja.kode") this.mJamKerjaKode,
      @JsonKey(name: "m_jam_kerja.tipe_jam_kerja_id")
      this.mJamKerjaTipeJamKerjaId,
      @JsonKey(name: "m_jam_kerja.waktu_mulai") this.mJamKerjaWaktuMulai,
      @JsonKey(name: "m_jam_kerja.waktu_akhir") this.mJamKerjaWaktuAkhir,
      @JsonKey(name: "m_jam_kerja.is_hari_berikutnya")
      this.mJamKerjaIsHariBerikutnya,
      @JsonKey(name: "m_jam_kerja.desc") this.mJamKerjaDesc,
      @JsonKey(name: "m_jam_kerja.is_active") this.mJamKerjaIsActive,
      @JsonKey(name: "m_jam_kerja.creator_id") this.mJamKerjaCreatorId,
      @JsonKey(name: "m_jam_kerja.last_editor_id") this.mJamKerjaLastEditorId,
      @JsonKey(name: "m_jam_kerja.created_at") this.mJamKerjaCreatedAt,
      @JsonKey(name: "m_jam_kerja.updated_at") this.mJamKerjaUpdatedAt,
      @JsonKey(name: "jk.id") this.jkId,
      @JsonKey(name: "jk.m_comp_id") this.jkMCompId,
      @JsonKey(name: "jk.m_dir_id") this.jkMDirId,
      @JsonKey(name: "jk.group") this.jkGroup,
      @JsonKey(name: "jk.key") this.jkKey,
      @JsonKey(name: "jk.code") this.jkCode,
      @JsonKey(name: "jk.value") this.jkValue,
      @JsonKey(name: "jk.is_active") this.jkIsActive,
      @JsonKey(name: "jk.creator_id") this.jkCreatorId,
      @JsonKey(name: "jk.last_editor_id") this.jkLastEditorId,
      @JsonKey(name: "jk.created_at") this.jkCreatedAt,
      @JsonKey(name: "jk.updated_at") this.jkUpdatedAt,
      @JsonKey(name: "jk.value_2") this.jkValue2,
      @JsonKey(name: "jk.value_3") this.jkValue3,
      @JsonKey(name: "provinsi.id") this.provinsiId,
      @JsonKey(name: "provinsi.m_comp_id") this.provinsiMCompId,
      @JsonKey(name: "provinsi.m_dir_id") this.provinsiMDirId,
      @JsonKey(name: "provinsi.group") this.provinsiGroup,
      @JsonKey(name: "provinsi.key") this.provinsiKey,
      @JsonKey(name: "provinsi.code") this.provinsiCode,
      @JsonKey(name: "provinsi.value") this.provinsiValue,
      @JsonKey(name: "provinsi.is_active") this.provinsiIsActive,
      @JsonKey(name: "provinsi.creator_id") this.provinsiCreatorId,
      @JsonKey(name: "provinsi.last_editor_id") this.provinsiLastEditorId,
      @JsonKey(name: "provinsi.created_at") this.provinsiCreatedAt,
      @JsonKey(name: "provinsi.updated_at") this.provinsiUpdatedAt,
      @JsonKey(name: "provinsi.value_2") this.provinsiValue2,
      @JsonKey(name: "provinsi.value_3") this.provinsiValue3,
      @JsonKey(name: "kota.id") this.kotaId,
      @JsonKey(name: "kota.m_comp_id") this.kotaMCompId,
      @JsonKey(name: "kota.m_dir_id") this.kotaMDirId,
      @JsonKey(name: "kota.group") this.kotaGroup,
      @JsonKey(name: "kota.key") this.kotaKey,
      @JsonKey(name: "kota.code") this.kotaCode,
      @JsonKey(name: "kota.value") this.kotaValue,
      @JsonKey(name: "kota.is_active") this.kotaIsActive,
      @JsonKey(name: "kota.creator_id") this.kotaCreatorId,
      @JsonKey(name: "kota.last_editor_id") this.kotaLastEditorId,
      @JsonKey(name: "kota.created_at") this.kotaCreatedAt,
      @JsonKey(name: "kota.updated_at") this.kotaUpdatedAt,
      @JsonKey(name: "kota.value_2") this.kotaValue2,
      @JsonKey(name: "kota.value_3") this.kotaValue3,
      @JsonKey(name: "kecamatan.id") this.kecamatanId,
      @JsonKey(name: "kecamatan.m_comp_id") this.kecamatanMCompId,
      @JsonKey(name: "kecamatan.m_dir_id") this.kecamatanMDirId,
      @JsonKey(name: "kecamatan.group") this.kecamatanGroup,
      @JsonKey(name: "kecamatan.key") this.kecamatanKey,
      @JsonKey(name: "kecamatan.code") this.kecamatanCode,
      @JsonKey(name: "kecamatan.value") this.kecamatanValue,
      @JsonKey(name: "kecamatan.is_active") this.kecamatanIsActive,
      @JsonKey(name: "kecamatan.creator_id") this.kecamatanCreatorId,
      @JsonKey(name: "kecamatan.last_editor_id") this.kecamatanLastEditorId,
      @JsonKey(name: "kecamatan.created_at") this.kecamatanCreatedAt,
      @JsonKey(name: "kecamatan.updated_at") this.kecamatanUpdatedAt,
      @JsonKey(name: "kecamatan.value_2") this.kecamatanValue2,
      @JsonKey(name: "kecamatan.value_3") this.kecamatanValue3,
      @JsonKey(name: "agama.id") this.agamaId,
      @JsonKey(name: "agama.m_comp_id") this.agamaMCompId,
      @JsonKey(name: "agama.m_dir_id") this.agamaMDirId,
      @JsonKey(name: "agama.group") this.agamaGroup,
      @JsonKey(name: "agama.key") this.agamaKey,
      @JsonKey(name: "agama.code") this.agamaCode,
      @JsonKey(name: "agama.value") this.agamaValue,
      @JsonKey(name: "agama.is_active") this.agamaIsActive,
      @JsonKey(name: "agama.creator_id") this.agamaCreatorId,
      @JsonKey(name: "agama.last_editor_id") this.agamaLastEditorId,
      @JsonKey(name: "agama.created_at") this.agamaCreatedAt,
      @JsonKey(name: "agama.updated_at") this.agamaUpdatedAt,
      @JsonKey(name: "agama.value_2") this.agamaValue2,
      @JsonKey(name: "agama.value_3") this.agamaValue3,
      @JsonKey(name: "gol_darah.id") this.golDarahId,
      @JsonKey(name: "gol_darah.m_comp_id") this.golDarahMCompId,
      @JsonKey(name: "gol_darah.m_dir_id") this.golDarahMDirId,
      @JsonKey(name: "gol_darah.group") this.golDarahGroup,
      @JsonKey(name: "gol_darah.key") this.golDarahKey,
      @JsonKey(name: "gol_darah.code") this.golDarahCode,
      @JsonKey(name: "gol_darah.value") this.golDarahValue,
      @JsonKey(name: "gol_darah.is_active") this.golDarahIsActive,
      @JsonKey(name: "gol_darah.creator_id") this.golDarahCreatorId,
      @JsonKey(name: "gol_darah.last_editor_id") this.golDarahLastEditorId,
      @JsonKey(name: "gol_darah.created_at") this.golDarahCreatedAt,
      @JsonKey(name: "gol_darah.updated_at") this.golDarahUpdatedAt,
      @JsonKey(name: "gol_darah.value_2") this.golDarahValue2,
      @JsonKey(name: "gol_darah.value_3") this.golDarahValue3,
      @JsonKey(name: "status_nikah.id") this.statusNikahId,
      @JsonKey(name: "status_nikah.m_comp_id") this.statusNikahMCompId,
      @JsonKey(name: "status_nikah.m_dir_id") this.statusNikahMDirId,
      @JsonKey(name: "status_nikah.group") this.statusNikahGroup,
      @JsonKey(name: "status_nikah.key") this.statusNikahKey,
      @JsonKey(name: "status_nikah.code") this.statusNikahCode,
      @JsonKey(name: "status_nikah.value") this.statusNikahValue,
      @JsonKey(name: "status_nikah.is_active") this.statusNikahIsActive,
      @JsonKey(name: "status_nikah.creator_id") this.statusNikahCreatorId,
      @JsonKey(name: "status_nikah.last_editor_id")
      this.statusNikahLastEditorId,
      @JsonKey(name: "status_nikah.created_at") this.statusNikahCreatedAt,
      @JsonKey(name: "status_nikah.updated_at") this.statusNikahUpdatedAt,
      @JsonKey(name: "status_nikah.value_2") this.statusNikahValue2,
      @JsonKey(name: "status_nikah.value_3") this.statusNikahValue3,
      @JsonKey(name: "tanggungan.id") this.tanggunganId,
      @JsonKey(name: "tanggungan.m_comp_id") this.tanggunganMCompId,
      @JsonKey(name: "tanggungan.m_dir_id") this.tanggunganMDirId,
      @JsonKey(name: "tanggungan.group") this.tanggunganGroup,
      @JsonKey(name: "tanggungan.key") this.tanggunganKey,
      @JsonKey(name: "tanggungan.code") this.tanggunganCode,
      @JsonKey(name: "tanggungan.value") this.tanggunganValue,
      @JsonKey(name: "tanggungan.is_active") this.tanggunganIsActive,
      @JsonKey(name: "tanggungan.creator_id") this.tanggunganCreatorId,
      @JsonKey(name: "tanggungan.last_editor_id") this.tanggunganLastEditorId,
      @JsonKey(name: "tanggungan.created_at") this.tanggunganCreatedAt,
      @JsonKey(name: "tanggungan.updated_at") this.tanggunganUpdatedAt,
      @JsonKey(name: "tanggungan.value_2") this.tanggunganValue2,
      @JsonKey(name: "tanggungan.value_3") this.tanggunganValue3,
      @JsonKey(name: "status_kary.id") this.statusKaryId,
      @JsonKey(name: "status_kary.m_comp_id") this.statusKaryMCompId,
      @JsonKey(name: "status_kary.m_dir_id") this.statusKaryMDirId,
      @JsonKey(name: "status_kary.group") this.statusKaryGroup,
      @JsonKey(name: "status_kary.key") this.statusKaryKey,
      @JsonKey(name: "status_kary.code") this.statusKaryCode,
      @JsonKey(name: "status_kary.value") this.statusKaryValue,
      @JsonKey(name: "status_kary.is_active") this.statusKaryIsActive,
      @JsonKey(name: "status_kary.creator_id") this.statusKaryCreatorId,
      @JsonKey(name: "status_kary.last_editor_id") this.statusKaryLastEditorId,
      @JsonKey(name: "status_kary.created_at") this.statusKaryCreatedAt,
      @JsonKey(name: "status_kary.updated_at") this.statusKaryUpdatedAt,
      @JsonKey(name: "status_kary.value_2") this.statusKaryValue2,
      @JsonKey(name: "status_kary.value_3") this.statusKaryValue3,
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
      @JsonKey(name: "m_standart_gaji.id") this.mStandartGajiId,
      @JsonKey(name: "m_standart_gaji.m_comp_id") this.mStandartGajiMCompId,
      @JsonKey(name: "m_standart_gaji.m_dir_id") this.mStandartGajiMDirId,
      @JsonKey(name: "m_standart_gaji.kode") this.mStandartGajiKode,
      @JsonKey(name: "m_standart_gaji.m_divisi_id") this.mStandartGajiMDivisiId,
      @JsonKey(name: "m_standart_gaji.m_dept_id") this.mStandartGajiMDeptId,
      @JsonKey(name: "m_standart_gaji.m_zona_id") this.mStandartGajiMZonaId,
      @JsonKey(name: "m_standart_gaji.m_posisi_id") this.mStandartGajiMPosisiId,
      @JsonKey(name: "m_standart_gaji.grading_id") this.mStandartGajiGradingId,
      @JsonKey(name: "m_standart_gaji.gaji_pokok") this.mStandartGajiGajiPokok,
      @JsonKey(name: "m_standart_gaji.gaji_pokok_periode")
      this.mStandartGajiGajiPokokPeriode,
      @JsonKey(name: "m_standart_gaji.uang_saku") this.mStandartGajiUangSaku,
      @JsonKey(name: "m_standart_gaji.uang_saku_periode")
      this.mStandartGajiUangSakuPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_posisi")
      this.mStandartGajiTunjanganPosisi,
      @JsonKey(name: "m_standart_gaji.tunjangan_posisi_periode")
      this.mStandartGajiTunjanganPosisiPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_id")
      this.mStandartGajiTunjanganKemahalanId,
      @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_periode")
      this.mStandartGajiTunjanganKemahalanPeriode,
      @JsonKey(name: "m_standart_gaji.uang_makan") this.mStandartGajiUangMakan,
      @JsonKey(name: "m_standart_gaji.uang_makan_periode")
      this.mStandartGajiUangMakanPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_tetap")
      this.mStandartGajiTunjanganTetap,
      @JsonKey(name: "m_standart_gaji.tunjangan_tetap_periode")
      this.mStandartGajiTunjanganTetapPeriode,
      @JsonKey(name: "m_standart_gaji.desc") this.mStandartGajiDesc,
      @JsonKey(name: "m_standart_gaji.is_active") this.mStandartGajiIsActive,
      @JsonKey(name: "m_standart_gaji.creator_id") this.mStandartGajiCreatorId,
      @JsonKey(name: "m_standart_gaji.last_editor_id")
      this.mStandartGajiLastEditorId,
      @JsonKey(name: "m_standart_gaji.created_at") this.mStandartGajiCreatedAt,
      @JsonKey(name: "m_standart_gaji.updated_at") this.mStandartGajiUpdatedAt,
      @JsonKey(name: "periode_gaji.id") this.periodeGajiId,
      @JsonKey(name: "periode_gaji.m_comp_id") this.periodeGajiMCompId,
      @JsonKey(name: "periode_gaji.m_dir_id") this.periodeGajiMDirId,
      @JsonKey(name: "periode_gaji.group") this.periodeGajiGroup,
      @JsonKey(name: "periode_gaji.key") this.periodeGajiKey,
      @JsonKey(name: "periode_gaji.code") this.periodeGajiCode,
      @JsonKey(name: "periode_gaji.value") this.periodeGajiValue,
      @JsonKey(name: "periode_gaji.is_active") this.periodeGajiIsActive,
      @JsonKey(name: "periode_gaji.creator_id") this.periodeGajiCreatorId,
      @JsonKey(name: "periode_gaji.last_editor_id")
      this.periodeGajiLastEditorId,
      @JsonKey(name: "periode_gaji.created_at") this.periodeGajiCreatedAt,
      @JsonKey(name: "periode_gaji.updated_at") this.periodeGajiUpdatedAt,
      @JsonKey(name: "periode_gaji.value_2") this.periodeGajiValue2,
      @JsonKey(name: "periode_gaji.value_3") this.periodeGajiValue3,
      @JsonKey(name: "ref.id") this.refId,
      @JsonKey(name: "ref.nomor") this.refNomor,
      @JsonKey(name: "ref.m_comp_id") this.refMCompId,
      @JsonKey(name: "ref.m_dir_id") this.refMDirId,
      @JsonKey(name: "ref.nama_pelamar") this.refNamaPelamar,
      @JsonKey(name: "ref.ktp_no") this.refKtpNo,
      @JsonKey(name: "ref.tanggal") this.refTanggal,
      @JsonKey(name: "ref.ref") this.refRef,
      @JsonKey(name: "ref.telp") this.refTelp,
      @JsonKey(name: "ref.jk_id") this.refJkId,
      @JsonKey(name: "ref.tgl_lahir") this.refTglLahir,
      @JsonKey(name: "ref.salary") this.refSalary,
      @JsonKey(name: "ref.deskripsi") this.refDeskripsi,
      @JsonKey(name: "ref.status") this.refStatus,
      @JsonKey(name: "ref.creator_id") this.refCreatorId,
      @JsonKey(name: "ref.last_editor_id") this.refLastEditorId,
      @JsonKey(name: "ref.created_at") this.refCreatedAt,
      @JsonKey(name: "ref.updated_at") this.refUpdatedAt,
      @JsonKey(name: "ref.m_divisi_id") this.refMDivisiId,
      @JsonKey(name: "ref.m_dept_id") this.refMDeptId,
      @JsonKey(name: "ref.m_posisi_id") this.refMPosisiId,
      @JsonKey(name: "ref.tempat_lahir") this.refTempatLahir,
      @JsonKey(name: "ref.t_loker_id") this.refTLokerId,
      @JsonKey(name: "presensi_lokasi_default.id") this.presensiLokasiDefaultId,
      @JsonKey(name: "presensi_lokasi_default.comp_id")
      this.presensiLokasiDefaultCompId,
      @JsonKey(name: "presensi_lokasi_default.default_user_id")
      this.presensiLokasiDefaultDefaultUserId,
      @JsonKey(name: "presensi_lokasi_default.nama")
      this.presensiLokasiDefaultNama,
      @JsonKey(name: "presensi_lokasi_default.lat")
      this.presensiLokasiDefaultLat,
      @JsonKey(name: "presensi_lokasi_default.long")
      this.presensiLokasiDefaultLong,
      @JsonKey(name: "presensi_lokasi_default.is_active")
      this.presensiLokasiDefaultIsActive,
      @JsonKey(name: "presensi_lokasi_default.creator_id")
      this.presensiLokasiDefaultCreatorId,
      @JsonKey(name: "presensi_lokasi_default.last_editor_id")
      this.presensiLokasiDefaultLastEditorId,
      @JsonKey(name: "presensi_lokasi_default.created_at")
      this.presensiLokasiDefaultCreatedAt,
      @JsonKey(name: "presensi_lokasi_default.updated_at")
      this.presensiLokasiDefaultUpdatedAt,
      @JsonKey(name: "atasan.id") this.atasanId,
      @JsonKey(name: "atasan.m_comp_id") this.atasanMCompId,
      @JsonKey(name: "atasan.m_dir_id") this.atasanMDirId,
      @JsonKey(name: "atasan.m_divisi_id") this.atasanMDivisiId,
      @JsonKey(name: "atasan.m_dept_id") this.atasanMDeptId,
      @JsonKey(name: "atasan.m_zona_id") this.atasanMZonaId,
      @JsonKey(name: "atasan.grading_id") this.atasanGradingId,
      @JsonKey(name: "atasan.costcontre_id") this.atasanCostcontreId,
      @JsonKey(name: "atasan.kode") this.atasanKode,
      @JsonKey(name: "atasan.m_posisi_id") this.atasanMPosisiId,
      @JsonKey(name: "atasan.m_jam_kerja_id") this.atasanMJamKerjaId,
      @JsonKey(name: "atasan.kode_presensi") this.atasanKodePresensi,
      @JsonKey(name: "atasan.nik") this.atasanNik,
      @JsonKey(name: "atasan.nama_depan") this.atasanNamaDepan,
      @JsonKey(name: "atasan.nama_belakang") this.atasanNamaBelakang,
      @JsonKey(name: "atasan.nama_lengkap") this.atasanNamaLengkap,
      @JsonKey(name: "atasan.nama_panggilan") this.atasanNamaPanggilan,
      @JsonKey(name: "atasan.jk_id") this.atasanJkId,
      @JsonKey(name: "atasan.tempat_lahir") this.atasanTempatLahir,
      @JsonKey(name: "atasan.tgl_lahir") this.atasanTglLahir,
      @JsonKey(name: "atasan.provinsi_id") this.atasanProvinsiId,
      @JsonKey(name: "atasan.kota_id") this.atasanKotaId,
      @JsonKey(name: "atasan.kecamatan_id") this.atasanKecamatanId,
      @JsonKey(name: "atasan.kode_pos") this.atasanKodePos,
      @JsonKey(name: "atasan.alamat_asli") this.atasanAlamatAsli,
      @JsonKey(name: "atasan.alamat_domisili") this.atasanAlamatDomisili,
      @JsonKey(name: "atasan.no_tlp") this.atasanNoTlp,
      @JsonKey(name: "atasan.no_tlp_lainnya") this.atasanNoTlpLainnya,
      @JsonKey(name: "atasan.no_darurat") this.atasanNoDarurat,
      @JsonKey(name: "atasan.nama_kontak_darurat") this.atasanNamaKontakDarurat,
      @JsonKey(name: "atasan.agama_id") this.atasanAgamaId,
      @JsonKey(name: "atasan.gol_darah_id") this.atasanGolDarahId,
      @JsonKey(name: "atasan.status_nikah_id") this.atasanStatusNikahId,
      @JsonKey(name: "atasan.tanggungan_id") this.atasanTanggunganId,
      @JsonKey(name: "atasan.hub_dgn_karyawan") this.atasanHubDgnKaryawan,
      @JsonKey(name: "atasan.cuti_jatah_reguler") this.atasanCutiJatahReguler,
      @JsonKey(name: "atasan.cuti_sisa_reguler") this.atasanCutiSisaReguler,
      @JsonKey(name: "atasan.cuti_panjang") this.atasanCutiPanjang,
      @JsonKey(name: "atasan.cuti_sisa_panjang") this.atasanCutiSisaPanjang,
      @JsonKey(name: "atasan.status_kary_id") this.atasanStatusKaryId,
      @JsonKey(name: "atasan.lama_kontrak_awal") this.atasanLamaKontrakAwal,
      @JsonKey(name: "atasan.lama_kontrak_akhir") this.atasanLamaKontrakAkhir,
      @JsonKey(name: "atasan.tgl_masuk") this.atasanTglMasuk,
      @JsonKey(name: "atasan.tgl_berhenti") this.atasanTglBerhenti,
      @JsonKey(name: "atasan.alasan_berhenti") this.atasanAlasanBerhenti,
      @JsonKey(name: "atasan.uk_baju") this.atasanUkBaju,
      @JsonKey(name: "atasan.uk_celana") this.atasanUkCelana,
      @JsonKey(name: "atasan.uk_sepatu") this.atasanUkSepatu,
      @JsonKey(name: "atasan.desc") this.atasanDesc,
      @JsonKey(name: "atasan.is_active") this.atasanIsActive,
      @JsonKey(name: "atasan.creator_id") this.atasanCreatorId,
      @JsonKey(name: "atasan.last_editor_id") this.atasanLastEditorId,
      @JsonKey(name: "atasan.created_at") this.atasanCreatedAt,
      @JsonKey(name: "atasan.updated_at") this.atasanUpdatedAt,
      @JsonKey(name: "atasan.m_standart_gaji_id") this.atasanMStandartGajiId,
      @JsonKey(name: "atasan.periode_gaji_id") this.atasanPeriodeGajiId,
      @JsonKey(name: "atasan.ref_id") this.atasanRefId,
      @JsonKey(name: "atasan.presensi_lokasi_default_id")
      this.atasanPresensiLokasiDefaultId,
      @JsonKey(name: "atasan.exp_date_cuti") this.atasanExpDateCuti,
      @JsonKey(name: "atasan.limit_potong") this.atasanLimitPotong,
      @JsonKey(name: "atasan.atasan_id") this.atasanAtasanId,
      @JsonKey(name: "atasan.cuti_p24") this.atasanCutiP24,
      @JsonKey(name: "atasan.cuti_sisa_p24") this.atasanCutiSisaP24,
      @JsonKey(name: "atasan.tipe_jam_kerja_id") this.atasanTipeJamKerjaId,
      @JsonKey(name: "atasan.t_jadwal_kerja_id") this.atasanTJadwalKerjaId,
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
      @JsonKey(name: "t_jadwal_kerja.id") this.tJadwalKerjaId,
      @JsonKey(name: "t_jadwal_kerja.nomor") this.tJadwalKerjaNomor,
      @JsonKey(name: "t_jadwal_kerja.m_comp_id") this.tJadwalKerjaMCompId,
      @JsonKey(name: "t_jadwal_kerja.m_dir_id") this.tJadwalKerjaMDirId,
      @JsonKey(name: "t_jadwal_kerja.m_divisi_id") this.tJadwalKerjaMDivisiId,
      @JsonKey(name: "t_jadwal_kerja.m_dept_id") this.tJadwalKerjaMDeptId,
      @JsonKey(name: "t_jadwal_kerja.tipe_jam_kerja_id")
      this.tJadwalKerjaTipeJamKerjaId,
      @JsonKey(name: "t_jadwal_kerja.keterangan") this.tJadwalKerjaKeterangan,
      @JsonKey(name: "t_jadwal_kerja.status") this.tJadwalKerjaStatus,
      @JsonKey(name: "t_jadwal_kerja.creator_id") this.tJadwalKerjaCreatorId,
      @JsonKey(name: "t_jadwal_kerja.last_editor_id")
      this.tJadwalKerjaLastEditorId,
      @JsonKey(name: "t_jadwal_kerja.created_at") this.tJadwalKerjaCreatedAt,
      @JsonKey(name: "t_jadwal_kerja.updated_at") this.tJadwalKerjaUpdatedAt,
      @JsonKey(name: "nomor_ktp") this.nomorKtp});

  factory _$DataAllKaryawanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataAllKaryawanImplFromJson(json);

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
  final dynamic DataAllKaryawanMCompId;
  @override
  @JsonKey(name: "m_dir_id")
  final dynamic DataAllKaryawanMDirId;
  @override
  @JsonKey(name: "m_divisi_id")
  final int? DataAllKaryawanMDivisiId;
  @override
  @JsonKey(name: "m_dept_id")
  final int? DataAllKaryawanMDeptId;
  @override
  @JsonKey(name: "m_zona_id")
  final dynamic DataAllKaryawanMZonaId;
  @override
  @JsonKey(name: "grading_id")
  final dynamic DataAllKaryawanGradingId;
  @override
  @JsonKey(name: "costcontre_id")
  final dynamic DataAllKaryawanCostcontreId;
  @override
  @JsonKey(name: "kode")
  final String? kode;
  @override
  @JsonKey(name: "m_posisi_id")
  final int? DataAllKaryawanMPosisiId;
  @override
  @JsonKey(name: "m_jam_kerja_id")
  final dynamic DataAllKaryawanMJamKerjaId;
  @override
  @JsonKey(name: "kode_presensi")
  final String? kodePresensi;
  @override
  @JsonKey(name: "nik")
  final String? nik;
  @override
  @JsonKey(name: "nama_depan")
  final String? namaDepan;
  @override
  @JsonKey(name: "nama_belakang")
  final String? namaBelakang;
  @override
  @JsonKey(name: "nama_lengkap")
  final String? namaLengkap;
  @override
  @JsonKey(name: "nama_panggilan")
  final String? namaPanggilan;
  @override
  @JsonKey(name: "jk_id")
  final int? DataAllKaryawanJkId;
  @override
  @JsonKey(name: "tempat_lahir")
  final String? tempatLahir;
  @override
  @JsonKey(name: "tgl_lahir")
  final String? tglLahir;
  @override
  @JsonKey(name: "provinsi_id")
  final int? DataAllKaryawanProvinsiId;
  @override
  @JsonKey(name: "kota_id")
  final int? DataAllKaryawanKotaId;
  @override
  @JsonKey(name: "kecamatan_id")
  final int? DataAllKaryawanKecamatanId;
  @override
  @JsonKey(name: "kode_pos")
  final String? kodePos;
  @override
  @JsonKey(name: "alamat_asli")
  final String? alamatAsli;
  @override
  @JsonKey(name: "alamat_domisili")
  final String? alamatDomisili;
  @override
  @JsonKey(name: "no_tlp")
  final String? noTlp;
  @override
  @JsonKey(name: "no_tlp_lainnya")
  final String? noTlpLainnya;
  @override
  @JsonKey(name: "no_darurat")
  final String? noDarurat;
  @override
  @JsonKey(name: "nama_kontak_darurat")
  final String? namaKontakDarurat;
  @override
  @JsonKey(name: "agama_id")
  final int? DataAllKaryawanAgamaId;
  @override
  @JsonKey(name: "gol_darah_id")
  final int? DataAllKaryawanGolDarahId;
  @override
  @JsonKey(name: "status_nikah_id")
  final int? DataAllKaryawanStatusNikahId;
  @override
  @JsonKey(name: "tanggungan_id")
  final int? DataAllKaryawanTanggunganId;
  @override
  @JsonKey(name: "hub_dgn_karyawan")
  final String? hubDgnKaryawan;
  @override
  @JsonKey(name: "cuti_jatah_reguler")
  final dynamic cutiJatahReguler;
  @override
  @JsonKey(name: "cuti_sisa_reguler")
  final dynamic cutiSisaReguler;
  @override
  @JsonKey(name: "cuti_panjang")
  final dynamic cutiPanjang;
  @override
  @JsonKey(name: "cuti_sisa_panjang")
  final dynamic cutiSisaPanjang;
  @override
  @JsonKey(name: "status_kary_id")
  final dynamic DataAllKaryawanStatusKaryId;
  @override
  @JsonKey(name: "lama_kontrak_awal")
  final dynamic lamaKontrakAwal;
  @override
  @JsonKey(name: "lama_kontrak_akhir")
  final dynamic lamaKontrakAkhir;
  @override
  @JsonKey(name: "tgl_masuk")
  final String? tglMasuk;
  @override
  @JsonKey(name: "tgl_berhenti")
  final dynamic tglBerhenti;
  @override
  @JsonKey(name: "alasan_berhenti")
  final dynamic alasanBerhenti;
  @override
  @JsonKey(name: "uk_baju")
  final String? ukBaju;
  @override
  @JsonKey(name: "uk_celana")
  final String? ukCelana;
  @override
  @JsonKey(name: "uk_sepatu")
  final String? ukSepatu;
  @override
  @JsonKey(name: "desc")
  final dynamic desc;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "creator_id")
  final int? DataAllKaryawanCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  final int? DataAllKaryawanLastEditorId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "m_standart_gaji_id")
  final dynamic DataAllKaryawanMStandartGajiId;
  @override
  @JsonKey(name: "periode_gaji_id")
  final int? DataAllKaryawanPeriodeGajiId;
  @override
  @JsonKey(name: "ref_id")
  final dynamic DataAllKaryawanRefId;
  @override
  @JsonKey(name: "presensi_lokasi_default_id")
  final int? DataAllKaryawanPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "exp_date_cuti")
  final dynamic expDateCuti;
  @override
  @JsonKey(name: "limit_potong")
  final int? limitPotong;
  @override
  @JsonKey(name: "atasan_id")
  final int? DataAllKaryawanAtasanId;
  @override
  @JsonKey(name: "cuti_p24")
  final int? cutiP24;
  @override
  @JsonKey(name: "cuti_sisa_p24")
  final dynamic cutiSisaP24;
  @override
  @JsonKey(name: "tipe_jam_kerja_id")
  final dynamic DataAllKaryawanTipeJamKerjaId;
  @override
  @JsonKey(name: "t_jadwal_kerja_id")
  final dynamic DataAllKaryawanTJadwalKerjaId;
  @override
  @JsonKey(name: "m_comp.id")
  final dynamic mCompId;
  @override
  @JsonKey(name: "m_comp.nama")
  final dynamic mCompNama;
  @override
  @JsonKey(name: "m_comp.is_active")
  final dynamic mCompIsActive;
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
  final dynamic mDivisiMCompId;
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
  final int? mDivisiCreatorId;
  @override
  @JsonKey(name: "m_divisi.last_editor_id")
  final dynamic mDivisiLastEditorId;
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
  final String? mDeptCreatedAt;
  @override
  @JsonKey(name: "m_dept.updated_at")
  final String? mDeptUpdatedAt;
  @override
  @JsonKey(name: "m_zona.id")
  final dynamic mZonaId;
  @override
  @JsonKey(name: "m_zona.m_comp_id")
  final dynamic mZonaMCompId;
  @override
  @JsonKey(name: "m_zona.m_dir_id")
  final dynamic mZonaMDirId;
  @override
  @JsonKey(name: "m_zona.kode")
  final dynamic mZonaKode;
  @override
  @JsonKey(name: "m_zona.nama")
  final dynamic mZonaNama;
  @override
  @JsonKey(name: "m_zona.desc")
  final dynamic mZonaDesc;
  @override
  @JsonKey(name: "m_zona.is_active")
  final dynamic mZonaIsActive;
  @override
  @JsonKey(name: "m_zona.creator_id")
  final dynamic mZonaCreatorId;
  @override
  @JsonKey(name: "m_zona.last_editor_id")
  final dynamic mZonaLastEditorId;
  @override
  @JsonKey(name: "m_zona.created_at")
  final dynamic mZonaCreatedAt;
  @override
  @JsonKey(name: "m_zona.updated_at")
  final dynamic mZonaUpdatedAt;
  @override
  @JsonKey(name: "grading.id")
  final dynamic gradingId;
  @override
  @JsonKey(name: "grading.m_comp_id")
  final dynamic gradingMCompId;
  @override
  @JsonKey(name: "grading.m_dir_id")
  final dynamic gradingMDirId;
  @override
  @JsonKey(name: "grading.group")
  final dynamic gradingGroup;
  @override
  @JsonKey(name: "grading.key")
  final dynamic gradingKey;
  @override
  @JsonKey(name: "grading.code")
  final dynamic gradingCode;
  @override
  @JsonKey(name: "grading.value")
  final dynamic gradingValue;
  @override
  @JsonKey(name: "grading.is_active")
  final dynamic gradingIsActive;
  @override
  @JsonKey(name: "grading.creator_id")
  final dynamic gradingCreatorId;
  @override
  @JsonKey(name: "grading.last_editor_id")
  final dynamic gradingLastEditorId;
  @override
  @JsonKey(name: "grading.created_at")
  final dynamic gradingCreatedAt;
  @override
  @JsonKey(name: "grading.updated_at")
  final dynamic gradingUpdatedAt;
  @override
  @JsonKey(name: "grading.value_2")
  final dynamic gradingValue2;
  @override
  @JsonKey(name: "grading.value_3")
  final dynamic gradingValue3;
  @override
  @JsonKey(name: "costcontre.id")
  final dynamic costcontreId;
  @override
  @JsonKey(name: "costcontre.m_comp_id")
  final dynamic costcontreMCompId;
  @override
  @JsonKey(name: "costcontre.m_dir_id")
  final dynamic costcontreMDirId;
  @override
  @JsonKey(name: "costcontre.group")
  final dynamic costcontreGroup;
  @override
  @JsonKey(name: "costcontre.key")
  final dynamic costcontreKey;
  @override
  @JsonKey(name: "costcontre.code")
  final dynamic costcontreCode;
  @override
  @JsonKey(name: "costcontre.value")
  final dynamic costcontreValue;
  @override
  @JsonKey(name: "costcontre.is_active")
  final dynamic costcontreIsActive;
  @override
  @JsonKey(name: "costcontre.creator_id")
  final dynamic costcontreCreatorId;
  @override
  @JsonKey(name: "costcontre.last_editor_id")
  final dynamic costcontreLastEditorId;
  @override
  @JsonKey(name: "costcontre.created_at")
  final dynamic costcontreCreatedAt;
  @override
  @JsonKey(name: "costcontre.updated_at")
  final dynamic costcontreUpdatedAt;
  @override
  @JsonKey(name: "costcontre.value_2")
  final dynamic costcontreValue2;
  @override
  @JsonKey(name: "costcontre.value_3")
  final dynamic costcontreValue3;
  @override
  @JsonKey(name: "m_posisi.id")
  final int? mPosisiId;
  @override
  @JsonKey(name: "m_posisi.m_comp_id")
  final dynamic mPosisiMCompId;
  @override
  @JsonKey(name: "m_posisi.m_dir_id")
  final dynamic mPosisiMDirId;
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
  final dynamic mPosisiDescKerja2;
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
  final dynamic mPosisiTipeBpjsId;
  @override
  @JsonKey(name: "m_posisi.potongan_bpjs")
  final dynamic mPosisiPotonganBpjs;
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
  @JsonKey(name: "m_jam_kerja.id")
  final dynamic mJamKerjaId;
  @override
  @JsonKey(name: "m_jam_kerja.m_comp_id")
  final dynamic mJamKerjaMCompId;
  @override
  @JsonKey(name: "m_jam_kerja.m_dir_id")
  final dynamic mJamKerjaMDirId;
  @override
  @JsonKey(name: "m_jam_kerja.kode")
  final dynamic mJamKerjaKode;
  @override
  @JsonKey(name: "m_jam_kerja.tipe_jam_kerja_id")
  final dynamic mJamKerjaTipeJamKerjaId;
  @override
  @JsonKey(name: "m_jam_kerja.waktu_mulai")
  final dynamic mJamKerjaWaktuMulai;
  @override
  @JsonKey(name: "m_jam_kerja.waktu_akhir")
  final dynamic mJamKerjaWaktuAkhir;
  @override
  @JsonKey(name: "m_jam_kerja.is_hari_berikutnya")
  final dynamic mJamKerjaIsHariBerikutnya;
  @override
  @JsonKey(name: "m_jam_kerja.desc")
  final dynamic mJamKerjaDesc;
  @override
  @JsonKey(name: "m_jam_kerja.is_active")
  final dynamic mJamKerjaIsActive;
  @override
  @JsonKey(name: "m_jam_kerja.creator_id")
  final dynamic mJamKerjaCreatorId;
  @override
  @JsonKey(name: "m_jam_kerja.last_editor_id")
  final dynamic mJamKerjaLastEditorId;
  @override
  @JsonKey(name: "m_jam_kerja.created_at")
  final dynamic mJamKerjaCreatedAt;
  @override
  @JsonKey(name: "m_jam_kerja.updated_at")
  final dynamic mJamKerjaUpdatedAt;
  @override
  @JsonKey(name: "jk.id")
  final int? jkId;
  @override
  @JsonKey(name: "jk.m_comp_id")
  final int? jkMCompId;
  @override
  @JsonKey(name: "jk.m_dir_id")
  final dynamic jkMDirId;
  @override
  @JsonKey(name: "jk.group")
  final String? jkGroup;
  @override
  @JsonKey(name: "jk.key")
  final String? jkKey;
  @override
  @JsonKey(name: "jk.code")
  final String? jkCode;
  @override
  @JsonKey(name: "jk.value")
  final String? jkValue;
  @override
  @JsonKey(name: "jk.is_active")
  final bool? jkIsActive;
  @override
  @JsonKey(name: "jk.creator_id")
  final dynamic jkCreatorId;
  @override
  @JsonKey(name: "jk.last_editor_id")
  final dynamic jkLastEditorId;
  @override
  @JsonKey(name: "jk.created_at")
  final String? jkCreatedAt;
  @override
  @JsonKey(name: "jk.updated_at")
  final String? jkUpdatedAt;
  @override
  @JsonKey(name: "jk.value_2")
  final dynamic jkValue2;
  @override
  @JsonKey(name: "jk.value_3")
  final dynamic jkValue3;
  @override
  @JsonKey(name: "provinsi.id")
  final int? provinsiId;
  @override
  @JsonKey(name: "provinsi.m_comp_id")
  final int? provinsiMCompId;
  @override
  @JsonKey(name: "provinsi.m_dir_id")
  final dynamic provinsiMDirId;
  @override
  @JsonKey(name: "provinsi.group")
  final String? provinsiGroup;
  @override
  @JsonKey(name: "provinsi.key")
  final dynamic provinsiKey;
  @override
  @JsonKey(name: "provinsi.code")
  final dynamic provinsiCode;
  @override
  @JsonKey(name: "provinsi.value")
  final String? provinsiValue;
  @override
  @JsonKey(name: "provinsi.is_active")
  final bool? provinsiIsActive;
  @override
  @JsonKey(name: "provinsi.creator_id")
  final dynamic provinsiCreatorId;
  @override
  @JsonKey(name: "provinsi.last_editor_id")
  final dynamic provinsiLastEditorId;
  @override
  @JsonKey(name: "provinsi.created_at")
  final dynamic provinsiCreatedAt;
  @override
  @JsonKey(name: "provinsi.updated_at")
  final String? provinsiUpdatedAt;
  @override
  @JsonKey(name: "provinsi.value_2")
  final dynamic provinsiValue2;
  @override
  @JsonKey(name: "provinsi.value_3")
  final dynamic provinsiValue3;
  @override
  @JsonKey(name: "kota.id")
  final int? kotaId;
  @override
  @JsonKey(name: "kota.m_comp_id")
  final int? kotaMCompId;
  @override
  @JsonKey(name: "kota.m_dir_id")
  final dynamic kotaMDirId;
  @override
  @JsonKey(name: "kota.group")
  final String? kotaGroup;
  @override
  @JsonKey(name: "kota.key")
  final String? kotaKey;
  @override
  @JsonKey(name: "kota.code")
  final dynamic kotaCode;
  @override
  @JsonKey(name: "kota.value")
  final String? kotaValue;
  @override
  @JsonKey(name: "kota.is_active")
  final bool? kotaIsActive;
  @override
  @JsonKey(name: "kota.creator_id")
  final dynamic kotaCreatorId;
  @override
  @JsonKey(name: "kota.last_editor_id")
  final dynamic kotaLastEditorId;
  @override
  @JsonKey(name: "kota.created_at")
  final dynamic kotaCreatedAt;
  @override
  @JsonKey(name: "kota.updated_at")
  final dynamic kotaUpdatedAt;
  @override
  @JsonKey(name: "kota.value_2")
  final dynamic kotaValue2;
  @override
  @JsonKey(name: "kota.value_3")
  final dynamic kotaValue3;
  @override
  @JsonKey(name: "kecamatan.id")
  final int? kecamatanId;
  @override
  @JsonKey(name: "kecamatan.m_comp_id")
  final int? kecamatanMCompId;
  @override
  @JsonKey(name: "kecamatan.m_dir_id")
  final dynamic kecamatanMDirId;
  @override
  @JsonKey(name: "kecamatan.group")
  final String? kecamatanGroup;
  @override
  @JsonKey(name: "kecamatan.key")
  final String? kecamatanKey;
  @override
  @JsonKey(name: "kecamatan.code")
  final dynamic kecamatanCode;
  @override
  @JsonKey(name: "kecamatan.value")
  final String? kecamatanValue;
  @override
  @JsonKey(name: "kecamatan.is_active")
  final bool? kecamatanIsActive;
  @override
  @JsonKey(name: "kecamatan.creator_id")
  final dynamic kecamatanCreatorId;
  @override
  @JsonKey(name: "kecamatan.last_editor_id")
  final dynamic kecamatanLastEditorId;
  @override
  @JsonKey(name: "kecamatan.created_at")
  final dynamic kecamatanCreatedAt;
  @override
  @JsonKey(name: "kecamatan.updated_at")
  final dynamic kecamatanUpdatedAt;
  @override
  @JsonKey(name: "kecamatan.value_2")
  final dynamic kecamatanValue2;
  @override
  @JsonKey(name: "kecamatan.value_3")
  final dynamic kecamatanValue3;
  @override
  @JsonKey(name: "agama.id")
  final int? agamaId;
  @override
  @JsonKey(name: "agama.m_comp_id")
  final int? agamaMCompId;
  @override
  @JsonKey(name: "agama.m_dir_id")
  final dynamic agamaMDirId;
  @override
  @JsonKey(name: "agama.group")
  final String? agamaGroup;
  @override
  @JsonKey(name: "agama.key")
  final String? agamaKey;
  @override
  @JsonKey(name: "agama.code")
  final String? agamaCode;
  @override
  @JsonKey(name: "agama.value")
  final String? agamaValue;
  @override
  @JsonKey(name: "agama.is_active")
  final bool? agamaIsActive;
  @override
  @JsonKey(name: "agama.creator_id")
  final dynamic agamaCreatorId;
  @override
  @JsonKey(name: "agama.last_editor_id")
  final dynamic agamaLastEditorId;
  @override
  @JsonKey(name: "agama.created_at")
  final String? agamaCreatedAt;
  @override
  @JsonKey(name: "agama.updated_at")
  final String? agamaUpdatedAt;
  @override
  @JsonKey(name: "agama.value_2")
  final dynamic agamaValue2;
  @override
  @JsonKey(name: "agama.value_3")
  final dynamic agamaValue3;
  @override
  @JsonKey(name: "gol_darah.id")
  final int? golDarahId;
  @override
  @JsonKey(name: "gol_darah.m_comp_id")
  final int? golDarahMCompId;
  @override
  @JsonKey(name: "gol_darah.m_dir_id")
  final dynamic golDarahMDirId;
  @override
  @JsonKey(name: "gol_darah.group")
  final String? golDarahGroup;
  @override
  @JsonKey(name: "gol_darah.key")
  final String? golDarahKey;
  @override
  @JsonKey(name: "gol_darah.code")
  final String? golDarahCode;
  @override
  @JsonKey(name: "gol_darah.value")
  final String? golDarahValue;
  @override
  @JsonKey(name: "gol_darah.is_active")
  final bool? golDarahIsActive;
  @override
  @JsonKey(name: "gol_darah.creator_id")
  final dynamic golDarahCreatorId;
  @override
  @JsonKey(name: "gol_darah.last_editor_id")
  final dynamic golDarahLastEditorId;
  @override
  @JsonKey(name: "gol_darah.created_at")
  final String? golDarahCreatedAt;
  @override
  @JsonKey(name: "gol_darah.updated_at")
  final String? golDarahUpdatedAt;
  @override
  @JsonKey(name: "gol_darah.value_2")
  final dynamic golDarahValue2;
  @override
  @JsonKey(name: "gol_darah.value_3")
  final dynamic golDarahValue3;
  @override
  @JsonKey(name: "status_nikah.id")
  final int? statusNikahId;
  @override
  @JsonKey(name: "status_nikah.m_comp_id")
  final int? statusNikahMCompId;
  @override
  @JsonKey(name: "status_nikah.m_dir_id")
  final dynamic statusNikahMDirId;
  @override
  @JsonKey(name: "status_nikah.group")
  final String? statusNikahGroup;
  @override
  @JsonKey(name: "status_nikah.key")
  final String? statusNikahKey;
  @override
  @JsonKey(name: "status_nikah.code")
  final String? statusNikahCode;
  @override
  @JsonKey(name: "status_nikah.value")
  final String? statusNikahValue;
  @override
  @JsonKey(name: "status_nikah.is_active")
  final bool? statusNikahIsActive;
  @override
  @JsonKey(name: "status_nikah.creator_id")
  final dynamic statusNikahCreatorId;
  @override
  @JsonKey(name: "status_nikah.last_editor_id")
  final dynamic statusNikahLastEditorId;
  @override
  @JsonKey(name: "status_nikah.created_at")
  final String? statusNikahCreatedAt;
  @override
  @JsonKey(name: "status_nikah.updated_at")
  final String? statusNikahUpdatedAt;
  @override
  @JsonKey(name: "status_nikah.value_2")
  final dynamic statusNikahValue2;
  @override
  @JsonKey(name: "status_nikah.value_3")
  final dynamic statusNikahValue3;
  @override
  @JsonKey(name: "tanggungan.id")
  final int? tanggunganId;
  @override
  @JsonKey(name: "tanggungan.m_comp_id")
  final int? tanggunganMCompId;
  @override
  @JsonKey(name: "tanggungan.m_dir_id")
  final int? tanggunganMDirId;
  @override
  @JsonKey(name: "tanggungan.group")
  final String? tanggunganGroup;
  @override
  @JsonKey(name: "tanggungan.key")
  final String? tanggunganKey;
  @override
  @JsonKey(name: "tanggungan.code")
  final String? tanggunganCode;
  @override
  @JsonKey(name: "tanggungan.value")
  final String? tanggunganValue;
  @override
  @JsonKey(name: "tanggungan.is_active")
  final bool? tanggunganIsActive;
  @override
  @JsonKey(name: "tanggungan.creator_id")
  final dynamic tanggunganCreatorId;
  @override
  @JsonKey(name: "tanggungan.last_editor_id")
  final dynamic tanggunganLastEditorId;
  @override
  @JsonKey(name: "tanggungan.created_at")
  final String? tanggunganCreatedAt;
  @override
  @JsonKey(name: "tanggungan.updated_at")
  final String? tanggunganUpdatedAt;
  @override
  @JsonKey(name: "tanggungan.value_2")
  final String? tanggunganValue2;
  @override
  @JsonKey(name: "tanggungan.value_3")
  final dynamic tanggunganValue3;
  @override
  @JsonKey(name: "status_kary.id")
  final dynamic statusKaryId;
  @override
  @JsonKey(name: "status_kary.m_comp_id")
  final dynamic statusKaryMCompId;
  @override
  @JsonKey(name: "status_kary.m_dir_id")
  final dynamic statusKaryMDirId;
  @override
  @JsonKey(name: "status_kary.group")
  final dynamic statusKaryGroup;
  @override
  @JsonKey(name: "status_kary.key")
  final dynamic statusKaryKey;
  @override
  @JsonKey(name: "status_kary.code")
  final dynamic statusKaryCode;
  @override
  @JsonKey(name: "status_kary.value")
  final dynamic statusKaryValue;
  @override
  @JsonKey(name: "status_kary.is_active")
  final dynamic statusKaryIsActive;
  @override
  @JsonKey(name: "status_kary.creator_id")
  final dynamic statusKaryCreatorId;
  @override
  @JsonKey(name: "status_kary.last_editor_id")
  final dynamic statusKaryLastEditorId;
  @override
  @JsonKey(name: "status_kary.created_at")
  final dynamic statusKaryCreatedAt;
  @override
  @JsonKey(name: "status_kary.updated_at")
  final dynamic statusKaryUpdatedAt;
  @override
  @JsonKey(name: "status_kary.value_2")
  final dynamic statusKaryValue2;
  @override
  @JsonKey(name: "status_kary.value_3")
  final dynamic statusKaryValue3;
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
  final dynamic lastEditorLastEditorId;
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
  @JsonKey(name: "m_standart_gaji.id")
  final dynamic mStandartGajiId;
  @override
  @JsonKey(name: "m_standart_gaji.m_comp_id")
  final dynamic mStandartGajiMCompId;
  @override
  @JsonKey(name: "m_standart_gaji.m_dir_id")
  final dynamic mStandartGajiMDirId;
  @override
  @JsonKey(name: "m_standart_gaji.kode")
  final dynamic mStandartGajiKode;
  @override
  @JsonKey(name: "m_standart_gaji.m_divisi_id")
  final dynamic mStandartGajiMDivisiId;
  @override
  @JsonKey(name: "m_standart_gaji.m_dept_id")
  final dynamic mStandartGajiMDeptId;
  @override
  @JsonKey(name: "m_standart_gaji.m_zona_id")
  final dynamic mStandartGajiMZonaId;
  @override
  @JsonKey(name: "m_standart_gaji.m_posisi_id")
  final dynamic mStandartGajiMPosisiId;
  @override
  @JsonKey(name: "m_standart_gaji.grading_id")
  final dynamic mStandartGajiGradingId;
  @override
  @JsonKey(name: "m_standart_gaji.gaji_pokok")
  final dynamic mStandartGajiGajiPokok;
  @override
  @JsonKey(name: "m_standart_gaji.gaji_pokok_periode")
  final dynamic mStandartGajiGajiPokokPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.uang_saku")
  final dynamic mStandartGajiUangSaku;
  @override
  @JsonKey(name: "m_standart_gaji.uang_saku_periode")
  final dynamic mStandartGajiUangSakuPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_posisi")
  final dynamic mStandartGajiTunjanganPosisi;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_posisi_periode")
  final dynamic mStandartGajiTunjanganPosisiPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_id")
  final dynamic mStandartGajiTunjanganKemahalanId;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_periode")
  final dynamic mStandartGajiTunjanganKemahalanPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.uang_makan")
  final dynamic mStandartGajiUangMakan;
  @override
  @JsonKey(name: "m_standart_gaji.uang_makan_periode")
  final dynamic mStandartGajiUangMakanPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_tetap")
  final dynamic mStandartGajiTunjanganTetap;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_tetap_periode")
  final dynamic mStandartGajiTunjanganTetapPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.desc")
  final dynamic mStandartGajiDesc;
  @override
  @JsonKey(name: "m_standart_gaji.is_active")
  final dynamic mStandartGajiIsActive;
  @override
  @JsonKey(name: "m_standart_gaji.creator_id")
  final dynamic mStandartGajiCreatorId;
  @override
  @JsonKey(name: "m_standart_gaji.last_editor_id")
  final dynamic mStandartGajiLastEditorId;
  @override
  @JsonKey(name: "m_standart_gaji.created_at")
  final dynamic mStandartGajiCreatedAt;
  @override
  @JsonKey(name: "m_standart_gaji.updated_at")
  final dynamic mStandartGajiUpdatedAt;
  @override
  @JsonKey(name: "periode_gaji.id")
  final int? periodeGajiId;
  @override
  @JsonKey(name: "periode_gaji.m_comp_id")
  final int? periodeGajiMCompId;
  @override
  @JsonKey(name: "periode_gaji.m_dir_id")
  final dynamic periodeGajiMDirId;
  @override
  @JsonKey(name: "periode_gaji.group")
  final String? periodeGajiGroup;
  @override
  @JsonKey(name: "periode_gaji.key")
  final String? periodeGajiKey;
  @override
  @JsonKey(name: "periode_gaji.code")
  final String? periodeGajiCode;
  @override
  @JsonKey(name: "periode_gaji.value")
  final String? periodeGajiValue;
  @override
  @JsonKey(name: "periode_gaji.is_active")
  final bool? periodeGajiIsActive;
  @override
  @JsonKey(name: "periode_gaji.creator_id")
  final dynamic periodeGajiCreatorId;
  @override
  @JsonKey(name: "periode_gaji.last_editor_id")
  final dynamic periodeGajiLastEditorId;
  @override
  @JsonKey(name: "periode_gaji.created_at")
  final String? periodeGajiCreatedAt;
  @override
  @JsonKey(name: "periode_gaji.updated_at")
  final String? periodeGajiUpdatedAt;
  @override
  @JsonKey(name: "periode_gaji.value_2")
  final dynamic periodeGajiValue2;
  @override
  @JsonKey(name: "periode_gaji.value_3")
  final dynamic periodeGajiValue3;
  @override
  @JsonKey(name: "ref.id")
  final dynamic refId;
  @override
  @JsonKey(name: "ref.nomor")
  final dynamic refNomor;
  @override
  @JsonKey(name: "ref.m_comp_id")
  final dynamic refMCompId;
  @override
  @JsonKey(name: "ref.m_dir_id")
  final dynamic refMDirId;
  @override
  @JsonKey(name: "ref.nama_pelamar")
  final dynamic refNamaPelamar;
  @override
  @JsonKey(name: "ref.ktp_no")
  final dynamic refKtpNo;
  @override
  @JsonKey(name: "ref.tanggal")
  final dynamic refTanggal;
  @override
  @JsonKey(name: "ref.ref")
  final dynamic refRef;
  @override
  @JsonKey(name: "ref.telp")
  final dynamic refTelp;
  @override
  @JsonKey(name: "ref.jk_id")
  final dynamic refJkId;
  @override
  @JsonKey(name: "ref.tgl_lahir")
  final dynamic refTglLahir;
  @override
  @JsonKey(name: "ref.salary")
  final dynamic refSalary;
  @override
  @JsonKey(name: "ref.deskripsi")
  final dynamic refDeskripsi;
  @override
  @JsonKey(name: "ref.status")
  final dynamic refStatus;
  @override
  @JsonKey(name: "ref.creator_id")
  final dynamic refCreatorId;
  @override
  @JsonKey(name: "ref.last_editor_id")
  final dynamic refLastEditorId;
  @override
  @JsonKey(name: "ref.created_at")
  final dynamic refCreatedAt;
  @override
  @JsonKey(name: "ref.updated_at")
  final dynamic refUpdatedAt;
  @override
  @JsonKey(name: "ref.m_divisi_id")
  final dynamic refMDivisiId;
  @override
  @JsonKey(name: "ref.m_dept_id")
  final dynamic refMDeptId;
  @override
  @JsonKey(name: "ref.m_posisi_id")
  final dynamic refMPosisiId;
  @override
  @JsonKey(name: "ref.tempat_lahir")
  final dynamic refTempatLahir;
  @override
  @JsonKey(name: "ref.t_loker_id")
  final dynamic refTLokerId;
  @override
  @JsonKey(name: "presensi_lokasi_default.id")
  final int? presensiLokasiDefaultId;
  @override
  @JsonKey(name: "presensi_lokasi_default.comp_id")
  final int? presensiLokasiDefaultCompId;
  @override
  @JsonKey(name: "presensi_lokasi_default.default_user_id")
  final dynamic presensiLokasiDefaultDefaultUserId;
  @override
  @JsonKey(name: "presensi_lokasi_default.nama")
  final String? presensiLokasiDefaultNama;
  @override
  @JsonKey(name: "presensi_lokasi_default.lat")
  final String? presensiLokasiDefaultLat;
  @override
  @JsonKey(name: "presensi_lokasi_default.long")
  final String? presensiLokasiDefaultLong;
  @override
  @JsonKey(name: "presensi_lokasi_default.is_active")
  final bool? presensiLokasiDefaultIsActive;
  @override
  @JsonKey(name: "presensi_lokasi_default.creator_id")
  final int? presensiLokasiDefaultCreatorId;
  @override
  @JsonKey(name: "presensi_lokasi_default.last_editor_id")
  final dynamic presensiLokasiDefaultLastEditorId;
  @override
  @JsonKey(name: "presensi_lokasi_default.created_at")
  final String? presensiLokasiDefaultCreatedAt;
  @override
  @JsonKey(name: "presensi_lokasi_default.updated_at")
  final dynamic presensiLokasiDefaultUpdatedAt;
  @override
  @JsonKey(name: "atasan.id")
  final dynamic atasanId;
  @override
  @JsonKey(name: "atasan.m_comp_id")
  final dynamic atasanMCompId;
  @override
  @JsonKey(name: "atasan.m_dir_id")
  final dynamic atasanMDirId;
  @override
  @JsonKey(name: "atasan.m_divisi_id")
  final dynamic atasanMDivisiId;
  @override
  @JsonKey(name: "atasan.m_dept_id")
  final dynamic atasanMDeptId;
  @override
  @JsonKey(name: "atasan.m_zona_id")
  final dynamic atasanMZonaId;
  @override
  @JsonKey(name: "atasan.grading_id")
  final dynamic atasanGradingId;
  @override
  @JsonKey(name: "atasan.costcontre_id")
  final dynamic atasanCostcontreId;
  @override
  @JsonKey(name: "atasan.kode")
  final dynamic atasanKode;
  @override
  @JsonKey(name: "atasan.m_posisi_id")
  final dynamic atasanMPosisiId;
  @override
  @JsonKey(name: "atasan.m_jam_kerja_id")
  final dynamic atasanMJamKerjaId;
  @override
  @JsonKey(name: "atasan.kode_presensi")
  final dynamic atasanKodePresensi;
  @override
  @JsonKey(name: "atasan.nik")
  final dynamic atasanNik;
  @override
  @JsonKey(name: "atasan.nama_depan")
  final dynamic atasanNamaDepan;
  @override
  @JsonKey(name: "atasan.nama_belakang")
  final dynamic atasanNamaBelakang;
  @override
  @JsonKey(name: "atasan.nama_lengkap")
  final dynamic atasanNamaLengkap;
  @override
  @JsonKey(name: "atasan.nama_panggilan")
  final dynamic atasanNamaPanggilan;
  @override
  @JsonKey(name: "atasan.jk_id")
  final dynamic atasanJkId;
  @override
  @JsonKey(name: "atasan.tempat_lahir")
  final dynamic atasanTempatLahir;
  @override
  @JsonKey(name: "atasan.tgl_lahir")
  final dynamic atasanTglLahir;
  @override
  @JsonKey(name: "atasan.provinsi_id")
  final dynamic atasanProvinsiId;
  @override
  @JsonKey(name: "atasan.kota_id")
  final dynamic atasanKotaId;
  @override
  @JsonKey(name: "atasan.kecamatan_id")
  final dynamic atasanKecamatanId;
  @override
  @JsonKey(name: "atasan.kode_pos")
  final dynamic atasanKodePos;
  @override
  @JsonKey(name: "atasan.alamat_asli")
  final dynamic atasanAlamatAsli;
  @override
  @JsonKey(name: "atasan.alamat_domisili")
  final dynamic atasanAlamatDomisili;
  @override
  @JsonKey(name: "atasan.no_tlp")
  final dynamic atasanNoTlp;
  @override
  @JsonKey(name: "atasan.no_tlp_lainnya")
  final dynamic atasanNoTlpLainnya;
  @override
  @JsonKey(name: "atasan.no_darurat")
  final dynamic atasanNoDarurat;
  @override
  @JsonKey(name: "atasan.nama_kontak_darurat")
  final dynamic atasanNamaKontakDarurat;
  @override
  @JsonKey(name: "atasan.agama_id")
  final dynamic atasanAgamaId;
  @override
  @JsonKey(name: "atasan.gol_darah_id")
  final dynamic atasanGolDarahId;
  @override
  @JsonKey(name: "atasan.status_nikah_id")
  final dynamic atasanStatusNikahId;
  @override
  @JsonKey(name: "atasan.tanggungan_id")
  final dynamic atasanTanggunganId;
  @override
  @JsonKey(name: "atasan.hub_dgn_karyawan")
  final dynamic atasanHubDgnKaryawan;
  @override
  @JsonKey(name: "atasan.cuti_jatah_reguler")
  final dynamic atasanCutiJatahReguler;
  @override
  @JsonKey(name: "atasan.cuti_sisa_reguler")
  final dynamic atasanCutiSisaReguler;
  @override
  @JsonKey(name: "atasan.cuti_panjang")
  final dynamic atasanCutiPanjang;
  @override
  @JsonKey(name: "atasan.cuti_sisa_panjang")
  final dynamic atasanCutiSisaPanjang;
  @override
  @JsonKey(name: "atasan.status_kary_id")
  final dynamic atasanStatusKaryId;
  @override
  @JsonKey(name: "atasan.lama_kontrak_awal")
  final dynamic atasanLamaKontrakAwal;
  @override
  @JsonKey(name: "atasan.lama_kontrak_akhir")
  final dynamic atasanLamaKontrakAkhir;
  @override
  @JsonKey(name: "atasan.tgl_masuk")
  final dynamic atasanTglMasuk;
  @override
  @JsonKey(name: "atasan.tgl_berhenti")
  final dynamic atasanTglBerhenti;
  @override
  @JsonKey(name: "atasan.alasan_berhenti")
  final dynamic atasanAlasanBerhenti;
  @override
  @JsonKey(name: "atasan.uk_baju")
  final dynamic atasanUkBaju;
  @override
  @JsonKey(name: "atasan.uk_celana")
  final dynamic atasanUkCelana;
  @override
  @JsonKey(name: "atasan.uk_sepatu")
  final dynamic atasanUkSepatu;
  @override
  @JsonKey(name: "atasan.desc")
  final dynamic atasanDesc;
  @override
  @JsonKey(name: "atasan.is_active")
  final dynamic atasanIsActive;
  @override
  @JsonKey(name: "atasan.creator_id")
  final dynamic atasanCreatorId;
  @override
  @JsonKey(name: "atasan.last_editor_id")
  final dynamic atasanLastEditorId;
  @override
  @JsonKey(name: "atasan.created_at")
  final dynamic atasanCreatedAt;
  @override
  @JsonKey(name: "atasan.updated_at")
  final dynamic atasanUpdatedAt;
  @override
  @JsonKey(name: "atasan.m_standart_gaji_id")
  final dynamic atasanMStandartGajiId;
  @override
  @JsonKey(name: "atasan.periode_gaji_id")
  final dynamic atasanPeriodeGajiId;
  @override
  @JsonKey(name: "atasan.ref_id")
  final dynamic atasanRefId;
  @override
  @JsonKey(name: "atasan.presensi_lokasi_default_id")
  final dynamic atasanPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "atasan.exp_date_cuti")
  final dynamic atasanExpDateCuti;
  @override
  @JsonKey(name: "atasan.limit_potong")
  final dynamic atasanLimitPotong;
  @override
  @JsonKey(name: "atasan.atasan_id")
  final dynamic atasanAtasanId;
  @override
  @JsonKey(name: "atasan.cuti_p24")
  final dynamic atasanCutiP24;
  @override
  @JsonKey(name: "atasan.cuti_sisa_p24")
  final dynamic atasanCutiSisaP24;
  @override
  @JsonKey(name: "atasan.tipe_jam_kerja_id")
  final dynamic atasanTipeJamKerjaId;
  @override
  @JsonKey(name: "atasan.t_jadwal_kerja_id")
  final dynamic atasanTJadwalKerjaId;
  @override
  @JsonKey(name: "tipe_jam_kerja.id")
  final dynamic tipeJamKerjaId;
  @override
  @JsonKey(name: "tipe_jam_kerja.m_comp_id")
  final dynamic tipeJamKerjaMCompId;
  @override
  @JsonKey(name: "tipe_jam_kerja.m_dir_id")
  final dynamic tipeJamKerjaMDirId;
  @override
  @JsonKey(name: "tipe_jam_kerja.group")
  final dynamic tipeJamKerjaGroup;
  @override
  @JsonKey(name: "tipe_jam_kerja.key")
  final dynamic tipeJamKerjaKey;
  @override
  @JsonKey(name: "tipe_jam_kerja.code")
  final dynamic tipeJamKerjaCode;
  @override
  @JsonKey(name: "tipe_jam_kerja.value")
  final dynamic tipeJamKerjaValue;
  @override
  @JsonKey(name: "tipe_jam_kerja.is_active")
  final dynamic tipeJamKerjaIsActive;
  @override
  @JsonKey(name: "tipe_jam_kerja.creator_id")
  final dynamic tipeJamKerjaCreatorId;
  @override
  @JsonKey(name: "tipe_jam_kerja.last_editor_id")
  final dynamic tipeJamKerjaLastEditorId;
  @override
  @JsonKey(name: "tipe_jam_kerja.created_at")
  final dynamic tipeJamKerjaCreatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.updated_at")
  final dynamic tipeJamKerjaUpdatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.value_2")
  final dynamic tipeJamKerjaValue2;
  @override
  @JsonKey(name: "tipe_jam_kerja.value_3")
  final dynamic tipeJamKerjaValue3;
  @override
  @JsonKey(name: "t_jadwal_kerja.id")
  final dynamic tJadwalKerjaId;
  @override
  @JsonKey(name: "t_jadwal_kerja.nomor")
  final dynamic tJadwalKerjaNomor;
  @override
  @JsonKey(name: "t_jadwal_kerja.m_comp_id")
  final dynamic tJadwalKerjaMCompId;
  @override
  @JsonKey(name: "t_jadwal_kerja.m_dir_id")
  final dynamic tJadwalKerjaMDirId;
  @override
  @JsonKey(name: "t_jadwal_kerja.m_divisi_id")
  final dynamic tJadwalKerjaMDivisiId;
  @override
  @JsonKey(name: "t_jadwal_kerja.m_dept_id")
  final dynamic tJadwalKerjaMDeptId;
  @override
  @JsonKey(name: "t_jadwal_kerja.tipe_jam_kerja_id")
  final dynamic tJadwalKerjaTipeJamKerjaId;
  @override
  @JsonKey(name: "t_jadwal_kerja.keterangan")
  final dynamic tJadwalKerjaKeterangan;
  @override
  @JsonKey(name: "t_jadwal_kerja.status")
  final dynamic tJadwalKerjaStatus;
  @override
  @JsonKey(name: "t_jadwal_kerja.creator_id")
  final dynamic tJadwalKerjaCreatorId;
  @override
  @JsonKey(name: "t_jadwal_kerja.last_editor_id")
  final dynamic tJadwalKerjaLastEditorId;
  @override
  @JsonKey(name: "t_jadwal_kerja.created_at")
  final dynamic tJadwalKerjaCreatedAt;
  @override
  @JsonKey(name: "t_jadwal_kerja.updated_at")
  final dynamic tJadwalKerjaUpdatedAt;
  @override
  @JsonKey(name: "nomor_ktp")
  final String? nomorKtp;

  @override
  String toString() {
    return 'DataAllKaryawan(metaRead: $metaRead, metaDelete: $metaDelete, metaUpdate: $metaUpdate, metaCreate: $metaCreate, id: $id, DataAllKaryawanMCompId: $DataAllKaryawanMCompId, DataAllKaryawanMDirId: $DataAllKaryawanMDirId, DataAllKaryawanMDivisiId: $DataAllKaryawanMDivisiId, DataAllKaryawanMDeptId: $DataAllKaryawanMDeptId, DataAllKaryawanMZonaId: $DataAllKaryawanMZonaId, DataAllKaryawanGradingId: $DataAllKaryawanGradingId, DataAllKaryawanCostcontreId: $DataAllKaryawanCostcontreId, kode: $kode, DataAllKaryawanMPosisiId: $DataAllKaryawanMPosisiId, DataAllKaryawanMJamKerjaId: $DataAllKaryawanMJamKerjaId, kodePresensi: $kodePresensi, nik: $nik, namaDepan: $namaDepan, namaBelakang: $namaBelakang, namaLengkap: $namaLengkap, namaPanggilan: $namaPanggilan, DataAllKaryawanJkId: $DataAllKaryawanJkId, tempatLahir: $tempatLahir, tglLahir: $tglLahir, DataAllKaryawanProvinsiId: $DataAllKaryawanProvinsiId, DataAllKaryawanKotaId: $DataAllKaryawanKotaId, DataAllKaryawanKecamatanId: $DataAllKaryawanKecamatanId, kodePos: $kodePos, alamatAsli: $alamatAsli, alamatDomisili: $alamatDomisili, noTlp: $noTlp, noTlpLainnya: $noTlpLainnya, noDarurat: $noDarurat, namaKontakDarurat: $namaKontakDarurat, DataAllKaryawanAgamaId: $DataAllKaryawanAgamaId, DataAllKaryawanGolDarahId: $DataAllKaryawanGolDarahId, DataAllKaryawanStatusNikahId: $DataAllKaryawanStatusNikahId, DataAllKaryawanTanggunganId: $DataAllKaryawanTanggunganId, hubDgnKaryawan: $hubDgnKaryawan, cutiJatahReguler: $cutiJatahReguler, cutiSisaReguler: $cutiSisaReguler, cutiPanjang: $cutiPanjang, cutiSisaPanjang: $cutiSisaPanjang, DataAllKaryawanStatusKaryId: $DataAllKaryawanStatusKaryId, lamaKontrakAwal: $lamaKontrakAwal, lamaKontrakAkhir: $lamaKontrakAkhir, tglMasuk: $tglMasuk, tglBerhenti: $tglBerhenti, alasanBerhenti: $alasanBerhenti, ukBaju: $ukBaju, ukCelana: $ukCelana, ukSepatu: $ukSepatu, desc: $desc, isActive: $isActive, DataAllKaryawanCreatorId: $DataAllKaryawanCreatorId, DataAllKaryawanLastEditorId: $DataAllKaryawanLastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, DataAllKaryawanMStandartGajiId: $DataAllKaryawanMStandartGajiId, DataAllKaryawanPeriodeGajiId: $DataAllKaryawanPeriodeGajiId, DataAllKaryawanRefId: $DataAllKaryawanRefId, DataAllKaryawanPresensiLokasiDefaultId: $DataAllKaryawanPresensiLokasiDefaultId, expDateCuti: $expDateCuti, limitPotong: $limitPotong, DataAllKaryawanAtasanId: $DataAllKaryawanAtasanId, cutiP24: $cutiP24, cutiSisaP24: $cutiSisaP24, DataAllKaryawanTipeJamKerjaId: $DataAllKaryawanTipeJamKerjaId, DataAllKaryawanTJadwalKerjaId: $DataAllKaryawanTJadwalKerjaId, mCompId: $mCompId, mCompNama: $mCompNama, mCompIsActive: $mCompIsActive, mCompDesc: $mCompDesc, mCompCreatorId: $mCompCreatorId, mCompLastEditorId: $mCompLastEditorId, mCompCreatedAt: $mCompCreatedAt, mCompUpdatedAt: $mCompUpdatedAt, mDirId: $mDirId, mDirMCompId: $mDirMCompId, mDirNama: $mDirNama, mDirDesc: $mDirDesc, mDirIsActive: $mDirIsActive, mDirCreatorId: $mDirCreatorId, mDirLastEditorId: $mDirLastEditorId, mDirCreatedAt: $mDirCreatedAt, mDirUpdatedAt: $mDirUpdatedAt, mDivisiId: $mDivisiId, mDivisiMCompId: $mDivisiMCompId, mDivisiMDirId: $mDivisiMDirId, mDivisiNama: $mDivisiNama, mDivisiDesc: $mDivisiDesc, mDivisiIsActive: $mDivisiIsActive, mDivisiCreatorId: $mDivisiCreatorId, mDivisiLastEditorId: $mDivisiLastEditorId, mDivisiCreatedAt: $mDivisiCreatedAt, mDivisiUpdatedAt: $mDivisiUpdatedAt, mDeptId: $mDeptId, mDeptMDirId: $mDeptMDirId, mDeptMDivisiId: $mDeptMDivisiId, mDeptNama: $mDeptNama, mDeptDesc: $mDeptDesc, mDeptIsActive: $mDeptIsActive, mDeptCreatorId: $mDeptCreatorId, mDeptLastEditorId: $mDeptLastEditorId, mDeptCreatedAt: $mDeptCreatedAt, mDeptUpdatedAt: $mDeptUpdatedAt, mZonaId: $mZonaId, mZonaMCompId: $mZonaMCompId, mZonaMDirId: $mZonaMDirId, mZonaKode: $mZonaKode, mZonaNama: $mZonaNama, mZonaDesc: $mZonaDesc, mZonaIsActive: $mZonaIsActive, mZonaCreatorId: $mZonaCreatorId, mZonaLastEditorId: $mZonaLastEditorId, mZonaCreatedAt: $mZonaCreatedAt, mZonaUpdatedAt: $mZonaUpdatedAt, gradingId: $gradingId, gradingMCompId: $gradingMCompId, gradingMDirId: $gradingMDirId, gradingGroup: $gradingGroup, gradingKey: $gradingKey, gradingCode: $gradingCode, gradingValue: $gradingValue, gradingIsActive: $gradingIsActive, gradingCreatorId: $gradingCreatorId, gradingLastEditorId: $gradingLastEditorId, gradingCreatedAt: $gradingCreatedAt, gradingUpdatedAt: $gradingUpdatedAt, gradingValue2: $gradingValue2, gradingValue3: $gradingValue3, costcontreId: $costcontreId, costcontreMCompId: $costcontreMCompId, costcontreMDirId: $costcontreMDirId, costcontreGroup: $costcontreGroup, costcontreKey: $costcontreKey, costcontreCode: $costcontreCode, costcontreValue: $costcontreValue, costcontreIsActive: $costcontreIsActive, costcontreCreatorId: $costcontreCreatorId, costcontreLastEditorId: $costcontreLastEditorId, costcontreCreatedAt: $costcontreCreatedAt, costcontreUpdatedAt: $costcontreUpdatedAt, costcontreValue2: $costcontreValue2, costcontreValue3: $costcontreValue3, mPosisiId: $mPosisiId, mPosisiMCompId: $mPosisiMCompId, mPosisiMDirId: $mPosisiMDirId, mPosisiKode: $mPosisiKode, mPosisiDescKerja: $mPosisiDescKerja, mPosisiDescKerja1: $mPosisiDescKerja1, mPosisiDescKerja2: $mPosisiDescKerja2, mPosisiMinPengalaman: $mPosisiMinPengalaman, mPosisiMinPendidikanId: $mPosisiMinPendidikanId, mPosisiMinGajiPokok: $mPosisiMinGajiPokok, mPosisiMaxGajiPokok: $mPosisiMaxGajiPokok, mPosisiBiaya: $mPosisiBiaya, mPosisiTipeBpjsId: $mPosisiTipeBpjsId, mPosisiPotonganBpjs: $mPosisiPotonganBpjs, mPosisiDesc: $mPosisiDesc, mPosisiIsActive: $mPosisiIsActive, mPosisiCreatorId: $mPosisiCreatorId, mPosisiLastEditorId: $mPosisiLastEditorId, mPosisiCreatedAt: $mPosisiCreatedAt, mPosisiUpdatedAt: $mPosisiUpdatedAt, mJamKerjaId: $mJamKerjaId, mJamKerjaMCompId: $mJamKerjaMCompId, mJamKerjaMDirId: $mJamKerjaMDirId, mJamKerjaKode: $mJamKerjaKode, mJamKerjaTipeJamKerjaId: $mJamKerjaTipeJamKerjaId, mJamKerjaWaktuMulai: $mJamKerjaWaktuMulai, mJamKerjaWaktuAkhir: $mJamKerjaWaktuAkhir, mJamKerjaIsHariBerikutnya: $mJamKerjaIsHariBerikutnya, mJamKerjaDesc: $mJamKerjaDesc, mJamKerjaIsActive: $mJamKerjaIsActive, mJamKerjaCreatorId: $mJamKerjaCreatorId, mJamKerjaLastEditorId: $mJamKerjaLastEditorId, mJamKerjaCreatedAt: $mJamKerjaCreatedAt, mJamKerjaUpdatedAt: $mJamKerjaUpdatedAt, jkId: $jkId, jkMCompId: $jkMCompId, jkMDirId: $jkMDirId, jkGroup: $jkGroup, jkKey: $jkKey, jkCode: $jkCode, jkValue: $jkValue, jkIsActive: $jkIsActive, jkCreatorId: $jkCreatorId, jkLastEditorId: $jkLastEditorId, jkCreatedAt: $jkCreatedAt, jkUpdatedAt: $jkUpdatedAt, jkValue2: $jkValue2, jkValue3: $jkValue3, provinsiId: $provinsiId, provinsiMCompId: $provinsiMCompId, provinsiMDirId: $provinsiMDirId, provinsiGroup: $provinsiGroup, provinsiKey: $provinsiKey, provinsiCode: $provinsiCode, provinsiValue: $provinsiValue, provinsiIsActive: $provinsiIsActive, provinsiCreatorId: $provinsiCreatorId, provinsiLastEditorId: $provinsiLastEditorId, provinsiCreatedAt: $provinsiCreatedAt, provinsiUpdatedAt: $provinsiUpdatedAt, provinsiValue2: $provinsiValue2, provinsiValue3: $provinsiValue3, kotaId: $kotaId, kotaMCompId: $kotaMCompId, kotaMDirId: $kotaMDirId, kotaGroup: $kotaGroup, kotaKey: $kotaKey, kotaCode: $kotaCode, kotaValue: $kotaValue, kotaIsActive: $kotaIsActive, kotaCreatorId: $kotaCreatorId, kotaLastEditorId: $kotaLastEditorId, kotaCreatedAt: $kotaCreatedAt, kotaUpdatedAt: $kotaUpdatedAt, kotaValue2: $kotaValue2, kotaValue3: $kotaValue3, kecamatanId: $kecamatanId, kecamatanMCompId: $kecamatanMCompId, kecamatanMDirId: $kecamatanMDirId, kecamatanGroup: $kecamatanGroup, kecamatanKey: $kecamatanKey, kecamatanCode: $kecamatanCode, kecamatanValue: $kecamatanValue, kecamatanIsActive: $kecamatanIsActive, kecamatanCreatorId: $kecamatanCreatorId, kecamatanLastEditorId: $kecamatanLastEditorId, kecamatanCreatedAt: $kecamatanCreatedAt, kecamatanUpdatedAt: $kecamatanUpdatedAt, kecamatanValue2: $kecamatanValue2, kecamatanValue3: $kecamatanValue3, agamaId: $agamaId, agamaMCompId: $agamaMCompId, agamaMDirId: $agamaMDirId, agamaGroup: $agamaGroup, agamaKey: $agamaKey, agamaCode: $agamaCode, agamaValue: $agamaValue, agamaIsActive: $agamaIsActive, agamaCreatorId: $agamaCreatorId, agamaLastEditorId: $agamaLastEditorId, agamaCreatedAt: $agamaCreatedAt, agamaUpdatedAt: $agamaUpdatedAt, agamaValue2: $agamaValue2, agamaValue3: $agamaValue3, golDarahId: $golDarahId, golDarahMCompId: $golDarahMCompId, golDarahMDirId: $golDarahMDirId, golDarahGroup: $golDarahGroup, golDarahKey: $golDarahKey, golDarahCode: $golDarahCode, golDarahValue: $golDarahValue, golDarahIsActive: $golDarahIsActive, golDarahCreatorId: $golDarahCreatorId, golDarahLastEditorId: $golDarahLastEditorId, golDarahCreatedAt: $golDarahCreatedAt, golDarahUpdatedAt: $golDarahUpdatedAt, golDarahValue2: $golDarahValue2, golDarahValue3: $golDarahValue3, statusNikahId: $statusNikahId, statusNikahMCompId: $statusNikahMCompId, statusNikahMDirId: $statusNikahMDirId, statusNikahGroup: $statusNikahGroup, statusNikahKey: $statusNikahKey, statusNikahCode: $statusNikahCode, statusNikahValue: $statusNikahValue, statusNikahIsActive: $statusNikahIsActive, statusNikahCreatorId: $statusNikahCreatorId, statusNikahLastEditorId: $statusNikahLastEditorId, statusNikahCreatedAt: $statusNikahCreatedAt, statusNikahUpdatedAt: $statusNikahUpdatedAt, statusNikahValue2: $statusNikahValue2, statusNikahValue3: $statusNikahValue3, tanggunganId: $tanggunganId, tanggunganMCompId: $tanggunganMCompId, tanggunganMDirId: $tanggunganMDirId, tanggunganGroup: $tanggunganGroup, tanggunganKey: $tanggunganKey, tanggunganCode: $tanggunganCode, tanggunganValue: $tanggunganValue, tanggunganIsActive: $tanggunganIsActive, tanggunganCreatorId: $tanggunganCreatorId, tanggunganLastEditorId: $tanggunganLastEditorId, tanggunganCreatedAt: $tanggunganCreatedAt, tanggunganUpdatedAt: $tanggunganUpdatedAt, tanggunganValue2: $tanggunganValue2, tanggunganValue3: $tanggunganValue3, statusKaryId: $statusKaryId, statusKaryMCompId: $statusKaryMCompId, statusKaryMDirId: $statusKaryMDirId, statusKaryGroup: $statusKaryGroup, statusKaryKey: $statusKaryKey, statusKaryCode: $statusKaryCode, statusKaryValue: $statusKaryValue, statusKaryIsActive: $statusKaryIsActive, statusKaryCreatorId: $statusKaryCreatorId, statusKaryLastEditorId: $statusKaryLastEditorId, statusKaryCreatedAt: $statusKaryCreatedAt, statusKaryUpdatedAt: $statusKaryUpdatedAt, statusKaryValue2: $statusKaryValue2, statusKaryValue3: $statusKaryValue3, creatorId: $creatorId, creatorName: $creatorName, creatorEmail: $creatorEmail, creatorUsername: $creatorUsername, creatorEmailVerifiedAt: $creatorEmailVerifiedAt, creatorPassword: $creatorPassword, creatorMCompId: $creatorMCompId, creatorMDirId: $creatorMDirId, creatorIsActive: $creatorIsActive, creatorCreatorId: $creatorCreatorId, creatorLastEditorId: $creatorLastEditorId, creatorRememberToken: $creatorRememberToken, creatorCreatedAt: $creatorCreatedAt, creatorUpdatedAt: $creatorUpdatedAt, creatorProfilImage: $creatorProfilImage, creatorTelp: $creatorTelp, creatorMKaryId: $creatorMKaryId, lastEditorId: $lastEditorId, lastEditorName: $lastEditorName, lastEditorEmail: $lastEditorEmail, lastEditorUsername: $lastEditorUsername, lastEditorEmailVerifiedAt: $lastEditorEmailVerifiedAt, lastEditorPassword: $lastEditorPassword, lastEditorMCompId: $lastEditorMCompId, lastEditorMDirId: $lastEditorMDirId, lastEditorIsActive: $lastEditorIsActive, lastEditorCreatorId: $lastEditorCreatorId, lastEditorLastEditorId: $lastEditorLastEditorId, lastEditorRememberToken: $lastEditorRememberToken, lastEditorCreatedAt: $lastEditorCreatedAt, lastEditorUpdatedAt: $lastEditorUpdatedAt, lastEditorProfilImage: $lastEditorProfilImage, lastEditorTelp: $lastEditorTelp, lastEditorMKaryId: $lastEditorMKaryId, mStandartGajiId: $mStandartGajiId, mStandartGajiMCompId: $mStandartGajiMCompId, mStandartGajiMDirId: $mStandartGajiMDirId, mStandartGajiKode: $mStandartGajiKode, mStandartGajiMDivisiId: $mStandartGajiMDivisiId, mStandartGajiMDeptId: $mStandartGajiMDeptId, mStandartGajiMZonaId: $mStandartGajiMZonaId, mStandartGajiMPosisiId: $mStandartGajiMPosisiId, mStandartGajiGradingId: $mStandartGajiGradingId, mStandartGajiGajiPokok: $mStandartGajiGajiPokok, mStandartGajiGajiPokokPeriode: $mStandartGajiGajiPokokPeriode, mStandartGajiUangSaku: $mStandartGajiUangSaku, mStandartGajiUangSakuPeriode: $mStandartGajiUangSakuPeriode, mStandartGajiTunjanganPosisi: $mStandartGajiTunjanganPosisi, mStandartGajiTunjanganPosisiPeriode: $mStandartGajiTunjanganPosisiPeriode, mStandartGajiTunjanganKemahalanId: $mStandartGajiTunjanganKemahalanId, mStandartGajiTunjanganKemahalanPeriode: $mStandartGajiTunjanganKemahalanPeriode, mStandartGajiUangMakan: $mStandartGajiUangMakan, mStandartGajiUangMakanPeriode: $mStandartGajiUangMakanPeriode, mStandartGajiTunjanganTetap: $mStandartGajiTunjanganTetap, mStandartGajiTunjanganTetapPeriode: $mStandartGajiTunjanganTetapPeriode, mStandartGajiDesc: $mStandartGajiDesc, mStandartGajiIsActive: $mStandartGajiIsActive, mStandartGajiCreatorId: $mStandartGajiCreatorId, mStandartGajiLastEditorId: $mStandartGajiLastEditorId, mStandartGajiCreatedAt: $mStandartGajiCreatedAt, mStandartGajiUpdatedAt: $mStandartGajiUpdatedAt, periodeGajiId: $periodeGajiId, periodeGajiMCompId: $periodeGajiMCompId, periodeGajiMDirId: $periodeGajiMDirId, periodeGajiGroup: $periodeGajiGroup, periodeGajiKey: $periodeGajiKey, periodeGajiCode: $periodeGajiCode, periodeGajiValue: $periodeGajiValue, periodeGajiIsActive: $periodeGajiIsActive, periodeGajiCreatorId: $periodeGajiCreatorId, periodeGajiLastEditorId: $periodeGajiLastEditorId, periodeGajiCreatedAt: $periodeGajiCreatedAt, periodeGajiUpdatedAt: $periodeGajiUpdatedAt, periodeGajiValue2: $periodeGajiValue2, periodeGajiValue3: $periodeGajiValue3, refId: $refId, refNomor: $refNomor, refMCompId: $refMCompId, refMDirId: $refMDirId, refNamaPelamar: $refNamaPelamar, refKtpNo: $refKtpNo, refTanggal: $refTanggal, refRef: $refRef, refTelp: $refTelp, refJkId: $refJkId, refTglLahir: $refTglLahir, refSalary: $refSalary, refDeskripsi: $refDeskripsi, refStatus: $refStatus, refCreatorId: $refCreatorId, refLastEditorId: $refLastEditorId, refCreatedAt: $refCreatedAt, refUpdatedAt: $refUpdatedAt, refMDivisiId: $refMDivisiId, refMDeptId: $refMDeptId, refMPosisiId: $refMPosisiId, refTempatLahir: $refTempatLahir, refTLokerId: $refTLokerId, presensiLokasiDefaultId: $presensiLokasiDefaultId, presensiLokasiDefaultCompId: $presensiLokasiDefaultCompId, presensiLokasiDefaultDefaultUserId: $presensiLokasiDefaultDefaultUserId, presensiLokasiDefaultNama: $presensiLokasiDefaultNama, presensiLokasiDefaultLat: $presensiLokasiDefaultLat, presensiLokasiDefaultLong: $presensiLokasiDefaultLong, presensiLokasiDefaultIsActive: $presensiLokasiDefaultIsActive, presensiLokasiDefaultCreatorId: $presensiLokasiDefaultCreatorId, presensiLokasiDefaultLastEditorId: $presensiLokasiDefaultLastEditorId, presensiLokasiDefaultCreatedAt: $presensiLokasiDefaultCreatedAt, presensiLokasiDefaultUpdatedAt: $presensiLokasiDefaultUpdatedAt, atasanId: $atasanId, atasanMCompId: $atasanMCompId, atasanMDirId: $atasanMDirId, atasanMDivisiId: $atasanMDivisiId, atasanMDeptId: $atasanMDeptId, atasanMZonaId: $atasanMZonaId, atasanGradingId: $atasanGradingId, atasanCostcontreId: $atasanCostcontreId, atasanKode: $atasanKode, atasanMPosisiId: $atasanMPosisiId, atasanMJamKerjaId: $atasanMJamKerjaId, atasanKodePresensi: $atasanKodePresensi, atasanNik: $atasanNik, atasanNamaDepan: $atasanNamaDepan, atasanNamaBelakang: $atasanNamaBelakang, atasanNamaLengkap: $atasanNamaLengkap, atasanNamaPanggilan: $atasanNamaPanggilan, atasanJkId: $atasanJkId, atasanTempatLahir: $atasanTempatLahir, atasanTglLahir: $atasanTglLahir, atasanProvinsiId: $atasanProvinsiId, atasanKotaId: $atasanKotaId, atasanKecamatanId: $atasanKecamatanId, atasanKodePos: $atasanKodePos, atasanAlamatAsli: $atasanAlamatAsli, atasanAlamatDomisili: $atasanAlamatDomisili, atasanNoTlp: $atasanNoTlp, atasanNoTlpLainnya: $atasanNoTlpLainnya, atasanNoDarurat: $atasanNoDarurat, atasanNamaKontakDarurat: $atasanNamaKontakDarurat, atasanAgamaId: $atasanAgamaId, atasanGolDarahId: $atasanGolDarahId, atasanStatusNikahId: $atasanStatusNikahId, atasanTanggunganId: $atasanTanggunganId, atasanHubDgnKaryawan: $atasanHubDgnKaryawan, atasanCutiJatahReguler: $atasanCutiJatahReguler, atasanCutiSisaReguler: $atasanCutiSisaReguler, atasanCutiPanjang: $atasanCutiPanjang, atasanCutiSisaPanjang: $atasanCutiSisaPanjang, atasanStatusKaryId: $atasanStatusKaryId, atasanLamaKontrakAwal: $atasanLamaKontrakAwal, atasanLamaKontrakAkhir: $atasanLamaKontrakAkhir, atasanTglMasuk: $atasanTglMasuk, atasanTglBerhenti: $atasanTglBerhenti, atasanAlasanBerhenti: $atasanAlasanBerhenti, atasanUkBaju: $atasanUkBaju, atasanUkCelana: $atasanUkCelana, atasanUkSepatu: $atasanUkSepatu, atasanDesc: $atasanDesc, atasanIsActive: $atasanIsActive, atasanCreatorId: $atasanCreatorId, atasanLastEditorId: $atasanLastEditorId, atasanCreatedAt: $atasanCreatedAt, atasanUpdatedAt: $atasanUpdatedAt, atasanMStandartGajiId: $atasanMStandartGajiId, atasanPeriodeGajiId: $atasanPeriodeGajiId, atasanRefId: $atasanRefId, atasanPresensiLokasiDefaultId: $atasanPresensiLokasiDefaultId, atasanExpDateCuti: $atasanExpDateCuti, atasanLimitPotong: $atasanLimitPotong, atasanAtasanId: $atasanAtasanId, atasanCutiP24: $atasanCutiP24, atasanCutiSisaP24: $atasanCutiSisaP24, atasanTipeJamKerjaId: $atasanTipeJamKerjaId, atasanTJadwalKerjaId: $atasanTJadwalKerjaId, tipeJamKerjaId: $tipeJamKerjaId, tipeJamKerjaMCompId: $tipeJamKerjaMCompId, tipeJamKerjaMDirId: $tipeJamKerjaMDirId, tipeJamKerjaGroup: $tipeJamKerjaGroup, tipeJamKerjaKey: $tipeJamKerjaKey, tipeJamKerjaCode: $tipeJamKerjaCode, tipeJamKerjaValue: $tipeJamKerjaValue, tipeJamKerjaIsActive: $tipeJamKerjaIsActive, tipeJamKerjaCreatorId: $tipeJamKerjaCreatorId, tipeJamKerjaLastEditorId: $tipeJamKerjaLastEditorId, tipeJamKerjaCreatedAt: $tipeJamKerjaCreatedAt, tipeJamKerjaUpdatedAt: $tipeJamKerjaUpdatedAt, tipeJamKerjaValue2: $tipeJamKerjaValue2, tipeJamKerjaValue3: $tipeJamKerjaValue3, tJadwalKerjaId: $tJadwalKerjaId, tJadwalKerjaNomor: $tJadwalKerjaNomor, tJadwalKerjaMCompId: $tJadwalKerjaMCompId, tJadwalKerjaMDirId: $tJadwalKerjaMDirId, tJadwalKerjaMDivisiId: $tJadwalKerjaMDivisiId, tJadwalKerjaMDeptId: $tJadwalKerjaMDeptId, tJadwalKerjaTipeJamKerjaId: $tJadwalKerjaTipeJamKerjaId, tJadwalKerjaKeterangan: $tJadwalKerjaKeterangan, tJadwalKerjaStatus: $tJadwalKerjaStatus, tJadwalKerjaCreatorId: $tJadwalKerjaCreatorId, tJadwalKerjaLastEditorId: $tJadwalKerjaLastEditorId, tJadwalKerjaCreatedAt: $tJadwalKerjaCreatedAt, tJadwalKerjaUpdatedAt: $tJadwalKerjaUpdatedAt, nomorKtp: $nomorKtp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataAllKaryawanImpl &&
            (identical(other.metaRead, metaRead) ||
                other.metaRead == metaRead) &&
            (identical(other.metaDelete, metaDelete) ||
                other.metaDelete == metaDelete) &&
            (identical(other.metaUpdate, metaUpdate) ||
                other.metaUpdate == metaUpdate) &&
            (identical(other.metaCreate, metaCreate) ||
                other.metaCreate == metaCreate) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.DataAllKaryawanMCompId, DataAllKaryawanMCompId) &&
            const DeepCollectionEquality()
                .equals(other.DataAllKaryawanMDirId, DataAllKaryawanMDirId) &&
            (identical(other.DataAllKaryawanMDivisiId, DataAllKaryawanMDivisiId) ||
                other.DataAllKaryawanMDivisiId == DataAllKaryawanMDivisiId) &&
            (identical(other.DataAllKaryawanMDeptId, DataAllKaryawanMDeptId) ||
                other.DataAllKaryawanMDeptId == DataAllKaryawanMDeptId) &&
            const DeepCollectionEquality()
                .equals(other.DataAllKaryawanMZonaId, DataAllKaryawanMZonaId) &&
            const DeepCollectionEquality().equals(
                other.DataAllKaryawanGradingId, DataAllKaryawanGradingId) &&
            const DeepCollectionEquality().equals(
                other.DataAllKaryawanCostcontreId,
                DataAllKaryawanCostcontreId) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.DataAllKaryawanMPosisiId, DataAllKaryawanMPosisiId) ||
                other.DataAllKaryawanMPosisiId == DataAllKaryawanMPosisiId) &&
            const DeepCollectionEquality().equals(
                other.DataAllKaryawanMJamKerjaId, DataAllKaryawanMJamKerjaId) &&
            (identical(other.kodePresensi, kodePresensi) ||
                other.kodePresensi == kodePresensi) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.namaDepan, namaDepan) ||
                other.namaDepan == namaDepan) &&
            (identical(other.namaBelakang, namaBelakang) ||
                other.namaBelakang == namaBelakang) &&
            (identical(other.namaLengkap, namaLengkap) ||
                other.namaLengkap == namaLengkap) &&
            (identical(other.namaPanggilan, namaPanggilan) ||
                other.namaPanggilan == namaPanggilan) &&
            (identical(other.DataAllKaryawanJkId, DataAllKaryawanJkId) ||
                other.DataAllKaryawanJkId == DataAllKaryawanJkId) &&
            (identical(other.tempatLahir, tempatLahir) ||
                other.tempatLahir == tempatLahir) &&
            (identical(other.tglLahir, tglLahir) ||
                other.tglLahir == tglLahir) &&
            (identical(other.DataAllKaryawanProvinsiId, DataAllKaryawanProvinsiId) ||
                other.DataAllKaryawanProvinsiId == DataAllKaryawanProvinsiId) &&
            (identical(other.DataAllKaryawanKotaId, DataAllKaryawanKotaId) ||
                other.DataAllKaryawanKotaId == DataAllKaryawanKotaId) &&
            (identical(other.DataAllKaryawanKecamatanId, DataAllKaryawanKecamatanId) ||
                other.DataAllKaryawanKecamatanId ==
                    DataAllKaryawanKecamatanId) &&
            (identical(other.kodePos, kodePos) || other.kodePos == kodePos) &&
            (identical(other.alamatAsli, alamatAsli) ||
                other.alamatAsli == alamatAsli) &&
            (identical(other.alamatDomisili, alamatDomisili) ||
                other.alamatDomisili == alamatDomisili) &&
            (identical(other.noTlp, noTlp) || other.noTlp == noTlp) &&
            (identical(other.noTlpLainnya, noTlpLainnya) ||
                other.noTlpLainnya == noTlpLainnya) &&
            (identical(other.noDarurat, noDarurat) ||
                other.noDarurat == noDarurat) &&
            (identical(other.namaKontakDarurat, namaKontakDarurat) || other.namaKontakDarurat == namaKontakDarurat) &&
            (identical(other.DataAllKaryawanAgamaId, DataAllKaryawanAgamaId) || other.DataAllKaryawanAgamaId == DataAllKaryawanAgamaId) &&
            (identical(other.DataAllKaryawanGolDarahId, DataAllKaryawanGolDarahId) || other.DataAllKaryawanGolDarahId == DataAllKaryawanGolDarahId) &&
            (identical(other.DataAllKaryawanStatusNikahId, DataAllKaryawanStatusNikahId) || other.DataAllKaryawanStatusNikahId == DataAllKaryawanStatusNikahId) &&
            (identical(other.DataAllKaryawanTanggunganId, DataAllKaryawanTanggunganId) || other.DataAllKaryawanTanggunganId == DataAllKaryawanTanggunganId) &&
            (identical(other.hubDgnKaryawan, hubDgnKaryawan) || other.hubDgnKaryawan == hubDgnKaryawan) &&
            const DeepCollectionEquality().equals(other.cutiJatahReguler, cutiJatahReguler) &&
            const DeepCollectionEquality().equals(other.cutiSisaReguler, cutiSisaReguler) &&
            const DeepCollectionEquality().equals(other.cutiPanjang, cutiPanjang) &&
            const DeepCollectionEquality().equals(other.cutiSisaPanjang, cutiSisaPanjang) &&
            const DeepCollectionEquality().equals(other.DataAllKaryawanStatusKaryId, DataAllKaryawanStatusKaryId) &&
            const DeepCollectionEquality().equals(other.lamaKontrakAwal, lamaKontrakAwal) &&
            const DeepCollectionEquality().equals(other.lamaKontrakAkhir, lamaKontrakAkhir) &&
            (identical(other.tglMasuk, tglMasuk) || other.tglMasuk == tglMasuk) &&
            const DeepCollectionEquality().equals(other.tglBerhenti, tglBerhenti) &&
            const DeepCollectionEquality().equals(other.alasanBerhenti, alasanBerhenti) &&
            (identical(other.ukBaju, ukBaju) || other.ukBaju == ukBaju) &&
            (identical(other.ukCelana, ukCelana) || other.ukCelana == ukCelana) &&
            (identical(other.ukSepatu, ukSepatu) || other.ukSepatu == ukSepatu) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            (identical(other.isActive, isActive) || other.isActive == isActive) &&
            (identical(other.DataAllKaryawanCreatorId, DataAllKaryawanCreatorId) || other.DataAllKaryawanCreatorId == DataAllKaryawanCreatorId) &&
            (identical(other.DataAllKaryawanLastEditorId, DataAllKaryawanLastEditorId) || other.DataAllKaryawanLastEditorId == DataAllKaryawanLastEditorId) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.DataAllKaryawanMStandartGajiId, DataAllKaryawanMStandartGajiId) &&
            (identical(other.DataAllKaryawanPeriodeGajiId, DataAllKaryawanPeriodeGajiId) || other.DataAllKaryawanPeriodeGajiId == DataAllKaryawanPeriodeGajiId) &&
            const DeepCollectionEquality().equals(other.DataAllKaryawanRefId, DataAllKaryawanRefId) &&
            (identical(other.DataAllKaryawanPresensiLokasiDefaultId, DataAllKaryawanPresensiLokasiDefaultId) || other.DataAllKaryawanPresensiLokasiDefaultId == DataAllKaryawanPresensiLokasiDefaultId) &&
            const DeepCollectionEquality().equals(other.expDateCuti, expDateCuti) &&
            (identical(other.limitPotong, limitPotong) || other.limitPotong == limitPotong) &&
            (identical(other.DataAllKaryawanAtasanId, DataAllKaryawanAtasanId) || other.DataAllKaryawanAtasanId == DataAllKaryawanAtasanId) &&
            (identical(other.cutiP24, cutiP24) || other.cutiP24 == cutiP24) &&
            const DeepCollectionEquality().equals(other.cutiSisaP24, cutiSisaP24) &&
            const DeepCollectionEquality().equals(other.DataAllKaryawanTipeJamKerjaId, DataAllKaryawanTipeJamKerjaId) &&
            const DeepCollectionEquality().equals(other.DataAllKaryawanTJadwalKerjaId, DataAllKaryawanTJadwalKerjaId) &&
            const DeepCollectionEquality().equals(other.mCompId, mCompId) &&
            const DeepCollectionEquality().equals(other.mCompNama, mCompNama) &&
            const DeepCollectionEquality().equals(other.mCompIsActive, mCompIsActive) &&
            const DeepCollectionEquality().equals(other.mCompDesc, mCompDesc) &&
            const DeepCollectionEquality().equals(other.mCompCreatorId, mCompCreatorId) &&
            const DeepCollectionEquality().equals(other.mCompLastEditorId, mCompLastEditorId) &&
            const DeepCollectionEquality().equals(other.mCompCreatedAt, mCompCreatedAt) &&
            const DeepCollectionEquality().equals(other.mCompUpdatedAt, mCompUpdatedAt) &&
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
            const DeepCollectionEquality().equals(other.mDivisiMCompId, mDivisiMCompId) &&
            (identical(other.mDivisiMDirId, mDivisiMDirId) || other.mDivisiMDirId == mDivisiMDirId) &&
            (identical(other.mDivisiNama, mDivisiNama) || other.mDivisiNama == mDivisiNama) &&
            const DeepCollectionEquality().equals(other.mDivisiDesc, mDivisiDesc) &&
            (identical(other.mDivisiIsActive, mDivisiIsActive) || other.mDivisiIsActive == mDivisiIsActive) &&
            (identical(other.mDivisiCreatorId, mDivisiCreatorId) || other.mDivisiCreatorId == mDivisiCreatorId) &&
            const DeepCollectionEquality().equals(other.mDivisiLastEditorId, mDivisiLastEditorId) &&
            (identical(other.mDivisiCreatedAt, mDivisiCreatedAt) || other.mDivisiCreatedAt == mDivisiCreatedAt) &&
            (identical(other.mDivisiUpdatedAt, mDivisiUpdatedAt) || other.mDivisiUpdatedAt == mDivisiUpdatedAt) &&
            (identical(other.mDeptId, mDeptId) || other.mDeptId == mDeptId) &&
            (identical(other.mDeptMDirId, mDeptMDirId) || other.mDeptMDirId == mDeptMDirId) &&
            (identical(other.mDeptMDivisiId, mDeptMDivisiId) || other.mDeptMDivisiId == mDeptMDivisiId) &&
            (identical(other.mDeptNama, mDeptNama) || other.mDeptNama == mDeptNama) &&
            const DeepCollectionEquality().equals(other.mDeptDesc, mDeptDesc) &&
            (identical(other.mDeptIsActive, mDeptIsActive) || other.mDeptIsActive == mDeptIsActive) &&
            const DeepCollectionEquality().equals(other.mDeptCreatorId, mDeptCreatorId) &&
            const DeepCollectionEquality().equals(other.mDeptLastEditorId, mDeptLastEditorId) &&
            (identical(other.mDeptCreatedAt, mDeptCreatedAt) || other.mDeptCreatedAt == mDeptCreatedAt) &&
            (identical(other.mDeptUpdatedAt, mDeptUpdatedAt) || other.mDeptUpdatedAt == mDeptUpdatedAt) &&
            const DeepCollectionEquality().equals(other.mZonaId, mZonaId) &&
            const DeepCollectionEquality().equals(other.mZonaMCompId, mZonaMCompId) &&
            const DeepCollectionEquality().equals(other.mZonaMDirId, mZonaMDirId) &&
            const DeepCollectionEquality().equals(other.mZonaKode, mZonaKode) &&
            const DeepCollectionEquality().equals(other.mZonaNama, mZonaNama) &&
            const DeepCollectionEquality().equals(other.mZonaDesc, mZonaDesc) &&
            const DeepCollectionEquality().equals(other.mZonaIsActive, mZonaIsActive) &&
            const DeepCollectionEquality().equals(other.mZonaCreatorId, mZonaCreatorId) &&
            const DeepCollectionEquality().equals(other.mZonaLastEditorId, mZonaLastEditorId) &&
            const DeepCollectionEquality().equals(other.mZonaCreatedAt, mZonaCreatedAt) &&
            const DeepCollectionEquality().equals(other.mZonaUpdatedAt, mZonaUpdatedAt) &&
            const DeepCollectionEquality().equals(other.gradingId, gradingId) &&
            const DeepCollectionEquality().equals(other.gradingMCompId, gradingMCompId) &&
            const DeepCollectionEquality().equals(other.gradingMDirId, gradingMDirId) &&
            const DeepCollectionEquality().equals(other.gradingGroup, gradingGroup) &&
            const DeepCollectionEquality().equals(other.gradingKey, gradingKey) &&
            const DeepCollectionEquality().equals(other.gradingCode, gradingCode) &&
            const DeepCollectionEquality().equals(other.gradingValue, gradingValue) &&
            const DeepCollectionEquality().equals(other.gradingIsActive, gradingIsActive) &&
            const DeepCollectionEquality().equals(other.gradingCreatorId, gradingCreatorId) &&
            const DeepCollectionEquality().equals(other.gradingLastEditorId, gradingLastEditorId) &&
            const DeepCollectionEquality().equals(other.gradingCreatedAt, gradingCreatedAt) &&
            const DeepCollectionEquality().equals(other.gradingUpdatedAt, gradingUpdatedAt) &&
            const DeepCollectionEquality().equals(other.gradingValue2, gradingValue2) &&
            const DeepCollectionEquality().equals(other.gradingValue3, gradingValue3) &&
            const DeepCollectionEquality().equals(other.costcontreId, costcontreId) &&
            const DeepCollectionEquality().equals(other.costcontreMCompId, costcontreMCompId) &&
            const DeepCollectionEquality().equals(other.costcontreMDirId, costcontreMDirId) &&
            const DeepCollectionEquality().equals(other.costcontreGroup, costcontreGroup) &&
            const DeepCollectionEquality().equals(other.costcontreKey, costcontreKey) &&
            const DeepCollectionEquality().equals(other.costcontreCode, costcontreCode) &&
            const DeepCollectionEquality().equals(other.costcontreValue, costcontreValue) &&
            const DeepCollectionEquality().equals(other.costcontreIsActive, costcontreIsActive) &&
            const DeepCollectionEquality().equals(other.costcontreCreatorId, costcontreCreatorId) &&
            const DeepCollectionEquality().equals(other.costcontreLastEditorId, costcontreLastEditorId) &&
            const DeepCollectionEquality().equals(other.costcontreCreatedAt, costcontreCreatedAt) &&
            const DeepCollectionEquality().equals(other.costcontreUpdatedAt, costcontreUpdatedAt) &&
            const DeepCollectionEquality().equals(other.costcontreValue2, costcontreValue2) &&
            const DeepCollectionEquality().equals(other.costcontreValue3, costcontreValue3) &&
            (identical(other.mPosisiId, mPosisiId) || other.mPosisiId == mPosisiId) &&
            const DeepCollectionEquality().equals(other.mPosisiMCompId, mPosisiMCompId) &&
            const DeepCollectionEquality().equals(other.mPosisiMDirId, mPosisiMDirId) &&
            (identical(other.mPosisiKode, mPosisiKode) || other.mPosisiKode == mPosisiKode) &&
            (identical(other.mPosisiDescKerja, mPosisiDescKerja) || other.mPosisiDescKerja == mPosisiDescKerja) &&
            (identical(other.mPosisiDescKerja1, mPosisiDescKerja1) || other.mPosisiDescKerja1 == mPosisiDescKerja1) &&
            const DeepCollectionEquality().equals(other.mPosisiDescKerja2, mPosisiDescKerja2) &&
            (identical(other.mPosisiMinPengalaman, mPosisiMinPengalaman) || other.mPosisiMinPengalaman == mPosisiMinPengalaman) &&
            (identical(other.mPosisiMinPendidikanId, mPosisiMinPendidikanId) || other.mPosisiMinPendidikanId == mPosisiMinPendidikanId) &&
            (identical(other.mPosisiMinGajiPokok, mPosisiMinGajiPokok) || other.mPosisiMinGajiPokok == mPosisiMinGajiPokok) &&
            (identical(other.mPosisiMaxGajiPokok, mPosisiMaxGajiPokok) || other.mPosisiMaxGajiPokok == mPosisiMaxGajiPokok) &&
            const DeepCollectionEquality().equals(other.mPosisiBiaya, mPosisiBiaya) &&
            const DeepCollectionEquality().equals(other.mPosisiTipeBpjsId, mPosisiTipeBpjsId) &&
            const DeepCollectionEquality().equals(other.mPosisiPotonganBpjs, mPosisiPotonganBpjs) &&
            const DeepCollectionEquality().equals(other.mPosisiDesc, mPosisiDesc) &&
            (identical(other.mPosisiIsActive, mPosisiIsActive) || other.mPosisiIsActive == mPosisiIsActive) &&
            const DeepCollectionEquality().equals(other.mPosisiCreatorId, mPosisiCreatorId) &&
            const DeepCollectionEquality().equals(other.mPosisiLastEditorId, mPosisiLastEditorId) &&
            (identical(other.mPosisiCreatedAt, mPosisiCreatedAt) || other.mPosisiCreatedAt == mPosisiCreatedAt) &&
            (identical(other.mPosisiUpdatedAt, mPosisiUpdatedAt) || other.mPosisiUpdatedAt == mPosisiUpdatedAt) &&
            const DeepCollectionEquality().equals(other.mJamKerjaId, mJamKerjaId) &&
            const DeepCollectionEquality().equals(other.mJamKerjaMCompId, mJamKerjaMCompId) &&
            const DeepCollectionEquality().equals(other.mJamKerjaMDirId, mJamKerjaMDirId) &&
            const DeepCollectionEquality().equals(other.mJamKerjaKode, mJamKerjaKode) &&
            const DeepCollectionEquality().equals(other.mJamKerjaTipeJamKerjaId, mJamKerjaTipeJamKerjaId) &&
            const DeepCollectionEquality().equals(other.mJamKerjaWaktuMulai, mJamKerjaWaktuMulai) &&
            const DeepCollectionEquality().equals(other.mJamKerjaWaktuAkhir, mJamKerjaWaktuAkhir) &&
            const DeepCollectionEquality().equals(other.mJamKerjaIsHariBerikutnya, mJamKerjaIsHariBerikutnya) &&
            const DeepCollectionEquality().equals(other.mJamKerjaDesc, mJamKerjaDesc) &&
            const DeepCollectionEquality().equals(other.mJamKerjaIsActive, mJamKerjaIsActive) &&
            const DeepCollectionEquality().equals(other.mJamKerjaCreatorId, mJamKerjaCreatorId) &&
            const DeepCollectionEquality().equals(other.mJamKerjaLastEditorId, mJamKerjaLastEditorId) &&
            const DeepCollectionEquality().equals(other.mJamKerjaCreatedAt, mJamKerjaCreatedAt) &&
            const DeepCollectionEquality().equals(other.mJamKerjaUpdatedAt, mJamKerjaUpdatedAt) &&
            (identical(other.jkId, jkId) || other.jkId == jkId) &&
            (identical(other.jkMCompId, jkMCompId) || other.jkMCompId == jkMCompId) &&
            const DeepCollectionEquality().equals(other.jkMDirId, jkMDirId) &&
            (identical(other.jkGroup, jkGroup) || other.jkGroup == jkGroup) &&
            (identical(other.jkKey, jkKey) || other.jkKey == jkKey) &&
            (identical(other.jkCode, jkCode) || other.jkCode == jkCode) &&
            (identical(other.jkValue, jkValue) || other.jkValue == jkValue) &&
            (identical(other.jkIsActive, jkIsActive) || other.jkIsActive == jkIsActive) &&
            const DeepCollectionEquality().equals(other.jkCreatorId, jkCreatorId) &&
            const DeepCollectionEquality().equals(other.jkLastEditorId, jkLastEditorId) &&
            (identical(other.jkCreatedAt, jkCreatedAt) || other.jkCreatedAt == jkCreatedAt) &&
            (identical(other.jkUpdatedAt, jkUpdatedAt) || other.jkUpdatedAt == jkUpdatedAt) &&
            const DeepCollectionEquality().equals(other.jkValue2, jkValue2) &&
            const DeepCollectionEquality().equals(other.jkValue3, jkValue3) &&
            (identical(other.provinsiId, provinsiId) || other.provinsiId == provinsiId) &&
            (identical(other.provinsiMCompId, provinsiMCompId) || other.provinsiMCompId == provinsiMCompId) &&
            const DeepCollectionEquality().equals(other.provinsiMDirId, provinsiMDirId) &&
            (identical(other.provinsiGroup, provinsiGroup) || other.provinsiGroup == provinsiGroup) &&
            const DeepCollectionEquality().equals(other.provinsiKey, provinsiKey) &&
            const DeepCollectionEquality().equals(other.provinsiCode, provinsiCode) &&
            (identical(other.provinsiValue, provinsiValue) || other.provinsiValue == provinsiValue) &&
            (identical(other.provinsiIsActive, provinsiIsActive) || other.provinsiIsActive == provinsiIsActive) &&
            const DeepCollectionEquality().equals(other.provinsiCreatorId, provinsiCreatorId) &&
            const DeepCollectionEquality().equals(other.provinsiLastEditorId, provinsiLastEditorId) &&
            const DeepCollectionEquality().equals(other.provinsiCreatedAt, provinsiCreatedAt) &&
            (identical(other.provinsiUpdatedAt, provinsiUpdatedAt) || other.provinsiUpdatedAt == provinsiUpdatedAt) &&
            const DeepCollectionEquality().equals(other.provinsiValue2, provinsiValue2) &&
            const DeepCollectionEquality().equals(other.provinsiValue3, provinsiValue3) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.kotaMCompId, kotaMCompId) || other.kotaMCompId == kotaMCompId) &&
            const DeepCollectionEquality().equals(other.kotaMDirId, kotaMDirId) &&
            (identical(other.kotaGroup, kotaGroup) || other.kotaGroup == kotaGroup) &&
            (identical(other.kotaKey, kotaKey) || other.kotaKey == kotaKey) &&
            const DeepCollectionEquality().equals(other.kotaCode, kotaCode) &&
            (identical(other.kotaValue, kotaValue) || other.kotaValue == kotaValue) &&
            (identical(other.kotaIsActive, kotaIsActive) || other.kotaIsActive == kotaIsActive) &&
            const DeepCollectionEquality().equals(other.kotaCreatorId, kotaCreatorId) &&
            const DeepCollectionEquality().equals(other.kotaLastEditorId, kotaLastEditorId) &&
            const DeepCollectionEquality().equals(other.kotaCreatedAt, kotaCreatedAt) &&
            const DeepCollectionEquality().equals(other.kotaUpdatedAt, kotaUpdatedAt) &&
            const DeepCollectionEquality().equals(other.kotaValue2, kotaValue2) &&
            const DeepCollectionEquality().equals(other.kotaValue3, kotaValue3) &&
            (identical(other.kecamatanId, kecamatanId) || other.kecamatanId == kecamatanId) &&
            (identical(other.kecamatanMCompId, kecamatanMCompId) || other.kecamatanMCompId == kecamatanMCompId) &&
            const DeepCollectionEquality().equals(other.kecamatanMDirId, kecamatanMDirId) &&
            (identical(other.kecamatanGroup, kecamatanGroup) || other.kecamatanGroup == kecamatanGroup) &&
            (identical(other.kecamatanKey, kecamatanKey) || other.kecamatanKey == kecamatanKey) &&
            const DeepCollectionEquality().equals(other.kecamatanCode, kecamatanCode) &&
            (identical(other.kecamatanValue, kecamatanValue) || other.kecamatanValue == kecamatanValue) &&
            (identical(other.kecamatanIsActive, kecamatanIsActive) || other.kecamatanIsActive == kecamatanIsActive) &&
            const DeepCollectionEquality().equals(other.kecamatanCreatorId, kecamatanCreatorId) &&
            const DeepCollectionEquality().equals(other.kecamatanLastEditorId, kecamatanLastEditorId) &&
            const DeepCollectionEquality().equals(other.kecamatanCreatedAt, kecamatanCreatedAt) &&
            const DeepCollectionEquality().equals(other.kecamatanUpdatedAt, kecamatanUpdatedAt) &&
            const DeepCollectionEquality().equals(other.kecamatanValue2, kecamatanValue2) &&
            const DeepCollectionEquality().equals(other.kecamatanValue3, kecamatanValue3) &&
            (identical(other.agamaId, agamaId) || other.agamaId == agamaId) &&
            (identical(other.agamaMCompId, agamaMCompId) || other.agamaMCompId == agamaMCompId) &&
            const DeepCollectionEquality().equals(other.agamaMDirId, agamaMDirId) &&
            (identical(other.agamaGroup, agamaGroup) || other.agamaGroup == agamaGroup) &&
            (identical(other.agamaKey, agamaKey) || other.agamaKey == agamaKey) &&
            (identical(other.agamaCode, agamaCode) || other.agamaCode == agamaCode) &&
            (identical(other.agamaValue, agamaValue) || other.agamaValue == agamaValue) &&
            (identical(other.agamaIsActive, agamaIsActive) || other.agamaIsActive == agamaIsActive) &&
            const DeepCollectionEquality().equals(other.agamaCreatorId, agamaCreatorId) &&
            const DeepCollectionEquality().equals(other.agamaLastEditorId, agamaLastEditorId) &&
            (identical(other.agamaCreatedAt, agamaCreatedAt) || other.agamaCreatedAt == agamaCreatedAt) &&
            (identical(other.agamaUpdatedAt, agamaUpdatedAt) || other.agamaUpdatedAt == agamaUpdatedAt) &&
            const DeepCollectionEquality().equals(other.agamaValue2, agamaValue2) &&
            const DeepCollectionEquality().equals(other.agamaValue3, agamaValue3) &&
            (identical(other.golDarahId, golDarahId) || other.golDarahId == golDarahId) &&
            (identical(other.golDarahMCompId, golDarahMCompId) || other.golDarahMCompId == golDarahMCompId) &&
            const DeepCollectionEquality().equals(other.golDarahMDirId, golDarahMDirId) &&
            (identical(other.golDarahGroup, golDarahGroup) || other.golDarahGroup == golDarahGroup) &&
            (identical(other.golDarahKey, golDarahKey) || other.golDarahKey == golDarahKey) &&
            (identical(other.golDarahCode, golDarahCode) || other.golDarahCode == golDarahCode) &&
            (identical(other.golDarahValue, golDarahValue) || other.golDarahValue == golDarahValue) &&
            (identical(other.golDarahIsActive, golDarahIsActive) || other.golDarahIsActive == golDarahIsActive) &&
            const DeepCollectionEquality().equals(other.golDarahCreatorId, golDarahCreatorId) &&
            const DeepCollectionEquality().equals(other.golDarahLastEditorId, golDarahLastEditorId) &&
            (identical(other.golDarahCreatedAt, golDarahCreatedAt) || other.golDarahCreatedAt == golDarahCreatedAt) &&
            (identical(other.golDarahUpdatedAt, golDarahUpdatedAt) || other.golDarahUpdatedAt == golDarahUpdatedAt) &&
            const DeepCollectionEquality().equals(other.golDarahValue2, golDarahValue2) &&
            const DeepCollectionEquality().equals(other.golDarahValue3, golDarahValue3) &&
            (identical(other.statusNikahId, statusNikahId) || other.statusNikahId == statusNikahId) &&
            (identical(other.statusNikahMCompId, statusNikahMCompId) || other.statusNikahMCompId == statusNikahMCompId) &&
            const DeepCollectionEquality().equals(other.statusNikahMDirId, statusNikahMDirId) &&
            (identical(other.statusNikahGroup, statusNikahGroup) || other.statusNikahGroup == statusNikahGroup) &&
            (identical(other.statusNikahKey, statusNikahKey) || other.statusNikahKey == statusNikahKey) &&
            (identical(other.statusNikahCode, statusNikahCode) || other.statusNikahCode == statusNikahCode) &&
            (identical(other.statusNikahValue, statusNikahValue) || other.statusNikahValue == statusNikahValue) &&
            (identical(other.statusNikahIsActive, statusNikahIsActive) || other.statusNikahIsActive == statusNikahIsActive) &&
            const DeepCollectionEquality().equals(other.statusNikahCreatorId, statusNikahCreatorId) &&
            const DeepCollectionEquality().equals(other.statusNikahLastEditorId, statusNikahLastEditorId) &&
            (identical(other.statusNikahCreatedAt, statusNikahCreatedAt) || other.statusNikahCreatedAt == statusNikahCreatedAt) &&
            (identical(other.statusNikahUpdatedAt, statusNikahUpdatedAt) || other.statusNikahUpdatedAt == statusNikahUpdatedAt) &&
            const DeepCollectionEquality().equals(other.statusNikahValue2, statusNikahValue2) &&
            const DeepCollectionEquality().equals(other.statusNikahValue3, statusNikahValue3) &&
            (identical(other.tanggunganId, tanggunganId) || other.tanggunganId == tanggunganId) &&
            (identical(other.tanggunganMCompId, tanggunganMCompId) || other.tanggunganMCompId == tanggunganMCompId) &&
            (identical(other.tanggunganMDirId, tanggunganMDirId) || other.tanggunganMDirId == tanggunganMDirId) &&
            (identical(other.tanggunganGroup, tanggunganGroup) || other.tanggunganGroup == tanggunganGroup) &&
            (identical(other.tanggunganKey, tanggunganKey) || other.tanggunganKey == tanggunganKey) &&
            (identical(other.tanggunganCode, tanggunganCode) || other.tanggunganCode == tanggunganCode) &&
            (identical(other.tanggunganValue, tanggunganValue) || other.tanggunganValue == tanggunganValue) &&
            (identical(other.tanggunganIsActive, tanggunganIsActive) || other.tanggunganIsActive == tanggunganIsActive) &&
            const DeepCollectionEquality().equals(other.tanggunganCreatorId, tanggunganCreatorId) &&
            const DeepCollectionEquality().equals(other.tanggunganLastEditorId, tanggunganLastEditorId) &&
            (identical(other.tanggunganCreatedAt, tanggunganCreatedAt) || other.tanggunganCreatedAt == tanggunganCreatedAt) &&
            (identical(other.tanggunganUpdatedAt, tanggunganUpdatedAt) || other.tanggunganUpdatedAt == tanggunganUpdatedAt) &&
            (identical(other.tanggunganValue2, tanggunganValue2) || other.tanggunganValue2 == tanggunganValue2) &&
            const DeepCollectionEquality().equals(other.tanggunganValue3, tanggunganValue3) &&
            const DeepCollectionEquality().equals(other.statusKaryId, statusKaryId) &&
            const DeepCollectionEquality().equals(other.statusKaryMCompId, statusKaryMCompId) &&
            const DeepCollectionEquality().equals(other.statusKaryMDirId, statusKaryMDirId) &&
            const DeepCollectionEquality().equals(other.statusKaryGroup, statusKaryGroup) &&
            const DeepCollectionEquality().equals(other.statusKaryKey, statusKaryKey) &&
            const DeepCollectionEquality().equals(other.statusKaryCode, statusKaryCode) &&
            const DeepCollectionEquality().equals(other.statusKaryValue, statusKaryValue) &&
            const DeepCollectionEquality().equals(other.statusKaryIsActive, statusKaryIsActive) &&
            const DeepCollectionEquality().equals(other.statusKaryCreatorId, statusKaryCreatorId) &&
            const DeepCollectionEquality().equals(other.statusKaryLastEditorId, statusKaryLastEditorId) &&
            const DeepCollectionEquality().equals(other.statusKaryCreatedAt, statusKaryCreatedAt) &&
            const DeepCollectionEquality().equals(other.statusKaryUpdatedAt, statusKaryUpdatedAt) &&
            const DeepCollectionEquality().equals(other.statusKaryValue2, statusKaryValue2) &&
            const DeepCollectionEquality().equals(other.statusKaryValue3, statusKaryValue3) &&
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
            const DeepCollectionEquality().equals(other.lastEditorLastEditorId, lastEditorLastEditorId) &&
            const DeepCollectionEquality().equals(other.lastEditorRememberToken, lastEditorRememberToken) &&
            (identical(other.lastEditorCreatedAt, lastEditorCreatedAt) || other.lastEditorCreatedAt == lastEditorCreatedAt) &&
            (identical(other.lastEditorUpdatedAt, lastEditorUpdatedAt) || other.lastEditorUpdatedAt == lastEditorUpdatedAt) &&
            (identical(other.lastEditorProfilImage, lastEditorProfilImage) || other.lastEditorProfilImage == lastEditorProfilImage) &&
            const DeepCollectionEquality().equals(other.lastEditorTelp, lastEditorTelp) &&
            (identical(other.lastEditorMKaryId, lastEditorMKaryId) || other.lastEditorMKaryId == lastEditorMKaryId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiId, mStandartGajiId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiMCompId, mStandartGajiMCompId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiMDirId, mStandartGajiMDirId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiKode, mStandartGajiKode) &&
            const DeepCollectionEquality().equals(other.mStandartGajiMDivisiId, mStandartGajiMDivisiId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiMDeptId, mStandartGajiMDeptId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiMZonaId, mStandartGajiMZonaId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiMPosisiId, mStandartGajiMPosisiId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiGradingId, mStandartGajiGradingId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiGajiPokok, mStandartGajiGajiPokok) &&
            const DeepCollectionEquality().equals(other.mStandartGajiGajiPokokPeriode, mStandartGajiGajiPokokPeriode) &&
            const DeepCollectionEquality().equals(other.mStandartGajiUangSaku, mStandartGajiUangSaku) &&
            const DeepCollectionEquality().equals(other.mStandartGajiUangSakuPeriode, mStandartGajiUangSakuPeriode) &&
            const DeepCollectionEquality().equals(other.mStandartGajiTunjanganPosisi, mStandartGajiTunjanganPosisi) &&
            const DeepCollectionEquality().equals(other.mStandartGajiTunjanganPosisiPeriode, mStandartGajiTunjanganPosisiPeriode) &&
            const DeepCollectionEquality().equals(other.mStandartGajiTunjanganKemahalanId, mStandartGajiTunjanganKemahalanId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiTunjanganKemahalanPeriode, mStandartGajiTunjanganKemahalanPeriode) &&
            const DeepCollectionEquality().equals(other.mStandartGajiUangMakan, mStandartGajiUangMakan) &&
            const DeepCollectionEquality().equals(other.mStandartGajiUangMakanPeriode, mStandartGajiUangMakanPeriode) &&
            const DeepCollectionEquality().equals(other.mStandartGajiTunjanganTetap, mStandartGajiTunjanganTetap) &&
            const DeepCollectionEquality().equals(other.mStandartGajiTunjanganTetapPeriode, mStandartGajiTunjanganTetapPeriode) &&
            const DeepCollectionEquality().equals(other.mStandartGajiDesc, mStandartGajiDesc) &&
            const DeepCollectionEquality().equals(other.mStandartGajiIsActive, mStandartGajiIsActive) &&
            const DeepCollectionEquality().equals(other.mStandartGajiCreatorId, mStandartGajiCreatorId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiLastEditorId, mStandartGajiLastEditorId) &&
            const DeepCollectionEquality().equals(other.mStandartGajiCreatedAt, mStandartGajiCreatedAt) &&
            const DeepCollectionEquality().equals(other.mStandartGajiUpdatedAt, mStandartGajiUpdatedAt) &&
            (identical(other.periodeGajiId, periodeGajiId) || other.periodeGajiId == periodeGajiId) &&
            (identical(other.periodeGajiMCompId, periodeGajiMCompId) || other.periodeGajiMCompId == periodeGajiMCompId) &&
            const DeepCollectionEquality().equals(other.periodeGajiMDirId, periodeGajiMDirId) &&
            (identical(other.periodeGajiGroup, periodeGajiGroup) || other.periodeGajiGroup == periodeGajiGroup) &&
            (identical(other.periodeGajiKey, periodeGajiKey) || other.periodeGajiKey == periodeGajiKey) &&
            (identical(other.periodeGajiCode, periodeGajiCode) || other.periodeGajiCode == periodeGajiCode) &&
            (identical(other.periodeGajiValue, periodeGajiValue) || other.periodeGajiValue == periodeGajiValue) &&
            (identical(other.periodeGajiIsActive, periodeGajiIsActive) || other.periodeGajiIsActive == periodeGajiIsActive) &&
            const DeepCollectionEquality().equals(other.periodeGajiCreatorId, periodeGajiCreatorId) &&
            const DeepCollectionEquality().equals(other.periodeGajiLastEditorId, periodeGajiLastEditorId) &&
            (identical(other.periodeGajiCreatedAt, periodeGajiCreatedAt) || other.periodeGajiCreatedAt == periodeGajiCreatedAt) &&
            (identical(other.periodeGajiUpdatedAt, periodeGajiUpdatedAt) || other.periodeGajiUpdatedAt == periodeGajiUpdatedAt) &&
            const DeepCollectionEquality().equals(other.periodeGajiValue2, periodeGajiValue2) &&
            const DeepCollectionEquality().equals(other.periodeGajiValue3, periodeGajiValue3) &&
            const DeepCollectionEquality().equals(other.refId, refId) &&
            const DeepCollectionEquality().equals(other.refNomor, refNomor) &&
            const DeepCollectionEquality().equals(other.refMCompId, refMCompId) &&
            const DeepCollectionEquality().equals(other.refMDirId, refMDirId) &&
            const DeepCollectionEquality().equals(other.refNamaPelamar, refNamaPelamar) &&
            const DeepCollectionEquality().equals(other.refKtpNo, refKtpNo) &&
            const DeepCollectionEquality().equals(other.refTanggal, refTanggal) &&
            const DeepCollectionEquality().equals(other.refRef, refRef) &&
            const DeepCollectionEquality().equals(other.refTelp, refTelp) &&
            const DeepCollectionEquality().equals(other.refJkId, refJkId) &&
            const DeepCollectionEquality().equals(other.refTglLahir, refTglLahir) &&
            const DeepCollectionEquality().equals(other.refSalary, refSalary) &&
            const DeepCollectionEquality().equals(other.refDeskripsi, refDeskripsi) &&
            const DeepCollectionEquality().equals(other.refStatus, refStatus) &&
            const DeepCollectionEquality().equals(other.refCreatorId, refCreatorId) &&
            const DeepCollectionEquality().equals(other.refLastEditorId, refLastEditorId) &&
            const DeepCollectionEquality().equals(other.refCreatedAt, refCreatedAt) &&
            const DeepCollectionEquality().equals(other.refUpdatedAt, refUpdatedAt) &&
            const DeepCollectionEquality().equals(other.refMDivisiId, refMDivisiId) &&
            const DeepCollectionEquality().equals(other.refMDeptId, refMDeptId) &&
            const DeepCollectionEquality().equals(other.refMPosisiId, refMPosisiId) &&
            const DeepCollectionEquality().equals(other.refTempatLahir, refTempatLahir) &&
            const DeepCollectionEquality().equals(other.refTLokerId, refTLokerId) &&
            (identical(other.presensiLokasiDefaultId, presensiLokasiDefaultId) || other.presensiLokasiDefaultId == presensiLokasiDefaultId) &&
            (identical(other.presensiLokasiDefaultCompId, presensiLokasiDefaultCompId) || other.presensiLokasiDefaultCompId == presensiLokasiDefaultCompId) &&
            const DeepCollectionEquality().equals(other.presensiLokasiDefaultDefaultUserId, presensiLokasiDefaultDefaultUserId) &&
            (identical(other.presensiLokasiDefaultNama, presensiLokasiDefaultNama) || other.presensiLokasiDefaultNama == presensiLokasiDefaultNama) &&
            (identical(other.presensiLokasiDefaultLat, presensiLokasiDefaultLat) || other.presensiLokasiDefaultLat == presensiLokasiDefaultLat) &&
            (identical(other.presensiLokasiDefaultLong, presensiLokasiDefaultLong) || other.presensiLokasiDefaultLong == presensiLokasiDefaultLong) &&
            (identical(other.presensiLokasiDefaultIsActive, presensiLokasiDefaultIsActive) || other.presensiLokasiDefaultIsActive == presensiLokasiDefaultIsActive) &&
            (identical(other.presensiLokasiDefaultCreatorId, presensiLokasiDefaultCreatorId) || other.presensiLokasiDefaultCreatorId == presensiLokasiDefaultCreatorId) &&
            const DeepCollectionEquality().equals(other.presensiLokasiDefaultLastEditorId, presensiLokasiDefaultLastEditorId) &&
            (identical(other.presensiLokasiDefaultCreatedAt, presensiLokasiDefaultCreatedAt) || other.presensiLokasiDefaultCreatedAt == presensiLokasiDefaultCreatedAt) &&
            const DeepCollectionEquality().equals(other.presensiLokasiDefaultUpdatedAt, presensiLokasiDefaultUpdatedAt) &&
            const DeepCollectionEquality().equals(other.atasanId, atasanId) &&
            const DeepCollectionEquality().equals(other.atasanMCompId, atasanMCompId) &&
            const DeepCollectionEquality().equals(other.atasanMDirId, atasanMDirId) &&
            const DeepCollectionEquality().equals(other.atasanMDivisiId, atasanMDivisiId) &&
            const DeepCollectionEquality().equals(other.atasanMDeptId, atasanMDeptId) &&
            const DeepCollectionEquality().equals(other.atasanMZonaId, atasanMZonaId) &&
            const DeepCollectionEquality().equals(other.atasanGradingId, atasanGradingId) &&
            const DeepCollectionEquality().equals(other.atasanCostcontreId, atasanCostcontreId) &&
            const DeepCollectionEquality().equals(other.atasanKode, atasanKode) &&
            const DeepCollectionEquality().equals(other.atasanMPosisiId, atasanMPosisiId) &&
            const DeepCollectionEquality().equals(other.atasanMJamKerjaId, atasanMJamKerjaId) &&
            const DeepCollectionEquality().equals(other.atasanKodePresensi, atasanKodePresensi) &&
            const DeepCollectionEquality().equals(other.atasanNik, atasanNik) &&
            const DeepCollectionEquality().equals(other.atasanNamaDepan, atasanNamaDepan) &&
            const DeepCollectionEquality().equals(other.atasanNamaBelakang, atasanNamaBelakang) &&
            const DeepCollectionEquality().equals(other.atasanNamaLengkap, atasanNamaLengkap) &&
            const DeepCollectionEquality().equals(other.atasanNamaPanggilan, atasanNamaPanggilan) &&
            const DeepCollectionEquality().equals(other.atasanJkId, atasanJkId) &&
            const DeepCollectionEquality().equals(other.atasanTempatLahir, atasanTempatLahir) &&
            const DeepCollectionEquality().equals(other.atasanTglLahir, atasanTglLahir) &&
            const DeepCollectionEquality().equals(other.atasanProvinsiId, atasanProvinsiId) &&
            const DeepCollectionEquality().equals(other.atasanKotaId, atasanKotaId) &&
            const DeepCollectionEquality().equals(other.atasanKecamatanId, atasanKecamatanId) &&
            const DeepCollectionEquality().equals(other.atasanKodePos, atasanKodePos) &&
            const DeepCollectionEquality().equals(other.atasanAlamatAsli, atasanAlamatAsli) &&
            const DeepCollectionEquality().equals(other.atasanAlamatDomisili, atasanAlamatDomisili) &&
            const DeepCollectionEquality().equals(other.atasanNoTlp, atasanNoTlp) &&
            const DeepCollectionEquality().equals(other.atasanNoTlpLainnya, atasanNoTlpLainnya) &&
            const DeepCollectionEquality().equals(other.atasanNoDarurat, atasanNoDarurat) &&
            const DeepCollectionEquality().equals(other.atasanNamaKontakDarurat, atasanNamaKontakDarurat) &&
            const DeepCollectionEquality().equals(other.atasanAgamaId, atasanAgamaId) &&
            const DeepCollectionEquality().equals(other.atasanGolDarahId, atasanGolDarahId) &&
            const DeepCollectionEquality().equals(other.atasanStatusNikahId, atasanStatusNikahId) &&
            const DeepCollectionEquality().equals(other.atasanTanggunganId, atasanTanggunganId) &&
            const DeepCollectionEquality().equals(other.atasanHubDgnKaryawan, atasanHubDgnKaryawan) &&
            const DeepCollectionEquality().equals(other.atasanCutiJatahReguler, atasanCutiJatahReguler) &&
            const DeepCollectionEquality().equals(other.atasanCutiSisaReguler, atasanCutiSisaReguler) &&
            const DeepCollectionEquality().equals(other.atasanCutiPanjang, atasanCutiPanjang) &&
            const DeepCollectionEquality().equals(other.atasanCutiSisaPanjang, atasanCutiSisaPanjang) &&
            const DeepCollectionEquality().equals(other.atasanStatusKaryId, atasanStatusKaryId) &&
            const DeepCollectionEquality().equals(other.atasanLamaKontrakAwal, atasanLamaKontrakAwal) &&
            const DeepCollectionEquality().equals(other.atasanLamaKontrakAkhir, atasanLamaKontrakAkhir) &&
            const DeepCollectionEquality().equals(other.atasanTglMasuk, atasanTglMasuk) &&
            const DeepCollectionEquality().equals(other.atasanTglBerhenti, atasanTglBerhenti) &&
            const DeepCollectionEquality().equals(other.atasanAlasanBerhenti, atasanAlasanBerhenti) &&
            const DeepCollectionEquality().equals(other.atasanUkBaju, atasanUkBaju) &&
            const DeepCollectionEquality().equals(other.atasanUkCelana, atasanUkCelana) &&
            const DeepCollectionEquality().equals(other.atasanUkSepatu, atasanUkSepatu) &&
            const DeepCollectionEquality().equals(other.atasanDesc, atasanDesc) &&
            const DeepCollectionEquality().equals(other.atasanIsActive, atasanIsActive) &&
            const DeepCollectionEquality().equals(other.atasanCreatorId, atasanCreatorId) &&
            const DeepCollectionEquality().equals(other.atasanLastEditorId, atasanLastEditorId) &&
            const DeepCollectionEquality().equals(other.atasanCreatedAt, atasanCreatedAt) &&
            const DeepCollectionEquality().equals(other.atasanUpdatedAt, atasanUpdatedAt) &&
            const DeepCollectionEquality().equals(other.atasanMStandartGajiId, atasanMStandartGajiId) &&
            const DeepCollectionEquality().equals(other.atasanPeriodeGajiId, atasanPeriodeGajiId) &&
            const DeepCollectionEquality().equals(other.atasanRefId, atasanRefId) &&
            const DeepCollectionEquality().equals(other.atasanPresensiLokasiDefaultId, atasanPresensiLokasiDefaultId) &&
            const DeepCollectionEquality().equals(other.atasanExpDateCuti, atasanExpDateCuti) &&
            const DeepCollectionEquality().equals(other.atasanLimitPotong, atasanLimitPotong) &&
            const DeepCollectionEquality().equals(other.atasanAtasanId, atasanAtasanId) &&
            const DeepCollectionEquality().equals(other.atasanCutiP24, atasanCutiP24) &&
            const DeepCollectionEquality().equals(other.atasanCutiSisaP24, atasanCutiSisaP24) &&
            const DeepCollectionEquality().equals(other.atasanTipeJamKerjaId, atasanTipeJamKerjaId) &&
            const DeepCollectionEquality().equals(other.atasanTJadwalKerjaId, atasanTJadwalKerjaId) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaId, tipeJamKerjaId) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaMCompId, tipeJamKerjaMCompId) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaMDirId, tipeJamKerjaMDirId) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaGroup, tipeJamKerjaGroup) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaKey, tipeJamKerjaKey) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaCode, tipeJamKerjaCode) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaValue, tipeJamKerjaValue) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaIsActive, tipeJamKerjaIsActive) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaCreatorId, tipeJamKerjaCreatorId) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaLastEditorId, tipeJamKerjaLastEditorId) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaCreatedAt, tipeJamKerjaCreatedAt) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaUpdatedAt, tipeJamKerjaUpdatedAt) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaValue2, tipeJamKerjaValue2) &&
            const DeepCollectionEquality().equals(other.tipeJamKerjaValue3, tipeJamKerjaValue3) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaId, tJadwalKerjaId) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaNomor, tJadwalKerjaNomor) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaMCompId, tJadwalKerjaMCompId) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaMDirId, tJadwalKerjaMDirId) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaMDivisiId, tJadwalKerjaMDivisiId) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaMDeptId, tJadwalKerjaMDeptId) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaTipeJamKerjaId, tJadwalKerjaTipeJamKerjaId) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaKeterangan, tJadwalKerjaKeterangan) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaStatus, tJadwalKerjaStatus) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaCreatorId, tJadwalKerjaCreatorId) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaLastEditorId, tJadwalKerjaLastEditorId) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaCreatedAt, tJadwalKerjaCreatedAt) &&
            const DeepCollectionEquality().equals(other.tJadwalKerjaUpdatedAt, tJadwalKerjaUpdatedAt) &&
            (identical(other.nomorKtp, nomorKtp) || other.nomorKtp == nomorKtp));
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
        const DeepCollectionEquality().hash(DataAllKaryawanMCompId),
        const DeepCollectionEquality().hash(DataAllKaryawanMDirId),
        DataAllKaryawanMDivisiId,
        DataAllKaryawanMDeptId,
        const DeepCollectionEquality().hash(DataAllKaryawanMZonaId),
        const DeepCollectionEquality().hash(DataAllKaryawanGradingId),
        const DeepCollectionEquality().hash(DataAllKaryawanCostcontreId),
        kode,
        DataAllKaryawanMPosisiId,
        const DeepCollectionEquality().hash(DataAllKaryawanMJamKerjaId),
        kodePresensi,
        nik,
        namaDepan,
        namaBelakang,
        namaLengkap,
        namaPanggilan,
        DataAllKaryawanJkId,
        tempatLahir,
        tglLahir,
        DataAllKaryawanProvinsiId,
        DataAllKaryawanKotaId,
        DataAllKaryawanKecamatanId,
        kodePos,
        alamatAsli,
        alamatDomisili,
        noTlp,
        noTlpLainnya,
        noDarurat,
        namaKontakDarurat,
        DataAllKaryawanAgamaId,
        DataAllKaryawanGolDarahId,
        DataAllKaryawanStatusNikahId,
        DataAllKaryawanTanggunganId,
        hubDgnKaryawan,
        const DeepCollectionEquality().hash(cutiJatahReguler),
        const DeepCollectionEquality().hash(cutiSisaReguler),
        const DeepCollectionEquality().hash(cutiPanjang),
        const DeepCollectionEquality().hash(cutiSisaPanjang),
        const DeepCollectionEquality().hash(DataAllKaryawanStatusKaryId),
        const DeepCollectionEquality().hash(lamaKontrakAwal),
        const DeepCollectionEquality().hash(lamaKontrakAkhir),
        tglMasuk,
        const DeepCollectionEquality().hash(tglBerhenti),
        const DeepCollectionEquality().hash(alasanBerhenti),
        ukBaju,
        ukCelana,
        ukSepatu,
        const DeepCollectionEquality().hash(desc),
        isActive,
        DataAllKaryawanCreatorId,
        DataAllKaryawanLastEditorId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(DataAllKaryawanMStandartGajiId),
        DataAllKaryawanPeriodeGajiId,
        const DeepCollectionEquality().hash(DataAllKaryawanRefId),
        DataAllKaryawanPresensiLokasiDefaultId,
        const DeepCollectionEquality().hash(expDateCuti),
        limitPotong,
        DataAllKaryawanAtasanId,
        cutiP24,
        const DeepCollectionEquality().hash(cutiSisaP24),
        const DeepCollectionEquality().hash(DataAllKaryawanTipeJamKerjaId),
        const DeepCollectionEquality().hash(DataAllKaryawanTJadwalKerjaId),
        const DeepCollectionEquality().hash(mCompId),
        const DeepCollectionEquality().hash(mCompNama),
        const DeepCollectionEquality().hash(mCompIsActive),
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
        const DeepCollectionEquality().hash(mDivisiMCompId),
        mDivisiMDirId,
        mDivisiNama,
        const DeepCollectionEquality().hash(mDivisiDesc),
        mDivisiIsActive,
        mDivisiCreatorId,
        const DeepCollectionEquality().hash(mDivisiLastEditorId),
        mDivisiCreatedAt,
        mDivisiUpdatedAt,
        mDeptId,
        mDeptMDirId,
        mDeptMDivisiId,
        mDeptNama,
        const DeepCollectionEquality().hash(mDeptDesc),
        mDeptIsActive,
        const DeepCollectionEquality().hash(mDeptCreatorId),
        const DeepCollectionEquality().hash(mDeptLastEditorId),
        mDeptCreatedAt,
        mDeptUpdatedAt,
        const DeepCollectionEquality().hash(mZonaId),
        const DeepCollectionEquality().hash(mZonaMCompId),
        const DeepCollectionEquality().hash(mZonaMDirId),
        const DeepCollectionEquality().hash(mZonaKode),
        const DeepCollectionEquality().hash(mZonaNama),
        const DeepCollectionEquality().hash(mZonaDesc),
        const DeepCollectionEquality().hash(mZonaIsActive),
        const DeepCollectionEquality().hash(mZonaCreatorId),
        const DeepCollectionEquality().hash(mZonaLastEditorId),
        const DeepCollectionEquality().hash(mZonaCreatedAt),
        const DeepCollectionEquality().hash(mZonaUpdatedAt),
        const DeepCollectionEquality().hash(gradingId),
        const DeepCollectionEquality().hash(gradingMCompId),
        const DeepCollectionEquality().hash(gradingMDirId),
        const DeepCollectionEquality().hash(gradingGroup),
        const DeepCollectionEquality().hash(gradingKey),
        const DeepCollectionEquality().hash(gradingCode),
        const DeepCollectionEquality().hash(gradingValue),
        const DeepCollectionEquality().hash(gradingIsActive),
        const DeepCollectionEquality().hash(gradingCreatorId),
        const DeepCollectionEquality().hash(gradingLastEditorId),
        const DeepCollectionEquality().hash(gradingCreatedAt),
        const DeepCollectionEquality().hash(gradingUpdatedAt),
        const DeepCollectionEquality().hash(gradingValue2),
        const DeepCollectionEquality().hash(gradingValue3),
        const DeepCollectionEquality().hash(costcontreId),
        const DeepCollectionEquality().hash(costcontreMCompId),
        const DeepCollectionEquality().hash(costcontreMDirId),
        const DeepCollectionEquality().hash(costcontreGroup),
        const DeepCollectionEquality().hash(costcontreKey),
        const DeepCollectionEquality().hash(costcontreCode),
        const DeepCollectionEquality().hash(costcontreValue),
        const DeepCollectionEquality().hash(costcontreIsActive),
        const DeepCollectionEquality().hash(costcontreCreatorId),
        const DeepCollectionEquality().hash(costcontreLastEditorId),
        const DeepCollectionEquality().hash(costcontreCreatedAt),
        const DeepCollectionEquality().hash(costcontreUpdatedAt),
        const DeepCollectionEquality().hash(costcontreValue2),
        const DeepCollectionEquality().hash(costcontreValue3),
        mPosisiId,
        const DeepCollectionEquality().hash(mPosisiMCompId),
        const DeepCollectionEquality().hash(mPosisiMDirId),
        mPosisiKode,
        mPosisiDescKerja,
        mPosisiDescKerja1,
        const DeepCollectionEquality().hash(mPosisiDescKerja2),
        mPosisiMinPengalaman,
        mPosisiMinPendidikanId,
        mPosisiMinGajiPokok,
        mPosisiMaxGajiPokok,
        const DeepCollectionEquality().hash(mPosisiBiaya),
        const DeepCollectionEquality().hash(mPosisiTipeBpjsId),
        const DeepCollectionEquality().hash(mPosisiPotonganBpjs),
        const DeepCollectionEquality().hash(mPosisiDesc),
        mPosisiIsActive,
        const DeepCollectionEquality().hash(mPosisiCreatorId),
        const DeepCollectionEquality().hash(mPosisiLastEditorId),
        mPosisiCreatedAt,
        mPosisiUpdatedAt,
        const DeepCollectionEquality().hash(mJamKerjaId),
        const DeepCollectionEquality().hash(mJamKerjaMCompId),
        const DeepCollectionEquality().hash(mJamKerjaMDirId),
        const DeepCollectionEquality().hash(mJamKerjaKode),
        const DeepCollectionEquality().hash(mJamKerjaTipeJamKerjaId),
        const DeepCollectionEquality().hash(mJamKerjaWaktuMulai),
        const DeepCollectionEquality().hash(mJamKerjaWaktuAkhir),
        const DeepCollectionEquality().hash(mJamKerjaIsHariBerikutnya),
        const DeepCollectionEquality().hash(mJamKerjaDesc),
        const DeepCollectionEquality().hash(mJamKerjaIsActive),
        const DeepCollectionEquality().hash(mJamKerjaCreatorId),
        const DeepCollectionEquality().hash(mJamKerjaLastEditorId),
        const DeepCollectionEquality().hash(mJamKerjaCreatedAt),
        const DeepCollectionEquality().hash(mJamKerjaUpdatedAt),
        jkId,
        jkMCompId,
        const DeepCollectionEquality().hash(jkMDirId),
        jkGroup,
        jkKey,
        jkCode,
        jkValue,
        jkIsActive,
        const DeepCollectionEquality().hash(jkCreatorId),
        const DeepCollectionEquality().hash(jkLastEditorId),
        jkCreatedAt,
        jkUpdatedAt,
        const DeepCollectionEquality().hash(jkValue2),
        const DeepCollectionEquality().hash(jkValue3),
        provinsiId,
        provinsiMCompId,
        const DeepCollectionEquality().hash(provinsiMDirId),
        provinsiGroup,
        const DeepCollectionEquality().hash(provinsiKey),
        const DeepCollectionEquality().hash(provinsiCode),
        provinsiValue,
        provinsiIsActive,
        const DeepCollectionEquality().hash(provinsiCreatorId),
        const DeepCollectionEquality().hash(provinsiLastEditorId),
        const DeepCollectionEquality().hash(provinsiCreatedAt),
        provinsiUpdatedAt,
        const DeepCollectionEquality().hash(provinsiValue2),
        const DeepCollectionEquality().hash(provinsiValue3),
        kotaId,
        kotaMCompId,
        const DeepCollectionEquality().hash(kotaMDirId),
        kotaGroup,
        kotaKey,
        const DeepCollectionEquality().hash(kotaCode),
        kotaValue,
        kotaIsActive,
        const DeepCollectionEquality().hash(kotaCreatorId),
        const DeepCollectionEquality().hash(kotaLastEditorId),
        const DeepCollectionEquality().hash(kotaCreatedAt),
        const DeepCollectionEquality().hash(kotaUpdatedAt),
        const DeepCollectionEquality().hash(kotaValue2),
        const DeepCollectionEquality().hash(kotaValue3),
        kecamatanId,
        kecamatanMCompId,
        const DeepCollectionEquality().hash(kecamatanMDirId),
        kecamatanGroup,
        kecamatanKey,
        const DeepCollectionEquality().hash(kecamatanCode),
        kecamatanValue,
        kecamatanIsActive,
        const DeepCollectionEquality().hash(kecamatanCreatorId),
        const DeepCollectionEquality().hash(kecamatanLastEditorId),
        const DeepCollectionEquality().hash(kecamatanCreatedAt),
        const DeepCollectionEquality().hash(kecamatanUpdatedAt),
        const DeepCollectionEquality().hash(kecamatanValue2),
        const DeepCollectionEquality().hash(kecamatanValue3),
        agamaId,
        agamaMCompId,
        const DeepCollectionEquality().hash(agamaMDirId),
        agamaGroup,
        agamaKey,
        agamaCode,
        agamaValue,
        agamaIsActive,
        const DeepCollectionEquality().hash(agamaCreatorId),
        const DeepCollectionEquality().hash(agamaLastEditorId),
        agamaCreatedAt,
        agamaUpdatedAt,
        const DeepCollectionEquality().hash(agamaValue2),
        const DeepCollectionEquality().hash(agamaValue3),
        golDarahId,
        golDarahMCompId,
        const DeepCollectionEquality().hash(golDarahMDirId),
        golDarahGroup,
        golDarahKey,
        golDarahCode,
        golDarahValue,
        golDarahIsActive,
        const DeepCollectionEquality().hash(golDarahCreatorId),
        const DeepCollectionEquality().hash(golDarahLastEditorId),
        golDarahCreatedAt,
        golDarahUpdatedAt,
        const DeepCollectionEquality().hash(golDarahValue2),
        const DeepCollectionEquality().hash(golDarahValue3),
        statusNikahId,
        statusNikahMCompId,
        const DeepCollectionEquality().hash(statusNikahMDirId),
        statusNikahGroup,
        statusNikahKey,
        statusNikahCode,
        statusNikahValue,
        statusNikahIsActive,
        const DeepCollectionEquality().hash(statusNikahCreatorId),
        const DeepCollectionEquality().hash(statusNikahLastEditorId),
        statusNikahCreatedAt,
        statusNikahUpdatedAt,
        const DeepCollectionEquality().hash(statusNikahValue2),
        const DeepCollectionEquality().hash(statusNikahValue3),
        tanggunganId,
        tanggunganMCompId,
        tanggunganMDirId,
        tanggunganGroup,
        tanggunganKey,
        tanggunganCode,
        tanggunganValue,
        tanggunganIsActive,
        const DeepCollectionEquality().hash(tanggunganCreatorId),
        const DeepCollectionEquality().hash(tanggunganLastEditorId),
        tanggunganCreatedAt,
        tanggunganUpdatedAt,
        tanggunganValue2,
        const DeepCollectionEquality().hash(tanggunganValue3),
        const DeepCollectionEquality().hash(statusKaryId),
        const DeepCollectionEquality().hash(statusKaryMCompId),
        const DeepCollectionEquality().hash(statusKaryMDirId),
        const DeepCollectionEquality().hash(statusKaryGroup),
        const DeepCollectionEquality().hash(statusKaryKey),
        const DeepCollectionEquality().hash(statusKaryCode),
        const DeepCollectionEquality().hash(statusKaryValue),
        const DeepCollectionEquality().hash(statusKaryIsActive),
        const DeepCollectionEquality().hash(statusKaryCreatorId),
        const DeepCollectionEquality().hash(statusKaryLastEditorId),
        const DeepCollectionEquality().hash(statusKaryCreatedAt),
        const DeepCollectionEquality().hash(statusKaryUpdatedAt),
        const DeepCollectionEquality().hash(statusKaryValue2),
        const DeepCollectionEquality().hash(statusKaryValue3),
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
        const DeepCollectionEquality().hash(lastEditorLastEditorId),
        const DeepCollectionEquality().hash(lastEditorRememberToken),
        lastEditorCreatedAt,
        lastEditorUpdatedAt,
        lastEditorProfilImage,
        const DeepCollectionEquality().hash(lastEditorTelp),
        lastEditorMKaryId,
        const DeepCollectionEquality().hash(mStandartGajiId),
        const DeepCollectionEquality().hash(mStandartGajiMCompId),
        const DeepCollectionEquality().hash(mStandartGajiMDirId),
        const DeepCollectionEquality().hash(mStandartGajiKode),
        const DeepCollectionEquality().hash(mStandartGajiMDivisiId),
        const DeepCollectionEquality().hash(mStandartGajiMDeptId),
        const DeepCollectionEquality().hash(mStandartGajiMZonaId),
        const DeepCollectionEquality().hash(mStandartGajiMPosisiId),
        const DeepCollectionEquality().hash(mStandartGajiGradingId),
        const DeepCollectionEquality().hash(mStandartGajiGajiPokok),
        const DeepCollectionEquality().hash(mStandartGajiGajiPokokPeriode),
        const DeepCollectionEquality().hash(mStandartGajiUangSaku),
        const DeepCollectionEquality().hash(mStandartGajiUangSakuPeriode),
        const DeepCollectionEquality().hash(mStandartGajiTunjanganPosisi),
        const DeepCollectionEquality()
            .hash(mStandartGajiTunjanganPosisiPeriode),
        const DeepCollectionEquality().hash(mStandartGajiTunjanganKemahalanId),
        const DeepCollectionEquality()
            .hash(mStandartGajiTunjanganKemahalanPeriode),
        const DeepCollectionEquality().hash(mStandartGajiUangMakan),
        const DeepCollectionEquality().hash(mStandartGajiUangMakanPeriode),
        const DeepCollectionEquality().hash(mStandartGajiTunjanganTetap),
        const DeepCollectionEquality().hash(mStandartGajiTunjanganTetapPeriode),
        const DeepCollectionEquality().hash(mStandartGajiDesc),
        const DeepCollectionEquality().hash(mStandartGajiIsActive),
        const DeepCollectionEquality().hash(mStandartGajiCreatorId),
        const DeepCollectionEquality().hash(mStandartGajiLastEditorId),
        const DeepCollectionEquality().hash(mStandartGajiCreatedAt),
        const DeepCollectionEquality().hash(mStandartGajiUpdatedAt),
        periodeGajiId,
        periodeGajiMCompId,
        const DeepCollectionEquality().hash(periodeGajiMDirId),
        periodeGajiGroup,
        periodeGajiKey,
        periodeGajiCode,
        periodeGajiValue,
        periodeGajiIsActive,
        const DeepCollectionEquality().hash(periodeGajiCreatorId),
        const DeepCollectionEquality().hash(periodeGajiLastEditorId),
        periodeGajiCreatedAt,
        periodeGajiUpdatedAt,
        const DeepCollectionEquality().hash(periodeGajiValue2),
        const DeepCollectionEquality().hash(periodeGajiValue3),
        const DeepCollectionEquality().hash(refId),
        const DeepCollectionEquality().hash(refNomor),
        const DeepCollectionEquality().hash(refMCompId),
        const DeepCollectionEquality().hash(refMDirId),
        const DeepCollectionEquality().hash(refNamaPelamar),
        const DeepCollectionEquality().hash(refKtpNo),
        const DeepCollectionEquality().hash(refTanggal),
        const DeepCollectionEquality().hash(refRef),
        const DeepCollectionEquality().hash(refTelp),
        const DeepCollectionEquality().hash(refJkId),
        const DeepCollectionEquality().hash(refTglLahir),
        const DeepCollectionEquality().hash(refSalary),
        const DeepCollectionEquality().hash(refDeskripsi),
        const DeepCollectionEquality().hash(refStatus),
        const DeepCollectionEquality().hash(refCreatorId),
        const DeepCollectionEquality().hash(refLastEditorId),
        const DeepCollectionEquality().hash(refCreatedAt),
        const DeepCollectionEquality().hash(refUpdatedAt),
        const DeepCollectionEquality().hash(refMDivisiId),
        const DeepCollectionEquality().hash(refMDeptId),
        const DeepCollectionEquality().hash(refMPosisiId),
        const DeepCollectionEquality().hash(refTempatLahir),
        const DeepCollectionEquality().hash(refTLokerId),
        presensiLokasiDefaultId,
        presensiLokasiDefaultCompId,
        const DeepCollectionEquality().hash(presensiLokasiDefaultDefaultUserId),
        presensiLokasiDefaultNama,
        presensiLokasiDefaultLat,
        presensiLokasiDefaultLong,
        presensiLokasiDefaultIsActive,
        presensiLokasiDefaultCreatorId,
        const DeepCollectionEquality().hash(presensiLokasiDefaultLastEditorId),
        presensiLokasiDefaultCreatedAt,
        const DeepCollectionEquality().hash(presensiLokasiDefaultUpdatedAt),
        const DeepCollectionEquality().hash(atasanId),
        const DeepCollectionEquality().hash(atasanMCompId),
        const DeepCollectionEquality().hash(atasanMDirId),
        const DeepCollectionEquality().hash(atasanMDivisiId),
        const DeepCollectionEquality().hash(atasanMDeptId),
        const DeepCollectionEquality().hash(atasanMZonaId),
        const DeepCollectionEquality().hash(atasanGradingId),
        const DeepCollectionEquality().hash(atasanCostcontreId),
        const DeepCollectionEquality().hash(atasanKode),
        const DeepCollectionEquality().hash(atasanMPosisiId),
        const DeepCollectionEquality().hash(atasanMJamKerjaId),
        const DeepCollectionEquality().hash(atasanKodePresensi),
        const DeepCollectionEquality().hash(atasanNik),
        const DeepCollectionEquality().hash(atasanNamaDepan),
        const DeepCollectionEquality().hash(atasanNamaBelakang),
        const DeepCollectionEquality().hash(atasanNamaLengkap),
        const DeepCollectionEquality().hash(atasanNamaPanggilan),
        const DeepCollectionEquality().hash(atasanJkId),
        const DeepCollectionEquality().hash(atasanTempatLahir),
        const DeepCollectionEquality().hash(atasanTglLahir),
        const DeepCollectionEquality().hash(atasanProvinsiId),
        const DeepCollectionEquality().hash(atasanKotaId),
        const DeepCollectionEquality().hash(atasanKecamatanId),
        const DeepCollectionEquality().hash(atasanKodePos),
        const DeepCollectionEquality().hash(atasanAlamatAsli),
        const DeepCollectionEquality().hash(atasanAlamatDomisili),
        const DeepCollectionEquality().hash(atasanNoTlp),
        const DeepCollectionEquality().hash(atasanNoTlpLainnya),
        const DeepCollectionEquality().hash(atasanNoDarurat),
        const DeepCollectionEquality().hash(atasanNamaKontakDarurat),
        const DeepCollectionEquality().hash(atasanAgamaId),
        const DeepCollectionEquality().hash(atasanGolDarahId),
        const DeepCollectionEquality().hash(atasanStatusNikahId),
        const DeepCollectionEquality().hash(atasanTanggunganId),
        const DeepCollectionEquality().hash(atasanHubDgnKaryawan),
        const DeepCollectionEquality().hash(atasanCutiJatahReguler),
        const DeepCollectionEquality().hash(atasanCutiSisaReguler),
        const DeepCollectionEquality().hash(atasanCutiPanjang),
        const DeepCollectionEquality().hash(atasanCutiSisaPanjang),
        const DeepCollectionEquality().hash(atasanStatusKaryId),
        const DeepCollectionEquality().hash(atasanLamaKontrakAwal),
        const DeepCollectionEquality().hash(atasanLamaKontrakAkhir),
        const DeepCollectionEquality().hash(atasanTglMasuk),
        const DeepCollectionEquality().hash(atasanTglBerhenti),
        const DeepCollectionEquality().hash(atasanAlasanBerhenti),
        const DeepCollectionEquality().hash(atasanUkBaju),
        const DeepCollectionEquality().hash(atasanUkCelana),
        const DeepCollectionEquality().hash(atasanUkSepatu),
        const DeepCollectionEquality().hash(atasanDesc),
        const DeepCollectionEquality().hash(atasanIsActive),
        const DeepCollectionEquality().hash(atasanCreatorId),
        const DeepCollectionEquality().hash(atasanLastEditorId),
        const DeepCollectionEquality().hash(atasanCreatedAt),
        const DeepCollectionEquality().hash(atasanUpdatedAt),
        const DeepCollectionEquality().hash(atasanMStandartGajiId),
        const DeepCollectionEquality().hash(atasanPeriodeGajiId),
        const DeepCollectionEquality().hash(atasanRefId),
        const DeepCollectionEquality().hash(atasanPresensiLokasiDefaultId),
        const DeepCollectionEquality().hash(atasanExpDateCuti),
        const DeepCollectionEquality().hash(atasanLimitPotong),
        const DeepCollectionEquality().hash(atasanAtasanId),
        const DeepCollectionEquality().hash(atasanCutiP24),
        const DeepCollectionEquality().hash(atasanCutiSisaP24),
        const DeepCollectionEquality().hash(atasanTipeJamKerjaId),
        const DeepCollectionEquality().hash(atasanTJadwalKerjaId),
        const DeepCollectionEquality().hash(tipeJamKerjaId),
        const DeepCollectionEquality().hash(tipeJamKerjaMCompId),
        const DeepCollectionEquality().hash(tipeJamKerjaMDirId),
        const DeepCollectionEquality().hash(tipeJamKerjaGroup),
        const DeepCollectionEquality().hash(tipeJamKerjaKey),
        const DeepCollectionEquality().hash(tipeJamKerjaCode),
        const DeepCollectionEquality().hash(tipeJamKerjaValue),
        const DeepCollectionEquality().hash(tipeJamKerjaIsActive),
        const DeepCollectionEquality().hash(tipeJamKerjaCreatorId),
        const DeepCollectionEquality().hash(tipeJamKerjaLastEditorId),
        const DeepCollectionEquality().hash(tipeJamKerjaCreatedAt),
        const DeepCollectionEquality().hash(tipeJamKerjaUpdatedAt),
        const DeepCollectionEquality().hash(tipeJamKerjaValue2),
        const DeepCollectionEquality().hash(tipeJamKerjaValue3),
        const DeepCollectionEquality().hash(tJadwalKerjaId),
        const DeepCollectionEquality().hash(tJadwalKerjaNomor),
        const DeepCollectionEquality().hash(tJadwalKerjaMCompId),
        const DeepCollectionEquality().hash(tJadwalKerjaMDirId),
        const DeepCollectionEquality().hash(tJadwalKerjaMDivisiId),
        const DeepCollectionEquality().hash(tJadwalKerjaMDeptId),
        const DeepCollectionEquality().hash(tJadwalKerjaTipeJamKerjaId),
        const DeepCollectionEquality().hash(tJadwalKerjaKeterangan),
        const DeepCollectionEquality().hash(tJadwalKerjaStatus),
        const DeepCollectionEquality().hash(tJadwalKerjaCreatorId),
        const DeepCollectionEquality().hash(tJadwalKerjaLastEditorId),
        const DeepCollectionEquality().hash(tJadwalKerjaCreatedAt),
        const DeepCollectionEquality().hash(tJadwalKerjaUpdatedAt),
        nomorKtp
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataAllKaryawanImplCopyWith<_$DataAllKaryawanImpl> get copyWith =>
      __$$DataAllKaryawanImplCopyWithImpl<_$DataAllKaryawanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataAllKaryawanImplToJson(
      this,
    );
  }
}

abstract class _DataAllKaryawan implements DataAllKaryawan {
  const factory _DataAllKaryawan(
      {@JsonKey(name: "meta_read") final bool? metaRead,
      @JsonKey(name: "meta_delete") final bool? metaDelete,
      @JsonKey(name: "meta_update") final bool? metaUpdate,
      @JsonKey(name: "meta_create") final bool? metaCreate,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_comp_id") final dynamic DataAllKaryawanMCompId,
      @JsonKey(name: "m_dir_id") final dynamic DataAllKaryawanMDirId,
      @JsonKey(name: "m_divisi_id") final int? DataAllKaryawanMDivisiId,
      @JsonKey(name: "m_dept_id") final int? DataAllKaryawanMDeptId,
      @JsonKey(name: "m_zona_id") final dynamic DataAllKaryawanMZonaId,
      @JsonKey(name: "grading_id") final dynamic DataAllKaryawanGradingId,
      @JsonKey(name: "costcontre_id") final dynamic DataAllKaryawanCostcontreId,
      @JsonKey(name: "kode") final String? kode,
      @JsonKey(name: "m_posisi_id") final int? DataAllKaryawanMPosisiId,
      @JsonKey(name: "m_jam_kerja_id") final dynamic DataAllKaryawanMJamKerjaId,
      @JsonKey(name: "kode_presensi") final String? kodePresensi,
      @JsonKey(name: "nik") final String? nik,
      @JsonKey(name: "nama_depan") final String? namaDepan,
      @JsonKey(name: "nama_belakang") final String? namaBelakang,
      @JsonKey(name: "nama_lengkap") final String? namaLengkap,
      @JsonKey(name: "nama_panggilan") final String? namaPanggilan,
      @JsonKey(name: "jk_id") final int? DataAllKaryawanJkId,
      @JsonKey(name: "tempat_lahir") final String? tempatLahir,
      @JsonKey(name: "tgl_lahir") final String? tglLahir,
      @JsonKey(name: "provinsi_id") final int? DataAllKaryawanProvinsiId,
      @JsonKey(name: "kota_id") final int? DataAllKaryawanKotaId,
      @JsonKey(name: "kecamatan_id") final int? DataAllKaryawanKecamatanId,
      @JsonKey(name: "kode_pos") final String? kodePos,
      @JsonKey(name: "alamat_asli") final String? alamatAsli,
      @JsonKey(name: "alamat_domisili") final String? alamatDomisili,
      @JsonKey(name: "no_tlp") final String? noTlp,
      @JsonKey(name: "no_tlp_lainnya") final String? noTlpLainnya,
      @JsonKey(name: "no_darurat") final String? noDarurat,
      @JsonKey(name: "nama_kontak_darurat") final String? namaKontakDarurat,
      @JsonKey(name: "agama_id") final int? DataAllKaryawanAgamaId,
      @JsonKey(name: "gol_darah_id") final int? DataAllKaryawanGolDarahId,
      @JsonKey(name: "status_nikah_id") final int? DataAllKaryawanStatusNikahId,
      @JsonKey(name: "tanggungan_id") final int? DataAllKaryawanTanggunganId,
      @JsonKey(name: "hub_dgn_karyawan") final String? hubDgnKaryawan,
      @JsonKey(name: "cuti_jatah_reguler") final dynamic cutiJatahReguler,
      @JsonKey(name: "cuti_sisa_reguler") final dynamic cutiSisaReguler,
      @JsonKey(name: "cuti_panjang") final dynamic cutiPanjang,
      @JsonKey(name: "cuti_sisa_panjang") final dynamic cutiSisaPanjang,
      @JsonKey(name: "status_kary_id")
      final dynamic DataAllKaryawanStatusKaryId,
      @JsonKey(name: "lama_kontrak_awal") final dynamic lamaKontrakAwal,
      @JsonKey(name: "lama_kontrak_akhir") final dynamic lamaKontrakAkhir,
      @JsonKey(name: "tgl_masuk") final String? tglMasuk,
      @JsonKey(name: "tgl_berhenti") final dynamic tglBerhenti,
      @JsonKey(name: "alasan_berhenti") final dynamic alasanBerhenti,
      @JsonKey(name: "uk_baju") final String? ukBaju,
      @JsonKey(name: "uk_celana") final String? ukCelana,
      @JsonKey(name: "uk_sepatu") final String? ukSepatu,
      @JsonKey(name: "desc") final dynamic desc,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "creator_id") final int? DataAllKaryawanCreatorId,
      @JsonKey(name: "last_editor_id") final int? DataAllKaryawanLastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "m_standart_gaji_id")
      final dynamic DataAllKaryawanMStandartGajiId,
      @JsonKey(name: "periode_gaji_id") final int? DataAllKaryawanPeriodeGajiId,
      @JsonKey(name: "ref_id") final dynamic DataAllKaryawanRefId,
      @JsonKey(name: "presensi_lokasi_default_id")
      final int? DataAllKaryawanPresensiLokasiDefaultId,
      @JsonKey(name: "exp_date_cuti") final dynamic expDateCuti,
      @JsonKey(name: "limit_potong") final int? limitPotong,
      @JsonKey(name: "atasan_id") final int? DataAllKaryawanAtasanId,
      @JsonKey(name: "cuti_p24") final int? cutiP24,
      @JsonKey(name: "cuti_sisa_p24") final dynamic cutiSisaP24,
      @JsonKey(name: "tipe_jam_kerja_id")
      final dynamic DataAllKaryawanTipeJamKerjaId,
      @JsonKey(name: "t_jadwal_kerja_id")
      final dynamic DataAllKaryawanTJadwalKerjaId,
      @JsonKey(name: "m_comp.id") final dynamic mCompId,
      @JsonKey(name: "m_comp.nama") final dynamic mCompNama,
      @JsonKey(name: "m_comp.is_active") final dynamic mCompIsActive,
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
      @JsonKey(name: "m_divisi.m_comp_id") final dynamic mDivisiMCompId,
      @JsonKey(name: "m_divisi.m_dir_id") final int? mDivisiMDirId,
      @JsonKey(name: "m_divisi.nama") final String? mDivisiNama,
      @JsonKey(name: "m_divisi.desc") final dynamic mDivisiDesc,
      @JsonKey(name: "m_divisi.is_active") final bool? mDivisiIsActive,
      @JsonKey(name: "m_divisi.creator_id") final int? mDivisiCreatorId,
      @JsonKey(name: "m_divisi.last_editor_id")
      final dynamic mDivisiLastEditorId,
      @JsonKey(name: "m_divisi.created_at") final String? mDivisiCreatedAt,
      @JsonKey(name: "m_divisi.updated_at") final String? mDivisiUpdatedAt,
      @JsonKey(name: "m_dept.id") final int? mDeptId,
      @JsonKey(name: "m_dept.m_dir_id") final int? mDeptMDirId,
      @JsonKey(name: "m_dept.m_divisi_id") final int? mDeptMDivisiId,
      @JsonKey(name: "m_dept.nama") final String? mDeptNama,
      @JsonKey(name: "m_dept.desc") final dynamic mDeptDesc,
      @JsonKey(name: "m_dept.is_active") final bool? mDeptIsActive,
      @JsonKey(name: "m_dept.creator_id") final dynamic mDeptCreatorId,
      @JsonKey(name: "m_dept.last_editor_id") final dynamic mDeptLastEditorId,
      @JsonKey(name: "m_dept.created_at") final String? mDeptCreatedAt,
      @JsonKey(name: "m_dept.updated_at") final String? mDeptUpdatedAt,
      @JsonKey(name: "m_zona.id") final dynamic mZonaId,
      @JsonKey(name: "m_zona.m_comp_id") final dynamic mZonaMCompId,
      @JsonKey(name: "m_zona.m_dir_id") final dynamic mZonaMDirId,
      @JsonKey(name: "m_zona.kode") final dynamic mZonaKode,
      @JsonKey(name: "m_zona.nama") final dynamic mZonaNama,
      @JsonKey(name: "m_zona.desc") final dynamic mZonaDesc,
      @JsonKey(name: "m_zona.is_active") final dynamic mZonaIsActive,
      @JsonKey(name: "m_zona.creator_id") final dynamic mZonaCreatorId,
      @JsonKey(name: "m_zona.last_editor_id") final dynamic mZonaLastEditorId,
      @JsonKey(name: "m_zona.created_at") final dynamic mZonaCreatedAt,
      @JsonKey(name: "m_zona.updated_at") final dynamic mZonaUpdatedAt,
      @JsonKey(name: "grading.id") final dynamic gradingId,
      @JsonKey(name: "grading.m_comp_id") final dynamic gradingMCompId,
      @JsonKey(name: "grading.m_dir_id") final dynamic gradingMDirId,
      @JsonKey(name: "grading.group") final dynamic gradingGroup,
      @JsonKey(name: "grading.key") final dynamic gradingKey,
      @JsonKey(name: "grading.code") final dynamic gradingCode,
      @JsonKey(name: "grading.value") final dynamic gradingValue,
      @JsonKey(name: "grading.is_active") final dynamic gradingIsActive,
      @JsonKey(name: "grading.creator_id") final dynamic gradingCreatorId,
      @JsonKey(name: "grading.last_editor_id")
      final dynamic gradingLastEditorId,
      @JsonKey(name: "grading.created_at") final dynamic gradingCreatedAt,
      @JsonKey(name: "grading.updated_at") final dynamic gradingUpdatedAt,
      @JsonKey(name: "grading.value_2") final dynamic gradingValue2,
      @JsonKey(name: "grading.value_3") final dynamic gradingValue3,
      @JsonKey(name: "costcontre.id") final dynamic costcontreId,
      @JsonKey(name: "costcontre.m_comp_id") final dynamic costcontreMCompId,
      @JsonKey(name: "costcontre.m_dir_id") final dynamic costcontreMDirId,
      @JsonKey(name: "costcontre.group") final dynamic costcontreGroup,
      @JsonKey(name: "costcontre.key") final dynamic costcontreKey,
      @JsonKey(name: "costcontre.code") final dynamic costcontreCode,
      @JsonKey(name: "costcontre.value") final dynamic costcontreValue,
      @JsonKey(name: "costcontre.is_active") final dynamic costcontreIsActive,
      @JsonKey(name: "costcontre.creator_id") final dynamic costcontreCreatorId,
      @JsonKey(name: "costcontre.last_editor_id")
      final dynamic costcontreLastEditorId,
      @JsonKey(name: "costcontre.created_at") final dynamic costcontreCreatedAt,
      @JsonKey(name: "costcontre.updated_at") final dynamic costcontreUpdatedAt,
      @JsonKey(name: "costcontre.value_2") final dynamic costcontreValue2,
      @JsonKey(name: "costcontre.value_3") final dynamic costcontreValue3,
      @JsonKey(name: "m_posisi.id") final int? mPosisiId,
      @JsonKey(name: "m_posisi.m_comp_id") final dynamic mPosisiMCompId,
      @JsonKey(name: "m_posisi.m_dir_id") final dynamic mPosisiMDirId,
      @JsonKey(name: "m_posisi.kode") final String? mPosisiKode,
      @JsonKey(name: "m_posisi.desc_kerja") final String? mPosisiDescKerja,
      @JsonKey(name: "m_posisi.desc_kerja_1") final String? mPosisiDescKerja1,
      @JsonKey(name: "m_posisi.desc_kerja_2") final dynamic mPosisiDescKerja2,
      @JsonKey(name: "m_posisi.min_pengalaman")
      final String? mPosisiMinPengalaman,
      @JsonKey(name: "m_posisi.min_pendidikan_id")
      final int? mPosisiMinPendidikanId,
      @JsonKey(name: "m_posisi.min_gaji_pokok")
      final String? mPosisiMinGajiPokok,
      @JsonKey(name: "m_posisi.max_gaji_pokok")
      final String? mPosisiMaxGajiPokok,
      @JsonKey(name: "m_posisi.biaya") final dynamic mPosisiBiaya,
      @JsonKey(name: "m_posisi.tipe_bpjs_id") final dynamic mPosisiTipeBpjsId,
      @JsonKey(name: "m_posisi.potongan_bpjs")
      final dynamic mPosisiPotonganBpjs,
      @JsonKey(name: "m_posisi.desc") final dynamic mPosisiDesc,
      @JsonKey(name: "m_posisi.is_active") final bool? mPosisiIsActive,
      @JsonKey(name: "m_posisi.creator_id") final dynamic mPosisiCreatorId,
      @JsonKey(name: "m_posisi.last_editor_id")
      final dynamic mPosisiLastEditorId,
      @JsonKey(name: "m_posisi.created_at") final String? mPosisiCreatedAt,
      @JsonKey(name: "m_posisi.updated_at") final String? mPosisiUpdatedAt,
      @JsonKey(name: "m_jam_kerja.id") final dynamic mJamKerjaId,
      @JsonKey(name: "m_jam_kerja.m_comp_id") final dynamic mJamKerjaMCompId,
      @JsonKey(name: "m_jam_kerja.m_dir_id") final dynamic mJamKerjaMDirId,
      @JsonKey(name: "m_jam_kerja.kode") final dynamic mJamKerjaKode,
      @JsonKey(name: "m_jam_kerja.tipe_jam_kerja_id")
      final dynamic mJamKerjaTipeJamKerjaId,
      @JsonKey(name: "m_jam_kerja.waktu_mulai")
      final dynamic mJamKerjaWaktuMulai,
      @JsonKey(name: "m_jam_kerja.waktu_akhir")
      final dynamic mJamKerjaWaktuAkhir,
      @JsonKey(name: "m_jam_kerja.is_hari_berikutnya")
      final dynamic mJamKerjaIsHariBerikutnya,
      @JsonKey(name: "m_jam_kerja.desc") final dynamic mJamKerjaDesc,
      @JsonKey(name: "m_jam_kerja.is_active") final dynamic mJamKerjaIsActive,
      @JsonKey(name: "m_jam_kerja.creator_id") final dynamic mJamKerjaCreatorId,
      @JsonKey(name: "m_jam_kerja.last_editor_id")
      final dynamic mJamKerjaLastEditorId,
      @JsonKey(name: "m_jam_kerja.created_at") final dynamic mJamKerjaCreatedAt,
      @JsonKey(name: "m_jam_kerja.updated_at") final dynamic mJamKerjaUpdatedAt,
      @JsonKey(name: "jk.id") final int? jkId,
      @JsonKey(name: "jk.m_comp_id") final int? jkMCompId,
      @JsonKey(name: "jk.m_dir_id") final dynamic jkMDirId,
      @JsonKey(name: "jk.group") final String? jkGroup,
      @JsonKey(name: "jk.key") final String? jkKey,
      @JsonKey(name: "jk.code") final String? jkCode,
      @JsonKey(name: "jk.value") final String? jkValue,
      @JsonKey(name: "jk.is_active") final bool? jkIsActive,
      @JsonKey(name: "jk.creator_id") final dynamic jkCreatorId,
      @JsonKey(name: "jk.last_editor_id") final dynamic jkLastEditorId,
      @JsonKey(name: "jk.created_at") final String? jkCreatedAt,
      @JsonKey(name: "jk.updated_at") final String? jkUpdatedAt,
      @JsonKey(name: "jk.value_2") final dynamic jkValue2,
      @JsonKey(name: "jk.value_3") final dynamic jkValue3,
      @JsonKey(name: "provinsi.id") final int? provinsiId,
      @JsonKey(name: "provinsi.m_comp_id") final int? provinsiMCompId,
      @JsonKey(name: "provinsi.m_dir_id") final dynamic provinsiMDirId,
      @JsonKey(name: "provinsi.group") final String? provinsiGroup,
      @JsonKey(name: "provinsi.key") final dynamic provinsiKey,
      @JsonKey(name: "provinsi.code") final dynamic provinsiCode,
      @JsonKey(name: "provinsi.value") final String? provinsiValue,
      @JsonKey(name: "provinsi.is_active") final bool? provinsiIsActive,
      @JsonKey(name: "provinsi.creator_id") final dynamic provinsiCreatorId,
      @JsonKey(name: "provinsi.last_editor_id")
      final dynamic provinsiLastEditorId,
      @JsonKey(name: "provinsi.created_at") final dynamic provinsiCreatedAt,
      @JsonKey(name: "provinsi.updated_at") final String? provinsiUpdatedAt,
      @JsonKey(name: "provinsi.value_2") final dynamic provinsiValue2,
      @JsonKey(name: "provinsi.value_3") final dynamic provinsiValue3,
      @JsonKey(name: "kota.id") final int? kotaId,
      @JsonKey(name: "kota.m_comp_id") final int? kotaMCompId,
      @JsonKey(name: "kota.m_dir_id") final dynamic kotaMDirId,
      @JsonKey(name: "kota.group") final String? kotaGroup,
      @JsonKey(name: "kota.key") final String? kotaKey,
      @JsonKey(name: "kota.code") final dynamic kotaCode,
      @JsonKey(name: "kota.value") final String? kotaValue,
      @JsonKey(name: "kota.is_active") final bool? kotaIsActive,
      @JsonKey(name: "kota.creator_id") final dynamic kotaCreatorId,
      @JsonKey(name: "kota.last_editor_id") final dynamic kotaLastEditorId,
      @JsonKey(name: "kota.created_at") final dynamic kotaCreatedAt,
      @JsonKey(name: "kota.updated_at") final dynamic kotaUpdatedAt,
      @JsonKey(name: "kota.value_2") final dynamic kotaValue2,
      @JsonKey(name: "kota.value_3") final dynamic kotaValue3,
      @JsonKey(name: "kecamatan.id") final int? kecamatanId,
      @JsonKey(name: "kecamatan.m_comp_id") final int? kecamatanMCompId,
      @JsonKey(name: "kecamatan.m_dir_id") final dynamic kecamatanMDirId,
      @JsonKey(name: "kecamatan.group") final String? kecamatanGroup,
      @JsonKey(name: "kecamatan.key") final String? kecamatanKey,
      @JsonKey(name: "kecamatan.code") final dynamic kecamatanCode,
      @JsonKey(name: "kecamatan.value") final String? kecamatanValue,
      @JsonKey(name: "kecamatan.is_active") final bool? kecamatanIsActive,
      @JsonKey(name: "kecamatan.creator_id") final dynamic kecamatanCreatorId,
      @JsonKey(name: "kecamatan.last_editor_id")
      final dynamic kecamatanLastEditorId,
      @JsonKey(name: "kecamatan.created_at") final dynamic kecamatanCreatedAt,
      @JsonKey(name: "kecamatan.updated_at") final dynamic kecamatanUpdatedAt,
      @JsonKey(name: "kecamatan.value_2") final dynamic kecamatanValue2,
      @JsonKey(name: "kecamatan.value_3") final dynamic kecamatanValue3,
      @JsonKey(name: "agama.id") final int? agamaId,
      @JsonKey(name: "agama.m_comp_id") final int? agamaMCompId,
      @JsonKey(name: "agama.m_dir_id") final dynamic agamaMDirId,
      @JsonKey(name: "agama.group") final String? agamaGroup,
      @JsonKey(name: "agama.key") final String? agamaKey,
      @JsonKey(name: "agama.code") final String? agamaCode,
      @JsonKey(name: "agama.value") final String? agamaValue,
      @JsonKey(name: "agama.is_active") final bool? agamaIsActive,
      @JsonKey(name: "agama.creator_id") final dynamic agamaCreatorId,
      @JsonKey(name: "agama.last_editor_id") final dynamic agamaLastEditorId,
      @JsonKey(name: "agama.created_at") final String? agamaCreatedAt,
      @JsonKey(name: "agama.updated_at") final String? agamaUpdatedAt,
      @JsonKey(name: "agama.value_2") final dynamic agamaValue2,
      @JsonKey(name: "agama.value_3") final dynamic agamaValue3,
      @JsonKey(name: "gol_darah.id") final int? golDarahId,
      @JsonKey(name: "gol_darah.m_comp_id") final int? golDarahMCompId,
      @JsonKey(name: "gol_darah.m_dir_id") final dynamic golDarahMDirId,
      @JsonKey(name: "gol_darah.group") final String? golDarahGroup,
      @JsonKey(name: "gol_darah.key") final String? golDarahKey,
      @JsonKey(name: "gol_darah.code") final String? golDarahCode,
      @JsonKey(name: "gol_darah.value") final String? golDarahValue,
      @JsonKey(name: "gol_darah.is_active") final bool? golDarahIsActive,
      @JsonKey(name: "gol_darah.creator_id") final dynamic golDarahCreatorId,
      @JsonKey(name: "gol_darah.last_editor_id")
      final dynamic golDarahLastEditorId,
      @JsonKey(name: "gol_darah.created_at") final String? golDarahCreatedAt,
      @JsonKey(name: "gol_darah.updated_at") final String? golDarahUpdatedAt,
      @JsonKey(name: "gol_darah.value_2") final dynamic golDarahValue2,
      @JsonKey(name: "gol_darah.value_3") final dynamic golDarahValue3,
      @JsonKey(name: "status_nikah.id") final int? statusNikahId,
      @JsonKey(name: "status_nikah.m_comp_id") final int? statusNikahMCompId,
      @JsonKey(name: "status_nikah.m_dir_id") final dynamic statusNikahMDirId,
      @JsonKey(name: "status_nikah.group") final String? statusNikahGroup,
      @JsonKey(name: "status_nikah.key") final String? statusNikahKey,
      @JsonKey(name: "status_nikah.code") final String? statusNikahCode,
      @JsonKey(name: "status_nikah.value") final String? statusNikahValue,
      @JsonKey(name: "status_nikah.is_active") final bool? statusNikahIsActive,
      @JsonKey(name: "status_nikah.creator_id")
      final dynamic statusNikahCreatorId,
      @JsonKey(name: "status_nikah.last_editor_id")
      final dynamic statusNikahLastEditorId,
      @JsonKey(name: "status_nikah.created_at")
      final String? statusNikahCreatedAt,
      @JsonKey(name: "status_nikah.updated_at")
      final String? statusNikahUpdatedAt,
      @JsonKey(name: "status_nikah.value_2") final dynamic statusNikahValue2,
      @JsonKey(name: "status_nikah.value_3") final dynamic statusNikahValue3,
      @JsonKey(name: "tanggungan.id") final int? tanggunganId,
      @JsonKey(name: "tanggungan.m_comp_id") final int? tanggunganMCompId,
      @JsonKey(name: "tanggungan.m_dir_id") final int? tanggunganMDirId,
      @JsonKey(name: "tanggungan.group") final String? tanggunganGroup,
      @JsonKey(name: "tanggungan.key") final String? tanggunganKey,
      @JsonKey(name: "tanggungan.code") final String? tanggunganCode,
      @JsonKey(name: "tanggungan.value") final String? tanggunganValue,
      @JsonKey(name: "tanggungan.is_active") final bool? tanggunganIsActive,
      @JsonKey(name: "tanggungan.creator_id") final dynamic tanggunganCreatorId,
      @JsonKey(name: "tanggungan.last_editor_id")
      final dynamic tanggunganLastEditorId,
      @JsonKey(name: "tanggungan.created_at") final String? tanggunganCreatedAt,
      @JsonKey(name: "tanggungan.updated_at") final String? tanggunganUpdatedAt,
      @JsonKey(name: "tanggungan.value_2") final String? tanggunganValue2,
      @JsonKey(name: "tanggungan.value_3") final dynamic tanggunganValue3,
      @JsonKey(name: "status_kary.id") final dynamic statusKaryId,
      @JsonKey(name: "status_kary.m_comp_id") final dynamic statusKaryMCompId,
      @JsonKey(name: "status_kary.m_dir_id") final dynamic statusKaryMDirId,
      @JsonKey(name: "status_kary.group") final dynamic statusKaryGroup,
      @JsonKey(name: "status_kary.key") final dynamic statusKaryKey,
      @JsonKey(name: "status_kary.code") final dynamic statusKaryCode,
      @JsonKey(name: "status_kary.value") final dynamic statusKaryValue,
      @JsonKey(name: "status_kary.is_active") final dynamic statusKaryIsActive,
      @JsonKey(name: "status_kary.creator_id")
      final dynamic statusKaryCreatorId,
      @JsonKey(name: "status_kary.last_editor_id")
      final dynamic statusKaryLastEditorId,
      @JsonKey(name: "status_kary.created_at")
      final dynamic statusKaryCreatedAt,
      @JsonKey(name: "status_kary.updated_at")
      final dynamic statusKaryUpdatedAt,
      @JsonKey(name: "status_kary.value_2") final dynamic statusKaryValue2,
      @JsonKey(name: "status_kary.value_3") final dynamic statusKaryValue3,
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
      final dynamic lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      final dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at")
      final String? lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at")
      final String? lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image")
      final String? lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") final dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") final int? lastEditorMKaryId,
      @JsonKey(name: "m_standart_gaji.id") final dynamic mStandartGajiId,
      @JsonKey(name: "m_standart_gaji.m_comp_id")
      final dynamic mStandartGajiMCompId,
      @JsonKey(name: "m_standart_gaji.m_dir_id")
      final dynamic mStandartGajiMDirId,
      @JsonKey(name: "m_standart_gaji.kode") final dynamic mStandartGajiKode,
      @JsonKey(name: "m_standart_gaji.m_divisi_id")
      final dynamic mStandartGajiMDivisiId,
      @JsonKey(name: "m_standart_gaji.m_dept_id")
      final dynamic mStandartGajiMDeptId,
      @JsonKey(name: "m_standart_gaji.m_zona_id")
      final dynamic mStandartGajiMZonaId,
      @JsonKey(name: "m_standart_gaji.m_posisi_id")
      final dynamic mStandartGajiMPosisiId,
      @JsonKey(name: "m_standart_gaji.grading_id")
      final dynamic mStandartGajiGradingId,
      @JsonKey(name: "m_standart_gaji.gaji_pokok")
      final dynamic mStandartGajiGajiPokok,
      @JsonKey(name: "m_standart_gaji.gaji_pokok_periode")
      final dynamic mStandartGajiGajiPokokPeriode,
      @JsonKey(name: "m_standart_gaji.uang_saku")
      final dynamic mStandartGajiUangSaku,
      @JsonKey(name: "m_standart_gaji.uang_saku_periode")
      final dynamic mStandartGajiUangSakuPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_posisi")
      final dynamic mStandartGajiTunjanganPosisi,
      @JsonKey(name: "m_standart_gaji.tunjangan_posisi_periode")
      final dynamic mStandartGajiTunjanganPosisiPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_id")
      final dynamic mStandartGajiTunjanganKemahalanId,
      @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_periode")
      final dynamic mStandartGajiTunjanganKemahalanPeriode,
      @JsonKey(name: "m_standart_gaji.uang_makan")
      final dynamic mStandartGajiUangMakan,
      @JsonKey(name: "m_standart_gaji.uang_makan_periode")
      final dynamic mStandartGajiUangMakanPeriode,
      @JsonKey(name: "m_standart_gaji.tunjangan_tetap")
      final dynamic mStandartGajiTunjanganTetap,
      @JsonKey(name: "m_standart_gaji.tunjangan_tetap_periode")
      final dynamic mStandartGajiTunjanganTetapPeriode,
      @JsonKey(name: "m_standart_gaji.desc") final dynamic mStandartGajiDesc,
      @JsonKey(name: "m_standart_gaji.is_active")
      final dynamic mStandartGajiIsActive,
      @JsonKey(name: "m_standart_gaji.creator_id")
      final dynamic mStandartGajiCreatorId,
      @JsonKey(name: "m_standart_gaji.last_editor_id")
      final dynamic mStandartGajiLastEditorId,
      @JsonKey(name: "m_standart_gaji.created_at")
      final dynamic mStandartGajiCreatedAt,
      @JsonKey(name: "m_standart_gaji.updated_at")
      final dynamic mStandartGajiUpdatedAt,
      @JsonKey(name: "periode_gaji.id") final int? periodeGajiId,
      @JsonKey(name: "periode_gaji.m_comp_id") final int? periodeGajiMCompId,
      @JsonKey(name: "periode_gaji.m_dir_id") final dynamic periodeGajiMDirId,
      @JsonKey(name: "periode_gaji.group") final String? periodeGajiGroup,
      @JsonKey(name: "periode_gaji.key") final String? periodeGajiKey,
      @JsonKey(name: "periode_gaji.code") final String? periodeGajiCode,
      @JsonKey(name: "periode_gaji.value") final String? periodeGajiValue,
      @JsonKey(name: "periode_gaji.is_active") final bool? periodeGajiIsActive,
      @JsonKey(name: "periode_gaji.creator_id")
      final dynamic periodeGajiCreatorId,
      @JsonKey(name: "periode_gaji.last_editor_id")
      final dynamic periodeGajiLastEditorId,
      @JsonKey(name: "periode_gaji.created_at")
      final String? periodeGajiCreatedAt,
      @JsonKey(name: "periode_gaji.updated_at")
      final String? periodeGajiUpdatedAt,
      @JsonKey(name: "periode_gaji.value_2") final dynamic periodeGajiValue2,
      @JsonKey(name: "periode_gaji.value_3") final dynamic periodeGajiValue3,
      @JsonKey(name: "ref.id") final dynamic refId,
      @JsonKey(name: "ref.nomor") final dynamic refNomor,
      @JsonKey(name: "ref.m_comp_id") final dynamic refMCompId,
      @JsonKey(name: "ref.m_dir_id") final dynamic refMDirId,
      @JsonKey(name: "ref.nama_pelamar") final dynamic refNamaPelamar,
      @JsonKey(name: "ref.ktp_no") final dynamic refKtpNo,
      @JsonKey(name: "ref.tanggal") final dynamic refTanggal,
      @JsonKey(name: "ref.ref") final dynamic refRef,
      @JsonKey(name: "ref.telp") final dynamic refTelp,
      @JsonKey(name: "ref.jk_id") final dynamic refJkId,
      @JsonKey(name: "ref.tgl_lahir") final dynamic refTglLahir,
      @JsonKey(name: "ref.salary") final dynamic refSalary,
      @JsonKey(name: "ref.deskripsi") final dynamic refDeskripsi,
      @JsonKey(name: "ref.status") final dynamic refStatus,
      @JsonKey(name: "ref.creator_id") final dynamic refCreatorId,
      @JsonKey(name: "ref.last_editor_id") final dynamic refLastEditorId,
      @JsonKey(name: "ref.created_at") final dynamic refCreatedAt,
      @JsonKey(name: "ref.updated_at") final dynamic refUpdatedAt,
      @JsonKey(name: "ref.m_divisi_id") final dynamic refMDivisiId,
      @JsonKey(name: "ref.m_dept_id") final dynamic refMDeptId,
      @JsonKey(name: "ref.m_posisi_id") final dynamic refMPosisiId,
      @JsonKey(name: "ref.tempat_lahir") final dynamic refTempatLahir,
      @JsonKey(name: "ref.t_loker_id") final dynamic refTLokerId,
      @JsonKey(name: "presensi_lokasi_default.id")
      final int? presensiLokasiDefaultId,
      @JsonKey(name: "presensi_lokasi_default.comp_id")
      final int? presensiLokasiDefaultCompId,
      @JsonKey(name: "presensi_lokasi_default.default_user_id")
      final dynamic presensiLokasiDefaultDefaultUserId,
      @JsonKey(name: "presensi_lokasi_default.nama")
      final String? presensiLokasiDefaultNama,
      @JsonKey(name: "presensi_lokasi_default.lat")
      final String? presensiLokasiDefaultLat,
      @JsonKey(name: "presensi_lokasi_default.long")
      final String? presensiLokasiDefaultLong,
      @JsonKey(name: "presensi_lokasi_default.is_active")
      final bool? presensiLokasiDefaultIsActive,
      @JsonKey(name: "presensi_lokasi_default.creator_id")
      final int? presensiLokasiDefaultCreatorId,
      @JsonKey(name: "presensi_lokasi_default.last_editor_id")
      final dynamic presensiLokasiDefaultLastEditorId,
      @JsonKey(name: "presensi_lokasi_default.created_at")
      final String? presensiLokasiDefaultCreatedAt,
      @JsonKey(name: "presensi_lokasi_default.updated_at")
      final dynamic presensiLokasiDefaultUpdatedAt,
      @JsonKey(name: "atasan.id") final dynamic atasanId,
      @JsonKey(name: "atasan.m_comp_id") final dynamic atasanMCompId,
      @JsonKey(name: "atasan.m_dir_id") final dynamic atasanMDirId,
      @JsonKey(name: "atasan.m_divisi_id") final dynamic atasanMDivisiId,
      @JsonKey(name: "atasan.m_dept_id") final dynamic atasanMDeptId,
      @JsonKey(name: "atasan.m_zona_id") final dynamic atasanMZonaId,
      @JsonKey(name: "atasan.grading_id") final dynamic atasanGradingId,
      @JsonKey(name: "atasan.costcontre_id") final dynamic atasanCostcontreId,
      @JsonKey(name: "atasan.kode") final dynamic atasanKode,
      @JsonKey(name: "atasan.m_posisi_id") final dynamic atasanMPosisiId,
      @JsonKey(name: "atasan.m_jam_kerja_id") final dynamic atasanMJamKerjaId,
      @JsonKey(name: "atasan.kode_presensi") final dynamic atasanKodePresensi,
      @JsonKey(name: "atasan.nik") final dynamic atasanNik,
      @JsonKey(name: "atasan.nama_depan") final dynamic atasanNamaDepan,
      @JsonKey(name: "atasan.nama_belakang") final dynamic atasanNamaBelakang,
      @JsonKey(name: "atasan.nama_lengkap") final dynamic atasanNamaLengkap,
      @JsonKey(name: "atasan.nama_panggilan") final dynamic atasanNamaPanggilan,
      @JsonKey(name: "atasan.jk_id") final dynamic atasanJkId,
      @JsonKey(name: "atasan.tempat_lahir") final dynamic atasanTempatLahir,
      @JsonKey(name: "atasan.tgl_lahir") final dynamic atasanTglLahir,
      @JsonKey(name: "atasan.provinsi_id") final dynamic atasanProvinsiId,
      @JsonKey(name: "atasan.kota_id") final dynamic atasanKotaId,
      @JsonKey(name: "atasan.kecamatan_id") final dynamic atasanKecamatanId,
      @JsonKey(name: "atasan.kode_pos") final dynamic atasanKodePos,
      @JsonKey(name: "atasan.alamat_asli") final dynamic atasanAlamatAsli,
      @JsonKey(name: "atasan.alamat_domisili")
      final dynamic atasanAlamatDomisili,
      @JsonKey(name: "atasan.no_tlp") final dynamic atasanNoTlp,
      @JsonKey(name: "atasan.no_tlp_lainnya") final dynamic atasanNoTlpLainnya,
      @JsonKey(name: "atasan.no_darurat") final dynamic atasanNoDarurat,
      @JsonKey(name: "atasan.nama_kontak_darurat")
      final dynamic atasanNamaKontakDarurat,
      @JsonKey(name: "atasan.agama_id") final dynamic atasanAgamaId,
      @JsonKey(name: "atasan.gol_darah_id") final dynamic atasanGolDarahId,
      @JsonKey(name: "atasan.status_nikah_id")
      final dynamic atasanStatusNikahId,
      @JsonKey(name: "atasan.tanggungan_id") final dynamic atasanTanggunganId,
      @JsonKey(name: "atasan.hub_dgn_karyawan")
      final dynamic atasanHubDgnKaryawan,
      @JsonKey(name: "atasan.cuti_jatah_reguler")
      final dynamic atasanCutiJatahReguler,
      @JsonKey(name: "atasan.cuti_sisa_reguler")
      final dynamic atasanCutiSisaReguler,
      @JsonKey(name: "atasan.cuti_panjang") final dynamic atasanCutiPanjang,
      @JsonKey(name: "atasan.cuti_sisa_panjang")
      final dynamic atasanCutiSisaPanjang,
      @JsonKey(name: "atasan.status_kary_id") final dynamic atasanStatusKaryId,
      @JsonKey(name: "atasan.lama_kontrak_awal")
      final dynamic atasanLamaKontrakAwal,
      @JsonKey(name: "atasan.lama_kontrak_akhir")
      final dynamic atasanLamaKontrakAkhir,
      @JsonKey(name: "atasan.tgl_masuk") final dynamic atasanTglMasuk,
      @JsonKey(name: "atasan.tgl_berhenti") final dynamic atasanTglBerhenti,
      @JsonKey(name: "atasan.alasan_berhenti")
      final dynamic atasanAlasanBerhenti,
      @JsonKey(name: "atasan.uk_baju") final dynamic atasanUkBaju,
      @JsonKey(name: "atasan.uk_celana") final dynamic atasanUkCelana,
      @JsonKey(name: "atasan.uk_sepatu") final dynamic atasanUkSepatu,
      @JsonKey(name: "atasan.desc") final dynamic atasanDesc,
      @JsonKey(name: "atasan.is_active") final dynamic atasanIsActive,
      @JsonKey(name: "atasan.creator_id") final dynamic atasanCreatorId,
      @JsonKey(name: "atasan.last_editor_id") final dynamic atasanLastEditorId,
      @JsonKey(name: "atasan.created_at") final dynamic atasanCreatedAt,
      @JsonKey(name: "atasan.updated_at") final dynamic atasanUpdatedAt,
      @JsonKey(name: "atasan.m_standart_gaji_id")
      final dynamic atasanMStandartGajiId,
      @JsonKey(name: "atasan.periode_gaji_id")
      final dynamic atasanPeriodeGajiId,
      @JsonKey(name: "atasan.ref_id") final dynamic atasanRefId,
      @JsonKey(name: "atasan.presensi_lokasi_default_id")
      final dynamic atasanPresensiLokasiDefaultId,
      @JsonKey(name: "atasan.exp_date_cuti") final dynamic atasanExpDateCuti,
      @JsonKey(name: "atasan.limit_potong") final dynamic atasanLimitPotong,
      @JsonKey(name: "atasan.atasan_id") final dynamic atasanAtasanId,
      @JsonKey(name: "atasan.cuti_p24") final dynamic atasanCutiP24,
      @JsonKey(name: "atasan.cuti_sisa_p24") final dynamic atasanCutiSisaP24,
      @JsonKey(name: "atasan.tipe_jam_kerja_id")
      final dynamic atasanTipeJamKerjaId,
      @JsonKey(name: "atasan.t_jadwal_kerja_id")
      final dynamic atasanTJadwalKerjaId,
      @JsonKey(name: "tipe_jam_kerja.id") final dynamic tipeJamKerjaId,
      @JsonKey(name: "tipe_jam_kerja.m_comp_id")
      final dynamic tipeJamKerjaMCompId,
      @JsonKey(name: "tipe_jam_kerja.m_dir_id")
      final dynamic tipeJamKerjaMDirId,
      @JsonKey(name: "tipe_jam_kerja.group") final dynamic tipeJamKerjaGroup,
      @JsonKey(name: "tipe_jam_kerja.key") final dynamic tipeJamKerjaKey,
      @JsonKey(name: "tipe_jam_kerja.code") final dynamic tipeJamKerjaCode,
      @JsonKey(name: "tipe_jam_kerja.value") final dynamic tipeJamKerjaValue,
      @JsonKey(name: "tipe_jam_kerja.is_active")
      final dynamic tipeJamKerjaIsActive,
      @JsonKey(name: "tipe_jam_kerja.creator_id")
      final dynamic tipeJamKerjaCreatorId,
      @JsonKey(name: "tipe_jam_kerja.last_editor_id")
      final dynamic tipeJamKerjaLastEditorId,
      @JsonKey(name: "tipe_jam_kerja.created_at") final dynamic tipeJamKerjaCreatedAt,
      @JsonKey(name: "tipe_jam_kerja.updated_at") final dynamic tipeJamKerjaUpdatedAt,
      @JsonKey(name: "tipe_jam_kerja.value_2") final dynamic tipeJamKerjaValue2,
      @JsonKey(name: "tipe_jam_kerja.value_3") final dynamic tipeJamKerjaValue3,
      @JsonKey(name: "t_jadwal_kerja.id") final dynamic tJadwalKerjaId,
      @JsonKey(name: "t_jadwal_kerja.nomor") final dynamic tJadwalKerjaNomor,
      @JsonKey(name: "t_jadwal_kerja.m_comp_id") final dynamic tJadwalKerjaMCompId,
      @JsonKey(name: "t_jadwal_kerja.m_dir_id") final dynamic tJadwalKerjaMDirId,
      @JsonKey(name: "t_jadwal_kerja.m_divisi_id") final dynamic tJadwalKerjaMDivisiId,
      @JsonKey(name: "t_jadwal_kerja.m_dept_id") final dynamic tJadwalKerjaMDeptId,
      @JsonKey(name: "t_jadwal_kerja.tipe_jam_kerja_id") final dynamic tJadwalKerjaTipeJamKerjaId,
      @JsonKey(name: "t_jadwal_kerja.keterangan") final dynamic tJadwalKerjaKeterangan,
      @JsonKey(name: "t_jadwal_kerja.status") final dynamic tJadwalKerjaStatus,
      @JsonKey(name: "t_jadwal_kerja.creator_id") final dynamic tJadwalKerjaCreatorId,
      @JsonKey(name: "t_jadwal_kerja.last_editor_id") final dynamic tJadwalKerjaLastEditorId,
      @JsonKey(name: "t_jadwal_kerja.created_at") final dynamic tJadwalKerjaCreatedAt,
      @JsonKey(name: "t_jadwal_kerja.updated_at") final dynamic tJadwalKerjaUpdatedAt,
      @JsonKey(name: "nomor_ktp") final String? nomorKtp}) = _$DataAllKaryawanImpl;

  factory _DataAllKaryawan.fromJson(Map<String, dynamic> json) =
      _$DataAllKaryawanImpl.fromJson;

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
  dynamic get DataAllKaryawanMCompId;
  @override
  @JsonKey(name: "m_dir_id")
  dynamic get DataAllKaryawanMDirId;
  @override
  @JsonKey(name: "m_divisi_id")
  int? get DataAllKaryawanMDivisiId;
  @override
  @JsonKey(name: "m_dept_id")
  int? get DataAllKaryawanMDeptId;
  @override
  @JsonKey(name: "m_zona_id")
  dynamic get DataAllKaryawanMZonaId;
  @override
  @JsonKey(name: "grading_id")
  dynamic get DataAllKaryawanGradingId;
  @override
  @JsonKey(name: "costcontre_id")
  dynamic get DataAllKaryawanCostcontreId;
  @override
  @JsonKey(name: "kode")
  String? get kode;
  @override
  @JsonKey(name: "m_posisi_id")
  int? get DataAllKaryawanMPosisiId;
  @override
  @JsonKey(name: "m_jam_kerja_id")
  dynamic get DataAllKaryawanMJamKerjaId;
  @override
  @JsonKey(name: "kode_presensi")
  String? get kodePresensi;
  @override
  @JsonKey(name: "nik")
  String? get nik;
  @override
  @JsonKey(name: "nama_depan")
  String? get namaDepan;
  @override
  @JsonKey(name: "nama_belakang")
  String? get namaBelakang;
  @override
  @JsonKey(name: "nama_lengkap")
  String? get namaLengkap;
  @override
  @JsonKey(name: "nama_panggilan")
  String? get namaPanggilan;
  @override
  @JsonKey(name: "jk_id")
  int? get DataAllKaryawanJkId;
  @override
  @JsonKey(name: "tempat_lahir")
  String? get tempatLahir;
  @override
  @JsonKey(name: "tgl_lahir")
  String? get tglLahir;
  @override
  @JsonKey(name: "provinsi_id")
  int? get DataAllKaryawanProvinsiId;
  @override
  @JsonKey(name: "kota_id")
  int? get DataAllKaryawanKotaId;
  @override
  @JsonKey(name: "kecamatan_id")
  int? get DataAllKaryawanKecamatanId;
  @override
  @JsonKey(name: "kode_pos")
  String? get kodePos;
  @override
  @JsonKey(name: "alamat_asli")
  String? get alamatAsli;
  @override
  @JsonKey(name: "alamat_domisili")
  String? get alamatDomisili;
  @override
  @JsonKey(name: "no_tlp")
  String? get noTlp;
  @override
  @JsonKey(name: "no_tlp_lainnya")
  String? get noTlpLainnya;
  @override
  @JsonKey(name: "no_darurat")
  String? get noDarurat;
  @override
  @JsonKey(name: "nama_kontak_darurat")
  String? get namaKontakDarurat;
  @override
  @JsonKey(name: "agama_id")
  int? get DataAllKaryawanAgamaId;
  @override
  @JsonKey(name: "gol_darah_id")
  int? get DataAllKaryawanGolDarahId;
  @override
  @JsonKey(name: "status_nikah_id")
  int? get DataAllKaryawanStatusNikahId;
  @override
  @JsonKey(name: "tanggungan_id")
  int? get DataAllKaryawanTanggunganId;
  @override
  @JsonKey(name: "hub_dgn_karyawan")
  String? get hubDgnKaryawan;
  @override
  @JsonKey(name: "cuti_jatah_reguler")
  dynamic get cutiJatahReguler;
  @override
  @JsonKey(name: "cuti_sisa_reguler")
  dynamic get cutiSisaReguler;
  @override
  @JsonKey(name: "cuti_panjang")
  dynamic get cutiPanjang;
  @override
  @JsonKey(name: "cuti_sisa_panjang")
  dynamic get cutiSisaPanjang;
  @override
  @JsonKey(name: "status_kary_id")
  dynamic get DataAllKaryawanStatusKaryId;
  @override
  @JsonKey(name: "lama_kontrak_awal")
  dynamic get lamaKontrakAwal;
  @override
  @JsonKey(name: "lama_kontrak_akhir")
  dynamic get lamaKontrakAkhir;
  @override
  @JsonKey(name: "tgl_masuk")
  String? get tglMasuk;
  @override
  @JsonKey(name: "tgl_berhenti")
  dynamic get tglBerhenti;
  @override
  @JsonKey(name: "alasan_berhenti")
  dynamic get alasanBerhenti;
  @override
  @JsonKey(name: "uk_baju")
  String? get ukBaju;
  @override
  @JsonKey(name: "uk_celana")
  String? get ukCelana;
  @override
  @JsonKey(name: "uk_sepatu")
  String? get ukSepatu;
  @override
  @JsonKey(name: "desc")
  dynamic get desc;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "creator_id")
  int? get DataAllKaryawanCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  int? get DataAllKaryawanLastEditorId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "m_standart_gaji_id")
  dynamic get DataAllKaryawanMStandartGajiId;
  @override
  @JsonKey(name: "periode_gaji_id")
  int? get DataAllKaryawanPeriodeGajiId;
  @override
  @JsonKey(name: "ref_id")
  dynamic get DataAllKaryawanRefId;
  @override
  @JsonKey(name: "presensi_lokasi_default_id")
  int? get DataAllKaryawanPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "exp_date_cuti")
  dynamic get expDateCuti;
  @override
  @JsonKey(name: "limit_potong")
  int? get limitPotong;
  @override
  @JsonKey(name: "atasan_id")
  int? get DataAllKaryawanAtasanId;
  @override
  @JsonKey(name: "cuti_p24")
  int? get cutiP24;
  @override
  @JsonKey(name: "cuti_sisa_p24")
  dynamic get cutiSisaP24;
  @override
  @JsonKey(name: "tipe_jam_kerja_id")
  dynamic get DataAllKaryawanTipeJamKerjaId;
  @override
  @JsonKey(name: "t_jadwal_kerja_id")
  dynamic get DataAllKaryawanTJadwalKerjaId;
  @override
  @JsonKey(name: "m_comp.id")
  dynamic get mCompId;
  @override
  @JsonKey(name: "m_comp.nama")
  dynamic get mCompNama;
  @override
  @JsonKey(name: "m_comp.is_active")
  dynamic get mCompIsActive;
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
  dynamic get mDivisiMCompId;
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
  int? get mDivisiCreatorId;
  @override
  @JsonKey(name: "m_divisi.last_editor_id")
  dynamic get mDivisiLastEditorId;
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
  String? get mDeptCreatedAt;
  @override
  @JsonKey(name: "m_dept.updated_at")
  String? get mDeptUpdatedAt;
  @override
  @JsonKey(name: "m_zona.id")
  dynamic get mZonaId;
  @override
  @JsonKey(name: "m_zona.m_comp_id")
  dynamic get mZonaMCompId;
  @override
  @JsonKey(name: "m_zona.m_dir_id")
  dynamic get mZonaMDirId;
  @override
  @JsonKey(name: "m_zona.kode")
  dynamic get mZonaKode;
  @override
  @JsonKey(name: "m_zona.nama")
  dynamic get mZonaNama;
  @override
  @JsonKey(name: "m_zona.desc")
  dynamic get mZonaDesc;
  @override
  @JsonKey(name: "m_zona.is_active")
  dynamic get mZonaIsActive;
  @override
  @JsonKey(name: "m_zona.creator_id")
  dynamic get mZonaCreatorId;
  @override
  @JsonKey(name: "m_zona.last_editor_id")
  dynamic get mZonaLastEditorId;
  @override
  @JsonKey(name: "m_zona.created_at")
  dynamic get mZonaCreatedAt;
  @override
  @JsonKey(name: "m_zona.updated_at")
  dynamic get mZonaUpdatedAt;
  @override
  @JsonKey(name: "grading.id")
  dynamic get gradingId;
  @override
  @JsonKey(name: "grading.m_comp_id")
  dynamic get gradingMCompId;
  @override
  @JsonKey(name: "grading.m_dir_id")
  dynamic get gradingMDirId;
  @override
  @JsonKey(name: "grading.group")
  dynamic get gradingGroup;
  @override
  @JsonKey(name: "grading.key")
  dynamic get gradingKey;
  @override
  @JsonKey(name: "grading.code")
  dynamic get gradingCode;
  @override
  @JsonKey(name: "grading.value")
  dynamic get gradingValue;
  @override
  @JsonKey(name: "grading.is_active")
  dynamic get gradingIsActive;
  @override
  @JsonKey(name: "grading.creator_id")
  dynamic get gradingCreatorId;
  @override
  @JsonKey(name: "grading.last_editor_id")
  dynamic get gradingLastEditorId;
  @override
  @JsonKey(name: "grading.created_at")
  dynamic get gradingCreatedAt;
  @override
  @JsonKey(name: "grading.updated_at")
  dynamic get gradingUpdatedAt;
  @override
  @JsonKey(name: "grading.value_2")
  dynamic get gradingValue2;
  @override
  @JsonKey(name: "grading.value_3")
  dynamic get gradingValue3;
  @override
  @JsonKey(name: "costcontre.id")
  dynamic get costcontreId;
  @override
  @JsonKey(name: "costcontre.m_comp_id")
  dynamic get costcontreMCompId;
  @override
  @JsonKey(name: "costcontre.m_dir_id")
  dynamic get costcontreMDirId;
  @override
  @JsonKey(name: "costcontre.group")
  dynamic get costcontreGroup;
  @override
  @JsonKey(name: "costcontre.key")
  dynamic get costcontreKey;
  @override
  @JsonKey(name: "costcontre.code")
  dynamic get costcontreCode;
  @override
  @JsonKey(name: "costcontre.value")
  dynamic get costcontreValue;
  @override
  @JsonKey(name: "costcontre.is_active")
  dynamic get costcontreIsActive;
  @override
  @JsonKey(name: "costcontre.creator_id")
  dynamic get costcontreCreatorId;
  @override
  @JsonKey(name: "costcontre.last_editor_id")
  dynamic get costcontreLastEditorId;
  @override
  @JsonKey(name: "costcontre.created_at")
  dynamic get costcontreCreatedAt;
  @override
  @JsonKey(name: "costcontre.updated_at")
  dynamic get costcontreUpdatedAt;
  @override
  @JsonKey(name: "costcontre.value_2")
  dynamic get costcontreValue2;
  @override
  @JsonKey(name: "costcontre.value_3")
  dynamic get costcontreValue3;
  @override
  @JsonKey(name: "m_posisi.id")
  int? get mPosisiId;
  @override
  @JsonKey(name: "m_posisi.m_comp_id")
  dynamic get mPosisiMCompId;
  @override
  @JsonKey(name: "m_posisi.m_dir_id")
  dynamic get mPosisiMDirId;
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
  dynamic get mPosisiDescKerja2;
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
  dynamic get mPosisiTipeBpjsId;
  @override
  @JsonKey(name: "m_posisi.potongan_bpjs")
  dynamic get mPosisiPotonganBpjs;
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
  @JsonKey(name: "m_jam_kerja.id")
  dynamic get mJamKerjaId;
  @override
  @JsonKey(name: "m_jam_kerja.m_comp_id")
  dynamic get mJamKerjaMCompId;
  @override
  @JsonKey(name: "m_jam_kerja.m_dir_id")
  dynamic get mJamKerjaMDirId;
  @override
  @JsonKey(name: "m_jam_kerja.kode")
  dynamic get mJamKerjaKode;
  @override
  @JsonKey(name: "m_jam_kerja.tipe_jam_kerja_id")
  dynamic get mJamKerjaTipeJamKerjaId;
  @override
  @JsonKey(name: "m_jam_kerja.waktu_mulai")
  dynamic get mJamKerjaWaktuMulai;
  @override
  @JsonKey(name: "m_jam_kerja.waktu_akhir")
  dynamic get mJamKerjaWaktuAkhir;
  @override
  @JsonKey(name: "m_jam_kerja.is_hari_berikutnya")
  dynamic get mJamKerjaIsHariBerikutnya;
  @override
  @JsonKey(name: "m_jam_kerja.desc")
  dynamic get mJamKerjaDesc;
  @override
  @JsonKey(name: "m_jam_kerja.is_active")
  dynamic get mJamKerjaIsActive;
  @override
  @JsonKey(name: "m_jam_kerja.creator_id")
  dynamic get mJamKerjaCreatorId;
  @override
  @JsonKey(name: "m_jam_kerja.last_editor_id")
  dynamic get mJamKerjaLastEditorId;
  @override
  @JsonKey(name: "m_jam_kerja.created_at")
  dynamic get mJamKerjaCreatedAt;
  @override
  @JsonKey(name: "m_jam_kerja.updated_at")
  dynamic get mJamKerjaUpdatedAt;
  @override
  @JsonKey(name: "jk.id")
  int? get jkId;
  @override
  @JsonKey(name: "jk.m_comp_id")
  int? get jkMCompId;
  @override
  @JsonKey(name: "jk.m_dir_id")
  dynamic get jkMDirId;
  @override
  @JsonKey(name: "jk.group")
  String? get jkGroup;
  @override
  @JsonKey(name: "jk.key")
  String? get jkKey;
  @override
  @JsonKey(name: "jk.code")
  String? get jkCode;
  @override
  @JsonKey(name: "jk.value")
  String? get jkValue;
  @override
  @JsonKey(name: "jk.is_active")
  bool? get jkIsActive;
  @override
  @JsonKey(name: "jk.creator_id")
  dynamic get jkCreatorId;
  @override
  @JsonKey(name: "jk.last_editor_id")
  dynamic get jkLastEditorId;
  @override
  @JsonKey(name: "jk.created_at")
  String? get jkCreatedAt;
  @override
  @JsonKey(name: "jk.updated_at")
  String? get jkUpdatedAt;
  @override
  @JsonKey(name: "jk.value_2")
  dynamic get jkValue2;
  @override
  @JsonKey(name: "jk.value_3")
  dynamic get jkValue3;
  @override
  @JsonKey(name: "provinsi.id")
  int? get provinsiId;
  @override
  @JsonKey(name: "provinsi.m_comp_id")
  int? get provinsiMCompId;
  @override
  @JsonKey(name: "provinsi.m_dir_id")
  dynamic get provinsiMDirId;
  @override
  @JsonKey(name: "provinsi.group")
  String? get provinsiGroup;
  @override
  @JsonKey(name: "provinsi.key")
  dynamic get provinsiKey;
  @override
  @JsonKey(name: "provinsi.code")
  dynamic get provinsiCode;
  @override
  @JsonKey(name: "provinsi.value")
  String? get provinsiValue;
  @override
  @JsonKey(name: "provinsi.is_active")
  bool? get provinsiIsActive;
  @override
  @JsonKey(name: "provinsi.creator_id")
  dynamic get provinsiCreatorId;
  @override
  @JsonKey(name: "provinsi.last_editor_id")
  dynamic get provinsiLastEditorId;
  @override
  @JsonKey(name: "provinsi.created_at")
  dynamic get provinsiCreatedAt;
  @override
  @JsonKey(name: "provinsi.updated_at")
  String? get provinsiUpdatedAt;
  @override
  @JsonKey(name: "provinsi.value_2")
  dynamic get provinsiValue2;
  @override
  @JsonKey(name: "provinsi.value_3")
  dynamic get provinsiValue3;
  @override
  @JsonKey(name: "kota.id")
  int? get kotaId;
  @override
  @JsonKey(name: "kota.m_comp_id")
  int? get kotaMCompId;
  @override
  @JsonKey(name: "kota.m_dir_id")
  dynamic get kotaMDirId;
  @override
  @JsonKey(name: "kota.group")
  String? get kotaGroup;
  @override
  @JsonKey(name: "kota.key")
  String? get kotaKey;
  @override
  @JsonKey(name: "kota.code")
  dynamic get kotaCode;
  @override
  @JsonKey(name: "kota.value")
  String? get kotaValue;
  @override
  @JsonKey(name: "kota.is_active")
  bool? get kotaIsActive;
  @override
  @JsonKey(name: "kota.creator_id")
  dynamic get kotaCreatorId;
  @override
  @JsonKey(name: "kota.last_editor_id")
  dynamic get kotaLastEditorId;
  @override
  @JsonKey(name: "kota.created_at")
  dynamic get kotaCreatedAt;
  @override
  @JsonKey(name: "kota.updated_at")
  dynamic get kotaUpdatedAt;
  @override
  @JsonKey(name: "kota.value_2")
  dynamic get kotaValue2;
  @override
  @JsonKey(name: "kota.value_3")
  dynamic get kotaValue3;
  @override
  @JsonKey(name: "kecamatan.id")
  int? get kecamatanId;
  @override
  @JsonKey(name: "kecamatan.m_comp_id")
  int? get kecamatanMCompId;
  @override
  @JsonKey(name: "kecamatan.m_dir_id")
  dynamic get kecamatanMDirId;
  @override
  @JsonKey(name: "kecamatan.group")
  String? get kecamatanGroup;
  @override
  @JsonKey(name: "kecamatan.key")
  String? get kecamatanKey;
  @override
  @JsonKey(name: "kecamatan.code")
  dynamic get kecamatanCode;
  @override
  @JsonKey(name: "kecamatan.value")
  String? get kecamatanValue;
  @override
  @JsonKey(name: "kecamatan.is_active")
  bool? get kecamatanIsActive;
  @override
  @JsonKey(name: "kecamatan.creator_id")
  dynamic get kecamatanCreatorId;
  @override
  @JsonKey(name: "kecamatan.last_editor_id")
  dynamic get kecamatanLastEditorId;
  @override
  @JsonKey(name: "kecamatan.created_at")
  dynamic get kecamatanCreatedAt;
  @override
  @JsonKey(name: "kecamatan.updated_at")
  dynamic get kecamatanUpdatedAt;
  @override
  @JsonKey(name: "kecamatan.value_2")
  dynamic get kecamatanValue2;
  @override
  @JsonKey(name: "kecamatan.value_3")
  dynamic get kecamatanValue3;
  @override
  @JsonKey(name: "agama.id")
  int? get agamaId;
  @override
  @JsonKey(name: "agama.m_comp_id")
  int? get agamaMCompId;
  @override
  @JsonKey(name: "agama.m_dir_id")
  dynamic get agamaMDirId;
  @override
  @JsonKey(name: "agama.group")
  String? get agamaGroup;
  @override
  @JsonKey(name: "agama.key")
  String? get agamaKey;
  @override
  @JsonKey(name: "agama.code")
  String? get agamaCode;
  @override
  @JsonKey(name: "agama.value")
  String? get agamaValue;
  @override
  @JsonKey(name: "agama.is_active")
  bool? get agamaIsActive;
  @override
  @JsonKey(name: "agama.creator_id")
  dynamic get agamaCreatorId;
  @override
  @JsonKey(name: "agama.last_editor_id")
  dynamic get agamaLastEditorId;
  @override
  @JsonKey(name: "agama.created_at")
  String? get agamaCreatedAt;
  @override
  @JsonKey(name: "agama.updated_at")
  String? get agamaUpdatedAt;
  @override
  @JsonKey(name: "agama.value_2")
  dynamic get agamaValue2;
  @override
  @JsonKey(name: "agama.value_3")
  dynamic get agamaValue3;
  @override
  @JsonKey(name: "gol_darah.id")
  int? get golDarahId;
  @override
  @JsonKey(name: "gol_darah.m_comp_id")
  int? get golDarahMCompId;
  @override
  @JsonKey(name: "gol_darah.m_dir_id")
  dynamic get golDarahMDirId;
  @override
  @JsonKey(name: "gol_darah.group")
  String? get golDarahGroup;
  @override
  @JsonKey(name: "gol_darah.key")
  String? get golDarahKey;
  @override
  @JsonKey(name: "gol_darah.code")
  String? get golDarahCode;
  @override
  @JsonKey(name: "gol_darah.value")
  String? get golDarahValue;
  @override
  @JsonKey(name: "gol_darah.is_active")
  bool? get golDarahIsActive;
  @override
  @JsonKey(name: "gol_darah.creator_id")
  dynamic get golDarahCreatorId;
  @override
  @JsonKey(name: "gol_darah.last_editor_id")
  dynamic get golDarahLastEditorId;
  @override
  @JsonKey(name: "gol_darah.created_at")
  String? get golDarahCreatedAt;
  @override
  @JsonKey(name: "gol_darah.updated_at")
  String? get golDarahUpdatedAt;
  @override
  @JsonKey(name: "gol_darah.value_2")
  dynamic get golDarahValue2;
  @override
  @JsonKey(name: "gol_darah.value_3")
  dynamic get golDarahValue3;
  @override
  @JsonKey(name: "status_nikah.id")
  int? get statusNikahId;
  @override
  @JsonKey(name: "status_nikah.m_comp_id")
  int? get statusNikahMCompId;
  @override
  @JsonKey(name: "status_nikah.m_dir_id")
  dynamic get statusNikahMDirId;
  @override
  @JsonKey(name: "status_nikah.group")
  String? get statusNikahGroup;
  @override
  @JsonKey(name: "status_nikah.key")
  String? get statusNikahKey;
  @override
  @JsonKey(name: "status_nikah.code")
  String? get statusNikahCode;
  @override
  @JsonKey(name: "status_nikah.value")
  String? get statusNikahValue;
  @override
  @JsonKey(name: "status_nikah.is_active")
  bool? get statusNikahIsActive;
  @override
  @JsonKey(name: "status_nikah.creator_id")
  dynamic get statusNikahCreatorId;
  @override
  @JsonKey(name: "status_nikah.last_editor_id")
  dynamic get statusNikahLastEditorId;
  @override
  @JsonKey(name: "status_nikah.created_at")
  String? get statusNikahCreatedAt;
  @override
  @JsonKey(name: "status_nikah.updated_at")
  String? get statusNikahUpdatedAt;
  @override
  @JsonKey(name: "status_nikah.value_2")
  dynamic get statusNikahValue2;
  @override
  @JsonKey(name: "status_nikah.value_3")
  dynamic get statusNikahValue3;
  @override
  @JsonKey(name: "tanggungan.id")
  int? get tanggunganId;
  @override
  @JsonKey(name: "tanggungan.m_comp_id")
  int? get tanggunganMCompId;
  @override
  @JsonKey(name: "tanggungan.m_dir_id")
  int? get tanggunganMDirId;
  @override
  @JsonKey(name: "tanggungan.group")
  String? get tanggunganGroup;
  @override
  @JsonKey(name: "tanggungan.key")
  String? get tanggunganKey;
  @override
  @JsonKey(name: "tanggungan.code")
  String? get tanggunganCode;
  @override
  @JsonKey(name: "tanggungan.value")
  String? get tanggunganValue;
  @override
  @JsonKey(name: "tanggungan.is_active")
  bool? get tanggunganIsActive;
  @override
  @JsonKey(name: "tanggungan.creator_id")
  dynamic get tanggunganCreatorId;
  @override
  @JsonKey(name: "tanggungan.last_editor_id")
  dynamic get tanggunganLastEditorId;
  @override
  @JsonKey(name: "tanggungan.created_at")
  String? get tanggunganCreatedAt;
  @override
  @JsonKey(name: "tanggungan.updated_at")
  String? get tanggunganUpdatedAt;
  @override
  @JsonKey(name: "tanggungan.value_2")
  String? get tanggunganValue2;
  @override
  @JsonKey(name: "tanggungan.value_3")
  dynamic get tanggunganValue3;
  @override
  @JsonKey(name: "status_kary.id")
  dynamic get statusKaryId;
  @override
  @JsonKey(name: "status_kary.m_comp_id")
  dynamic get statusKaryMCompId;
  @override
  @JsonKey(name: "status_kary.m_dir_id")
  dynamic get statusKaryMDirId;
  @override
  @JsonKey(name: "status_kary.group")
  dynamic get statusKaryGroup;
  @override
  @JsonKey(name: "status_kary.key")
  dynamic get statusKaryKey;
  @override
  @JsonKey(name: "status_kary.code")
  dynamic get statusKaryCode;
  @override
  @JsonKey(name: "status_kary.value")
  dynamic get statusKaryValue;
  @override
  @JsonKey(name: "status_kary.is_active")
  dynamic get statusKaryIsActive;
  @override
  @JsonKey(name: "status_kary.creator_id")
  dynamic get statusKaryCreatorId;
  @override
  @JsonKey(name: "status_kary.last_editor_id")
  dynamic get statusKaryLastEditorId;
  @override
  @JsonKey(name: "status_kary.created_at")
  dynamic get statusKaryCreatedAt;
  @override
  @JsonKey(name: "status_kary.updated_at")
  dynamic get statusKaryUpdatedAt;
  @override
  @JsonKey(name: "status_kary.value_2")
  dynamic get statusKaryValue2;
  @override
  @JsonKey(name: "status_kary.value_3")
  dynamic get statusKaryValue3;
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
  dynamic get lastEditorLastEditorId;
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
  @JsonKey(name: "m_standart_gaji.id")
  dynamic get mStandartGajiId;
  @override
  @JsonKey(name: "m_standart_gaji.m_comp_id")
  dynamic get mStandartGajiMCompId;
  @override
  @JsonKey(name: "m_standart_gaji.m_dir_id")
  dynamic get mStandartGajiMDirId;
  @override
  @JsonKey(name: "m_standart_gaji.kode")
  dynamic get mStandartGajiKode;
  @override
  @JsonKey(name: "m_standart_gaji.m_divisi_id")
  dynamic get mStandartGajiMDivisiId;
  @override
  @JsonKey(name: "m_standart_gaji.m_dept_id")
  dynamic get mStandartGajiMDeptId;
  @override
  @JsonKey(name: "m_standart_gaji.m_zona_id")
  dynamic get mStandartGajiMZonaId;
  @override
  @JsonKey(name: "m_standart_gaji.m_posisi_id")
  dynamic get mStandartGajiMPosisiId;
  @override
  @JsonKey(name: "m_standart_gaji.grading_id")
  dynamic get mStandartGajiGradingId;
  @override
  @JsonKey(name: "m_standart_gaji.gaji_pokok")
  dynamic get mStandartGajiGajiPokok;
  @override
  @JsonKey(name: "m_standart_gaji.gaji_pokok_periode")
  dynamic get mStandartGajiGajiPokokPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.uang_saku")
  dynamic get mStandartGajiUangSaku;
  @override
  @JsonKey(name: "m_standart_gaji.uang_saku_periode")
  dynamic get mStandartGajiUangSakuPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_posisi")
  dynamic get mStandartGajiTunjanganPosisi;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_posisi_periode")
  dynamic get mStandartGajiTunjanganPosisiPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_id")
  dynamic get mStandartGajiTunjanganKemahalanId;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_kemahalan_periode")
  dynamic get mStandartGajiTunjanganKemahalanPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.uang_makan")
  dynamic get mStandartGajiUangMakan;
  @override
  @JsonKey(name: "m_standart_gaji.uang_makan_periode")
  dynamic get mStandartGajiUangMakanPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_tetap")
  dynamic get mStandartGajiTunjanganTetap;
  @override
  @JsonKey(name: "m_standart_gaji.tunjangan_tetap_periode")
  dynamic get mStandartGajiTunjanganTetapPeriode;
  @override
  @JsonKey(name: "m_standart_gaji.desc")
  dynamic get mStandartGajiDesc;
  @override
  @JsonKey(name: "m_standart_gaji.is_active")
  dynamic get mStandartGajiIsActive;
  @override
  @JsonKey(name: "m_standart_gaji.creator_id")
  dynamic get mStandartGajiCreatorId;
  @override
  @JsonKey(name: "m_standart_gaji.last_editor_id")
  dynamic get mStandartGajiLastEditorId;
  @override
  @JsonKey(name: "m_standart_gaji.created_at")
  dynamic get mStandartGajiCreatedAt;
  @override
  @JsonKey(name: "m_standart_gaji.updated_at")
  dynamic get mStandartGajiUpdatedAt;
  @override
  @JsonKey(name: "periode_gaji.id")
  int? get periodeGajiId;
  @override
  @JsonKey(name: "periode_gaji.m_comp_id")
  int? get periodeGajiMCompId;
  @override
  @JsonKey(name: "periode_gaji.m_dir_id")
  dynamic get periodeGajiMDirId;
  @override
  @JsonKey(name: "periode_gaji.group")
  String? get periodeGajiGroup;
  @override
  @JsonKey(name: "periode_gaji.key")
  String? get periodeGajiKey;
  @override
  @JsonKey(name: "periode_gaji.code")
  String? get periodeGajiCode;
  @override
  @JsonKey(name: "periode_gaji.value")
  String? get periodeGajiValue;
  @override
  @JsonKey(name: "periode_gaji.is_active")
  bool? get periodeGajiIsActive;
  @override
  @JsonKey(name: "periode_gaji.creator_id")
  dynamic get periodeGajiCreatorId;
  @override
  @JsonKey(name: "periode_gaji.last_editor_id")
  dynamic get periodeGajiLastEditorId;
  @override
  @JsonKey(name: "periode_gaji.created_at")
  String? get periodeGajiCreatedAt;
  @override
  @JsonKey(name: "periode_gaji.updated_at")
  String? get periodeGajiUpdatedAt;
  @override
  @JsonKey(name: "periode_gaji.value_2")
  dynamic get periodeGajiValue2;
  @override
  @JsonKey(name: "periode_gaji.value_3")
  dynamic get periodeGajiValue3;
  @override
  @JsonKey(name: "ref.id")
  dynamic get refId;
  @override
  @JsonKey(name: "ref.nomor")
  dynamic get refNomor;
  @override
  @JsonKey(name: "ref.m_comp_id")
  dynamic get refMCompId;
  @override
  @JsonKey(name: "ref.m_dir_id")
  dynamic get refMDirId;
  @override
  @JsonKey(name: "ref.nama_pelamar")
  dynamic get refNamaPelamar;
  @override
  @JsonKey(name: "ref.ktp_no")
  dynamic get refKtpNo;
  @override
  @JsonKey(name: "ref.tanggal")
  dynamic get refTanggal;
  @override
  @JsonKey(name: "ref.ref")
  dynamic get refRef;
  @override
  @JsonKey(name: "ref.telp")
  dynamic get refTelp;
  @override
  @JsonKey(name: "ref.jk_id")
  dynamic get refJkId;
  @override
  @JsonKey(name: "ref.tgl_lahir")
  dynamic get refTglLahir;
  @override
  @JsonKey(name: "ref.salary")
  dynamic get refSalary;
  @override
  @JsonKey(name: "ref.deskripsi")
  dynamic get refDeskripsi;
  @override
  @JsonKey(name: "ref.status")
  dynamic get refStatus;
  @override
  @JsonKey(name: "ref.creator_id")
  dynamic get refCreatorId;
  @override
  @JsonKey(name: "ref.last_editor_id")
  dynamic get refLastEditorId;
  @override
  @JsonKey(name: "ref.created_at")
  dynamic get refCreatedAt;
  @override
  @JsonKey(name: "ref.updated_at")
  dynamic get refUpdatedAt;
  @override
  @JsonKey(name: "ref.m_divisi_id")
  dynamic get refMDivisiId;
  @override
  @JsonKey(name: "ref.m_dept_id")
  dynamic get refMDeptId;
  @override
  @JsonKey(name: "ref.m_posisi_id")
  dynamic get refMPosisiId;
  @override
  @JsonKey(name: "ref.tempat_lahir")
  dynamic get refTempatLahir;
  @override
  @JsonKey(name: "ref.t_loker_id")
  dynamic get refTLokerId;
  @override
  @JsonKey(name: "presensi_lokasi_default.id")
  int? get presensiLokasiDefaultId;
  @override
  @JsonKey(name: "presensi_lokasi_default.comp_id")
  int? get presensiLokasiDefaultCompId;
  @override
  @JsonKey(name: "presensi_lokasi_default.default_user_id")
  dynamic get presensiLokasiDefaultDefaultUserId;
  @override
  @JsonKey(name: "presensi_lokasi_default.nama")
  String? get presensiLokasiDefaultNama;
  @override
  @JsonKey(name: "presensi_lokasi_default.lat")
  String? get presensiLokasiDefaultLat;
  @override
  @JsonKey(name: "presensi_lokasi_default.long")
  String? get presensiLokasiDefaultLong;
  @override
  @JsonKey(name: "presensi_lokasi_default.is_active")
  bool? get presensiLokasiDefaultIsActive;
  @override
  @JsonKey(name: "presensi_lokasi_default.creator_id")
  int? get presensiLokasiDefaultCreatorId;
  @override
  @JsonKey(name: "presensi_lokasi_default.last_editor_id")
  dynamic get presensiLokasiDefaultLastEditorId;
  @override
  @JsonKey(name: "presensi_lokasi_default.created_at")
  String? get presensiLokasiDefaultCreatedAt;
  @override
  @JsonKey(name: "presensi_lokasi_default.updated_at")
  dynamic get presensiLokasiDefaultUpdatedAt;
  @override
  @JsonKey(name: "atasan.id")
  dynamic get atasanId;
  @override
  @JsonKey(name: "atasan.m_comp_id")
  dynamic get atasanMCompId;
  @override
  @JsonKey(name: "atasan.m_dir_id")
  dynamic get atasanMDirId;
  @override
  @JsonKey(name: "atasan.m_divisi_id")
  dynamic get atasanMDivisiId;
  @override
  @JsonKey(name: "atasan.m_dept_id")
  dynamic get atasanMDeptId;
  @override
  @JsonKey(name: "atasan.m_zona_id")
  dynamic get atasanMZonaId;
  @override
  @JsonKey(name: "atasan.grading_id")
  dynamic get atasanGradingId;
  @override
  @JsonKey(name: "atasan.costcontre_id")
  dynamic get atasanCostcontreId;
  @override
  @JsonKey(name: "atasan.kode")
  dynamic get atasanKode;
  @override
  @JsonKey(name: "atasan.m_posisi_id")
  dynamic get atasanMPosisiId;
  @override
  @JsonKey(name: "atasan.m_jam_kerja_id")
  dynamic get atasanMJamKerjaId;
  @override
  @JsonKey(name: "atasan.kode_presensi")
  dynamic get atasanKodePresensi;
  @override
  @JsonKey(name: "atasan.nik")
  dynamic get atasanNik;
  @override
  @JsonKey(name: "atasan.nama_depan")
  dynamic get atasanNamaDepan;
  @override
  @JsonKey(name: "atasan.nama_belakang")
  dynamic get atasanNamaBelakang;
  @override
  @JsonKey(name: "atasan.nama_lengkap")
  dynamic get atasanNamaLengkap;
  @override
  @JsonKey(name: "atasan.nama_panggilan")
  dynamic get atasanNamaPanggilan;
  @override
  @JsonKey(name: "atasan.jk_id")
  dynamic get atasanJkId;
  @override
  @JsonKey(name: "atasan.tempat_lahir")
  dynamic get atasanTempatLahir;
  @override
  @JsonKey(name: "atasan.tgl_lahir")
  dynamic get atasanTglLahir;
  @override
  @JsonKey(name: "atasan.provinsi_id")
  dynamic get atasanProvinsiId;
  @override
  @JsonKey(name: "atasan.kota_id")
  dynamic get atasanKotaId;
  @override
  @JsonKey(name: "atasan.kecamatan_id")
  dynamic get atasanKecamatanId;
  @override
  @JsonKey(name: "atasan.kode_pos")
  dynamic get atasanKodePos;
  @override
  @JsonKey(name: "atasan.alamat_asli")
  dynamic get atasanAlamatAsli;
  @override
  @JsonKey(name: "atasan.alamat_domisili")
  dynamic get atasanAlamatDomisili;
  @override
  @JsonKey(name: "atasan.no_tlp")
  dynamic get atasanNoTlp;
  @override
  @JsonKey(name: "atasan.no_tlp_lainnya")
  dynamic get atasanNoTlpLainnya;
  @override
  @JsonKey(name: "atasan.no_darurat")
  dynamic get atasanNoDarurat;
  @override
  @JsonKey(name: "atasan.nama_kontak_darurat")
  dynamic get atasanNamaKontakDarurat;
  @override
  @JsonKey(name: "atasan.agama_id")
  dynamic get atasanAgamaId;
  @override
  @JsonKey(name: "atasan.gol_darah_id")
  dynamic get atasanGolDarahId;
  @override
  @JsonKey(name: "atasan.status_nikah_id")
  dynamic get atasanStatusNikahId;
  @override
  @JsonKey(name: "atasan.tanggungan_id")
  dynamic get atasanTanggunganId;
  @override
  @JsonKey(name: "atasan.hub_dgn_karyawan")
  dynamic get atasanHubDgnKaryawan;
  @override
  @JsonKey(name: "atasan.cuti_jatah_reguler")
  dynamic get atasanCutiJatahReguler;
  @override
  @JsonKey(name: "atasan.cuti_sisa_reguler")
  dynamic get atasanCutiSisaReguler;
  @override
  @JsonKey(name: "atasan.cuti_panjang")
  dynamic get atasanCutiPanjang;
  @override
  @JsonKey(name: "atasan.cuti_sisa_panjang")
  dynamic get atasanCutiSisaPanjang;
  @override
  @JsonKey(name: "atasan.status_kary_id")
  dynamic get atasanStatusKaryId;
  @override
  @JsonKey(name: "atasan.lama_kontrak_awal")
  dynamic get atasanLamaKontrakAwal;
  @override
  @JsonKey(name: "atasan.lama_kontrak_akhir")
  dynamic get atasanLamaKontrakAkhir;
  @override
  @JsonKey(name: "atasan.tgl_masuk")
  dynamic get atasanTglMasuk;
  @override
  @JsonKey(name: "atasan.tgl_berhenti")
  dynamic get atasanTglBerhenti;
  @override
  @JsonKey(name: "atasan.alasan_berhenti")
  dynamic get atasanAlasanBerhenti;
  @override
  @JsonKey(name: "atasan.uk_baju")
  dynamic get atasanUkBaju;
  @override
  @JsonKey(name: "atasan.uk_celana")
  dynamic get atasanUkCelana;
  @override
  @JsonKey(name: "atasan.uk_sepatu")
  dynamic get atasanUkSepatu;
  @override
  @JsonKey(name: "atasan.desc")
  dynamic get atasanDesc;
  @override
  @JsonKey(name: "atasan.is_active")
  dynamic get atasanIsActive;
  @override
  @JsonKey(name: "atasan.creator_id")
  dynamic get atasanCreatorId;
  @override
  @JsonKey(name: "atasan.last_editor_id")
  dynamic get atasanLastEditorId;
  @override
  @JsonKey(name: "atasan.created_at")
  dynamic get atasanCreatedAt;
  @override
  @JsonKey(name: "atasan.updated_at")
  dynamic get atasanUpdatedAt;
  @override
  @JsonKey(name: "atasan.m_standart_gaji_id")
  dynamic get atasanMStandartGajiId;
  @override
  @JsonKey(name: "atasan.periode_gaji_id")
  dynamic get atasanPeriodeGajiId;
  @override
  @JsonKey(name: "atasan.ref_id")
  dynamic get atasanRefId;
  @override
  @JsonKey(name: "atasan.presensi_lokasi_default_id")
  dynamic get atasanPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "atasan.exp_date_cuti")
  dynamic get atasanExpDateCuti;
  @override
  @JsonKey(name: "atasan.limit_potong")
  dynamic get atasanLimitPotong;
  @override
  @JsonKey(name: "atasan.atasan_id")
  dynamic get atasanAtasanId;
  @override
  @JsonKey(name: "atasan.cuti_p24")
  dynamic get atasanCutiP24;
  @override
  @JsonKey(name: "atasan.cuti_sisa_p24")
  dynamic get atasanCutiSisaP24;
  @override
  @JsonKey(name: "atasan.tipe_jam_kerja_id")
  dynamic get atasanTipeJamKerjaId;
  @override
  @JsonKey(name: "atasan.t_jadwal_kerja_id")
  dynamic get atasanTJadwalKerjaId;
  @override
  @JsonKey(name: "tipe_jam_kerja.id")
  dynamic get tipeJamKerjaId;
  @override
  @JsonKey(name: "tipe_jam_kerja.m_comp_id")
  dynamic get tipeJamKerjaMCompId;
  @override
  @JsonKey(name: "tipe_jam_kerja.m_dir_id")
  dynamic get tipeJamKerjaMDirId;
  @override
  @JsonKey(name: "tipe_jam_kerja.group")
  dynamic get tipeJamKerjaGroup;
  @override
  @JsonKey(name: "tipe_jam_kerja.key")
  dynamic get tipeJamKerjaKey;
  @override
  @JsonKey(name: "tipe_jam_kerja.code")
  dynamic get tipeJamKerjaCode;
  @override
  @JsonKey(name: "tipe_jam_kerja.value")
  dynamic get tipeJamKerjaValue;
  @override
  @JsonKey(name: "tipe_jam_kerja.is_active")
  dynamic get tipeJamKerjaIsActive;
  @override
  @JsonKey(name: "tipe_jam_kerja.creator_id")
  dynamic get tipeJamKerjaCreatorId;
  @override
  @JsonKey(name: "tipe_jam_kerja.last_editor_id")
  dynamic get tipeJamKerjaLastEditorId;
  @override
  @JsonKey(name: "tipe_jam_kerja.created_at")
  dynamic get tipeJamKerjaCreatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.updated_at")
  dynamic get tipeJamKerjaUpdatedAt;
  @override
  @JsonKey(name: "tipe_jam_kerja.value_2")
  dynamic get tipeJamKerjaValue2;
  @override
  @JsonKey(name: "tipe_jam_kerja.value_3")
  dynamic get tipeJamKerjaValue3;
  @override
  @JsonKey(name: "t_jadwal_kerja.id")
  dynamic get tJadwalKerjaId;
  @override
  @JsonKey(name: "t_jadwal_kerja.nomor")
  dynamic get tJadwalKerjaNomor;
  @override
  @JsonKey(name: "t_jadwal_kerja.m_comp_id")
  dynamic get tJadwalKerjaMCompId;
  @override
  @JsonKey(name: "t_jadwal_kerja.m_dir_id")
  dynamic get tJadwalKerjaMDirId;
  @override
  @JsonKey(name: "t_jadwal_kerja.m_divisi_id")
  dynamic get tJadwalKerjaMDivisiId;
  @override
  @JsonKey(name: "t_jadwal_kerja.m_dept_id")
  dynamic get tJadwalKerjaMDeptId;
  @override
  @JsonKey(name: "t_jadwal_kerja.tipe_jam_kerja_id")
  dynamic get tJadwalKerjaTipeJamKerjaId;
  @override
  @JsonKey(name: "t_jadwal_kerja.keterangan")
  dynamic get tJadwalKerjaKeterangan;
  @override
  @JsonKey(name: "t_jadwal_kerja.status")
  dynamic get tJadwalKerjaStatus;
  @override
  @JsonKey(name: "t_jadwal_kerja.creator_id")
  dynamic get tJadwalKerjaCreatorId;
  @override
  @JsonKey(name: "t_jadwal_kerja.last_editor_id")
  dynamic get tJadwalKerjaLastEditorId;
  @override
  @JsonKey(name: "t_jadwal_kerja.created_at")
  dynamic get tJadwalKerjaCreatedAt;
  @override
  @JsonKey(name: "t_jadwal_kerja.updated_at")
  dynamic get tJadwalKerjaUpdatedAt;
  @override
  @JsonKey(name: "nomor_ktp")
  String? get nomorKtp;
  @override
  @JsonKey(ignore: true)
  _$$DataAllKaryawanImplCopyWith<_$DataAllKaryawanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

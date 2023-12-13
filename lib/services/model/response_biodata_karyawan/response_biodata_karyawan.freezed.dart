// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_biodata_karyawan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseBiodataKaryawan _$ResponseBiodataKaryawanFromJson(
    Map<String, dynamic> json) {
  return _ResponseBiodataKaryawan.fromJson(json);
}

/// @nodoc
mixin _$ResponseBiodataKaryawan {
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Biodata? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBiodataKaryawanCopyWith<ResponseBiodataKaryawan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBiodataKaryawanCopyWith<$Res> {
  factory $ResponseBiodataKaryawanCopyWith(ResponseBiodataKaryawan value,
          $Res Function(ResponseBiodataKaryawan) then) =
      _$ResponseBiodataKaryawanCopyWithImpl<$Res, ResponseBiodataKaryawan>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Biodata? data});

  $BiodataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseBiodataKaryawanCopyWithImpl<$Res,
        $Val extends ResponseBiodataKaryawan>
    implements $ResponseBiodataKaryawanCopyWith<$Res> {
  _$ResponseBiodataKaryawanCopyWithImpl(this._value, this._then);

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
              as Biodata?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BiodataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BiodataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseBiodataKaryawanImplCopyWith<$Res>
    implements $ResponseBiodataKaryawanCopyWith<$Res> {
  factory _$$ResponseBiodataKaryawanImplCopyWith(
          _$ResponseBiodataKaryawanImpl value,
          $Res Function(_$ResponseBiodataKaryawanImpl) then) =
      __$$ResponseBiodataKaryawanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Biodata? data});

  @override
  $BiodataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseBiodataKaryawanImplCopyWithImpl<$Res>
    extends _$ResponseBiodataKaryawanCopyWithImpl<$Res,
        _$ResponseBiodataKaryawanImpl>
    implements _$$ResponseBiodataKaryawanImplCopyWith<$Res> {
  __$$ResponseBiodataKaryawanImplCopyWithImpl(
      _$ResponseBiodataKaryawanImpl _value,
      $Res Function(_$ResponseBiodataKaryawanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseBiodataKaryawanImpl(
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
              as Biodata?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBiodataKaryawanImpl implements _ResponseBiodataKaryawan {
  const _$ResponseBiodataKaryawanImpl(
      {@JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$ResponseBiodataKaryawanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBiodataKaryawanImplFromJson(json);

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
  final Biodata? data;

  @override
  String toString() {
    return 'ResponseBiodataKaryawan(timestamp: $timestamp, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBiodataKaryawanImpl &&
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
  _$$ResponseBiodataKaryawanImplCopyWith<_$ResponseBiodataKaryawanImpl>
      get copyWith => __$$ResponseBiodataKaryawanImplCopyWithImpl<
          _$ResponseBiodataKaryawanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBiodataKaryawanImplToJson(
      this,
    );
  }
}

abstract class _ResponseBiodataKaryawan implements ResponseBiodataKaryawan {
  const factory _ResponseBiodataKaryawan(
          {@JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final Biodata? data}) =
      _$ResponseBiodataKaryawanImpl;

  factory _ResponseBiodataKaryawan.fromJson(Map<String, dynamic> json) =
      _$ResponseBiodataKaryawanImpl.fromJson;

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
  Biodata? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBiodataKaryawanImplCopyWith<_$ResponseBiodataKaryawanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Biodata _$BiodataFromJson(Map<String, dynamic> json) {
  return _Biodata.fromJson(json);
}

/// @nodoc
mixin _$Biodata {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get mCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get mDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_divisi_id")
  int? get mDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dept_id")
  int? get mDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_zona_id")
  int? get mZonaId => throw _privateConstructorUsedError;
  @JsonKey(name: "grading_id")
  dynamic get gradingId => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre_id")
  int? get costcontreId => throw _privateConstructorUsedError;
  @JsonKey(name: "kode")
  String? get kode => throw _privateConstructorUsedError;
  @JsonKey(name: "m_posisi_id")
  int? get mPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_jam_kerja_id")
  int? get mJamKerjaId => throw _privateConstructorUsedError;
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
  int? get jkId => throw _privateConstructorUsedError;
  @JsonKey(name: "tempat_lahir")
  String? get tempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_lahir")
  DateTime? get tglLahir => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi_id")
  int? get provinsiId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_id")
  int? get kotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan_id")
  int? get kecamatanId => throw _privateConstructorUsedError;
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
  int? get agamaId => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah_id")
  int? get golDarahId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah_id")
  int? get statusNikahId => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan_id")
  int? get tanggunganId => throw _privateConstructorUsedError;
  @JsonKey(name: "hub_dgn_karyawan")
  String? get hubDgnKaryawan => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_jatah_reguler")
  int? get cutiJatahReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_sisa_reguler")
  int? get cutiSisaReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_panjang")
  int? get cutiPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_sisa_panjang")
  int? get cutiSisaPanjang => throw _privateConstructorUsedError;
  @JsonKey(name: "status_kary_id")
  dynamic get statusKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "lama_kontrak_awal")
  dynamic get lamaKontrakAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "lama_kontrak_akhir")
  dynamic get lamaKontrakAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_masuk")
  DateTime? get tglMasuk => throw _privateConstructorUsedError;
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
  int? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  int? get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_standart_gaji_id")
  int? get mStandartGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "periode_gaji_id")
  int? get periodeGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref_id")
  dynamic get refId => throw _privateConstructorUsedError;
  @JsonKey(name: "presensi_lokasi_default_id")
  dynamic get presensiLokasiDefaultId => throw _privateConstructorUsedError;
  @JsonKey(name: "exp_date_cuti")
  DateTime? get expDateCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "dir")
  String? get dir => throw _privateConstructorUsedError;
  @JsonKey(name: "div")
  String? get div => throw _privateConstructorUsedError;
  @JsonKey(name: "dept")
  String? get dept => throw _privateConstructorUsedError;
  @JsonKey(name: "zona")
  String? get zona => throw _privateConstructorUsedError;
  @JsonKey(name: "grading")
  dynamic get grading => throw _privateConstructorUsedError;
  @JsonKey(name: "posisi")
  String? get posisi => throw _privateConstructorUsedError;
  @JsonKey(name: "jam_kerja")
  String? get jamKerja => throw _privateConstructorUsedError;
  @JsonKey(name: "jk")
  String? get jk => throw _privateConstructorUsedError;
  @JsonKey(name: "provinsi")
  String? get provinsi => throw _privateConstructorUsedError;
  @JsonKey(name: "kota")
  String? get kota => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan")
  String? get kecamatan => throw _privateConstructorUsedError;
  @JsonKey(name: "agama")
  String? get agama => throw _privateConstructorUsedError;
  @JsonKey(name: "gol_darah")
  String? get golDarah => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggungan")
  String? get tanggungan => throw _privateConstructorUsedError;
  @JsonKey(name: "costcontre")
  String? get costcontre => throw _privateConstructorUsedError;
  @JsonKey(name: "status_nikah")
  String? get statusNikah => throw _privateConstructorUsedError;
  @JsonKey(name: "ktp_no")
  String? get ktpNo => throw _privateConstructorUsedError;
  @JsonKey(name: "ktp_foto")
  String? get ktpFoto => throw _privateConstructorUsedError;
  @JsonKey(name: "pas_foto")
  String? get pasFoto => throw _privateConstructorUsedError;
  @JsonKey(name: "kk_no")
  String? get kkNo => throw _privateConstructorUsedError;
  @JsonKey(name: "kk_foto")
  String? get kkFoto => throw _privateConstructorUsedError;
  @JsonKey(name: "npwp_no")
  String? get npwpNo => throw _privateConstructorUsedError;
  @JsonKey(name: "npwp_foto")
  String? get npwpFoto => throw _privateConstructorUsedError;
  @JsonKey(name: "npwp_tgl_berlaku")
  DateTime? get npwpTglBerlaku => throw _privateConstructorUsedError;
  @JsonKey(name: "bpjs_tipe_id")
  int? get bpjsTipeId => throw _privateConstructorUsedError;
  @JsonKey(name: "bpjs_no")
  String? get bpjsNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bpjs_foto")
  String? get bpjsFoto => throw _privateConstructorUsedError;
  @JsonKey(name: "berkas_lain")
  String? get berkasLain => throw _privateConstructorUsedError;
  @JsonKey(name: "desc_file")
  dynamic get descFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiodataCopyWith<Biodata> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiodataCopyWith<$Res> {
  factory $BiodataCopyWith(Biodata value, $Res Function(Biodata) then) =
      _$BiodataCopyWithImpl<$Res, Biodata>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "m_divisi_id") int? mDivisiId,
      @JsonKey(name: "m_dept_id") int? mDeptId,
      @JsonKey(name: "m_zona_id") int? mZonaId,
      @JsonKey(name: "grading_id") dynamic gradingId,
      @JsonKey(name: "costcontre_id") int? costcontreId,
      @JsonKey(name: "kode") String? kode,
      @JsonKey(name: "m_posisi_id") int? mPosisiId,
      @JsonKey(name: "m_jam_kerja_id") int? mJamKerjaId,
      @JsonKey(name: "kode_presensi") String? kodePresensi,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "nama_depan") String? namaDepan,
      @JsonKey(name: "nama_belakang") String? namaBelakang,
      @JsonKey(name: "nama_lengkap") String? namaLengkap,
      @JsonKey(name: "nama_panggilan") String? namaPanggilan,
      @JsonKey(name: "jk_id") int? jkId,
      @JsonKey(name: "tempat_lahir") String? tempatLahir,
      @JsonKey(name: "tgl_lahir") DateTime? tglLahir,
      @JsonKey(name: "provinsi_id") int? provinsiId,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "kecamatan_id") int? kecamatanId,
      @JsonKey(name: "kode_pos") String? kodePos,
      @JsonKey(name: "alamat_asli") String? alamatAsli,
      @JsonKey(name: "alamat_domisili") String? alamatDomisili,
      @JsonKey(name: "no_tlp") String? noTlp,
      @JsonKey(name: "no_tlp_lainnya") String? noTlpLainnya,
      @JsonKey(name: "no_darurat") String? noDarurat,
      @JsonKey(name: "nama_kontak_darurat") String? namaKontakDarurat,
      @JsonKey(name: "agama_id") int? agamaId,
      @JsonKey(name: "gol_darah_id") int? golDarahId,
      @JsonKey(name: "status_nikah_id") int? statusNikahId,
      @JsonKey(name: "tanggungan_id") int? tanggunganId,
      @JsonKey(name: "hub_dgn_karyawan") String? hubDgnKaryawan,
      @JsonKey(name: "cuti_jatah_reguler") int? cutiJatahReguler,
      @JsonKey(name: "cuti_sisa_reguler") int? cutiSisaReguler,
      @JsonKey(name: "cuti_panjang") int? cutiPanjang,
      @JsonKey(name: "cuti_sisa_panjang") int? cutiSisaPanjang,
      @JsonKey(name: "status_kary_id") dynamic statusKaryId,
      @JsonKey(name: "lama_kontrak_awal") dynamic lamaKontrakAwal,
      @JsonKey(name: "lama_kontrak_akhir") dynamic lamaKontrakAkhir,
      @JsonKey(name: "tgl_masuk") DateTime? tglMasuk,
      @JsonKey(name: "tgl_berhenti") dynamic tglBerhenti,
      @JsonKey(name: "alasan_berhenti") dynamic alasanBerhenti,
      @JsonKey(name: "uk_baju") String? ukBaju,
      @JsonKey(name: "uk_celana") String? ukCelana,
      @JsonKey(name: "uk_sepatu") String? ukSepatu,
      @JsonKey(name: "desc") dynamic desc,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "m_standart_gaji_id") int? mStandartGajiId,
      @JsonKey(name: "periode_gaji_id") int? periodeGajiId,
      @JsonKey(name: "ref_id") dynamic refId,
      @JsonKey(name: "presensi_lokasi_default_id")
      dynamic presensiLokasiDefaultId,
      @JsonKey(name: "exp_date_cuti") DateTime? expDateCuti,
      @JsonKey(name: "dir") String? dir,
      @JsonKey(name: "div") String? div,
      @JsonKey(name: "dept") String? dept,
      @JsonKey(name: "zona") String? zona,
      @JsonKey(name: "grading") dynamic grading,
      @JsonKey(name: "posisi") String? posisi,
      @JsonKey(name: "jam_kerja") String? jamKerja,
      @JsonKey(name: "jk") String? jk,
      @JsonKey(name: "provinsi") String? provinsi,
      @JsonKey(name: "kota") String? kota,
      @JsonKey(name: "kecamatan") String? kecamatan,
      @JsonKey(name: "agama") String? agama,
      @JsonKey(name: "gol_darah") String? golDarah,
      @JsonKey(name: "tanggungan") String? tanggungan,
      @JsonKey(name: "costcontre") String? costcontre,
      @JsonKey(name: "status_nikah") String? statusNikah,
      @JsonKey(name: "ktp_no") String? ktpNo,
      @JsonKey(name: "ktp_foto") String? ktpFoto,
      @JsonKey(name: "pas_foto") String? pasFoto,
      @JsonKey(name: "kk_no") String? kkNo,
      @JsonKey(name: "kk_foto") String? kkFoto,
      @JsonKey(name: "npwp_no") String? npwpNo,
      @JsonKey(name: "npwp_foto") String? npwpFoto,
      @JsonKey(name: "npwp_tgl_berlaku") DateTime? npwpTglBerlaku,
      @JsonKey(name: "bpjs_tipe_id") int? bpjsTipeId,
      @JsonKey(name: "bpjs_no") String? bpjsNo,
      @JsonKey(name: "bpjs_foto") String? bpjsFoto,
      @JsonKey(name: "berkas_lain") String? berkasLain,
      @JsonKey(name: "desc_file") dynamic descFile});
}

/// @nodoc
class _$BiodataCopyWithImpl<$Res, $Val extends Biodata>
    implements $BiodataCopyWith<$Res> {
  _$BiodataCopyWithImpl(this._value, this._then);

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
    Object? mDivisiId = freezed,
    Object? mDeptId = freezed,
    Object? mZonaId = freezed,
    Object? gradingId = freezed,
    Object? costcontreId = freezed,
    Object? kode = freezed,
    Object? mPosisiId = freezed,
    Object? mJamKerjaId = freezed,
    Object? kodePresensi = freezed,
    Object? nik = freezed,
    Object? namaDepan = freezed,
    Object? namaBelakang = freezed,
    Object? namaLengkap = freezed,
    Object? namaPanggilan = freezed,
    Object? jkId = freezed,
    Object? tempatLahir = freezed,
    Object? tglLahir = freezed,
    Object? provinsiId = freezed,
    Object? kotaId = freezed,
    Object? kecamatanId = freezed,
    Object? kodePos = freezed,
    Object? alamatAsli = freezed,
    Object? alamatDomisili = freezed,
    Object? noTlp = freezed,
    Object? noTlpLainnya = freezed,
    Object? noDarurat = freezed,
    Object? namaKontakDarurat = freezed,
    Object? agamaId = freezed,
    Object? golDarahId = freezed,
    Object? statusNikahId = freezed,
    Object? tanggunganId = freezed,
    Object? hubDgnKaryawan = freezed,
    Object? cutiJatahReguler = freezed,
    Object? cutiSisaReguler = freezed,
    Object? cutiPanjang = freezed,
    Object? cutiSisaPanjang = freezed,
    Object? statusKaryId = freezed,
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
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mStandartGajiId = freezed,
    Object? periodeGajiId = freezed,
    Object? refId = freezed,
    Object? presensiLokasiDefaultId = freezed,
    Object? expDateCuti = freezed,
    Object? dir = freezed,
    Object? div = freezed,
    Object? dept = freezed,
    Object? zona = freezed,
    Object? grading = freezed,
    Object? posisi = freezed,
    Object? jamKerja = freezed,
    Object? jk = freezed,
    Object? provinsi = freezed,
    Object? kota = freezed,
    Object? kecamatan = freezed,
    Object? agama = freezed,
    Object? golDarah = freezed,
    Object? tanggungan = freezed,
    Object? costcontre = freezed,
    Object? statusNikah = freezed,
    Object? ktpNo = freezed,
    Object? ktpFoto = freezed,
    Object? pasFoto = freezed,
    Object? kkNo = freezed,
    Object? kkFoto = freezed,
    Object? npwpNo = freezed,
    Object? npwpFoto = freezed,
    Object? npwpTglBerlaku = freezed,
    Object? bpjsTipeId = freezed,
    Object? bpjsNo = freezed,
    Object? bpjsFoto = freezed,
    Object? berkasLain = freezed,
    Object? descFile = freezed,
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
      mDivisiId: freezed == mDivisiId
          ? _value.mDivisiId
          : mDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDeptId: freezed == mDeptId
          ? _value.mDeptId
          : mDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaId: freezed == mZonaId
          ? _value.mZonaId
          : mZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      gradingId: freezed == gradingId
          ? _value.gradingId
          : gradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreId: freezed == costcontreId
          ? _value.costcontreId
          : costcontreId // ignore: cast_nullable_to_non_nullable
              as int?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiId: freezed == mPosisiId
          ? _value.mPosisiId
          : mPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mJamKerjaId: freezed == mJamKerjaId
          ? _value.mJamKerjaId
          : mJamKerjaId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      jkId: freezed == jkId
          ? _value.jkId
          : jkId // ignore: cast_nullable_to_non_nullable
              as int?,
      tempatLahir: freezed == tempatLahir
          ? _value.tempatLahir
          : tempatLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      tglLahir: freezed == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      provinsiId: freezed == provinsiId
          ? _value.provinsiId
          : provinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      kecamatanId: freezed == kecamatanId
          ? _value.kecamatanId
          : kecamatanId // ignore: cast_nullable_to_non_nullable
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
      agamaId: freezed == agamaId
          ? _value.agamaId
          : agamaId // ignore: cast_nullable_to_non_nullable
              as int?,
      golDarahId: freezed == golDarahId
          ? _value.golDarahId
          : golDarahId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusNikahId: freezed == statusNikahId
          ? _value.statusNikahId
          : statusNikahId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggunganId: freezed == tanggunganId
          ? _value.tanggunganId
          : tanggunganId // ignore: cast_nullable_to_non_nullable
              as int?,
      hubDgnKaryawan: freezed == hubDgnKaryawan
          ? _value.hubDgnKaryawan
          : hubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as String?,
      cutiJatahReguler: freezed == cutiJatahReguler
          ? _value.cutiJatahReguler
          : cutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiSisaReguler: freezed == cutiSisaReguler
          ? _value.cutiSisaReguler
          : cutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiPanjang: freezed == cutiPanjang
          ? _value.cutiPanjang
          : cutiPanjang // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiSisaPanjang: freezed == cutiSisaPanjang
          ? _value.cutiSisaPanjang
          : cutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as int?,
      statusKaryId: freezed == statusKaryId
          ? _value.statusKaryId
          : statusKaryId // ignore: cast_nullable_to_non_nullable
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
              as DateTime?,
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
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorId: freezed == lastEditorId
          ? _value.lastEditorId
          : lastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mStandartGajiId: freezed == mStandartGajiId
          ? _value.mStandartGajiId
          : mStandartGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      periodeGajiId: freezed == periodeGajiId
          ? _value.periodeGajiId
          : periodeGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      presensiLokasiDefaultId: freezed == presensiLokasiDefaultId
          ? _value.presensiLokasiDefaultId
          : presensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expDateCuti: freezed == expDateCuti
          ? _value.expDateCuti
          : expDateCuti // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dir: freezed == dir
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String?,
      div: freezed == div
          ? _value.div
          : div // ignore: cast_nullable_to_non_nullable
              as String?,
      dept: freezed == dept
          ? _value.dept
          : dept // ignore: cast_nullable_to_non_nullable
              as String?,
      zona: freezed == zona
          ? _value.zona
          : zona // ignore: cast_nullable_to_non_nullable
              as String?,
      grading: freezed == grading
          ? _value.grading
          : grading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      posisi: freezed == posisi
          ? _value.posisi
          : posisi // ignore: cast_nullable_to_non_nullable
              as String?,
      jamKerja: freezed == jamKerja
          ? _value.jamKerja
          : jamKerja // ignore: cast_nullable_to_non_nullable
              as String?,
      jk: freezed == jk
          ? _value.jk
          : jk // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: freezed == provinsi
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      agama: freezed == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarah: freezed == golDarah
          ? _value.golDarah
          : golDarah // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggungan: freezed == tanggungan
          ? _value.tanggungan
          : tanggungan // ignore: cast_nullable_to_non_nullable
              as String?,
      costcontre: freezed == costcontre
          ? _value.costcontre
          : costcontre // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikah: freezed == statusNikah
          ? _value.statusNikah
          : statusNikah // ignore: cast_nullable_to_non_nullable
              as String?,
      ktpNo: freezed == ktpNo
          ? _value.ktpNo
          : ktpNo // ignore: cast_nullable_to_non_nullable
              as String?,
      ktpFoto: freezed == ktpFoto
          ? _value.ktpFoto
          : ktpFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      pasFoto: freezed == pasFoto
          ? _value.pasFoto
          : pasFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      kkNo: freezed == kkNo
          ? _value.kkNo
          : kkNo // ignore: cast_nullable_to_non_nullable
              as String?,
      kkFoto: freezed == kkFoto
          ? _value.kkFoto
          : kkFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      npwpNo: freezed == npwpNo
          ? _value.npwpNo
          : npwpNo // ignore: cast_nullable_to_non_nullable
              as String?,
      npwpFoto: freezed == npwpFoto
          ? _value.npwpFoto
          : npwpFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      npwpTglBerlaku: freezed == npwpTglBerlaku
          ? _value.npwpTglBerlaku
          : npwpTglBerlaku // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bpjsTipeId: freezed == bpjsTipeId
          ? _value.bpjsTipeId
          : bpjsTipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      bpjsNo: freezed == bpjsNo
          ? _value.bpjsNo
          : bpjsNo // ignore: cast_nullable_to_non_nullable
              as String?,
      bpjsFoto: freezed == bpjsFoto
          ? _value.bpjsFoto
          : bpjsFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      berkasLain: freezed == berkasLain
          ? _value.berkasLain
          : berkasLain // ignore: cast_nullable_to_non_nullable
              as String?,
      descFile: freezed == descFile
          ? _value.descFile
          : descFile // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiodataImplCopyWith<$Res> implements $BiodataCopyWith<$Res> {
  factory _$$BiodataImplCopyWith(
          _$BiodataImpl value, $Res Function(_$BiodataImpl) then) =
      __$$BiodataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "m_comp_id") int? mCompId,
      @JsonKey(name: "m_dir_id") int? mDirId,
      @JsonKey(name: "m_divisi_id") int? mDivisiId,
      @JsonKey(name: "m_dept_id") int? mDeptId,
      @JsonKey(name: "m_zona_id") int? mZonaId,
      @JsonKey(name: "grading_id") dynamic gradingId,
      @JsonKey(name: "costcontre_id") int? costcontreId,
      @JsonKey(name: "kode") String? kode,
      @JsonKey(name: "m_posisi_id") int? mPosisiId,
      @JsonKey(name: "m_jam_kerja_id") int? mJamKerjaId,
      @JsonKey(name: "kode_presensi") String? kodePresensi,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "nama_depan") String? namaDepan,
      @JsonKey(name: "nama_belakang") String? namaBelakang,
      @JsonKey(name: "nama_lengkap") String? namaLengkap,
      @JsonKey(name: "nama_panggilan") String? namaPanggilan,
      @JsonKey(name: "jk_id") int? jkId,
      @JsonKey(name: "tempat_lahir") String? tempatLahir,
      @JsonKey(name: "tgl_lahir") DateTime? tglLahir,
      @JsonKey(name: "provinsi_id") int? provinsiId,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "kecamatan_id") int? kecamatanId,
      @JsonKey(name: "kode_pos") String? kodePos,
      @JsonKey(name: "alamat_asli") String? alamatAsli,
      @JsonKey(name: "alamat_domisili") String? alamatDomisili,
      @JsonKey(name: "no_tlp") String? noTlp,
      @JsonKey(name: "no_tlp_lainnya") String? noTlpLainnya,
      @JsonKey(name: "no_darurat") String? noDarurat,
      @JsonKey(name: "nama_kontak_darurat") String? namaKontakDarurat,
      @JsonKey(name: "agama_id") int? agamaId,
      @JsonKey(name: "gol_darah_id") int? golDarahId,
      @JsonKey(name: "status_nikah_id") int? statusNikahId,
      @JsonKey(name: "tanggungan_id") int? tanggunganId,
      @JsonKey(name: "hub_dgn_karyawan") String? hubDgnKaryawan,
      @JsonKey(name: "cuti_jatah_reguler") int? cutiJatahReguler,
      @JsonKey(name: "cuti_sisa_reguler") int? cutiSisaReguler,
      @JsonKey(name: "cuti_panjang") int? cutiPanjang,
      @JsonKey(name: "cuti_sisa_panjang") int? cutiSisaPanjang,
      @JsonKey(name: "status_kary_id") dynamic statusKaryId,
      @JsonKey(name: "lama_kontrak_awal") dynamic lamaKontrakAwal,
      @JsonKey(name: "lama_kontrak_akhir") dynamic lamaKontrakAkhir,
      @JsonKey(name: "tgl_masuk") DateTime? tglMasuk,
      @JsonKey(name: "tgl_berhenti") dynamic tglBerhenti,
      @JsonKey(name: "alasan_berhenti") dynamic alasanBerhenti,
      @JsonKey(name: "uk_baju") String? ukBaju,
      @JsonKey(name: "uk_celana") String? ukCelana,
      @JsonKey(name: "uk_sepatu") String? ukSepatu,
      @JsonKey(name: "desc") dynamic desc,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") int? creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "m_standart_gaji_id") int? mStandartGajiId,
      @JsonKey(name: "periode_gaji_id") int? periodeGajiId,
      @JsonKey(name: "ref_id") dynamic refId,
      @JsonKey(name: "presensi_lokasi_default_id")
      dynamic presensiLokasiDefaultId,
      @JsonKey(name: "exp_date_cuti") DateTime? expDateCuti,
      @JsonKey(name: "dir") String? dir,
      @JsonKey(name: "div") String? div,
      @JsonKey(name: "dept") String? dept,
      @JsonKey(name: "zona") String? zona,
      @JsonKey(name: "grading") dynamic grading,
      @JsonKey(name: "posisi") String? posisi,
      @JsonKey(name: "jam_kerja") String? jamKerja,
      @JsonKey(name: "jk") String? jk,
      @JsonKey(name: "provinsi") String? provinsi,
      @JsonKey(name: "kota") String? kota,
      @JsonKey(name: "kecamatan") String? kecamatan,
      @JsonKey(name: "agama") String? agama,
      @JsonKey(name: "gol_darah") String? golDarah,
      @JsonKey(name: "tanggungan") String? tanggungan,
      @JsonKey(name: "costcontre") String? costcontre,
      @JsonKey(name: "status_nikah") String? statusNikah,
      @JsonKey(name: "ktp_no") String? ktpNo,
      @JsonKey(name: "ktp_foto") String? ktpFoto,
      @JsonKey(name: "pas_foto") String? pasFoto,
      @JsonKey(name: "kk_no") String? kkNo,
      @JsonKey(name: "kk_foto") String? kkFoto,
      @JsonKey(name: "npwp_no") String? npwpNo,
      @JsonKey(name: "npwp_foto") String? npwpFoto,
      @JsonKey(name: "npwp_tgl_berlaku") DateTime? npwpTglBerlaku,
      @JsonKey(name: "bpjs_tipe_id") int? bpjsTipeId,
      @JsonKey(name: "bpjs_no") String? bpjsNo,
      @JsonKey(name: "bpjs_foto") String? bpjsFoto,
      @JsonKey(name: "berkas_lain") String? berkasLain,
      @JsonKey(name: "desc_file") dynamic descFile});
}

/// @nodoc
class __$$BiodataImplCopyWithImpl<$Res>
    extends _$BiodataCopyWithImpl<$Res, _$BiodataImpl>
    implements _$$BiodataImplCopyWith<$Res> {
  __$$BiodataImplCopyWithImpl(
      _$BiodataImpl _value, $Res Function(_$BiodataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mCompId = freezed,
    Object? mDirId = freezed,
    Object? mDivisiId = freezed,
    Object? mDeptId = freezed,
    Object? mZonaId = freezed,
    Object? gradingId = freezed,
    Object? costcontreId = freezed,
    Object? kode = freezed,
    Object? mPosisiId = freezed,
    Object? mJamKerjaId = freezed,
    Object? kodePresensi = freezed,
    Object? nik = freezed,
    Object? namaDepan = freezed,
    Object? namaBelakang = freezed,
    Object? namaLengkap = freezed,
    Object? namaPanggilan = freezed,
    Object? jkId = freezed,
    Object? tempatLahir = freezed,
    Object? tglLahir = freezed,
    Object? provinsiId = freezed,
    Object? kotaId = freezed,
    Object? kecamatanId = freezed,
    Object? kodePos = freezed,
    Object? alamatAsli = freezed,
    Object? alamatDomisili = freezed,
    Object? noTlp = freezed,
    Object? noTlpLainnya = freezed,
    Object? noDarurat = freezed,
    Object? namaKontakDarurat = freezed,
    Object? agamaId = freezed,
    Object? golDarahId = freezed,
    Object? statusNikahId = freezed,
    Object? tanggunganId = freezed,
    Object? hubDgnKaryawan = freezed,
    Object? cutiJatahReguler = freezed,
    Object? cutiSisaReguler = freezed,
    Object? cutiPanjang = freezed,
    Object? cutiSisaPanjang = freezed,
    Object? statusKaryId = freezed,
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
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mStandartGajiId = freezed,
    Object? periodeGajiId = freezed,
    Object? refId = freezed,
    Object? presensiLokasiDefaultId = freezed,
    Object? expDateCuti = freezed,
    Object? dir = freezed,
    Object? div = freezed,
    Object? dept = freezed,
    Object? zona = freezed,
    Object? grading = freezed,
    Object? posisi = freezed,
    Object? jamKerja = freezed,
    Object? jk = freezed,
    Object? provinsi = freezed,
    Object? kota = freezed,
    Object? kecamatan = freezed,
    Object? agama = freezed,
    Object? golDarah = freezed,
    Object? tanggungan = freezed,
    Object? costcontre = freezed,
    Object? statusNikah = freezed,
    Object? ktpNo = freezed,
    Object? ktpFoto = freezed,
    Object? pasFoto = freezed,
    Object? kkNo = freezed,
    Object? kkFoto = freezed,
    Object? npwpNo = freezed,
    Object? npwpFoto = freezed,
    Object? npwpTglBerlaku = freezed,
    Object? bpjsTipeId = freezed,
    Object? bpjsNo = freezed,
    Object? bpjsFoto = freezed,
    Object? berkasLain = freezed,
    Object? descFile = freezed,
  }) {
    return _then(_$BiodataImpl(
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
      mDivisiId: freezed == mDivisiId
          ? _value.mDivisiId
          : mDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mDeptId: freezed == mDeptId
          ? _value.mDeptId
          : mDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      mZonaId: freezed == mZonaId
          ? _value.mZonaId
          : mZonaId // ignore: cast_nullable_to_non_nullable
              as int?,
      gradingId: freezed == gradingId
          ? _value.gradingId
          : gradingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      costcontreId: freezed == costcontreId
          ? _value.costcontreId
          : costcontreId // ignore: cast_nullable_to_non_nullable
              as int?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      mPosisiId: freezed == mPosisiId
          ? _value.mPosisiId
          : mPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      mJamKerjaId: freezed == mJamKerjaId
          ? _value.mJamKerjaId
          : mJamKerjaId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      jkId: freezed == jkId
          ? _value.jkId
          : jkId // ignore: cast_nullable_to_non_nullable
              as int?,
      tempatLahir: freezed == tempatLahir
          ? _value.tempatLahir
          : tempatLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      tglLahir: freezed == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      provinsiId: freezed == provinsiId
          ? _value.provinsiId
          : provinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      kecamatanId: freezed == kecamatanId
          ? _value.kecamatanId
          : kecamatanId // ignore: cast_nullable_to_non_nullable
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
      agamaId: freezed == agamaId
          ? _value.agamaId
          : agamaId // ignore: cast_nullable_to_non_nullable
              as int?,
      golDarahId: freezed == golDarahId
          ? _value.golDarahId
          : golDarahId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusNikahId: freezed == statusNikahId
          ? _value.statusNikahId
          : statusNikahId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggunganId: freezed == tanggunganId
          ? _value.tanggunganId
          : tanggunganId // ignore: cast_nullable_to_non_nullable
              as int?,
      hubDgnKaryawan: freezed == hubDgnKaryawan
          ? _value.hubDgnKaryawan
          : hubDgnKaryawan // ignore: cast_nullable_to_non_nullable
              as String?,
      cutiJatahReguler: freezed == cutiJatahReguler
          ? _value.cutiJatahReguler
          : cutiJatahReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiSisaReguler: freezed == cutiSisaReguler
          ? _value.cutiSisaReguler
          : cutiSisaReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiPanjang: freezed == cutiPanjang
          ? _value.cutiPanjang
          : cutiPanjang // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiSisaPanjang: freezed == cutiSisaPanjang
          ? _value.cutiSisaPanjang
          : cutiSisaPanjang // ignore: cast_nullable_to_non_nullable
              as int?,
      statusKaryId: freezed == statusKaryId
          ? _value.statusKaryId
          : statusKaryId // ignore: cast_nullable_to_non_nullable
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
              as DateTime?,
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
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastEditorId: freezed == lastEditorId
          ? _value.lastEditorId
          : lastEditorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mStandartGajiId: freezed == mStandartGajiId
          ? _value.mStandartGajiId
          : mStandartGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      periodeGajiId: freezed == periodeGajiId
          ? _value.periodeGajiId
          : periodeGajiId // ignore: cast_nullable_to_non_nullable
              as int?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      presensiLokasiDefaultId: freezed == presensiLokasiDefaultId
          ? _value.presensiLokasiDefaultId
          : presensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expDateCuti: freezed == expDateCuti
          ? _value.expDateCuti
          : expDateCuti // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dir: freezed == dir
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String?,
      div: freezed == div
          ? _value.div
          : div // ignore: cast_nullable_to_non_nullable
              as String?,
      dept: freezed == dept
          ? _value.dept
          : dept // ignore: cast_nullable_to_non_nullable
              as String?,
      zona: freezed == zona
          ? _value.zona
          : zona // ignore: cast_nullable_to_non_nullable
              as String?,
      grading: freezed == grading
          ? _value.grading
          : grading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      posisi: freezed == posisi
          ? _value.posisi
          : posisi // ignore: cast_nullable_to_non_nullable
              as String?,
      jamKerja: freezed == jamKerja
          ? _value.jamKerja
          : jamKerja // ignore: cast_nullable_to_non_nullable
              as String?,
      jk: freezed == jk
          ? _value.jk
          : jk // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: freezed == provinsi
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: freezed == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      agama: freezed == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      golDarah: freezed == golDarah
          ? _value.golDarah
          : golDarah // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggungan: freezed == tanggungan
          ? _value.tanggungan
          : tanggungan // ignore: cast_nullable_to_non_nullable
              as String?,
      costcontre: freezed == costcontre
          ? _value.costcontre
          : costcontre // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNikah: freezed == statusNikah
          ? _value.statusNikah
          : statusNikah // ignore: cast_nullable_to_non_nullable
              as String?,
      ktpNo: freezed == ktpNo
          ? _value.ktpNo
          : ktpNo // ignore: cast_nullable_to_non_nullable
              as String?,
      ktpFoto: freezed == ktpFoto
          ? _value.ktpFoto
          : ktpFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      pasFoto: freezed == pasFoto
          ? _value.pasFoto
          : pasFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      kkNo: freezed == kkNo
          ? _value.kkNo
          : kkNo // ignore: cast_nullable_to_non_nullable
              as String?,
      kkFoto: freezed == kkFoto
          ? _value.kkFoto
          : kkFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      npwpNo: freezed == npwpNo
          ? _value.npwpNo
          : npwpNo // ignore: cast_nullable_to_non_nullable
              as String?,
      npwpFoto: freezed == npwpFoto
          ? _value.npwpFoto
          : npwpFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      npwpTglBerlaku: freezed == npwpTglBerlaku
          ? _value.npwpTglBerlaku
          : npwpTglBerlaku // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bpjsTipeId: freezed == bpjsTipeId
          ? _value.bpjsTipeId
          : bpjsTipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      bpjsNo: freezed == bpjsNo
          ? _value.bpjsNo
          : bpjsNo // ignore: cast_nullable_to_non_nullable
              as String?,
      bpjsFoto: freezed == bpjsFoto
          ? _value.bpjsFoto
          : bpjsFoto // ignore: cast_nullable_to_non_nullable
              as String?,
      berkasLain: freezed == berkasLain
          ? _value.berkasLain
          : berkasLain // ignore: cast_nullable_to_non_nullable
              as String?,
      descFile: freezed == descFile
          ? _value.descFile
          : descFile // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiodataImpl implements _Biodata {
  const _$BiodataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "m_comp_id") this.mCompId,
      @JsonKey(name: "m_dir_id") this.mDirId,
      @JsonKey(name: "m_divisi_id") this.mDivisiId,
      @JsonKey(name: "m_dept_id") this.mDeptId,
      @JsonKey(name: "m_zona_id") this.mZonaId,
      @JsonKey(name: "grading_id") this.gradingId,
      @JsonKey(name: "costcontre_id") this.costcontreId,
      @JsonKey(name: "kode") this.kode,
      @JsonKey(name: "m_posisi_id") this.mPosisiId,
      @JsonKey(name: "m_jam_kerja_id") this.mJamKerjaId,
      @JsonKey(name: "kode_presensi") this.kodePresensi,
      @JsonKey(name: "nik") this.nik,
      @JsonKey(name: "nama_depan") this.namaDepan,
      @JsonKey(name: "nama_belakang") this.namaBelakang,
      @JsonKey(name: "nama_lengkap") this.namaLengkap,
      @JsonKey(name: "nama_panggilan") this.namaPanggilan,
      @JsonKey(name: "jk_id") this.jkId,
      @JsonKey(name: "tempat_lahir") this.tempatLahir,
      @JsonKey(name: "tgl_lahir") this.tglLahir,
      @JsonKey(name: "provinsi_id") this.provinsiId,
      @JsonKey(name: "kota_id") this.kotaId,
      @JsonKey(name: "kecamatan_id") this.kecamatanId,
      @JsonKey(name: "kode_pos") this.kodePos,
      @JsonKey(name: "alamat_asli") this.alamatAsli,
      @JsonKey(name: "alamat_domisili") this.alamatDomisili,
      @JsonKey(name: "no_tlp") this.noTlp,
      @JsonKey(name: "no_tlp_lainnya") this.noTlpLainnya,
      @JsonKey(name: "no_darurat") this.noDarurat,
      @JsonKey(name: "nama_kontak_darurat") this.namaKontakDarurat,
      @JsonKey(name: "agama_id") this.agamaId,
      @JsonKey(name: "gol_darah_id") this.golDarahId,
      @JsonKey(name: "status_nikah_id") this.statusNikahId,
      @JsonKey(name: "tanggungan_id") this.tanggunganId,
      @JsonKey(name: "hub_dgn_karyawan") this.hubDgnKaryawan,
      @JsonKey(name: "cuti_jatah_reguler") this.cutiJatahReguler,
      @JsonKey(name: "cuti_sisa_reguler") this.cutiSisaReguler,
      @JsonKey(name: "cuti_panjang") this.cutiPanjang,
      @JsonKey(name: "cuti_sisa_panjang") this.cutiSisaPanjang,
      @JsonKey(name: "status_kary_id") this.statusKaryId,
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
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "m_standart_gaji_id") this.mStandartGajiId,
      @JsonKey(name: "periode_gaji_id") this.periodeGajiId,
      @JsonKey(name: "ref_id") this.refId,
      @JsonKey(name: "presensi_lokasi_default_id") this.presensiLokasiDefaultId,
      @JsonKey(name: "exp_date_cuti") this.expDateCuti,
      @JsonKey(name: "dir") this.dir,
      @JsonKey(name: "div") this.div,
      @JsonKey(name: "dept") this.dept,
      @JsonKey(name: "zona") this.zona,
      @JsonKey(name: "grading") this.grading,
      @JsonKey(name: "posisi") this.posisi,
      @JsonKey(name: "jam_kerja") this.jamKerja,
      @JsonKey(name: "jk") this.jk,
      @JsonKey(name: "provinsi") this.provinsi,
      @JsonKey(name: "kota") this.kota,
      @JsonKey(name: "kecamatan") this.kecamatan,
      @JsonKey(name: "agama") this.agama,
      @JsonKey(name: "gol_darah") this.golDarah,
      @JsonKey(name: "tanggungan") this.tanggungan,
      @JsonKey(name: "costcontre") this.costcontre,
      @JsonKey(name: "status_nikah") this.statusNikah,
      @JsonKey(name: "ktp_no") this.ktpNo,
      @JsonKey(name: "ktp_foto") this.ktpFoto,
      @JsonKey(name: "pas_foto") this.pasFoto,
      @JsonKey(name: "kk_no") this.kkNo,
      @JsonKey(name: "kk_foto") this.kkFoto,
      @JsonKey(name: "npwp_no") this.npwpNo,
      @JsonKey(name: "npwp_foto") this.npwpFoto,
      @JsonKey(name: "npwp_tgl_berlaku") this.npwpTglBerlaku,
      @JsonKey(name: "bpjs_tipe_id") this.bpjsTipeId,
      @JsonKey(name: "bpjs_no") this.bpjsNo,
      @JsonKey(name: "bpjs_foto") this.bpjsFoto,
      @JsonKey(name: "berkas_lain") this.berkasLain,
      @JsonKey(name: "desc_file") this.descFile});

  factory _$BiodataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiodataImplFromJson(json);

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
  @JsonKey(name: "m_divisi_id")
  final int? mDivisiId;
  @override
  @JsonKey(name: "m_dept_id")
  final int? mDeptId;
  @override
  @JsonKey(name: "m_zona_id")
  final int? mZonaId;
  @override
  @JsonKey(name: "grading_id")
  final dynamic gradingId;
  @override
  @JsonKey(name: "costcontre_id")
  final int? costcontreId;
  @override
  @JsonKey(name: "kode")
  final String? kode;
  @override
  @JsonKey(name: "m_posisi_id")
  final int? mPosisiId;
  @override
  @JsonKey(name: "m_jam_kerja_id")
  final int? mJamKerjaId;
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
  final int? jkId;
  @override
  @JsonKey(name: "tempat_lahir")
  final String? tempatLahir;
  @override
  @JsonKey(name: "tgl_lahir")
  final DateTime? tglLahir;
  @override
  @JsonKey(name: "provinsi_id")
  final int? provinsiId;
  @override
  @JsonKey(name: "kota_id")
  final int? kotaId;
  @override
  @JsonKey(name: "kecamatan_id")
  final int? kecamatanId;
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
  final int? agamaId;
  @override
  @JsonKey(name: "gol_darah_id")
  final int? golDarahId;
  @override
  @JsonKey(name: "status_nikah_id")
  final int? statusNikahId;
  @override
  @JsonKey(name: "tanggungan_id")
  final int? tanggunganId;
  @override
  @JsonKey(name: "hub_dgn_karyawan")
  final String? hubDgnKaryawan;
  @override
  @JsonKey(name: "cuti_jatah_reguler")
  final int? cutiJatahReguler;
  @override
  @JsonKey(name: "cuti_sisa_reguler")
  final int? cutiSisaReguler;
  @override
  @JsonKey(name: "cuti_panjang")
  final int? cutiPanjang;
  @override
  @JsonKey(name: "cuti_sisa_panjang")
  final int? cutiSisaPanjang;
  @override
  @JsonKey(name: "status_kary_id")
  final dynamic statusKaryId;
  @override
  @JsonKey(name: "lama_kontrak_awal")
  final dynamic lamaKontrakAwal;
  @override
  @JsonKey(name: "lama_kontrak_akhir")
  final dynamic lamaKontrakAkhir;
  @override
  @JsonKey(name: "tgl_masuk")
  final DateTime? tglMasuk;
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
  final int? creatorId;
  @override
  @JsonKey(name: "last_editor_id")
  final int? lastEditorId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "m_standart_gaji_id")
  final int? mStandartGajiId;
  @override
  @JsonKey(name: "periode_gaji_id")
  final int? periodeGajiId;
  @override
  @JsonKey(name: "ref_id")
  final dynamic refId;
  @override
  @JsonKey(name: "presensi_lokasi_default_id")
  final dynamic presensiLokasiDefaultId;
  @override
  @JsonKey(name: "exp_date_cuti")
  final DateTime? expDateCuti;
  @override
  @JsonKey(name: "dir")
  final String? dir;
  @override
  @JsonKey(name: "div")
  final String? div;
  @override
  @JsonKey(name: "dept")
  final String? dept;
  @override
  @JsonKey(name: "zona")
  final String? zona;
  @override
  @JsonKey(name: "grading")
  final dynamic grading;
  @override
  @JsonKey(name: "posisi")
  final String? posisi;
  @override
  @JsonKey(name: "jam_kerja")
  final String? jamKerja;
  @override
  @JsonKey(name: "jk")
  final String? jk;
  @override
  @JsonKey(name: "provinsi")
  final String? provinsi;
  @override
  @JsonKey(name: "kota")
  final String? kota;
  @override
  @JsonKey(name: "kecamatan")
  final String? kecamatan;
  @override
  @JsonKey(name: "agama")
  final String? agama;
  @override
  @JsonKey(name: "gol_darah")
  final String? golDarah;
  @override
  @JsonKey(name: "tanggungan")
  final String? tanggungan;
  @override
  @JsonKey(name: "costcontre")
  final String? costcontre;
  @override
  @JsonKey(name: "status_nikah")
  final String? statusNikah;
  @override
  @JsonKey(name: "ktp_no")
  final String? ktpNo;
  @override
  @JsonKey(name: "ktp_foto")
  final String? ktpFoto;
  @override
  @JsonKey(name: "pas_foto")
  final String? pasFoto;
  @override
  @JsonKey(name: "kk_no")
  final String? kkNo;
  @override
  @JsonKey(name: "kk_foto")
  final String? kkFoto;
  @override
  @JsonKey(name: "npwp_no")
  final String? npwpNo;
  @override
  @JsonKey(name: "npwp_foto")
  final String? npwpFoto;
  @override
  @JsonKey(name: "npwp_tgl_berlaku")
  final DateTime? npwpTglBerlaku;
  @override
  @JsonKey(name: "bpjs_tipe_id")
  final int? bpjsTipeId;
  @override
  @JsonKey(name: "bpjs_no")
  final String? bpjsNo;
  @override
  @JsonKey(name: "bpjs_foto")
  final String? bpjsFoto;
  @override
  @JsonKey(name: "berkas_lain")
  final String? berkasLain;
  @override
  @JsonKey(name: "desc_file")
  final dynamic descFile;

  @override
  String toString() {
    return 'Biodata(id: $id, mCompId: $mCompId, mDirId: $mDirId, mDivisiId: $mDivisiId, mDeptId: $mDeptId, mZonaId: $mZonaId, gradingId: $gradingId, costcontreId: $costcontreId, kode: $kode, mPosisiId: $mPosisiId, mJamKerjaId: $mJamKerjaId, kodePresensi: $kodePresensi, nik: $nik, namaDepan: $namaDepan, namaBelakang: $namaBelakang, namaLengkap: $namaLengkap, namaPanggilan: $namaPanggilan, jkId: $jkId, tempatLahir: $tempatLahir, tglLahir: $tglLahir, provinsiId: $provinsiId, kotaId: $kotaId, kecamatanId: $kecamatanId, kodePos: $kodePos, alamatAsli: $alamatAsli, alamatDomisili: $alamatDomisili, noTlp: $noTlp, noTlpLainnya: $noTlpLainnya, noDarurat: $noDarurat, namaKontakDarurat: $namaKontakDarurat, agamaId: $agamaId, golDarahId: $golDarahId, statusNikahId: $statusNikahId, tanggunganId: $tanggunganId, hubDgnKaryawan: $hubDgnKaryawan, cutiJatahReguler: $cutiJatahReguler, cutiSisaReguler: $cutiSisaReguler, cutiPanjang: $cutiPanjang, cutiSisaPanjang: $cutiSisaPanjang, statusKaryId: $statusKaryId, lamaKontrakAwal: $lamaKontrakAwal, lamaKontrakAkhir: $lamaKontrakAkhir, tglMasuk: $tglMasuk, tglBerhenti: $tglBerhenti, alasanBerhenti: $alasanBerhenti, ukBaju: $ukBaju, ukCelana: $ukCelana, ukSepatu: $ukSepatu, desc: $desc, isActive: $isActive, creatorId: $creatorId, lastEditorId: $lastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, mStandartGajiId: $mStandartGajiId, periodeGajiId: $periodeGajiId, refId: $refId, presensiLokasiDefaultId: $presensiLokasiDefaultId, expDateCuti: $expDateCuti, dir: $dir, div: $div, dept: $dept, zona: $zona, grading: $grading, posisi: $posisi, jamKerja: $jamKerja, jk: $jk, provinsi: $provinsi, kota: $kota, kecamatan: $kecamatan, agama: $agama, golDarah: $golDarah, tanggungan: $tanggungan, costcontre: $costcontre, statusNikah: $statusNikah, ktpNo: $ktpNo, ktpFoto: $ktpFoto, pasFoto: $pasFoto, kkNo: $kkNo, kkFoto: $kkFoto, npwpNo: $npwpNo, npwpFoto: $npwpFoto, npwpTglBerlaku: $npwpTglBerlaku, bpjsTipeId: $bpjsTipeId, bpjsNo: $bpjsNo, bpjsFoto: $bpjsFoto, berkasLain: $berkasLain, descFile: $descFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiodataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mCompId, mCompId) || other.mCompId == mCompId) &&
            (identical(other.mDirId, mDirId) || other.mDirId == mDirId) &&
            (identical(other.mDivisiId, mDivisiId) ||
                other.mDivisiId == mDivisiId) &&
            (identical(other.mDeptId, mDeptId) || other.mDeptId == mDeptId) &&
            (identical(other.mZonaId, mZonaId) || other.mZonaId == mZonaId) &&
            const DeepCollectionEquality().equals(other.gradingId, gradingId) &&
            (identical(other.costcontreId, costcontreId) ||
                other.costcontreId == costcontreId) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.mPosisiId, mPosisiId) ||
                other.mPosisiId == mPosisiId) &&
            (identical(other.mJamKerjaId, mJamKerjaId) ||
                other.mJamKerjaId == mJamKerjaId) &&
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
            (identical(other.jkId, jkId) || other.jkId == jkId) &&
            (identical(other.tempatLahir, tempatLahir) ||
                other.tempatLahir == tempatLahir) &&
            (identical(other.tglLahir, tglLahir) ||
                other.tglLahir == tglLahir) &&
            (identical(other.provinsiId, provinsiId) ||
                other.provinsiId == provinsiId) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.kecamatanId, kecamatanId) ||
                other.kecamatanId == kecamatanId) &&
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
            (identical(other.namaKontakDarurat, namaKontakDarurat) ||
                other.namaKontakDarurat == namaKontakDarurat) &&
            (identical(other.agamaId, agamaId) || other.agamaId == agamaId) &&
            (identical(other.golDarahId, golDarahId) ||
                other.golDarahId == golDarahId) &&
            (identical(other.statusNikahId, statusNikahId) ||
                other.statusNikahId == statusNikahId) &&
            (identical(other.tanggunganId, tanggunganId) ||
                other.tanggunganId == tanggunganId) &&
            (identical(other.hubDgnKaryawan, hubDgnKaryawan) ||
                other.hubDgnKaryawan == hubDgnKaryawan) &&
            (identical(other.cutiJatahReguler, cutiJatahReguler) ||
                other.cutiJatahReguler == cutiJatahReguler) &&
            (identical(other.cutiSisaReguler, cutiSisaReguler) ||
                other.cutiSisaReguler == cutiSisaReguler) &&
            (identical(other.cutiPanjang, cutiPanjang) ||
                other.cutiPanjang == cutiPanjang) &&
            (identical(other.cutiSisaPanjang, cutiSisaPanjang) ||
                other.cutiSisaPanjang == cutiSisaPanjang) &&
            const DeepCollectionEquality()
                .equals(other.statusKaryId, statusKaryId) &&
            const DeepCollectionEquality()
                .equals(other.lamaKontrakAwal, lamaKontrakAwal) &&
            const DeepCollectionEquality()
                .equals(other.lamaKontrakAkhir, lamaKontrakAkhir) &&
            (identical(other.tglMasuk, tglMasuk) ||
                other.tglMasuk == tglMasuk) &&
            const DeepCollectionEquality()
                .equals(other.tglBerhenti, tglBerhenti) &&
            const DeepCollectionEquality()
                .equals(other.alasanBerhenti, alasanBerhenti) &&
            (identical(other.ukBaju, ukBaju) || other.ukBaju == ukBaju) &&
            (identical(other.ukCelana, ukCelana) ||
                other.ukCelana == ukCelana) &&
            (identical(other.ukSepatu, ukSepatu) ||
                other.ukSepatu == ukSepatu) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.lastEditorId, lastEditorId) ||
                other.lastEditorId == lastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.mStandartGajiId, mStandartGajiId) ||
                other.mStandartGajiId == mStandartGajiId) &&
            (identical(other.periodeGajiId, periodeGajiId) ||
                other.periodeGajiId == periodeGajiId) &&
            const DeepCollectionEquality().equals(other.refId, refId) &&
            const DeepCollectionEquality().equals(
                other.presensiLokasiDefaultId, presensiLokasiDefaultId) &&
            (identical(other.expDateCuti, expDateCuti) || other.expDateCuti == expDateCuti) &&
            (identical(other.dir, dir) || other.dir == dir) &&
            (identical(other.div, div) || other.div == div) &&
            (identical(other.dept, dept) || other.dept == dept) &&
            (identical(other.zona, zona) || other.zona == zona) &&
            const DeepCollectionEquality().equals(other.grading, grading) &&
            (identical(other.posisi, posisi) || other.posisi == posisi) &&
            (identical(other.jamKerja, jamKerja) || other.jamKerja == jamKerja) &&
            (identical(other.jk, jk) || other.jk == jk) &&
            (identical(other.provinsi, provinsi) || other.provinsi == provinsi) &&
            (identical(other.kota, kota) || other.kota == kota) &&
            (identical(other.kecamatan, kecamatan) || other.kecamatan == kecamatan) &&
            (identical(other.agama, agama) || other.agama == agama) &&
            (identical(other.golDarah, golDarah) || other.golDarah == golDarah) &&
            (identical(other.tanggungan, tanggungan) || other.tanggungan == tanggungan) &&
            (identical(other.costcontre, costcontre) || other.costcontre == costcontre) &&
            (identical(other.statusNikah, statusNikah) || other.statusNikah == statusNikah) &&
            (identical(other.ktpNo, ktpNo) || other.ktpNo == ktpNo) &&
            (identical(other.ktpFoto, ktpFoto) || other.ktpFoto == ktpFoto) &&
            (identical(other.pasFoto, pasFoto) || other.pasFoto == pasFoto) &&
            (identical(other.kkNo, kkNo) || other.kkNo == kkNo) &&
            (identical(other.kkFoto, kkFoto) || other.kkFoto == kkFoto) &&
            (identical(other.npwpNo, npwpNo) || other.npwpNo == npwpNo) &&
            (identical(other.npwpFoto, npwpFoto) || other.npwpFoto == npwpFoto) &&
            (identical(other.npwpTglBerlaku, npwpTglBerlaku) || other.npwpTglBerlaku == npwpTglBerlaku) &&
            (identical(other.bpjsTipeId, bpjsTipeId) || other.bpjsTipeId == bpjsTipeId) &&
            (identical(other.bpjsNo, bpjsNo) || other.bpjsNo == bpjsNo) &&
            (identical(other.bpjsFoto, bpjsFoto) || other.bpjsFoto == bpjsFoto) &&
            (identical(other.berkasLain, berkasLain) || other.berkasLain == berkasLain) &&
            const DeepCollectionEquality().equals(other.descFile, descFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        mCompId,
        mDirId,
        mDivisiId,
        mDeptId,
        mZonaId,
        const DeepCollectionEquality().hash(gradingId),
        costcontreId,
        kode,
        mPosisiId,
        mJamKerjaId,
        kodePresensi,
        nik,
        namaDepan,
        namaBelakang,
        namaLengkap,
        namaPanggilan,
        jkId,
        tempatLahir,
        tglLahir,
        provinsiId,
        kotaId,
        kecamatanId,
        kodePos,
        alamatAsli,
        alamatDomisili,
        noTlp,
        noTlpLainnya,
        noDarurat,
        namaKontakDarurat,
        agamaId,
        golDarahId,
        statusNikahId,
        tanggunganId,
        hubDgnKaryawan,
        cutiJatahReguler,
        cutiSisaReguler,
        cutiPanjang,
        cutiSisaPanjang,
        const DeepCollectionEquality().hash(statusKaryId),
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
        creatorId,
        lastEditorId,
        createdAt,
        updatedAt,
        mStandartGajiId,
        periodeGajiId,
        const DeepCollectionEquality().hash(refId),
        const DeepCollectionEquality().hash(presensiLokasiDefaultId),
        expDateCuti,
        dir,
        div,
        dept,
        zona,
        const DeepCollectionEquality().hash(grading),
        posisi,
        jamKerja,
        jk,
        provinsi,
        kota,
        kecamatan,
        agama,
        golDarah,
        tanggungan,
        costcontre,
        statusNikah,
        ktpNo,
        ktpFoto,
        pasFoto,
        kkNo,
        kkFoto,
        npwpNo,
        npwpFoto,
        npwpTglBerlaku,
        bpjsTipeId,
        bpjsNo,
        bpjsFoto,
        berkasLain,
        const DeepCollectionEquality().hash(descFile)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BiodataImplCopyWith<_$BiodataImpl> get copyWith =>
      __$$BiodataImplCopyWithImpl<_$BiodataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiodataImplToJson(
      this,
    );
  }
}

abstract class _Biodata implements Biodata {
  const factory _Biodata(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "m_comp_id") final int? mCompId,
      @JsonKey(name: "m_dir_id") final int? mDirId,
      @JsonKey(name: "m_divisi_id") final int? mDivisiId,
      @JsonKey(name: "m_dept_id") final int? mDeptId,
      @JsonKey(name: "m_zona_id") final int? mZonaId,
      @JsonKey(name: "grading_id") final dynamic gradingId,
      @JsonKey(name: "costcontre_id") final int? costcontreId,
      @JsonKey(name: "kode") final String? kode,
      @JsonKey(name: "m_posisi_id") final int? mPosisiId,
      @JsonKey(name: "m_jam_kerja_id") final int? mJamKerjaId,
      @JsonKey(name: "kode_presensi") final String? kodePresensi,
      @JsonKey(name: "nik") final String? nik,
      @JsonKey(name: "nama_depan") final String? namaDepan,
      @JsonKey(name: "nama_belakang") final String? namaBelakang,
      @JsonKey(name: "nama_lengkap") final String? namaLengkap,
      @JsonKey(name: "nama_panggilan") final String? namaPanggilan,
      @JsonKey(name: "jk_id") final int? jkId,
      @JsonKey(name: "tempat_lahir") final String? tempatLahir,
      @JsonKey(name: "tgl_lahir") final DateTime? tglLahir,
      @JsonKey(name: "provinsi_id") final int? provinsiId,
      @JsonKey(name: "kota_id") final int? kotaId,
      @JsonKey(name: "kecamatan_id") final int? kecamatanId,
      @JsonKey(name: "kode_pos") final String? kodePos,
      @JsonKey(name: "alamat_asli") final String? alamatAsli,
      @JsonKey(name: "alamat_domisili") final String? alamatDomisili,
      @JsonKey(name: "no_tlp") final String? noTlp,
      @JsonKey(name: "no_tlp_lainnya") final String? noTlpLainnya,
      @JsonKey(name: "no_darurat") final String? noDarurat,
      @JsonKey(name: "nama_kontak_darurat") final String? namaKontakDarurat,
      @JsonKey(name: "agama_id") final int? agamaId,
      @JsonKey(name: "gol_darah_id") final int? golDarahId,
      @JsonKey(name: "status_nikah_id") final int? statusNikahId,
      @JsonKey(name: "tanggungan_id") final int? tanggunganId,
      @JsonKey(name: "hub_dgn_karyawan") final String? hubDgnKaryawan,
      @JsonKey(name: "cuti_jatah_reguler") final int? cutiJatahReguler,
      @JsonKey(name: "cuti_sisa_reguler") final int? cutiSisaReguler,
      @JsonKey(name: "cuti_panjang") final int? cutiPanjang,
      @JsonKey(name: "cuti_sisa_panjang") final int? cutiSisaPanjang,
      @JsonKey(name: "status_kary_id") final dynamic statusKaryId,
      @JsonKey(name: "lama_kontrak_awal") final dynamic lamaKontrakAwal,
      @JsonKey(name: "lama_kontrak_akhir") final dynamic lamaKontrakAkhir,
      @JsonKey(name: "tgl_masuk") final DateTime? tglMasuk,
      @JsonKey(name: "tgl_berhenti") final dynamic tglBerhenti,
      @JsonKey(name: "alasan_berhenti") final dynamic alasanBerhenti,
      @JsonKey(name: "uk_baju") final String? ukBaju,
      @JsonKey(name: "uk_celana") final String? ukCelana,
      @JsonKey(name: "uk_sepatu") final String? ukSepatu,
      @JsonKey(name: "desc") final dynamic desc,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "creator_id") final int? creatorId,
      @JsonKey(name: "last_editor_id") final int? lastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "m_standart_gaji_id") final int? mStandartGajiId,
      @JsonKey(name: "periode_gaji_id") final int? periodeGajiId,
      @JsonKey(name: "ref_id") final dynamic refId,
      @JsonKey(name: "presensi_lokasi_default_id")
      final dynamic presensiLokasiDefaultId,
      @JsonKey(name: "exp_date_cuti") final DateTime? expDateCuti,
      @JsonKey(name: "dir") final String? dir,
      @JsonKey(name: "div") final String? div,
      @JsonKey(name: "dept") final String? dept,
      @JsonKey(name: "zona") final String? zona,
      @JsonKey(name: "grading") final dynamic grading,
      @JsonKey(name: "posisi") final String? posisi,
      @JsonKey(name: "jam_kerja") final String? jamKerja,
      @JsonKey(name: "jk") final String? jk,
      @JsonKey(name: "provinsi") final String? provinsi,
      @JsonKey(name: "kota") final String? kota,
      @JsonKey(name: "kecamatan") final String? kecamatan,
      @JsonKey(name: "agama") final String? agama,
      @JsonKey(name: "gol_darah") final String? golDarah,
      @JsonKey(name: "tanggungan") final String? tanggungan,
      @JsonKey(name: "costcontre") final String? costcontre,
      @JsonKey(name: "status_nikah") final String? statusNikah,
      @JsonKey(name: "ktp_no") final String? ktpNo,
      @JsonKey(name: "ktp_foto") final String? ktpFoto,
      @JsonKey(name: "pas_foto") final String? pasFoto,
      @JsonKey(name: "kk_no") final String? kkNo,
      @JsonKey(name: "kk_foto") final String? kkFoto,
      @JsonKey(name: "npwp_no") final String? npwpNo,
      @JsonKey(name: "npwp_foto") final String? npwpFoto,
      @JsonKey(name: "npwp_tgl_berlaku") final DateTime? npwpTglBerlaku,
      @JsonKey(name: "bpjs_tipe_id") final int? bpjsTipeId,
      @JsonKey(name: "bpjs_no") final String? bpjsNo,
      @JsonKey(name: "bpjs_foto") final String? bpjsFoto,
      @JsonKey(name: "berkas_lain") final String? berkasLain,
      @JsonKey(name: "desc_file") final dynamic descFile}) = _$BiodataImpl;

  factory _Biodata.fromJson(Map<String, dynamic> json) = _$BiodataImpl.fromJson;

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
  @JsonKey(name: "m_divisi_id")
  int? get mDivisiId;
  @override
  @JsonKey(name: "m_dept_id")
  int? get mDeptId;
  @override
  @JsonKey(name: "m_zona_id")
  int? get mZonaId;
  @override
  @JsonKey(name: "grading_id")
  dynamic get gradingId;
  @override
  @JsonKey(name: "costcontre_id")
  int? get costcontreId;
  @override
  @JsonKey(name: "kode")
  String? get kode;
  @override
  @JsonKey(name: "m_posisi_id")
  int? get mPosisiId;
  @override
  @JsonKey(name: "m_jam_kerja_id")
  int? get mJamKerjaId;
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
  int? get jkId;
  @override
  @JsonKey(name: "tempat_lahir")
  String? get tempatLahir;
  @override
  @JsonKey(name: "tgl_lahir")
  DateTime? get tglLahir;
  @override
  @JsonKey(name: "provinsi_id")
  int? get provinsiId;
  @override
  @JsonKey(name: "kota_id")
  int? get kotaId;
  @override
  @JsonKey(name: "kecamatan_id")
  int? get kecamatanId;
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
  int? get agamaId;
  @override
  @JsonKey(name: "gol_darah_id")
  int? get golDarahId;
  @override
  @JsonKey(name: "status_nikah_id")
  int? get statusNikahId;
  @override
  @JsonKey(name: "tanggungan_id")
  int? get tanggunganId;
  @override
  @JsonKey(name: "hub_dgn_karyawan")
  String? get hubDgnKaryawan;
  @override
  @JsonKey(name: "cuti_jatah_reguler")
  int? get cutiJatahReguler;
  @override
  @JsonKey(name: "cuti_sisa_reguler")
  int? get cutiSisaReguler;
  @override
  @JsonKey(name: "cuti_panjang")
  int? get cutiPanjang;
  @override
  @JsonKey(name: "cuti_sisa_panjang")
  int? get cutiSisaPanjang;
  @override
  @JsonKey(name: "status_kary_id")
  dynamic get statusKaryId;
  @override
  @JsonKey(name: "lama_kontrak_awal")
  dynamic get lamaKontrakAwal;
  @override
  @JsonKey(name: "lama_kontrak_akhir")
  dynamic get lamaKontrakAkhir;
  @override
  @JsonKey(name: "tgl_masuk")
  DateTime? get tglMasuk;
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
  int? get creatorId;
  @override
  @JsonKey(name: "last_editor_id")
  int? get lastEditorId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "m_standart_gaji_id")
  int? get mStandartGajiId;
  @override
  @JsonKey(name: "periode_gaji_id")
  int? get periodeGajiId;
  @override
  @JsonKey(name: "ref_id")
  dynamic get refId;
  @override
  @JsonKey(name: "presensi_lokasi_default_id")
  dynamic get presensiLokasiDefaultId;
  @override
  @JsonKey(name: "exp_date_cuti")
  DateTime? get expDateCuti;
  @override
  @JsonKey(name: "dir")
  String? get dir;
  @override
  @JsonKey(name: "div")
  String? get div;
  @override
  @JsonKey(name: "dept")
  String? get dept;
  @override
  @JsonKey(name: "zona")
  String? get zona;
  @override
  @JsonKey(name: "grading")
  dynamic get grading;
  @override
  @JsonKey(name: "posisi")
  String? get posisi;
  @override
  @JsonKey(name: "jam_kerja")
  String? get jamKerja;
  @override
  @JsonKey(name: "jk")
  String? get jk;
  @override
  @JsonKey(name: "provinsi")
  String? get provinsi;
  @override
  @JsonKey(name: "kota")
  String? get kota;
  @override
  @JsonKey(name: "kecamatan")
  String? get kecamatan;
  @override
  @JsonKey(name: "agama")
  String? get agama;
  @override
  @JsonKey(name: "gol_darah")
  String? get golDarah;
  @override
  @JsonKey(name: "tanggungan")
  String? get tanggungan;
  @override
  @JsonKey(name: "costcontre")
  String? get costcontre;
  @override
  @JsonKey(name: "status_nikah")
  String? get statusNikah;
  @override
  @JsonKey(name: "ktp_no")
  String? get ktpNo;
  @override
  @JsonKey(name: "ktp_foto")
  String? get ktpFoto;
  @override
  @JsonKey(name: "pas_foto")
  String? get pasFoto;
  @override
  @JsonKey(name: "kk_no")
  String? get kkNo;
  @override
  @JsonKey(name: "kk_foto")
  String? get kkFoto;
  @override
  @JsonKey(name: "npwp_no")
  String? get npwpNo;
  @override
  @JsonKey(name: "npwp_foto")
  String? get npwpFoto;
  @override
  @JsonKey(name: "npwp_tgl_berlaku")
  DateTime? get npwpTglBerlaku;
  @override
  @JsonKey(name: "bpjs_tipe_id")
  int? get bpjsTipeId;
  @override
  @JsonKey(name: "bpjs_no")
  String? get bpjsNo;
  @override
  @JsonKey(name: "bpjs_foto")
  String? get bpjsFoto;
  @override
  @JsonKey(name: "berkas_lain")
  String? get berkasLain;
  @override
  @JsonKey(name: "desc_file")
  dynamic get descFile;
  @override
  @JsonKey(ignore: true)
  _$$BiodataImplCopyWith<_$BiodataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

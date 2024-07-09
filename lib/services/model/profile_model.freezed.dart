// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  @JsonKey(name: "data")
  DataProfile? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "processed_time")
  double? get processedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") DataProfile? data,
      @JsonKey(name: "processed_time") double? processedTime});

  $DataProfileCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataProfile?,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataProfileCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataProfileCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") DataProfile? data,
      @JsonKey(name: "processed_time") double? processedTime});

  @override
  $DataProfileCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataProfile?,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {@JsonKey(name: "data") this.data,
      @JsonKey(name: "processed_time") this.processedTime});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataProfile? data;
  @override
  @JsonKey(name: "processed_time")
  final double? processedTime;

  @override
  String toString() {
    return 'ProfileModel(data: $data, processedTime: $processedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.processedTime, processedTime) ||
                other.processedTime == processedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, processedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
          {@JsonKey(name: "data") final DataProfile? data,
          @JsonKey(name: "processed_time") final double? processedTime}) =
      _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DataProfile? get data;
  @override
  @JsonKey(name: "processed_time")
  double? get processedTime;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataProfile _$DataProfileFromJson(Map<String, dynamic> json) {
  return _DataProfile.fromJson(json);
}

/// @nodoc
mixin _$DataProfile {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified_at")
  dynamic get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get dataMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_dir_id")
  int? get dataMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  dynamic get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  int? get lastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "remember_token")
  dynamic get rememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  dynamic get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "profil_image")
  String? get profilImage => throw _privateConstructorUsedError;
  @JsonKey(name: "telp")
  String? get telp => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary_id")
  int? get dataMKaryId => throw _privateConstructorUsedError;
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
  dynamic get mKaryGradingId => throw _privateConstructorUsedError;
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
  String? get mKaryTglMasuk => throw _privateConstructorUsedError;
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
  int? get mKaryLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.created_at")
  String? get mKaryCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.updated_at")
  String? get mKaryUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.m_standart_gaji_id")
  int? get mKaryMStandartGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.periode_gaji_id")
  int? get mKaryPeriodeGajiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.ref_id")
  dynamic get mKaryRefId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.atasan_id")
  int? get mKaryAtasanId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.presensi_lokasi_default_id")
  dynamic get mKaryPresensiLokasiDefaultId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.exp_date_cuti")
  String? get mKaryExpDateCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "m_kary.limit_potong")
  int? get mKaryLimitPotong => throw _privateConstructorUsedError;
  @JsonKey(name: "atasan")
  String? get atasan => throw _privateConstructorUsedError;
  @JsonKey(name: "info_cuti")
  InfoCuti? get infoCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "default_users_socialite")
  List<dynamic>? get defaultUsersSocialite =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataProfileCopyWith<DataProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataProfileCopyWith<$Res> {
  factory $DataProfileCopyWith(
          DataProfile value, $Res Function(DataProfile) then) =
      _$DataProfileCopyWithImpl<$Res, DataProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email_verified_at") dynamic emailVerifiedAt,
      @JsonKey(name: "m_comp_id") int? dataMCompId,
      @JsonKey(name: "m_dir_id") int? dataMDirId,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") dynamic creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "remember_token") dynamic rememberToken,
      @JsonKey(name: "created_at") dynamic createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "profil_image") String? profilImage,
      @JsonKey(name: "telp") String? telp,
      @JsonKey(name: "m_kary_id") int? dataMKaryId,
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
      @JsonKey(name: "m_kary.id") int? mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") int? mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") int? mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") int? mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") int? mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") int? mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") dynamic mKaryGradingId,
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
      @JsonKey(name: "m_kary.tgl_masuk") String? mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") dynamic mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti") dynamic mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") String? mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") String? mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") String? mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") dynamic mKaryDesc,
      @JsonKey(name: "m_kary.is_active") bool? mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") dynamic mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") int? mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") String? mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") String? mKaryUpdatedAt,
      @JsonKey(name: "m_kary.m_standart_gaji_id") int? mKaryMStandartGajiId,
      @JsonKey(name: "m_kary.periode_gaji_id") int? mKaryPeriodeGajiId,
      @JsonKey(name: "m_kary.ref_id") dynamic mKaryRefId,
      @JsonKey(name: "m_kary.atasan_id") int? mKaryAtasanId,
      @JsonKey(name: "m_kary.presensi_lokasi_default_id")
      dynamic mKaryPresensiLokasiDefaultId,
      @JsonKey(name: "m_kary.exp_date_cuti") String? mKaryExpDateCuti,
      @JsonKey(name: "m_kary.limit_potong") int? mKaryLimitPotong,
      @JsonKey(name: "atasan") String? atasan,
      @JsonKey(name: "info_cuti") InfoCuti? infoCuti,
      @JsonKey(name: "default_users_socialite")
      List<dynamic>? defaultUsersSocialite});

  $InfoCutiCopyWith<$Res>? get infoCuti;
}

/// @nodoc
class _$DataProfileCopyWithImpl<$Res, $Val extends DataProfile>
    implements $DataProfileCopyWith<$Res> {
  _$DataProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? emailVerifiedAt = freezed,
    Object? dataMCompId = freezed,
    Object? dataMDirId = freezed,
    Object? isActive = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? rememberToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? profilImage = freezed,
    Object? telp = freezed,
    Object? dataMKaryId = freezed,
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
    Object? mKaryAtasanId = freezed,
    Object? mKaryPresensiLokasiDefaultId = freezed,
    Object? mKaryExpDateCuti = freezed,
    Object? mKaryLimitPotong = freezed,
    Object? atasan = freezed,
    Object? infoCuti = freezed,
    Object? defaultUsersSocialite = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dataMCompId: freezed == dataMCompId
          ? _value.dataMCompId
          : dataMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      dataMDirId: freezed == dataMDirId
          ? _value.dataMDirId
          : dataMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      profilImage: freezed == profilImage
          ? _value.profilImage
          : profilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      telp: freezed == telp
          ? _value.telp
          : telp // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMKaryId: freezed == dataMKaryId
          ? _value.dataMKaryId
          : dataMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as dynamic,
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
              as String?,
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
              as int?,
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
              as dynamic,
      mKaryAtasanId: freezed == mKaryAtasanId
          ? _value.mKaryAtasanId
          : mKaryAtasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryPresensiLokasiDefaultId: freezed == mKaryPresensiLokasiDefaultId
          ? _value.mKaryPresensiLokasiDefaultId
          : mKaryPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryExpDateCuti: freezed == mKaryExpDateCuti
          ? _value.mKaryExpDateCuti
          : mKaryExpDateCuti // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryLimitPotong: freezed == mKaryLimitPotong
          ? _value.mKaryLimitPotong
          : mKaryLimitPotong // ignore: cast_nullable_to_non_nullable
              as int?,
      atasan: freezed == atasan
          ? _value.atasan
          : atasan // ignore: cast_nullable_to_non_nullable
              as String?,
      infoCuti: freezed == infoCuti
          ? _value.infoCuti
          : infoCuti // ignore: cast_nullable_to_non_nullable
              as InfoCuti?,
      defaultUsersSocialite: freezed == defaultUsersSocialite
          ? _value.defaultUsersSocialite
          : defaultUsersSocialite // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCutiCopyWith<$Res>? get infoCuti {
    if (_value.infoCuti == null) {
      return null;
    }

    return $InfoCutiCopyWith<$Res>(_value.infoCuti!, (value) {
      return _then(_value.copyWith(infoCuti: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataProfileImplCopyWith<$Res>
    implements $DataProfileCopyWith<$Res> {
  factory _$$DataProfileImplCopyWith(
          _$DataProfileImpl value, $Res Function(_$DataProfileImpl) then) =
      __$$DataProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email_verified_at") dynamic emailVerifiedAt,
      @JsonKey(name: "m_comp_id") int? dataMCompId,
      @JsonKey(name: "m_dir_id") int? dataMDirId,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "creator_id") dynamic creatorId,
      @JsonKey(name: "last_editor_id") int? lastEditorId,
      @JsonKey(name: "remember_token") dynamic rememberToken,
      @JsonKey(name: "created_at") dynamic createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "profil_image") String? profilImage,
      @JsonKey(name: "telp") String? telp,
      @JsonKey(name: "m_kary_id") int? dataMKaryId,
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
      @JsonKey(name: "m_kary.id") int? mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") int? mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") int? mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") int? mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") int? mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") int? mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") dynamic mKaryGradingId,
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
      @JsonKey(name: "m_kary.tgl_masuk") String? mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") dynamic mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti") dynamic mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") String? mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") String? mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") String? mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") dynamic mKaryDesc,
      @JsonKey(name: "m_kary.is_active") bool? mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") dynamic mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") int? mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") String? mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") String? mKaryUpdatedAt,
      @JsonKey(name: "m_kary.m_standart_gaji_id") int? mKaryMStandartGajiId,
      @JsonKey(name: "m_kary.periode_gaji_id") int? mKaryPeriodeGajiId,
      @JsonKey(name: "m_kary.ref_id") dynamic mKaryRefId,
      @JsonKey(name: "m_kary.atasan_id") int? mKaryAtasanId,
      @JsonKey(name: "m_kary.presensi_lokasi_default_id")
      dynamic mKaryPresensiLokasiDefaultId,
      @JsonKey(name: "m_kary.exp_date_cuti") String? mKaryExpDateCuti,
      @JsonKey(name: "m_kary.limit_potong") int? mKaryLimitPotong,
      @JsonKey(name: "atasan") String? atasan,
      @JsonKey(name: "info_cuti") InfoCuti? infoCuti,
      @JsonKey(name: "default_users_socialite")
      List<dynamic>? defaultUsersSocialite});

  @override
  $InfoCutiCopyWith<$Res>? get infoCuti;
}

/// @nodoc
class __$$DataProfileImplCopyWithImpl<$Res>
    extends _$DataProfileCopyWithImpl<$Res, _$DataProfileImpl>
    implements _$$DataProfileImplCopyWith<$Res> {
  __$$DataProfileImplCopyWithImpl(
      _$DataProfileImpl _value, $Res Function(_$DataProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? emailVerifiedAt = freezed,
    Object? dataMCompId = freezed,
    Object? dataMDirId = freezed,
    Object? isActive = freezed,
    Object? creatorId = freezed,
    Object? lastEditorId = freezed,
    Object? rememberToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? profilImage = freezed,
    Object? telp = freezed,
    Object? dataMKaryId = freezed,
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
    Object? mKaryAtasanId = freezed,
    Object? mKaryPresensiLokasiDefaultId = freezed,
    Object? mKaryExpDateCuti = freezed,
    Object? mKaryLimitPotong = freezed,
    Object? atasan = freezed,
    Object? infoCuti = freezed,
    Object? defaultUsersSocialite = freezed,
  }) {
    return _then(_$DataProfileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dataMCompId: freezed == dataMCompId
          ? _value.dataMCompId
          : dataMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      dataMDirId: freezed == dataMDirId
          ? _value.dataMDirId
          : dataMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      profilImage: freezed == profilImage
          ? _value.profilImage
          : profilImage // ignore: cast_nullable_to_non_nullable
              as String?,
      telp: freezed == telp
          ? _value.telp
          : telp // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMKaryId: freezed == dataMKaryId
          ? _value.dataMKaryId
          : dataMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as dynamic,
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
              as String?,
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
              as int?,
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
              as dynamic,
      mKaryAtasanId: freezed == mKaryAtasanId
          ? _value.mKaryAtasanId
          : mKaryAtasanId // ignore: cast_nullable_to_non_nullable
              as int?,
      mKaryPresensiLokasiDefaultId: freezed == mKaryPresensiLokasiDefaultId
          ? _value.mKaryPresensiLokasiDefaultId
          : mKaryPresensiLokasiDefaultId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKaryExpDateCuti: freezed == mKaryExpDateCuti
          ? _value.mKaryExpDateCuti
          : mKaryExpDateCuti // ignore: cast_nullable_to_non_nullable
              as String?,
      mKaryLimitPotong: freezed == mKaryLimitPotong
          ? _value.mKaryLimitPotong
          : mKaryLimitPotong // ignore: cast_nullable_to_non_nullable
              as int?,
      atasan: freezed == atasan
          ? _value.atasan
          : atasan // ignore: cast_nullable_to_non_nullable
              as String?,
      infoCuti: freezed == infoCuti
          ? _value.infoCuti
          : infoCuti // ignore: cast_nullable_to_non_nullable
              as InfoCuti?,
      defaultUsersSocialite: freezed == defaultUsersSocialite
          ? _value._defaultUsersSocialite
          : defaultUsersSocialite // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataProfileImpl implements _DataProfile {
  const _$DataProfileImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "email_verified_at") this.emailVerifiedAt,
      @JsonKey(name: "m_comp_id") this.dataMCompId,
      @JsonKey(name: "m_dir_id") this.dataMDirId,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "creator_id") this.creatorId,
      @JsonKey(name: "last_editor_id") this.lastEditorId,
      @JsonKey(name: "remember_token") this.rememberToken,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "profil_image") this.profilImage,
      @JsonKey(name: "telp") this.telp,
      @JsonKey(name: "m_kary_id") this.dataMKaryId,
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
      @JsonKey(name: "m_kary.atasan_id") this.mKaryAtasanId,
      @JsonKey(name: "m_kary.presensi_lokasi_default_id")
      this.mKaryPresensiLokasiDefaultId,
      @JsonKey(name: "m_kary.exp_date_cuti") this.mKaryExpDateCuti,
      @JsonKey(name: "m_kary.limit_potong") this.mKaryLimitPotong,
      @JsonKey(name: "atasan") this.atasan,
      @JsonKey(name: "info_cuti") this.infoCuti,
      @JsonKey(name: "default_users_socialite")
      final List<dynamic>? defaultUsersSocialite})
      : _defaultUsersSocialite = defaultUsersSocialite;

  factory _$DataProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataProfileImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "email_verified_at")
  final dynamic emailVerifiedAt;
  @override
  @JsonKey(name: "m_comp_id")
  final int? dataMCompId;
  @override
  @JsonKey(name: "m_dir_id")
  final int? dataMDirId;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "creator_id")
  final dynamic creatorId;
  @override
  @JsonKey(name: "last_editor_id")
  final int? lastEditorId;
  @override
  @JsonKey(name: "remember_token")
  final dynamic rememberToken;
  @override
  @JsonKey(name: "created_at")
  final dynamic createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "profil_image")
  final String? profilImage;
  @override
  @JsonKey(name: "telp")
  final String? telp;
  @override
  @JsonKey(name: "m_kary_id")
  final int? dataMKaryId;
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
  final dynamic mKaryGradingId;
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
  final String? mKaryTglMasuk;
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
  final int? mKaryLastEditorId;
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
  final dynamic mKaryRefId;
  @override
  @JsonKey(name: "m_kary.atasan_id")
  final int? mKaryAtasanId;
  @override
  @JsonKey(name: "m_kary.presensi_lokasi_default_id")
  final dynamic mKaryPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "m_kary.exp_date_cuti")
  final String? mKaryExpDateCuti;
  @override
  @JsonKey(name: "m_kary.limit_potong")
  final int? mKaryLimitPotong;
  @override
  @JsonKey(name: "atasan")
  final String? atasan;
  @override
  @JsonKey(name: "info_cuti")
  final InfoCuti? infoCuti;
  final List<dynamic>? _defaultUsersSocialite;
  @override
  @JsonKey(name: "default_users_socialite")
  List<dynamic>? get defaultUsersSocialite {
    final value = _defaultUsersSocialite;
    if (value == null) return null;
    if (_defaultUsersSocialite is EqualUnmodifiableListView)
      return _defaultUsersSocialite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataProfile(id: $id, name: $name, email: $email, username: $username, emailVerifiedAt: $emailVerifiedAt, dataMCompId: $dataMCompId, dataMDirId: $dataMDirId, isActive: $isActive, creatorId: $creatorId, lastEditorId: $lastEditorId, rememberToken: $rememberToken, createdAt: $createdAt, updatedAt: $updatedAt, profilImage: $profilImage, telp: $telp, dataMKaryId: $dataMKaryId, mCompId: $mCompId, mCompNama: $mCompNama, mCompIsActive: $mCompIsActive, mCompDesc: $mCompDesc, mCompCreatorId: $mCompCreatorId, mCompLastEditorId: $mCompLastEditorId, mCompCreatedAt: $mCompCreatedAt, mCompUpdatedAt: $mCompUpdatedAt, mDirId: $mDirId, mDirMCompId: $mDirMCompId, mDirNama: $mDirNama, mDirDesc: $mDirDesc, mDirIsActive: $mDirIsActive, mDirCreatorId: $mDirCreatorId, mDirLastEditorId: $mDirLastEditorId, mDirCreatedAt: $mDirCreatedAt, mDirUpdatedAt: $mDirUpdatedAt, mKaryId: $mKaryId, mKaryMCompId: $mKaryMCompId, mKaryMDirId: $mKaryMDirId, mKaryMDivisiId: $mKaryMDivisiId, mKaryMDeptId: $mKaryMDeptId, mKaryMZonaId: $mKaryMZonaId, mKaryGradingId: $mKaryGradingId, mKaryCostcontreId: $mKaryCostcontreId, mKaryKode: $mKaryKode, mKaryMPosisiId: $mKaryMPosisiId, mKaryMJamKerjaId: $mKaryMJamKerjaId, mKaryKodePresensi: $mKaryKodePresensi, mKaryNik: $mKaryNik, mKaryNamaDepan: $mKaryNamaDepan, mKaryNamaBelakang: $mKaryNamaBelakang, mKaryNamaLengkap: $mKaryNamaLengkap, mKaryNamaPanggilan: $mKaryNamaPanggilan, mKaryJkId: $mKaryJkId, mKaryTempatLahir: $mKaryTempatLahir, mKaryTglLahir: $mKaryTglLahir, mKaryProvinsiId: $mKaryProvinsiId, mKaryKotaId: $mKaryKotaId, mKaryKecamatanId: $mKaryKecamatanId, mKaryKodePos: $mKaryKodePos, mKaryAlamatAsli: $mKaryAlamatAsli, mKaryAlamatDomisili: $mKaryAlamatDomisili, mKaryNoTlp: $mKaryNoTlp, mKaryNoTlpLainnya: $mKaryNoTlpLainnya, mKaryNoDarurat: $mKaryNoDarurat, mKaryNamaKontakDarurat: $mKaryNamaKontakDarurat, mKaryAgamaId: $mKaryAgamaId, mKaryGolDarahId: $mKaryGolDarahId, mKaryStatusNikahId: $mKaryStatusNikahId, mKaryTanggunganId: $mKaryTanggunganId, mKaryHubDgnKaryawan: $mKaryHubDgnKaryawan, mKaryCutiJatahReguler: $mKaryCutiJatahReguler, mKaryCutiSisaReguler: $mKaryCutiSisaReguler, mKaryCutiPanjang: $mKaryCutiPanjang, mKaryCutiSisaPanjang: $mKaryCutiSisaPanjang, mKaryStatusKaryId: $mKaryStatusKaryId, mKaryLamaKontrakAwal: $mKaryLamaKontrakAwal, mKaryLamaKontrakAkhir: $mKaryLamaKontrakAkhir, mKaryTglMasuk: $mKaryTglMasuk, mKaryTglBerhenti: $mKaryTglBerhenti, mKaryAlasanBerhenti: $mKaryAlasanBerhenti, mKaryUkBaju: $mKaryUkBaju, mKaryUkCelana: $mKaryUkCelana, mKaryUkSepatu: $mKaryUkSepatu, mKaryDesc: $mKaryDesc, mKaryIsActive: $mKaryIsActive, mKaryCreatorId: $mKaryCreatorId, mKaryLastEditorId: $mKaryLastEditorId, mKaryCreatedAt: $mKaryCreatedAt, mKaryUpdatedAt: $mKaryUpdatedAt, mKaryMStandartGajiId: $mKaryMStandartGajiId, mKaryPeriodeGajiId: $mKaryPeriodeGajiId, mKaryRefId: $mKaryRefId, mKaryAtasanId: $mKaryAtasanId, mKaryPresensiLokasiDefaultId: $mKaryPresensiLokasiDefaultId, mKaryExpDateCuti: $mKaryExpDateCuti, mKaryLimitPotong: $mKaryLimitPotong, atasan: $atasan, infoCuti: $infoCuti, defaultUsersSocialite: $defaultUsersSocialite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            (identical(other.dataMCompId, dataMCompId) ||
                other.dataMCompId == dataMCompId) &&
            (identical(other.dataMDirId, dataMDirId) ||
                other.dataMDirId == dataMDirId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            (identical(other.lastEditorId, lastEditorId) ||
                other.lastEditorId == lastEditorId) &&
            const DeepCollectionEquality()
                .equals(other.rememberToken, rememberToken) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.profilImage, profilImage) ||
                other.profilImage == profilImage) &&
            (identical(other.telp, telp) || other.telp == telp) &&
            (identical(other.dataMKaryId, dataMKaryId) ||
                other.dataMKaryId == dataMKaryId) &&
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
            (identical(other.mKaryId, mKaryId) || other.mKaryId == mKaryId) &&
            (identical(other.mKaryMCompId, mKaryMCompId) ||
                other.mKaryMCompId == mKaryMCompId) &&
            (identical(other.mKaryMDirId, mKaryMDirId) ||
                other.mKaryMDirId == mKaryMDirId) &&
            (identical(other.mKaryMDivisiId, mKaryMDivisiId) ||
                other.mKaryMDivisiId == mKaryMDivisiId) &&
            (identical(other.mKaryMDeptId, mKaryMDeptId) ||
                other.mKaryMDeptId == mKaryMDeptId) &&
            (identical(other.mKaryMZonaId, mKaryMZonaId) ||
                other.mKaryMZonaId == mKaryMZonaId) &&
            const DeepCollectionEquality()
                .equals(other.mKaryGradingId, mKaryGradingId) &&
            (identical(other.mKaryCostcontreId, mKaryCostcontreId) ||
                other.mKaryCostcontreId == mKaryCostcontreId) &&
            (identical(other.mKaryKode, mKaryKode) ||
                other.mKaryKode == mKaryKode) &&
            (identical(other.mKaryMPosisiId, mKaryMPosisiId) ||
                other.mKaryMPosisiId == mKaryMPosisiId) &&
            (identical(other.mKaryMJamKerjaId, mKaryMJamKerjaId) ||
                other.mKaryMJamKerjaId == mKaryMJamKerjaId) &&
            (identical(other.mKaryKodePresensi, mKaryKodePresensi) ||
                other.mKaryKodePresensi == mKaryKodePresensi) &&
            (identical(other.mKaryNik, mKaryNik) ||
                other.mKaryNik == mKaryNik) &&
            (identical(other.mKaryNamaDepan, mKaryNamaDepan) ||
                other.mKaryNamaDepan == mKaryNamaDepan) &&
            (identical(other.mKaryNamaBelakang, mKaryNamaBelakang) ||
                other.mKaryNamaBelakang == mKaryNamaBelakang) &&
            (identical(other.mKaryNamaLengkap, mKaryNamaLengkap) ||
                other.mKaryNamaLengkap == mKaryNamaLengkap) &&
            (identical(other.mKaryNamaPanggilan, mKaryNamaPanggilan) ||
                other.mKaryNamaPanggilan == mKaryNamaPanggilan) &&
            (identical(other.mKaryJkId, mKaryJkId) ||
                other.mKaryJkId == mKaryJkId) &&
            (identical(other.mKaryTempatLahir, mKaryTempatLahir) ||
                other.mKaryTempatLahir == mKaryTempatLahir) &&
            (identical(other.mKaryTglLahir, mKaryTglLahir) ||
                other.mKaryTglLahir == mKaryTglLahir) &&
            (identical(other.mKaryProvinsiId, mKaryProvinsiId) ||
                other.mKaryProvinsiId == mKaryProvinsiId) &&
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
            (identical(other.mKaryTglMasuk, mKaryTglMasuk) || other.mKaryTglMasuk == mKaryTglMasuk) &&
            const DeepCollectionEquality().equals(other.mKaryTglBerhenti, mKaryTglBerhenti) &&
            const DeepCollectionEquality().equals(other.mKaryAlasanBerhenti, mKaryAlasanBerhenti) &&
            (identical(other.mKaryUkBaju, mKaryUkBaju) || other.mKaryUkBaju == mKaryUkBaju) &&
            (identical(other.mKaryUkCelana, mKaryUkCelana) || other.mKaryUkCelana == mKaryUkCelana) &&
            (identical(other.mKaryUkSepatu, mKaryUkSepatu) || other.mKaryUkSepatu == mKaryUkSepatu) &&
            const DeepCollectionEquality().equals(other.mKaryDesc, mKaryDesc) &&
            (identical(other.mKaryIsActive, mKaryIsActive) || other.mKaryIsActive == mKaryIsActive) &&
            const DeepCollectionEquality().equals(other.mKaryCreatorId, mKaryCreatorId) &&
            (identical(other.mKaryLastEditorId, mKaryLastEditorId) || other.mKaryLastEditorId == mKaryLastEditorId) &&
            (identical(other.mKaryCreatedAt, mKaryCreatedAt) || other.mKaryCreatedAt == mKaryCreatedAt) &&
            (identical(other.mKaryUpdatedAt, mKaryUpdatedAt) || other.mKaryUpdatedAt == mKaryUpdatedAt) &&
            (identical(other.mKaryMStandartGajiId, mKaryMStandartGajiId) || other.mKaryMStandartGajiId == mKaryMStandartGajiId) &&
            (identical(other.mKaryPeriodeGajiId, mKaryPeriodeGajiId) || other.mKaryPeriodeGajiId == mKaryPeriodeGajiId) &&
            const DeepCollectionEquality().equals(other.mKaryRefId, mKaryRefId) &&
            (identical(other.mKaryAtasanId, mKaryAtasanId) || other.mKaryAtasanId == mKaryAtasanId) &&
            const DeepCollectionEquality().equals(other.mKaryPresensiLokasiDefaultId, mKaryPresensiLokasiDefaultId) &&
            (identical(other.mKaryExpDateCuti, mKaryExpDateCuti) || other.mKaryExpDateCuti == mKaryExpDateCuti) &&
            (identical(other.mKaryLimitPotong, mKaryLimitPotong) || other.mKaryLimitPotong == mKaryLimitPotong) &&
            (identical(other.atasan, atasan) || other.atasan == atasan) &&
            (identical(other.infoCuti, infoCuti) || other.infoCuti == infoCuti) &&
            const DeepCollectionEquality().equals(other._defaultUsersSocialite, _defaultUsersSocialite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        email,
        username,
        const DeepCollectionEquality().hash(emailVerifiedAt),
        dataMCompId,
        dataMDirId,
        isActive,
        const DeepCollectionEquality().hash(creatorId),
        lastEditorId,
        const DeepCollectionEquality().hash(rememberToken),
        const DeepCollectionEquality().hash(createdAt),
        updatedAt,
        profilImage,
        telp,
        dataMKaryId,
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
        mKaryId,
        mKaryMCompId,
        mKaryMDirId,
        mKaryMDivisiId,
        mKaryMDeptId,
        mKaryMZonaId,
        const DeepCollectionEquality().hash(mKaryGradingId),
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
        mKaryTglMasuk,
        const DeepCollectionEquality().hash(mKaryTglBerhenti),
        const DeepCollectionEquality().hash(mKaryAlasanBerhenti),
        mKaryUkBaju,
        mKaryUkCelana,
        mKaryUkSepatu,
        const DeepCollectionEquality().hash(mKaryDesc),
        mKaryIsActive,
        const DeepCollectionEquality().hash(mKaryCreatorId),
        mKaryLastEditorId,
        mKaryCreatedAt,
        mKaryUpdatedAt,
        mKaryMStandartGajiId,
        mKaryPeriodeGajiId,
        const DeepCollectionEquality().hash(mKaryRefId),
        mKaryAtasanId,
        const DeepCollectionEquality().hash(mKaryPresensiLokasiDefaultId),
        mKaryExpDateCuti,
        mKaryLimitPotong,
        atasan,
        infoCuti,
        const DeepCollectionEquality().hash(_defaultUsersSocialite)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataProfileImplCopyWith<_$DataProfileImpl> get copyWith =>
      __$$DataProfileImplCopyWithImpl<_$DataProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataProfileImplToJson(
      this,
    );
  }
}

abstract class _DataProfile implements DataProfile {
  const factory _DataProfile(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "username") final String? username,
      @JsonKey(name: "email_verified_at") final dynamic emailVerifiedAt,
      @JsonKey(name: "m_comp_id") final int? dataMCompId,
      @JsonKey(name: "m_dir_id") final int? dataMDirId,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "creator_id") final dynamic creatorId,
      @JsonKey(name: "last_editor_id") final int? lastEditorId,
      @JsonKey(name: "remember_token") final dynamic rememberToken,
      @JsonKey(name: "created_at") final dynamic createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "profil_image") final String? profilImage,
      @JsonKey(name: "telp") final String? telp,
      @JsonKey(name: "m_kary_id") final int? dataMKaryId,
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
      @JsonKey(name: "m_kary.id") final int? mKaryId,
      @JsonKey(name: "m_kary.m_comp_id") final int? mKaryMCompId,
      @JsonKey(name: "m_kary.m_dir_id") final int? mKaryMDirId,
      @JsonKey(name: "m_kary.m_divisi_id") final int? mKaryMDivisiId,
      @JsonKey(name: "m_kary.m_dept_id") final int? mKaryMDeptId,
      @JsonKey(name: "m_kary.m_zona_id") final int? mKaryMZonaId,
      @JsonKey(name: "m_kary.grading_id") final dynamic mKaryGradingId,
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
      @JsonKey(name: "m_kary.tgl_masuk") final String? mKaryTglMasuk,
      @JsonKey(name: "m_kary.tgl_berhenti") final dynamic mKaryTglBerhenti,
      @JsonKey(name: "m_kary.alasan_berhenti")
      final dynamic mKaryAlasanBerhenti,
      @JsonKey(name: "m_kary.uk_baju") final String? mKaryUkBaju,
      @JsonKey(name: "m_kary.uk_celana") final String? mKaryUkCelana,
      @JsonKey(name: "m_kary.uk_sepatu") final String? mKaryUkSepatu,
      @JsonKey(name: "m_kary.desc") final dynamic mKaryDesc,
      @JsonKey(name: "m_kary.is_active") final bool? mKaryIsActive,
      @JsonKey(name: "m_kary.creator_id") final dynamic mKaryCreatorId,
      @JsonKey(name: "m_kary.last_editor_id") final int? mKaryLastEditorId,
      @JsonKey(name: "m_kary.created_at") final String? mKaryCreatedAt,
      @JsonKey(name: "m_kary.updated_at") final String? mKaryUpdatedAt,
      @JsonKey(name: "m_kary.m_standart_gaji_id")
      final int? mKaryMStandartGajiId,
      @JsonKey(name: "m_kary.periode_gaji_id") final int? mKaryPeriodeGajiId,
      @JsonKey(name: "m_kary.ref_id") final dynamic mKaryRefId,
      @JsonKey(name: "m_kary.atasan_id") final int? mKaryAtasanId,
      @JsonKey(name: "m_kary.presensi_lokasi_default_id")
      final dynamic mKaryPresensiLokasiDefaultId,
      @JsonKey(name: "m_kary.exp_date_cuti") final String? mKaryExpDateCuti,
      @JsonKey(name: "m_kary.limit_potong") final int? mKaryLimitPotong,
      @JsonKey(name: "atasan") final String? atasan,
      @JsonKey(name: "info_cuti") final InfoCuti? infoCuti,
      @JsonKey(name: "default_users_socialite")
      final List<dynamic>? defaultUsersSocialite}) = _$DataProfileImpl;

  factory _DataProfile.fromJson(Map<String, dynamic> json) =
      _$DataProfileImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "email_verified_at")
  dynamic get emailVerifiedAt;
  @override
  @JsonKey(name: "m_comp_id")
  int? get dataMCompId;
  @override
  @JsonKey(name: "m_dir_id")
  int? get dataMDirId;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "creator_id")
  dynamic get creatorId;
  @override
  @JsonKey(name: "last_editor_id")
  int? get lastEditorId;
  @override
  @JsonKey(name: "remember_token")
  dynamic get rememberToken;
  @override
  @JsonKey(name: "created_at")
  dynamic get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "profil_image")
  String? get profilImage;
  @override
  @JsonKey(name: "telp")
  String? get telp;
  @override
  @JsonKey(name: "m_kary_id")
  int? get dataMKaryId;
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
  dynamic get mKaryGradingId;
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
  String? get mKaryTglMasuk;
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
  int? get mKaryLastEditorId;
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
  dynamic get mKaryRefId;
  @override
  @JsonKey(name: "m_kary.atasan_id")
  int? get mKaryAtasanId;
  @override
  @JsonKey(name: "m_kary.presensi_lokasi_default_id")
  dynamic get mKaryPresensiLokasiDefaultId;
  @override
  @JsonKey(name: "m_kary.exp_date_cuti")
  String? get mKaryExpDateCuti;
  @override
  @JsonKey(name: "m_kary.limit_potong")
  int? get mKaryLimitPotong;
  @override
  @JsonKey(name: "atasan")
  String? get atasan;
  @override
  @JsonKey(name: "info_cuti")
  InfoCuti? get infoCuti;
  @override
  @JsonKey(name: "default_users_socialite")
  List<dynamic>? get defaultUsersSocialite;
  @override
  @JsonKey(ignore: true)
  _$$DataProfileImplCopyWith<_$DataProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InfoCuti _$InfoCutiFromJson(Map<String, dynamic> json) {
  return _InfoCuti.fromJson(json);
}

/// @nodoc
mixin _$InfoCuti {
  @JsonKey(name: "cuti_p24")
  int? get cutiP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_reguler")
  int? get cutiReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "work_present")
  int? get workPresent => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_terpakai")
  int? get cutiTerpakai => throw _privateConstructorUsedError;
  @JsonKey(name: "potongan_cuti")
  int? get potonganCuti => throw _privateConstructorUsedError;
  @JsonKey(name: "sisa_cuti_p24")
  int? get sisaCutiP24 => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_masa_kerja")
  int? get cutiMasaKerja => throw _privateConstructorUsedError;
  @JsonKey(name: "work_not_present")
  int? get workNotPresent => throw _privateConstructorUsedError;
  @JsonKey(name: "cuti_p24_terpakai")
  int? get cutiP24Terpakai => throw _privateConstructorUsedError;
  @JsonKey(name: "sisa_cuti_reguler")
  int? get sisaCutiReguler => throw _privateConstructorUsedError;
  @JsonKey(name: "work_days_in_month")
  int? get workDaysInMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "sisa_cuti_masa_kerja")
  int? get sisaCutiMasaKerja => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoCutiCopyWith<InfoCuti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCutiCopyWith<$Res> {
  factory $InfoCutiCopyWith(InfoCuti value, $Res Function(InfoCuti) then) =
      _$InfoCutiCopyWithImpl<$Res, InfoCuti>;
  @useResult
  $Res call(
      {@JsonKey(name: "cuti_p24") int? cutiP24,
      @JsonKey(name: "cuti_reguler") int? cutiReguler,
      @JsonKey(name: "work_present") int? workPresent,
      @JsonKey(name: "cuti_terpakai") int? cutiTerpakai,
      @JsonKey(name: "potongan_cuti") int? potonganCuti,
      @JsonKey(name: "sisa_cuti_p24") int? sisaCutiP24,
      @JsonKey(name: "cuti_masa_kerja") int? cutiMasaKerja,
      @JsonKey(name: "work_not_present") int? workNotPresent,
      @JsonKey(name: "cuti_p24_terpakai") int? cutiP24Terpakai,
      @JsonKey(name: "sisa_cuti_reguler") int? sisaCutiReguler,
      @JsonKey(name: "work_days_in_month") int? workDaysInMonth,
      @JsonKey(name: "sisa_cuti_masa_kerja") int? sisaCutiMasaKerja});
}

/// @nodoc
class _$InfoCutiCopyWithImpl<$Res, $Val extends InfoCuti>
    implements $InfoCutiCopyWith<$Res> {
  _$InfoCutiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cutiP24 = freezed,
    Object? cutiReguler = freezed,
    Object? workPresent = freezed,
    Object? cutiTerpakai = freezed,
    Object? potonganCuti = freezed,
    Object? sisaCutiP24 = freezed,
    Object? cutiMasaKerja = freezed,
    Object? workNotPresent = freezed,
    Object? cutiP24Terpakai = freezed,
    Object? sisaCutiReguler = freezed,
    Object? workDaysInMonth = freezed,
    Object? sisaCutiMasaKerja = freezed,
  }) {
    return _then(_value.copyWith(
      cutiP24: freezed == cutiP24
          ? _value.cutiP24
          : cutiP24 // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiReguler: freezed == cutiReguler
          ? _value.cutiReguler
          : cutiReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      workPresent: freezed == workPresent
          ? _value.workPresent
          : workPresent // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiTerpakai: freezed == cutiTerpakai
          ? _value.cutiTerpakai
          : cutiTerpakai // ignore: cast_nullable_to_non_nullable
              as int?,
      potonganCuti: freezed == potonganCuti
          ? _value.potonganCuti
          : potonganCuti // ignore: cast_nullable_to_non_nullable
              as int?,
      sisaCutiP24: freezed == sisaCutiP24
          ? _value.sisaCutiP24
          : sisaCutiP24 // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiMasaKerja: freezed == cutiMasaKerja
          ? _value.cutiMasaKerja
          : cutiMasaKerja // ignore: cast_nullable_to_non_nullable
              as int?,
      workNotPresent: freezed == workNotPresent
          ? _value.workNotPresent
          : workNotPresent // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiP24Terpakai: freezed == cutiP24Terpakai
          ? _value.cutiP24Terpakai
          : cutiP24Terpakai // ignore: cast_nullable_to_non_nullable
              as int?,
      sisaCutiReguler: freezed == sisaCutiReguler
          ? _value.sisaCutiReguler
          : sisaCutiReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      workDaysInMonth: freezed == workDaysInMonth
          ? _value.workDaysInMonth
          : workDaysInMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      sisaCutiMasaKerja: freezed == sisaCutiMasaKerja
          ? _value.sisaCutiMasaKerja
          : sisaCutiMasaKerja // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoCutiImplCopyWith<$Res>
    implements $InfoCutiCopyWith<$Res> {
  factory _$$InfoCutiImplCopyWith(
          _$InfoCutiImpl value, $Res Function(_$InfoCutiImpl) then) =
      __$$InfoCutiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cuti_p24") int? cutiP24,
      @JsonKey(name: "cuti_reguler") int? cutiReguler,
      @JsonKey(name: "work_present") int? workPresent,
      @JsonKey(name: "cuti_terpakai") int? cutiTerpakai,
      @JsonKey(name: "potongan_cuti") int? potonganCuti,
      @JsonKey(name: "sisa_cuti_p24") int? sisaCutiP24,
      @JsonKey(name: "cuti_masa_kerja") int? cutiMasaKerja,
      @JsonKey(name: "work_not_present") int? workNotPresent,
      @JsonKey(name: "cuti_p24_terpakai") int? cutiP24Terpakai,
      @JsonKey(name: "sisa_cuti_reguler") int? sisaCutiReguler,
      @JsonKey(name: "work_days_in_month") int? workDaysInMonth,
      @JsonKey(name: "sisa_cuti_masa_kerja") int? sisaCutiMasaKerja});
}

/// @nodoc
class __$$InfoCutiImplCopyWithImpl<$Res>
    extends _$InfoCutiCopyWithImpl<$Res, _$InfoCutiImpl>
    implements _$$InfoCutiImplCopyWith<$Res> {
  __$$InfoCutiImplCopyWithImpl(
      _$InfoCutiImpl _value, $Res Function(_$InfoCutiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cutiP24 = freezed,
    Object? cutiReguler = freezed,
    Object? workPresent = freezed,
    Object? cutiTerpakai = freezed,
    Object? potonganCuti = freezed,
    Object? sisaCutiP24 = freezed,
    Object? cutiMasaKerja = freezed,
    Object? workNotPresent = freezed,
    Object? cutiP24Terpakai = freezed,
    Object? sisaCutiReguler = freezed,
    Object? workDaysInMonth = freezed,
    Object? sisaCutiMasaKerja = freezed,
  }) {
    return _then(_$InfoCutiImpl(
      cutiP24: freezed == cutiP24
          ? _value.cutiP24
          : cutiP24 // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiReguler: freezed == cutiReguler
          ? _value.cutiReguler
          : cutiReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      workPresent: freezed == workPresent
          ? _value.workPresent
          : workPresent // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiTerpakai: freezed == cutiTerpakai
          ? _value.cutiTerpakai
          : cutiTerpakai // ignore: cast_nullable_to_non_nullable
              as int?,
      potonganCuti: freezed == potonganCuti
          ? _value.potonganCuti
          : potonganCuti // ignore: cast_nullable_to_non_nullable
              as int?,
      sisaCutiP24: freezed == sisaCutiP24
          ? _value.sisaCutiP24
          : sisaCutiP24 // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiMasaKerja: freezed == cutiMasaKerja
          ? _value.cutiMasaKerja
          : cutiMasaKerja // ignore: cast_nullable_to_non_nullable
              as int?,
      workNotPresent: freezed == workNotPresent
          ? _value.workNotPresent
          : workNotPresent // ignore: cast_nullable_to_non_nullable
              as int?,
      cutiP24Terpakai: freezed == cutiP24Terpakai
          ? _value.cutiP24Terpakai
          : cutiP24Terpakai // ignore: cast_nullable_to_non_nullable
              as int?,
      sisaCutiReguler: freezed == sisaCutiReguler
          ? _value.sisaCutiReguler
          : sisaCutiReguler // ignore: cast_nullable_to_non_nullable
              as int?,
      workDaysInMonth: freezed == workDaysInMonth
          ? _value.workDaysInMonth
          : workDaysInMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      sisaCutiMasaKerja: freezed == sisaCutiMasaKerja
          ? _value.sisaCutiMasaKerja
          : sisaCutiMasaKerja // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoCutiImpl implements _InfoCuti {
  const _$InfoCutiImpl(
      {@JsonKey(name: "cuti_p24") this.cutiP24,
      @JsonKey(name: "cuti_reguler") this.cutiReguler,
      @JsonKey(name: "work_present") this.workPresent,
      @JsonKey(name: "cuti_terpakai") this.cutiTerpakai,
      @JsonKey(name: "potongan_cuti") this.potonganCuti,
      @JsonKey(name: "sisa_cuti_p24") this.sisaCutiP24,
      @JsonKey(name: "cuti_masa_kerja") this.cutiMasaKerja,
      @JsonKey(name: "work_not_present") this.workNotPresent,
      @JsonKey(name: "cuti_p24_terpakai") this.cutiP24Terpakai,
      @JsonKey(name: "sisa_cuti_reguler") this.sisaCutiReguler,
      @JsonKey(name: "work_days_in_month") this.workDaysInMonth,
      @JsonKey(name: "sisa_cuti_masa_kerja") this.sisaCutiMasaKerja});

  factory _$InfoCutiImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoCutiImplFromJson(json);

  @override
  @JsonKey(name: "cuti_p24")
  final int? cutiP24;
  @override
  @JsonKey(name: "cuti_reguler")
  final int? cutiReguler;
  @override
  @JsonKey(name: "work_present")
  final int? workPresent;
  @override
  @JsonKey(name: "cuti_terpakai")
  final int? cutiTerpakai;
  @override
  @JsonKey(name: "potongan_cuti")
  final int? potonganCuti;
  @override
  @JsonKey(name: "sisa_cuti_p24")
  final int? sisaCutiP24;
  @override
  @JsonKey(name: "cuti_masa_kerja")
  final int? cutiMasaKerja;
  @override
  @JsonKey(name: "work_not_present")
  final int? workNotPresent;
  @override
  @JsonKey(name: "cuti_p24_terpakai")
  final int? cutiP24Terpakai;
  @override
  @JsonKey(name: "sisa_cuti_reguler")
  final int? sisaCutiReguler;
  @override
  @JsonKey(name: "work_days_in_month")
  final int? workDaysInMonth;
  @override
  @JsonKey(name: "sisa_cuti_masa_kerja")
  final int? sisaCutiMasaKerja;

  @override
  String toString() {
    return 'InfoCuti(cutiP24: $cutiP24, cutiReguler: $cutiReguler, workPresent: $workPresent, cutiTerpakai: $cutiTerpakai, potonganCuti: $potonganCuti, sisaCutiP24: $sisaCutiP24, cutiMasaKerja: $cutiMasaKerja, workNotPresent: $workNotPresent, cutiP24Terpakai: $cutiP24Terpakai, sisaCutiReguler: $sisaCutiReguler, workDaysInMonth: $workDaysInMonth, sisaCutiMasaKerja: $sisaCutiMasaKerja)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoCutiImpl &&
            (identical(other.cutiP24, cutiP24) || other.cutiP24 == cutiP24) &&
            (identical(other.cutiReguler, cutiReguler) ||
                other.cutiReguler == cutiReguler) &&
            (identical(other.workPresent, workPresent) ||
                other.workPresent == workPresent) &&
            (identical(other.cutiTerpakai, cutiTerpakai) ||
                other.cutiTerpakai == cutiTerpakai) &&
            (identical(other.potonganCuti, potonganCuti) ||
                other.potonganCuti == potonganCuti) &&
            (identical(other.sisaCutiP24, sisaCutiP24) ||
                other.sisaCutiP24 == sisaCutiP24) &&
            (identical(other.cutiMasaKerja, cutiMasaKerja) ||
                other.cutiMasaKerja == cutiMasaKerja) &&
            (identical(other.workNotPresent, workNotPresent) ||
                other.workNotPresent == workNotPresent) &&
            (identical(other.cutiP24Terpakai, cutiP24Terpakai) ||
                other.cutiP24Terpakai == cutiP24Terpakai) &&
            (identical(other.sisaCutiReguler, sisaCutiReguler) ||
                other.sisaCutiReguler == sisaCutiReguler) &&
            (identical(other.workDaysInMonth, workDaysInMonth) ||
                other.workDaysInMonth == workDaysInMonth) &&
            (identical(other.sisaCutiMasaKerja, sisaCutiMasaKerja) ||
                other.sisaCutiMasaKerja == sisaCutiMasaKerja));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cutiP24,
      cutiReguler,
      workPresent,
      cutiTerpakai,
      potonganCuti,
      sisaCutiP24,
      cutiMasaKerja,
      workNotPresent,
      cutiP24Terpakai,
      sisaCutiReguler,
      workDaysInMonth,
      sisaCutiMasaKerja);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoCutiImplCopyWith<_$InfoCutiImpl> get copyWith =>
      __$$InfoCutiImplCopyWithImpl<_$InfoCutiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoCutiImplToJson(
      this,
    );
  }
}

abstract class _InfoCuti implements InfoCuti {
  const factory _InfoCuti(
      {@JsonKey(name: "cuti_p24") final int? cutiP24,
      @JsonKey(name: "cuti_reguler") final int? cutiReguler,
      @JsonKey(name: "work_present") final int? workPresent,
      @JsonKey(name: "cuti_terpakai") final int? cutiTerpakai,
      @JsonKey(name: "potongan_cuti") final int? potonganCuti,
      @JsonKey(name: "sisa_cuti_p24") final int? sisaCutiP24,
      @JsonKey(name: "cuti_masa_kerja") final int? cutiMasaKerja,
      @JsonKey(name: "work_not_present") final int? workNotPresent,
      @JsonKey(name: "cuti_p24_terpakai") final int? cutiP24Terpakai,
      @JsonKey(name: "sisa_cuti_reguler") final int? sisaCutiReguler,
      @JsonKey(name: "work_days_in_month") final int? workDaysInMonth,
      @JsonKey(name: "sisa_cuti_masa_kerja")
      final int? sisaCutiMasaKerja}) = _$InfoCutiImpl;

  factory _InfoCuti.fromJson(Map<String, dynamic> json) =
      _$InfoCutiImpl.fromJson;

  @override
  @JsonKey(name: "cuti_p24")
  int? get cutiP24;
  @override
  @JsonKey(name: "cuti_reguler")
  int? get cutiReguler;
  @override
  @JsonKey(name: "work_present")
  int? get workPresent;
  @override
  @JsonKey(name: "cuti_terpakai")
  int? get cutiTerpakai;
  @override
  @JsonKey(name: "potongan_cuti")
  int? get potonganCuti;
  @override
  @JsonKey(name: "sisa_cuti_p24")
  int? get sisaCutiP24;
  @override
  @JsonKey(name: "cuti_masa_kerja")
  int? get cutiMasaKerja;
  @override
  @JsonKey(name: "work_not_present")
  int? get workNotPresent;
  @override
  @JsonKey(name: "cuti_p24_terpakai")
  int? get cutiP24Terpakai;
  @override
  @JsonKey(name: "sisa_cuti_reguler")
  int? get sisaCutiReguler;
  @override
  @JsonKey(name: "work_days_in_month")
  int? get workDaysInMonth;
  @override
  @JsonKey(name: "sisa_cuti_masa_kerja")
  int? get sisaCutiMasaKerja;
  @override
  @JsonKey(ignore: true)
  _$$InfoCutiImplCopyWith<_$InfoCutiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

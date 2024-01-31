// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_realisasi_dinas_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailRealisasiDinasModel _$DetailRealisasiDinasModelFromJson(
    Map<String, dynamic> json) {
  return _DetailRealisasiDinasModel.fromJson(json);
}

/// @nodoc
mixin _$DetailRealisasiDinasModel {
  @JsonKey(name: "data")
  DetailRealisasiData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "processed_time")
  double? get processedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailRealisasiDinasModelCopyWith<DetailRealisasiDinasModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRealisasiDinasModelCopyWith<$Res> {
  factory $DetailRealisasiDinasModelCopyWith(DetailRealisasiDinasModel value,
          $Res Function(DetailRealisasiDinasModel) then) =
      _$DetailRealisasiDinasModelCopyWithImpl<$Res, DetailRealisasiDinasModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") DetailRealisasiData? data,
      @JsonKey(name: "processed_time") double? processedTime});

  $DetailRealisasiDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DetailRealisasiDinasModelCopyWithImpl<$Res,
        $Val extends DetailRealisasiDinasModel>
    implements $DetailRealisasiDinasModelCopyWith<$Res> {
  _$DetailRealisasiDinasModelCopyWithImpl(this._value, this._then);

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
              as DetailRealisasiData?,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailRealisasiDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DetailRealisasiDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailRealisasiDinasModelImplCopyWith<$Res>
    implements $DetailRealisasiDinasModelCopyWith<$Res> {
  factory _$$DetailRealisasiDinasModelImplCopyWith(
          _$DetailRealisasiDinasModelImpl value,
          $Res Function(_$DetailRealisasiDinasModelImpl) then) =
      __$$DetailRealisasiDinasModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") DetailRealisasiData? data,
      @JsonKey(name: "processed_time") double? processedTime});

  @override
  $DetailRealisasiDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DetailRealisasiDinasModelImplCopyWithImpl<$Res>
    extends _$DetailRealisasiDinasModelCopyWithImpl<$Res,
        _$DetailRealisasiDinasModelImpl>
    implements _$$DetailRealisasiDinasModelImplCopyWith<$Res> {
  __$$DetailRealisasiDinasModelImplCopyWithImpl(
      _$DetailRealisasiDinasModelImpl _value,
      $Res Function(_$DetailRealisasiDinasModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_$DetailRealisasiDinasModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailRealisasiData?,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailRealisasiDinasModelImpl implements _DetailRealisasiDinasModel {
  const _$DetailRealisasiDinasModelImpl(
      {@JsonKey(name: "data") this.data,
      @JsonKey(name: "processed_time") this.processedTime});

  factory _$DetailRealisasiDinasModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailRealisasiDinasModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DetailRealisasiData? data;
  @override
  @JsonKey(name: "processed_time")
  final double? processedTime;

  @override
  String toString() {
    return 'DetailRealisasiDinasModel(data: $data, processedTime: $processedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailRealisasiDinasModelImpl &&
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
  _$$DetailRealisasiDinasModelImplCopyWith<_$DetailRealisasiDinasModelImpl>
      get copyWith => __$$DetailRealisasiDinasModelImplCopyWithImpl<
          _$DetailRealisasiDinasModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailRealisasiDinasModelImplToJson(
      this,
    );
  }
}

abstract class _DetailRealisasiDinasModel implements DetailRealisasiDinasModel {
  const factory _DetailRealisasiDinasModel(
          {@JsonKey(name: "data") final DetailRealisasiData? data,
          @JsonKey(name: "processed_time") final double? processedTime}) =
      _$DetailRealisasiDinasModelImpl;

  factory _DetailRealisasiDinasModel.fromJson(Map<String, dynamic> json) =
      _$DetailRealisasiDinasModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DetailRealisasiData? get data;
  @override
  @JsonKey(name: "processed_time")
  double? get processedTime;
  @override
  @JsonKey(ignore: true)
  _$$DetailRealisasiDinasModelImplCopyWith<_$DetailRealisasiDinasModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailRealisasiData _$DetailRealisasiDataFromJson(Map<String, dynamic> json) {
  return _DetailRealisasiData.fromJson(json);
}

/// @nodoc
mixin _$DetailRealisasiData {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "nomor")
  String? get nomor => throw _privateConstructorUsedError;
  @JsonKey(name: "m_comp_id")
  int? get dataMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_id")
  int? get dataTSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "total_biaya_spd")
  int? get totalBiayaSpd => throw _privateConstructorUsedError;
  @JsonKey(name: "total_biaya_selisih")
  int? get totalBiayaSelisih => throw _privateConstructorUsedError;
  @JsonKey(name: "pengambilan_spd")
  dynamic get pengambilanSpd => throw _privateConstructorUsedError;
  @JsonKey(name: "keterangan")
  String? get keterangan => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  int? get dataCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  int? get dataLastEditorId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "t_spd.id")
  int? get tSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.nomor")
  String? get tSpdNomor => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_comp_id")
  int? get tSpdMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_spd_id")
  int? get tSpdMSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_dir_id")
  int? get tSpdMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_divisi_id")
  int? get tSpdMDivisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_dept_id")
  int? get tSpdMDeptId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_posisi_id")
  int? get tSpdMPosisiId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.tanggal")
  String? get tSpdTanggal => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.tgl_acara_awal")
  String? get tSpdTglAcaraAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.tgl_acara_akhir")
  String? get tSpdTglAcaraAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.jenis_spd_id")
  int? get tSpdJenisSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_zona_asal_id")
  int? get tSpdMZonaAsalId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_zona_tujuan_id")
  int? get tSpdMZonaTujuanId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_lokasi_tujuan_id")
  int? get tSpdMLokasiTujuanId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.m_kary_id")
  int? get tSpdMKaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.pic_id")
  int? get tSpdPicId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.total_biaya")
  String? get tSpdTotalBiaya => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.kegiatan")
  String? get tSpdKegiatan => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.keterangan")
  String? get tSpdKeterangan => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.status")
  String? get tSpdStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.creator_id")
  int? get tSpdCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.last_editor_id")
  dynamic get tSpdLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.created_at")
  String? get tSpdCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.updated_at")
  String? get tSpdUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd.is_kend_dinas")
  bool? get tSpdIsKendDinas => throw _privateConstructorUsedError;
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
  int? get creatorCreatorId => throw _privateConstructorUsedError;
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
  int? get lastEditorCreatorId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "t_rpd_det")
  List<TRpdDet>? get tRpdDet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailRealisasiDataCopyWith<DetailRealisasiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRealisasiDataCopyWith<$Res> {
  factory $DetailRealisasiDataCopyWith(
          DetailRealisasiData value, $Res Function(DetailRealisasiData) then) =
      _$DetailRealisasiDataCopyWithImpl<$Res, DetailRealisasiData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "m_comp_id") int? dataMCompId,
      @JsonKey(name: "t_spd_id") int? dataTSpdId,
      @JsonKey(name: "total_biaya_spd") int? totalBiayaSpd,
      @JsonKey(name: "total_biaya_selisih") int? totalBiayaSelisih,
      @JsonKey(name: "pengambilan_spd") dynamic pengambilanSpd,
      @JsonKey(name: "keterangan") String? keterangan,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "creator_id") int? dataCreatorId,
      @JsonKey(name: "last_editor_id") int? dataLastEditorId,
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
      @JsonKey(name: "t_spd.id") int? tSpdId,
      @JsonKey(name: "t_spd.nomor") String? tSpdNomor,
      @JsonKey(name: "t_spd.m_comp_id") int? tSpdMCompId,
      @JsonKey(name: "t_spd.m_spd_id") int? tSpdMSpdId,
      @JsonKey(name: "t_spd.m_dir_id") int? tSpdMDirId,
      @JsonKey(name: "t_spd.m_divisi_id") int? tSpdMDivisiId,
      @JsonKey(name: "t_spd.m_dept_id") int? tSpdMDeptId,
      @JsonKey(name: "t_spd.m_posisi_id") int? tSpdMPosisiId,
      @JsonKey(name: "t_spd.tanggal") String? tSpdTanggal,
      @JsonKey(name: "t_spd.tgl_acara_awal") String? tSpdTglAcaraAwal,
      @JsonKey(name: "t_spd.tgl_acara_akhir") String? tSpdTglAcaraAkhir,
      @JsonKey(name: "t_spd.jenis_spd_id") int? tSpdJenisSpdId,
      @JsonKey(name: "t_spd.m_zona_asal_id") int? tSpdMZonaAsalId,
      @JsonKey(name: "t_spd.m_zona_tujuan_id") int? tSpdMZonaTujuanId,
      @JsonKey(name: "t_spd.m_lokasi_tujuan_id") int? tSpdMLokasiTujuanId,
      @JsonKey(name: "t_spd.m_kary_id") int? tSpdMKaryId,
      @JsonKey(name: "t_spd.pic_id") int? tSpdPicId,
      @JsonKey(name: "t_spd.total_biaya") String? tSpdTotalBiaya,
      @JsonKey(name: "t_spd.kegiatan") String? tSpdKegiatan,
      @JsonKey(name: "t_spd.keterangan") String? tSpdKeterangan,
      @JsonKey(name: "t_spd.status") String? tSpdStatus,
      @JsonKey(name: "t_spd.creator_id") int? tSpdCreatorId,
      @JsonKey(name: "t_spd.last_editor_id") dynamic tSpdLastEditorId,
      @JsonKey(name: "t_spd.created_at") String? tSpdCreatedAt,
      @JsonKey(name: "t_spd.updated_at") String? tSpdUpdatedAt,
      @JsonKey(name: "t_spd.is_kend_dinas") bool? tSpdIsKendDinas,
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
      @JsonKey(name: "creator.creator_id") int? creatorCreatorId,
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
      @JsonKey(name: "last_editor.creator_id") int? lastEditorCreatorId,
      @JsonKey(name: "last_editor.last_editor_id") int? lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at") String? lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at") String? lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image") String? lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") int? lastEditorMKaryId,
      @JsonKey(name: "t_rpd_det") List<TRpdDet>? tRpdDet});
}

/// @nodoc
class _$DetailRealisasiDataCopyWithImpl<$Res, $Val extends DetailRealisasiData>
    implements $DetailRealisasiDataCopyWith<$Res> {
  _$DetailRealisasiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomor = freezed,
    Object? dataMCompId = freezed,
    Object? dataTSpdId = freezed,
    Object? totalBiayaSpd = freezed,
    Object? totalBiayaSelisih = freezed,
    Object? pengambilanSpd = freezed,
    Object? keterangan = freezed,
    Object? status = freezed,
    Object? dataCreatorId = freezed,
    Object? dataLastEditorId = freezed,
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
    Object? tSpdId = freezed,
    Object? tSpdNomor = freezed,
    Object? tSpdMCompId = freezed,
    Object? tSpdMSpdId = freezed,
    Object? tSpdMDirId = freezed,
    Object? tSpdMDivisiId = freezed,
    Object? tSpdMDeptId = freezed,
    Object? tSpdMPosisiId = freezed,
    Object? tSpdTanggal = freezed,
    Object? tSpdTglAcaraAwal = freezed,
    Object? tSpdTglAcaraAkhir = freezed,
    Object? tSpdJenisSpdId = freezed,
    Object? tSpdMZonaAsalId = freezed,
    Object? tSpdMZonaTujuanId = freezed,
    Object? tSpdMLokasiTujuanId = freezed,
    Object? tSpdMKaryId = freezed,
    Object? tSpdPicId = freezed,
    Object? tSpdTotalBiaya = freezed,
    Object? tSpdKegiatan = freezed,
    Object? tSpdKeterangan = freezed,
    Object? tSpdStatus = freezed,
    Object? tSpdCreatorId = freezed,
    Object? tSpdLastEditorId = freezed,
    Object? tSpdCreatedAt = freezed,
    Object? tSpdUpdatedAt = freezed,
    Object? tSpdIsKendDinas = freezed,
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
    Object? tRpdDet = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMCompId: freezed == dataMCompId
          ? _value.dataMCompId
          : dataMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      dataTSpdId: freezed == dataTSpdId
          ? _value.dataTSpdId
          : dataTSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBiayaSpd: freezed == totalBiayaSpd
          ? _value.totalBiayaSpd
          : totalBiayaSpd // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBiayaSelisih: freezed == totalBiayaSelisih
          ? _value.totalBiayaSelisih
          : totalBiayaSelisih // ignore: cast_nullable_to_non_nullable
              as int?,
      pengambilanSpd: freezed == pengambilanSpd
          ? _value.pengambilanSpd
          : pengambilanSpd // ignore: cast_nullable_to_non_nullable
              as dynamic,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dataCreatorId: freezed == dataCreatorId
          ? _value.dataCreatorId
          : dataCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      dataLastEditorId: freezed == dataLastEditorId
          ? _value.dataLastEditorId
          : dataLastEditorId // ignore: cast_nullable_to_non_nullable
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
      tSpdId: freezed == tSpdId
          ? _value.tSpdId
          : tSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdNomor: freezed == tSpdNomor
          ? _value.tSpdNomor
          : tSpdNomor // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdMCompId: freezed == tSpdMCompId
          ? _value.tSpdMCompId
          : tSpdMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMSpdId: freezed == tSpdMSpdId
          ? _value.tSpdMSpdId
          : tSpdMSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMDirId: freezed == tSpdMDirId
          ? _value.tSpdMDirId
          : tSpdMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMDivisiId: freezed == tSpdMDivisiId
          ? _value.tSpdMDivisiId
          : tSpdMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMDeptId: freezed == tSpdMDeptId
          ? _value.tSpdMDeptId
          : tSpdMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMPosisiId: freezed == tSpdMPosisiId
          ? _value.tSpdMPosisiId
          : tSpdMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdTanggal: freezed == tSpdTanggal
          ? _value.tSpdTanggal
          : tSpdTanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdTglAcaraAwal: freezed == tSpdTglAcaraAwal
          ? _value.tSpdTglAcaraAwal
          : tSpdTglAcaraAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdTglAcaraAkhir: freezed == tSpdTglAcaraAkhir
          ? _value.tSpdTglAcaraAkhir
          : tSpdTglAcaraAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdJenisSpdId: freezed == tSpdJenisSpdId
          ? _value.tSpdJenisSpdId
          : tSpdJenisSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMZonaAsalId: freezed == tSpdMZonaAsalId
          ? _value.tSpdMZonaAsalId
          : tSpdMZonaAsalId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMZonaTujuanId: freezed == tSpdMZonaTujuanId
          ? _value.tSpdMZonaTujuanId
          : tSpdMZonaTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMLokasiTujuanId: freezed == tSpdMLokasiTujuanId
          ? _value.tSpdMLokasiTujuanId
          : tSpdMLokasiTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMKaryId: freezed == tSpdMKaryId
          ? _value.tSpdMKaryId
          : tSpdMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdPicId: freezed == tSpdPicId
          ? _value.tSpdPicId
          : tSpdPicId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdTotalBiaya: freezed == tSpdTotalBiaya
          ? _value.tSpdTotalBiaya
          : tSpdTotalBiaya // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdKegiatan: freezed == tSpdKegiatan
          ? _value.tSpdKegiatan
          : tSpdKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdKeterangan: freezed == tSpdKeterangan
          ? _value.tSpdKeterangan
          : tSpdKeterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdStatus: freezed == tSpdStatus
          ? _value.tSpdStatus
          : tSpdStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdCreatorId: freezed == tSpdCreatorId
          ? _value.tSpdCreatorId
          : tSpdCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdLastEditorId: freezed == tSpdLastEditorId
          ? _value.tSpdLastEditorId
          : tSpdLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdCreatedAt: freezed == tSpdCreatedAt
          ? _value.tSpdCreatedAt
          : tSpdCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdUpdatedAt: freezed == tSpdUpdatedAt
          ? _value.tSpdUpdatedAt
          : tSpdUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdIsKendDinas: freezed == tSpdIsKendDinas
          ? _value.tSpdIsKendDinas
          : tSpdIsKendDinas // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as int?,
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
              as int?,
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
      tRpdDet: freezed == tRpdDet
          ? _value.tRpdDet
          : tRpdDet // ignore: cast_nullable_to_non_nullable
              as List<TRpdDet>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailRealisasiDataImplCopyWith<$Res>
    implements $DetailRealisasiDataCopyWith<$Res> {
  factory _$$DetailRealisasiDataImplCopyWith(_$DetailRealisasiDataImpl value,
          $Res Function(_$DetailRealisasiDataImpl) then) =
      __$$DetailRealisasiDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "nomor") String? nomor,
      @JsonKey(name: "m_comp_id") int? dataMCompId,
      @JsonKey(name: "t_spd_id") int? dataTSpdId,
      @JsonKey(name: "total_biaya_spd") int? totalBiayaSpd,
      @JsonKey(name: "total_biaya_selisih") int? totalBiayaSelisih,
      @JsonKey(name: "pengambilan_spd") dynamic pengambilanSpd,
      @JsonKey(name: "keterangan") String? keterangan,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "creator_id") int? dataCreatorId,
      @JsonKey(name: "last_editor_id") int? dataLastEditorId,
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
      @JsonKey(name: "t_spd.id") int? tSpdId,
      @JsonKey(name: "t_spd.nomor") String? tSpdNomor,
      @JsonKey(name: "t_spd.m_comp_id") int? tSpdMCompId,
      @JsonKey(name: "t_spd.m_spd_id") int? tSpdMSpdId,
      @JsonKey(name: "t_spd.m_dir_id") int? tSpdMDirId,
      @JsonKey(name: "t_spd.m_divisi_id") int? tSpdMDivisiId,
      @JsonKey(name: "t_spd.m_dept_id") int? tSpdMDeptId,
      @JsonKey(name: "t_spd.m_posisi_id") int? tSpdMPosisiId,
      @JsonKey(name: "t_spd.tanggal") String? tSpdTanggal,
      @JsonKey(name: "t_spd.tgl_acara_awal") String? tSpdTglAcaraAwal,
      @JsonKey(name: "t_spd.tgl_acara_akhir") String? tSpdTglAcaraAkhir,
      @JsonKey(name: "t_spd.jenis_spd_id") int? tSpdJenisSpdId,
      @JsonKey(name: "t_spd.m_zona_asal_id") int? tSpdMZonaAsalId,
      @JsonKey(name: "t_spd.m_zona_tujuan_id") int? tSpdMZonaTujuanId,
      @JsonKey(name: "t_spd.m_lokasi_tujuan_id") int? tSpdMLokasiTujuanId,
      @JsonKey(name: "t_spd.m_kary_id") int? tSpdMKaryId,
      @JsonKey(name: "t_spd.pic_id") int? tSpdPicId,
      @JsonKey(name: "t_spd.total_biaya") String? tSpdTotalBiaya,
      @JsonKey(name: "t_spd.kegiatan") String? tSpdKegiatan,
      @JsonKey(name: "t_spd.keterangan") String? tSpdKeterangan,
      @JsonKey(name: "t_spd.status") String? tSpdStatus,
      @JsonKey(name: "t_spd.creator_id") int? tSpdCreatorId,
      @JsonKey(name: "t_spd.last_editor_id") dynamic tSpdLastEditorId,
      @JsonKey(name: "t_spd.created_at") String? tSpdCreatedAt,
      @JsonKey(name: "t_spd.updated_at") String? tSpdUpdatedAt,
      @JsonKey(name: "t_spd.is_kend_dinas") bool? tSpdIsKendDinas,
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
      @JsonKey(name: "creator.creator_id") int? creatorCreatorId,
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
      @JsonKey(name: "last_editor.creator_id") int? lastEditorCreatorId,
      @JsonKey(name: "last_editor.last_editor_id") int? lastEditorLastEditorId,
      @JsonKey(name: "last_editor.remember_token")
      dynamic lastEditorRememberToken,
      @JsonKey(name: "last_editor.created_at") String? lastEditorCreatedAt,
      @JsonKey(name: "last_editor.updated_at") String? lastEditorUpdatedAt,
      @JsonKey(name: "last_editor.profil_image") String? lastEditorProfilImage,
      @JsonKey(name: "last_editor.telp") dynamic lastEditorTelp,
      @JsonKey(name: "last_editor.m_kary_id") int? lastEditorMKaryId,
      @JsonKey(name: "t_rpd_det") List<TRpdDet>? tRpdDet});
}

/// @nodoc
class __$$DetailRealisasiDataImplCopyWithImpl<$Res>
    extends _$DetailRealisasiDataCopyWithImpl<$Res, _$DetailRealisasiDataImpl>
    implements _$$DetailRealisasiDataImplCopyWith<$Res> {
  __$$DetailRealisasiDataImplCopyWithImpl(_$DetailRealisasiDataImpl _value,
      $Res Function(_$DetailRealisasiDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomor = freezed,
    Object? dataMCompId = freezed,
    Object? dataTSpdId = freezed,
    Object? totalBiayaSpd = freezed,
    Object? totalBiayaSelisih = freezed,
    Object? pengambilanSpd = freezed,
    Object? keterangan = freezed,
    Object? status = freezed,
    Object? dataCreatorId = freezed,
    Object? dataLastEditorId = freezed,
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
    Object? tSpdId = freezed,
    Object? tSpdNomor = freezed,
    Object? tSpdMCompId = freezed,
    Object? tSpdMSpdId = freezed,
    Object? tSpdMDirId = freezed,
    Object? tSpdMDivisiId = freezed,
    Object? tSpdMDeptId = freezed,
    Object? tSpdMPosisiId = freezed,
    Object? tSpdTanggal = freezed,
    Object? tSpdTglAcaraAwal = freezed,
    Object? tSpdTglAcaraAkhir = freezed,
    Object? tSpdJenisSpdId = freezed,
    Object? tSpdMZonaAsalId = freezed,
    Object? tSpdMZonaTujuanId = freezed,
    Object? tSpdMLokasiTujuanId = freezed,
    Object? tSpdMKaryId = freezed,
    Object? tSpdPicId = freezed,
    Object? tSpdTotalBiaya = freezed,
    Object? tSpdKegiatan = freezed,
    Object? tSpdKeterangan = freezed,
    Object? tSpdStatus = freezed,
    Object? tSpdCreatorId = freezed,
    Object? tSpdLastEditorId = freezed,
    Object? tSpdCreatedAt = freezed,
    Object? tSpdUpdatedAt = freezed,
    Object? tSpdIsKendDinas = freezed,
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
    Object? tRpdDet = freezed,
  }) {
    return _then(_$DetailRealisasiDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMCompId: freezed == dataMCompId
          ? _value.dataMCompId
          : dataMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      dataTSpdId: freezed == dataTSpdId
          ? _value.dataTSpdId
          : dataTSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBiayaSpd: freezed == totalBiayaSpd
          ? _value.totalBiayaSpd
          : totalBiayaSpd // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBiayaSelisih: freezed == totalBiayaSelisih
          ? _value.totalBiayaSelisih
          : totalBiayaSelisih // ignore: cast_nullable_to_non_nullable
              as int?,
      pengambilanSpd: freezed == pengambilanSpd
          ? _value.pengambilanSpd
          : pengambilanSpd // ignore: cast_nullable_to_non_nullable
              as dynamic,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dataCreatorId: freezed == dataCreatorId
          ? _value.dataCreatorId
          : dataCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      dataLastEditorId: freezed == dataLastEditorId
          ? _value.dataLastEditorId
          : dataLastEditorId // ignore: cast_nullable_to_non_nullable
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
      tSpdId: freezed == tSpdId
          ? _value.tSpdId
          : tSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdNomor: freezed == tSpdNomor
          ? _value.tSpdNomor
          : tSpdNomor // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdMCompId: freezed == tSpdMCompId
          ? _value.tSpdMCompId
          : tSpdMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMSpdId: freezed == tSpdMSpdId
          ? _value.tSpdMSpdId
          : tSpdMSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMDirId: freezed == tSpdMDirId
          ? _value.tSpdMDirId
          : tSpdMDirId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMDivisiId: freezed == tSpdMDivisiId
          ? _value.tSpdMDivisiId
          : tSpdMDivisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMDeptId: freezed == tSpdMDeptId
          ? _value.tSpdMDeptId
          : tSpdMDeptId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMPosisiId: freezed == tSpdMPosisiId
          ? _value.tSpdMPosisiId
          : tSpdMPosisiId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdTanggal: freezed == tSpdTanggal
          ? _value.tSpdTanggal
          : tSpdTanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdTglAcaraAwal: freezed == tSpdTglAcaraAwal
          ? _value.tSpdTglAcaraAwal
          : tSpdTglAcaraAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdTglAcaraAkhir: freezed == tSpdTglAcaraAkhir
          ? _value.tSpdTglAcaraAkhir
          : tSpdTglAcaraAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdJenisSpdId: freezed == tSpdJenisSpdId
          ? _value.tSpdJenisSpdId
          : tSpdJenisSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMZonaAsalId: freezed == tSpdMZonaAsalId
          ? _value.tSpdMZonaAsalId
          : tSpdMZonaAsalId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMZonaTujuanId: freezed == tSpdMZonaTujuanId
          ? _value.tSpdMZonaTujuanId
          : tSpdMZonaTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMLokasiTujuanId: freezed == tSpdMLokasiTujuanId
          ? _value.tSpdMLokasiTujuanId
          : tSpdMLokasiTujuanId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdMKaryId: freezed == tSpdMKaryId
          ? _value.tSpdMKaryId
          : tSpdMKaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdPicId: freezed == tSpdPicId
          ? _value.tSpdPicId
          : tSpdPicId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdTotalBiaya: freezed == tSpdTotalBiaya
          ? _value.tSpdTotalBiaya
          : tSpdTotalBiaya // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdKegiatan: freezed == tSpdKegiatan
          ? _value.tSpdKegiatan
          : tSpdKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdKeterangan: freezed == tSpdKeterangan
          ? _value.tSpdKeterangan
          : tSpdKeterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdStatus: freezed == tSpdStatus
          ? _value.tSpdStatus
          : tSpdStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdCreatorId: freezed == tSpdCreatorId
          ? _value.tSpdCreatorId
          : tSpdCreatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdLastEditorId: freezed == tSpdLastEditorId
          ? _value.tSpdLastEditorId
          : tSpdLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdCreatedAt: freezed == tSpdCreatedAt
          ? _value.tSpdCreatedAt
          : tSpdCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdUpdatedAt: freezed == tSpdUpdatedAt
          ? _value.tSpdUpdatedAt
          : tSpdUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdIsKendDinas: freezed == tSpdIsKendDinas
          ? _value.tSpdIsKendDinas
          : tSpdIsKendDinas // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as int?,
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
              as int?,
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
      tRpdDet: freezed == tRpdDet
          ? _value._tRpdDet
          : tRpdDet // ignore: cast_nullable_to_non_nullable
              as List<TRpdDet>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailRealisasiDataImpl implements _DetailRealisasiData {
  const _$DetailRealisasiDataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "nomor") this.nomor,
      @JsonKey(name: "m_comp_id") this.dataMCompId,
      @JsonKey(name: "t_spd_id") this.dataTSpdId,
      @JsonKey(name: "total_biaya_spd") this.totalBiayaSpd,
      @JsonKey(name: "total_biaya_selisih") this.totalBiayaSelisih,
      @JsonKey(name: "pengambilan_spd") this.pengambilanSpd,
      @JsonKey(name: "keterangan") this.keterangan,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "creator_id") this.dataCreatorId,
      @JsonKey(name: "last_editor_id") this.dataLastEditorId,
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
      @JsonKey(name: "t_spd.id") this.tSpdId,
      @JsonKey(name: "t_spd.nomor") this.tSpdNomor,
      @JsonKey(name: "t_spd.m_comp_id") this.tSpdMCompId,
      @JsonKey(name: "t_spd.m_spd_id") this.tSpdMSpdId,
      @JsonKey(name: "t_spd.m_dir_id") this.tSpdMDirId,
      @JsonKey(name: "t_spd.m_divisi_id") this.tSpdMDivisiId,
      @JsonKey(name: "t_spd.m_dept_id") this.tSpdMDeptId,
      @JsonKey(name: "t_spd.m_posisi_id") this.tSpdMPosisiId,
      @JsonKey(name: "t_spd.tanggal") this.tSpdTanggal,
      @JsonKey(name: "t_spd.tgl_acara_awal") this.tSpdTglAcaraAwal,
      @JsonKey(name: "t_spd.tgl_acara_akhir") this.tSpdTglAcaraAkhir,
      @JsonKey(name: "t_spd.jenis_spd_id") this.tSpdJenisSpdId,
      @JsonKey(name: "t_spd.m_zona_asal_id") this.tSpdMZonaAsalId,
      @JsonKey(name: "t_spd.m_zona_tujuan_id") this.tSpdMZonaTujuanId,
      @JsonKey(name: "t_spd.m_lokasi_tujuan_id") this.tSpdMLokasiTujuanId,
      @JsonKey(name: "t_spd.m_kary_id") this.tSpdMKaryId,
      @JsonKey(name: "t_spd.pic_id") this.tSpdPicId,
      @JsonKey(name: "t_spd.total_biaya") this.tSpdTotalBiaya,
      @JsonKey(name: "t_spd.kegiatan") this.tSpdKegiatan,
      @JsonKey(name: "t_spd.keterangan") this.tSpdKeterangan,
      @JsonKey(name: "t_spd.status") this.tSpdStatus,
      @JsonKey(name: "t_spd.creator_id") this.tSpdCreatorId,
      @JsonKey(name: "t_spd.last_editor_id") this.tSpdLastEditorId,
      @JsonKey(name: "t_spd.created_at") this.tSpdCreatedAt,
      @JsonKey(name: "t_spd.updated_at") this.tSpdUpdatedAt,
      @JsonKey(name: "t_spd.is_kend_dinas") this.tSpdIsKendDinas,
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
      @JsonKey(name: "t_rpd_det") final List<TRpdDet>? tRpdDet})
      : _tRpdDet = tRpdDet;

  factory _$DetailRealisasiDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailRealisasiDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "nomor")
  final String? nomor;
  @override
  @JsonKey(name: "m_comp_id")
  final int? dataMCompId;
  @override
  @JsonKey(name: "t_spd_id")
  final int? dataTSpdId;
  @override
  @JsonKey(name: "total_biaya_spd")
  final int? totalBiayaSpd;
  @override
  @JsonKey(name: "total_biaya_selisih")
  final int? totalBiayaSelisih;
  @override
  @JsonKey(name: "pengambilan_spd")
  final dynamic pengambilanSpd;
  @override
  @JsonKey(name: "keterangan")
  final String? keterangan;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "creator_id")
  final int? dataCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  final int? dataLastEditorId;
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
  @JsonKey(name: "t_spd.id")
  final int? tSpdId;
  @override
  @JsonKey(name: "t_spd.nomor")
  final String? tSpdNomor;
  @override
  @JsonKey(name: "t_spd.m_comp_id")
  final int? tSpdMCompId;
  @override
  @JsonKey(name: "t_spd.m_spd_id")
  final int? tSpdMSpdId;
  @override
  @JsonKey(name: "t_spd.m_dir_id")
  final int? tSpdMDirId;
  @override
  @JsonKey(name: "t_spd.m_divisi_id")
  final int? tSpdMDivisiId;
  @override
  @JsonKey(name: "t_spd.m_dept_id")
  final int? tSpdMDeptId;
  @override
  @JsonKey(name: "t_spd.m_posisi_id")
  final int? tSpdMPosisiId;
  @override
  @JsonKey(name: "t_spd.tanggal")
  final String? tSpdTanggal;
  @override
  @JsonKey(name: "t_spd.tgl_acara_awal")
  final String? tSpdTglAcaraAwal;
  @override
  @JsonKey(name: "t_spd.tgl_acara_akhir")
  final String? tSpdTglAcaraAkhir;
  @override
  @JsonKey(name: "t_spd.jenis_spd_id")
  final int? tSpdJenisSpdId;
  @override
  @JsonKey(name: "t_spd.m_zona_asal_id")
  final int? tSpdMZonaAsalId;
  @override
  @JsonKey(name: "t_spd.m_zona_tujuan_id")
  final int? tSpdMZonaTujuanId;
  @override
  @JsonKey(name: "t_spd.m_lokasi_tujuan_id")
  final int? tSpdMLokasiTujuanId;
  @override
  @JsonKey(name: "t_spd.m_kary_id")
  final int? tSpdMKaryId;
  @override
  @JsonKey(name: "t_spd.pic_id")
  final int? tSpdPicId;
  @override
  @JsonKey(name: "t_spd.total_biaya")
  final String? tSpdTotalBiaya;
  @override
  @JsonKey(name: "t_spd.kegiatan")
  final String? tSpdKegiatan;
  @override
  @JsonKey(name: "t_spd.keterangan")
  final String? tSpdKeterangan;
  @override
  @JsonKey(name: "t_spd.status")
  final String? tSpdStatus;
  @override
  @JsonKey(name: "t_spd.creator_id")
  final int? tSpdCreatorId;
  @override
  @JsonKey(name: "t_spd.last_editor_id")
  final dynamic tSpdLastEditorId;
  @override
  @JsonKey(name: "t_spd.created_at")
  final String? tSpdCreatedAt;
  @override
  @JsonKey(name: "t_spd.updated_at")
  final String? tSpdUpdatedAt;
  @override
  @JsonKey(name: "t_spd.is_kend_dinas")
  final bool? tSpdIsKendDinas;
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
  final int? creatorCreatorId;
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
  final int? lastEditorCreatorId;
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
  final List<TRpdDet>? _tRpdDet;
  @override
  @JsonKey(name: "t_rpd_det")
  List<TRpdDet>? get tRpdDet {
    final value = _tRpdDet;
    if (value == null) return null;
    if (_tRpdDet is EqualUnmodifiableListView) return _tRpdDet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailRealisasiData(id: $id, nomor: $nomor, dataMCompId: $dataMCompId, dataTSpdId: $dataTSpdId, totalBiayaSpd: $totalBiayaSpd, totalBiayaSelisih: $totalBiayaSelisih, pengambilanSpd: $pengambilanSpd, keterangan: $keterangan, status: $status, dataCreatorId: $dataCreatorId, dataLastEditorId: $dataLastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, mCompId: $mCompId, mCompNama: $mCompNama, mCompIsActive: $mCompIsActive, mCompDesc: $mCompDesc, mCompCreatorId: $mCompCreatorId, mCompLastEditorId: $mCompLastEditorId, mCompCreatedAt: $mCompCreatedAt, mCompUpdatedAt: $mCompUpdatedAt, tSpdId: $tSpdId, tSpdNomor: $tSpdNomor, tSpdMCompId: $tSpdMCompId, tSpdMSpdId: $tSpdMSpdId, tSpdMDirId: $tSpdMDirId, tSpdMDivisiId: $tSpdMDivisiId, tSpdMDeptId: $tSpdMDeptId, tSpdMPosisiId: $tSpdMPosisiId, tSpdTanggal: $tSpdTanggal, tSpdTglAcaraAwal: $tSpdTglAcaraAwal, tSpdTglAcaraAkhir: $tSpdTglAcaraAkhir, tSpdJenisSpdId: $tSpdJenisSpdId, tSpdMZonaAsalId: $tSpdMZonaAsalId, tSpdMZonaTujuanId: $tSpdMZonaTujuanId, tSpdMLokasiTujuanId: $tSpdMLokasiTujuanId, tSpdMKaryId: $tSpdMKaryId, tSpdPicId: $tSpdPicId, tSpdTotalBiaya: $tSpdTotalBiaya, tSpdKegiatan: $tSpdKegiatan, tSpdKeterangan: $tSpdKeterangan, tSpdStatus: $tSpdStatus, tSpdCreatorId: $tSpdCreatorId, tSpdLastEditorId: $tSpdLastEditorId, tSpdCreatedAt: $tSpdCreatedAt, tSpdUpdatedAt: $tSpdUpdatedAt, tSpdIsKendDinas: $tSpdIsKendDinas, creatorId: $creatorId, creatorName: $creatorName, creatorEmail: $creatorEmail, creatorUsername: $creatorUsername, creatorEmailVerifiedAt: $creatorEmailVerifiedAt, creatorPassword: $creatorPassword, creatorMCompId: $creatorMCompId, creatorMDirId: $creatorMDirId, creatorIsActive: $creatorIsActive, creatorCreatorId: $creatorCreatorId, creatorLastEditorId: $creatorLastEditorId, creatorRememberToken: $creatorRememberToken, creatorCreatedAt: $creatorCreatedAt, creatorUpdatedAt: $creatorUpdatedAt, creatorProfilImage: $creatorProfilImage, creatorTelp: $creatorTelp, creatorMKaryId: $creatorMKaryId, lastEditorId: $lastEditorId, lastEditorName: $lastEditorName, lastEditorEmail: $lastEditorEmail, lastEditorUsername: $lastEditorUsername, lastEditorEmailVerifiedAt: $lastEditorEmailVerifiedAt, lastEditorPassword: $lastEditorPassword, lastEditorMCompId: $lastEditorMCompId, lastEditorMDirId: $lastEditorMDirId, lastEditorIsActive: $lastEditorIsActive, lastEditorCreatorId: $lastEditorCreatorId, lastEditorLastEditorId: $lastEditorLastEditorId, lastEditorRememberToken: $lastEditorRememberToken, lastEditorCreatedAt: $lastEditorCreatedAt, lastEditorUpdatedAt: $lastEditorUpdatedAt, lastEditorProfilImage: $lastEditorProfilImage, lastEditorTelp: $lastEditorTelp, lastEditorMKaryId: $lastEditorMKaryId, tRpdDet: $tRpdDet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailRealisasiDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.dataMCompId, dataMCompId) ||
                other.dataMCompId == dataMCompId) &&
            (identical(other.dataTSpdId, dataTSpdId) ||
                other.dataTSpdId == dataTSpdId) &&
            (identical(other.totalBiayaSpd, totalBiayaSpd) ||
                other.totalBiayaSpd == totalBiayaSpd) &&
            (identical(other.totalBiayaSelisih, totalBiayaSelisih) ||
                other.totalBiayaSelisih == totalBiayaSelisih) &&
            const DeepCollectionEquality()
                .equals(other.pengambilanSpd, pengambilanSpd) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dataCreatorId, dataCreatorId) ||
                other.dataCreatorId == dataCreatorId) &&
            (identical(other.dataLastEditorId, dataLastEditorId) ||
                other.dataLastEditorId == dataLastEditorId) &&
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
            (identical(other.tSpdId, tSpdId) || other.tSpdId == tSpdId) &&
            (identical(other.tSpdNomor, tSpdNomor) ||
                other.tSpdNomor == tSpdNomor) &&
            (identical(other.tSpdMCompId, tSpdMCompId) ||
                other.tSpdMCompId == tSpdMCompId) &&
            (identical(other.tSpdMSpdId, tSpdMSpdId) ||
                other.tSpdMSpdId == tSpdMSpdId) &&
            (identical(other.tSpdMDirId, tSpdMDirId) ||
                other.tSpdMDirId == tSpdMDirId) &&
            (identical(other.tSpdMDivisiId, tSpdMDivisiId) ||
                other.tSpdMDivisiId == tSpdMDivisiId) &&
            (identical(other.tSpdMDeptId, tSpdMDeptId) ||
                other.tSpdMDeptId == tSpdMDeptId) &&
            (identical(other.tSpdMPosisiId, tSpdMPosisiId) ||
                other.tSpdMPosisiId == tSpdMPosisiId) &&
            (identical(other.tSpdTanggal, tSpdTanggal) ||
                other.tSpdTanggal == tSpdTanggal) &&
            (identical(other.tSpdTglAcaraAwal, tSpdTglAcaraAwal) ||
                other.tSpdTglAcaraAwal == tSpdTglAcaraAwal) &&
            (identical(other.tSpdTglAcaraAkhir, tSpdTglAcaraAkhir) ||
                other.tSpdTglAcaraAkhir == tSpdTglAcaraAkhir) &&
            (identical(other.tSpdJenisSpdId, tSpdJenisSpdId) ||
                other.tSpdJenisSpdId == tSpdJenisSpdId) &&
            (identical(other.tSpdMZonaAsalId, tSpdMZonaAsalId) ||
                other.tSpdMZonaAsalId == tSpdMZonaAsalId) &&
            (identical(other.tSpdMZonaTujuanId, tSpdMZonaTujuanId) ||
                other.tSpdMZonaTujuanId == tSpdMZonaTujuanId) &&
            (identical(other.tSpdMLokasiTujuanId, tSpdMLokasiTujuanId) ||
                other.tSpdMLokasiTujuanId == tSpdMLokasiTujuanId) &&
            (identical(other.tSpdMKaryId, tSpdMKaryId) ||
                other.tSpdMKaryId == tSpdMKaryId) &&
            (identical(other.tSpdPicId, tSpdPicId) ||
                other.tSpdPicId == tSpdPicId) &&
            (identical(other.tSpdTotalBiaya, tSpdTotalBiaya) ||
                other.tSpdTotalBiaya == tSpdTotalBiaya) &&
            (identical(other.tSpdKegiatan, tSpdKegiatan) ||
                other.tSpdKegiatan == tSpdKegiatan) &&
            (identical(other.tSpdKeterangan, tSpdKeterangan) ||
                other.tSpdKeterangan == tSpdKeterangan) &&
            (identical(other.tSpdStatus, tSpdStatus) ||
                other.tSpdStatus == tSpdStatus) &&
            (identical(other.tSpdCreatorId, tSpdCreatorId) ||
                other.tSpdCreatorId == tSpdCreatorId) &&
            const DeepCollectionEquality()
                .equals(other.tSpdLastEditorId, tSpdLastEditorId) &&
            (identical(other.tSpdCreatedAt, tSpdCreatedAt) ||
                other.tSpdCreatedAt == tSpdCreatedAt) &&
            (identical(other.tSpdUpdatedAt, tSpdUpdatedAt) ||
                other.tSpdUpdatedAt == tSpdUpdatedAt) &&
            (identical(other.tSpdIsKendDinas, tSpdIsKendDinas) ||
                other.tSpdIsKendDinas == tSpdIsKendDinas) &&
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
            (identical(other.creatorCreatorId, creatorCreatorId) || other.creatorCreatorId == creatorCreatorId) &&
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
            (identical(other.lastEditorCreatorId, lastEditorCreatorId) || other.lastEditorCreatorId == lastEditorCreatorId) &&
            (identical(other.lastEditorLastEditorId, lastEditorLastEditorId) || other.lastEditorLastEditorId == lastEditorLastEditorId) &&
            const DeepCollectionEquality().equals(other.lastEditorRememberToken, lastEditorRememberToken) &&
            (identical(other.lastEditorCreatedAt, lastEditorCreatedAt) || other.lastEditorCreatedAt == lastEditorCreatedAt) &&
            (identical(other.lastEditorUpdatedAt, lastEditorUpdatedAt) || other.lastEditorUpdatedAt == lastEditorUpdatedAt) &&
            (identical(other.lastEditorProfilImage, lastEditorProfilImage) || other.lastEditorProfilImage == lastEditorProfilImage) &&
            const DeepCollectionEquality().equals(other.lastEditorTelp, lastEditorTelp) &&
            (identical(other.lastEditorMKaryId, lastEditorMKaryId) || other.lastEditorMKaryId == lastEditorMKaryId) &&
            const DeepCollectionEquality().equals(other._tRpdDet, _tRpdDet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        nomor,
        dataMCompId,
        dataTSpdId,
        totalBiayaSpd,
        totalBiayaSelisih,
        const DeepCollectionEquality().hash(pengambilanSpd),
        keterangan,
        status,
        dataCreatorId,
        dataLastEditorId,
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
        tSpdId,
        tSpdNomor,
        tSpdMCompId,
        tSpdMSpdId,
        tSpdMDirId,
        tSpdMDivisiId,
        tSpdMDeptId,
        tSpdMPosisiId,
        tSpdTanggal,
        tSpdTglAcaraAwal,
        tSpdTglAcaraAkhir,
        tSpdJenisSpdId,
        tSpdMZonaAsalId,
        tSpdMZonaTujuanId,
        tSpdMLokasiTujuanId,
        tSpdMKaryId,
        tSpdPicId,
        tSpdTotalBiaya,
        tSpdKegiatan,
        tSpdKeterangan,
        tSpdStatus,
        tSpdCreatorId,
        const DeepCollectionEquality().hash(tSpdLastEditorId),
        tSpdCreatedAt,
        tSpdUpdatedAt,
        tSpdIsKendDinas,
        creatorId,
        creatorName,
        creatorEmail,
        creatorUsername,
        const DeepCollectionEquality().hash(creatorEmailVerifiedAt),
        creatorPassword,
        creatorMCompId,
        creatorMDirId,
        creatorIsActive,
        creatorCreatorId,
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
        lastEditorCreatorId,
        lastEditorLastEditorId,
        const DeepCollectionEquality().hash(lastEditorRememberToken),
        lastEditorCreatedAt,
        lastEditorUpdatedAt,
        lastEditorProfilImage,
        const DeepCollectionEquality().hash(lastEditorTelp),
        lastEditorMKaryId,
        const DeepCollectionEquality().hash(_tRpdDet)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailRealisasiDataImplCopyWith<_$DetailRealisasiDataImpl> get copyWith =>
      __$$DetailRealisasiDataImplCopyWithImpl<_$DetailRealisasiDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailRealisasiDataImplToJson(
      this,
    );
  }
}

abstract class _DetailRealisasiData implements DetailRealisasiData {
  const factory _DetailRealisasiData(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "nomor") final String? nomor,
      @JsonKey(name: "m_comp_id") final int? dataMCompId,
      @JsonKey(name: "t_spd_id") final int? dataTSpdId,
      @JsonKey(name: "total_biaya_spd") final int? totalBiayaSpd,
      @JsonKey(name: "total_biaya_selisih") final int? totalBiayaSelisih,
      @JsonKey(name: "pengambilan_spd") final dynamic pengambilanSpd,
      @JsonKey(name: "keterangan") final String? keterangan,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "creator_id") final int? dataCreatorId,
      @JsonKey(name: "last_editor_id") final int? dataLastEditorId,
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
      @JsonKey(name: "t_spd.id") final int? tSpdId,
      @JsonKey(name: "t_spd.nomor") final String? tSpdNomor,
      @JsonKey(name: "t_spd.m_comp_id") final int? tSpdMCompId,
      @JsonKey(name: "t_spd.m_spd_id") final int? tSpdMSpdId,
      @JsonKey(name: "t_spd.m_dir_id") final int? tSpdMDirId,
      @JsonKey(name: "t_spd.m_divisi_id") final int? tSpdMDivisiId,
      @JsonKey(name: "t_spd.m_dept_id") final int? tSpdMDeptId,
      @JsonKey(name: "t_spd.m_posisi_id") final int? tSpdMPosisiId,
      @JsonKey(name: "t_spd.tanggal") final String? tSpdTanggal,
      @JsonKey(name: "t_spd.tgl_acara_awal") final String? tSpdTglAcaraAwal,
      @JsonKey(name: "t_spd.tgl_acara_akhir") final String? tSpdTglAcaraAkhir,
      @JsonKey(name: "t_spd.jenis_spd_id") final int? tSpdJenisSpdId,
      @JsonKey(name: "t_spd.m_zona_asal_id") final int? tSpdMZonaAsalId,
      @JsonKey(name: "t_spd.m_zona_tujuan_id") final int? tSpdMZonaTujuanId,
      @JsonKey(name: "t_spd.m_lokasi_tujuan_id") final int? tSpdMLokasiTujuanId,
      @JsonKey(name: "t_spd.m_kary_id") final int? tSpdMKaryId,
      @JsonKey(name: "t_spd.pic_id") final int? tSpdPicId,
      @JsonKey(name: "t_spd.total_biaya") final String? tSpdTotalBiaya,
      @JsonKey(name: "t_spd.kegiatan") final String? tSpdKegiatan,
      @JsonKey(name: "t_spd.keterangan") final String? tSpdKeterangan,
      @JsonKey(name: "t_spd.status") final String? tSpdStatus,
      @JsonKey(name: "t_spd.creator_id") final int? tSpdCreatorId,
      @JsonKey(name: "t_spd.last_editor_id") final dynamic tSpdLastEditorId,
      @JsonKey(name: "t_spd.created_at") final String? tSpdCreatedAt,
      @JsonKey(name: "t_spd.updated_at") final String? tSpdUpdatedAt,
      @JsonKey(name: "t_spd.is_kend_dinas") final bool? tSpdIsKendDinas,
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
      @JsonKey(name: "creator.creator_id") final int? creatorCreatorId,
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
      @JsonKey(name: "last_editor.creator_id") final int? lastEditorCreatorId,
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
      @JsonKey(name: "last_editor.m_kary_id") final int? lastEditorMKaryId,
      @JsonKey(name: "t_rpd_det")
      final List<TRpdDet>? tRpdDet}) = _$DetailRealisasiDataImpl;

  factory _DetailRealisasiData.fromJson(Map<String, dynamic> json) =
      _$DetailRealisasiDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "nomor")
  String? get nomor;
  @override
  @JsonKey(name: "m_comp_id")
  int? get dataMCompId;
  @override
  @JsonKey(name: "t_spd_id")
  int? get dataTSpdId;
  @override
  @JsonKey(name: "total_biaya_spd")
  int? get totalBiayaSpd;
  @override
  @JsonKey(name: "total_biaya_selisih")
  int? get totalBiayaSelisih;
  @override
  @JsonKey(name: "pengambilan_spd")
  dynamic get pengambilanSpd;
  @override
  @JsonKey(name: "keterangan")
  String? get keterangan;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "creator_id")
  int? get dataCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  int? get dataLastEditorId;
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
  @JsonKey(name: "t_spd.id")
  int? get tSpdId;
  @override
  @JsonKey(name: "t_spd.nomor")
  String? get tSpdNomor;
  @override
  @JsonKey(name: "t_spd.m_comp_id")
  int? get tSpdMCompId;
  @override
  @JsonKey(name: "t_spd.m_spd_id")
  int? get tSpdMSpdId;
  @override
  @JsonKey(name: "t_spd.m_dir_id")
  int? get tSpdMDirId;
  @override
  @JsonKey(name: "t_spd.m_divisi_id")
  int? get tSpdMDivisiId;
  @override
  @JsonKey(name: "t_spd.m_dept_id")
  int? get tSpdMDeptId;
  @override
  @JsonKey(name: "t_spd.m_posisi_id")
  int? get tSpdMPosisiId;
  @override
  @JsonKey(name: "t_spd.tanggal")
  String? get tSpdTanggal;
  @override
  @JsonKey(name: "t_spd.tgl_acara_awal")
  String? get tSpdTglAcaraAwal;
  @override
  @JsonKey(name: "t_spd.tgl_acara_akhir")
  String? get tSpdTglAcaraAkhir;
  @override
  @JsonKey(name: "t_spd.jenis_spd_id")
  int? get tSpdJenisSpdId;
  @override
  @JsonKey(name: "t_spd.m_zona_asal_id")
  int? get tSpdMZonaAsalId;
  @override
  @JsonKey(name: "t_spd.m_zona_tujuan_id")
  int? get tSpdMZonaTujuanId;
  @override
  @JsonKey(name: "t_spd.m_lokasi_tujuan_id")
  int? get tSpdMLokasiTujuanId;
  @override
  @JsonKey(name: "t_spd.m_kary_id")
  int? get tSpdMKaryId;
  @override
  @JsonKey(name: "t_spd.pic_id")
  int? get tSpdPicId;
  @override
  @JsonKey(name: "t_spd.total_biaya")
  String? get tSpdTotalBiaya;
  @override
  @JsonKey(name: "t_spd.kegiatan")
  String? get tSpdKegiatan;
  @override
  @JsonKey(name: "t_spd.keterangan")
  String? get tSpdKeterangan;
  @override
  @JsonKey(name: "t_spd.status")
  String? get tSpdStatus;
  @override
  @JsonKey(name: "t_spd.creator_id")
  int? get tSpdCreatorId;
  @override
  @JsonKey(name: "t_spd.last_editor_id")
  dynamic get tSpdLastEditorId;
  @override
  @JsonKey(name: "t_spd.created_at")
  String? get tSpdCreatedAt;
  @override
  @JsonKey(name: "t_spd.updated_at")
  String? get tSpdUpdatedAt;
  @override
  @JsonKey(name: "t_spd.is_kend_dinas")
  bool? get tSpdIsKendDinas;
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
  int? get creatorCreatorId;
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
  int? get lastEditorCreatorId;
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
  @JsonKey(name: "t_rpd_det")
  List<TRpdDet>? get tRpdDet;
  @override
  @JsonKey(ignore: true)
  _$$DetailRealisasiDataImplCopyWith<_$DetailRealisasiDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TRpdDet _$TRpdDetFromJson(Map<String, dynamic> json) {
  return _TRpdDet.fromJson(json);
}

/// @nodoc
mixin _$TRpdDet {
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
  @JsonKey(name: "t_rpd_id")
  int? get tRpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det_id")
  int? get tRpdDetTSpdDetId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd_id")
  int? get tRpdDetTipeSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya")
  int? get biaya => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_realisasi")
  int? get biayaRealisasi => throw _privateConstructorUsedError;
  @JsonKey(name: "detail_transport")
  dynamic get detailTransport => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas_id")
  dynamic get tRpdDetMKndDinasId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_kendaraan_dinas")
  bool? get isKendaraanDinas => throw _privateConstructorUsedError;
  @JsonKey(name: "catatan_realisasi")
  String? get catatanRealisasi => throw _privateConstructorUsedError;
  @JsonKey(name: "creator_id")
  dynamic get tRpdDetCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_editor_id")
  dynamic get tRpdDetLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.id")
  int? get tSpdDetId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.t_spd_id")
  int? get tSpdDetTSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.tipe_spd_id")
  int? get tSpdDetTipeSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.biaya")
  String? get tSpdDetBiaya => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.biaya_realisasi")
  dynamic get tSpdDetBiayaRealisasi => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.detail_transport")
  dynamic get tSpdDetDetailTransport => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.m_knd_dinas_id")
  dynamic get tSpdDetMKndDinasId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.is_kendaraan_dinas")
  bool? get tSpdDetIsKendaraanDinas => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.keterangan")
  String? get tSpdDetKeterangan => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.catatan_realisasi")
  dynamic get tSpdDetCatatanRealisasi => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.is_now")
  dynamic get tSpdDetIsNow => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.creator_id")
  dynamic get tSpdDetCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.last_editor_id")
  dynamic get tSpdDetLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.created_at")
  String? get tSpdDetCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_spd_det.updated_at")
  String? get tSpdDetUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.id")
  int? get tipeSpdId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.m_comp_id")
  int? get tipeSpdMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.m_dir_id")
  dynamic get tipeSpdMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.group")
  String? get tipeSpdGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.key")
  String? get tipeSpdKey => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.code")
  String? get tipeSpdCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.value")
  String? get tipeSpdValue => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.is_active")
  bool? get tipeSpdIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.creator_id")
  dynamic get tipeSpdCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.last_editor_id")
  dynamic get tipeSpdLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.created_at")
  String? get tipeSpdCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.updated_at")
  String? get tipeSpdUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.value_2")
  dynamic get tipeSpdValue2 => throw _privateConstructorUsedError;
  @JsonKey(name: "tipe_spd.value_3")
  dynamic get tipeSpdValue3 => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.id")
  dynamic get mKndDinasId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.m_comp_id")
  dynamic get mKndDinasMCompId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.m_dir_id")
  dynamic get mKndDinasMDirId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.nama")
  dynamic get mKndDinasNama => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.nopol")
  dynamic get mKndDinasNopol => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.m_lokasi_id")
  dynamic get mKndDinasMLokasiId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.desc")
  dynamic get mKndDinasDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.is_active")
  dynamic get mKndDinasIsActive => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.creator_id")
  dynamic get mKndDinasCreatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.last_editor_id")
  dynamic get mKndDinasLastEditorId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.created_at")
  dynamic get mKndDinasCreatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "m_knd_dinas.updated_at")
  dynamic get mKndDinasUpdatedAt => throw _privateConstructorUsedError;
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
  $TRpdDetCopyWith<TRpdDet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TRpdDetCopyWith<$Res> {
  factory $TRpdDetCopyWith(TRpdDet value, $Res Function(TRpdDet) then) =
      _$TRpdDetCopyWithImpl<$Res, TRpdDet>;
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "t_rpd_id") int? tRpdId,
      @JsonKey(name: "t_spd_det_id") int? tRpdDetTSpdDetId,
      @JsonKey(name: "tipe_spd_id") int? tRpdDetTipeSpdId,
      @JsonKey(name: "biaya") int? biaya,
      @JsonKey(name: "biaya_realisasi") int? biayaRealisasi,
      @JsonKey(name: "detail_transport") dynamic detailTransport,
      @JsonKey(name: "m_knd_dinas_id") dynamic tRpdDetMKndDinasId,
      @JsonKey(name: "is_kendaraan_dinas") bool? isKendaraanDinas,
      @JsonKey(name: "catatan_realisasi") String? catatanRealisasi,
      @JsonKey(name: "creator_id") dynamic tRpdDetCreatorId,
      @JsonKey(name: "last_editor_id") dynamic tRpdDetLastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "t_spd_det.id") int? tSpdDetId,
      @JsonKey(name: "t_spd_det.t_spd_id") int? tSpdDetTSpdId,
      @JsonKey(name: "t_spd_det.tipe_spd_id") int? tSpdDetTipeSpdId,
      @JsonKey(name: "t_spd_det.biaya") String? tSpdDetBiaya,
      @JsonKey(name: "t_spd_det.biaya_realisasi") dynamic tSpdDetBiayaRealisasi,
      @JsonKey(name: "t_spd_det.detail_transport")
      dynamic tSpdDetDetailTransport,
      @JsonKey(name: "t_spd_det.m_knd_dinas_id") dynamic tSpdDetMKndDinasId,
      @JsonKey(name: "t_spd_det.is_kendaraan_dinas")
      bool? tSpdDetIsKendaraanDinas,
      @JsonKey(name: "t_spd_det.keterangan") String? tSpdDetKeterangan,
      @JsonKey(name: "t_spd_det.catatan_realisasi")
      dynamic tSpdDetCatatanRealisasi,
      @JsonKey(name: "t_spd_det.is_now") dynamic tSpdDetIsNow,
      @JsonKey(name: "t_spd_det.creator_id") dynamic tSpdDetCreatorId,
      @JsonKey(name: "t_spd_det.last_editor_id") dynamic tSpdDetLastEditorId,
      @JsonKey(name: "t_spd_det.created_at") String? tSpdDetCreatedAt,
      @JsonKey(name: "t_spd_det.updated_at") String? tSpdDetUpdatedAt,
      @JsonKey(name: "tipe_spd.id") int? tipeSpdId,
      @JsonKey(name: "tipe_spd.m_comp_id") int? tipeSpdMCompId,
      @JsonKey(name: "tipe_spd.m_dir_id") dynamic tipeSpdMDirId,
      @JsonKey(name: "tipe_spd.group") String? tipeSpdGroup,
      @JsonKey(name: "tipe_spd.key") String? tipeSpdKey,
      @JsonKey(name: "tipe_spd.code") String? tipeSpdCode,
      @JsonKey(name: "tipe_spd.value") String? tipeSpdValue,
      @JsonKey(name: "tipe_spd.is_active") bool? tipeSpdIsActive,
      @JsonKey(name: "tipe_spd.creator_id") dynamic tipeSpdCreatorId,
      @JsonKey(name: "tipe_spd.last_editor_id") dynamic tipeSpdLastEditorId,
      @JsonKey(name: "tipe_spd.created_at") String? tipeSpdCreatedAt,
      @JsonKey(name: "tipe_spd.updated_at") String? tipeSpdUpdatedAt,
      @JsonKey(name: "tipe_spd.value_2") dynamic tipeSpdValue2,
      @JsonKey(name: "tipe_spd.value_3") dynamic tipeSpdValue3,
      @JsonKey(name: "m_knd_dinas.id") dynamic mKndDinasId,
      @JsonKey(name: "m_knd_dinas.m_comp_id") dynamic mKndDinasMCompId,
      @JsonKey(name: "m_knd_dinas.m_dir_id") dynamic mKndDinasMDirId,
      @JsonKey(name: "m_knd_dinas.nama") dynamic mKndDinasNama,
      @JsonKey(name: "m_knd_dinas.nopol") dynamic mKndDinasNopol,
      @JsonKey(name: "m_knd_dinas.m_lokasi_id") dynamic mKndDinasMLokasiId,
      @JsonKey(name: "m_knd_dinas.desc") dynamic mKndDinasDesc,
      @JsonKey(name: "m_knd_dinas.is_active") dynamic mKndDinasIsActive,
      @JsonKey(name: "m_knd_dinas.creator_id") dynamic mKndDinasCreatorId,
      @JsonKey(name: "m_knd_dinas.last_editor_id")
      dynamic mKndDinasLastEditorId,
      @JsonKey(name: "m_knd_dinas.created_at") dynamic mKndDinasCreatedAt,
      @JsonKey(name: "m_knd_dinas.updated_at") dynamic mKndDinasUpdatedAt,
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
class _$TRpdDetCopyWithImpl<$Res, $Val extends TRpdDet>
    implements $TRpdDetCopyWith<$Res> {
  _$TRpdDetCopyWithImpl(this._value, this._then);

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
    Object? tRpdId = freezed,
    Object? tRpdDetTSpdDetId = freezed,
    Object? tRpdDetTipeSpdId = freezed,
    Object? biaya = freezed,
    Object? biayaRealisasi = freezed,
    Object? detailTransport = freezed,
    Object? tRpdDetMKndDinasId = freezed,
    Object? isKendaraanDinas = freezed,
    Object? catatanRealisasi = freezed,
    Object? tRpdDetCreatorId = freezed,
    Object? tRpdDetLastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tSpdDetId = freezed,
    Object? tSpdDetTSpdId = freezed,
    Object? tSpdDetTipeSpdId = freezed,
    Object? tSpdDetBiaya = freezed,
    Object? tSpdDetBiayaRealisasi = freezed,
    Object? tSpdDetDetailTransport = freezed,
    Object? tSpdDetMKndDinasId = freezed,
    Object? tSpdDetIsKendaraanDinas = freezed,
    Object? tSpdDetKeterangan = freezed,
    Object? tSpdDetCatatanRealisasi = freezed,
    Object? tSpdDetIsNow = freezed,
    Object? tSpdDetCreatorId = freezed,
    Object? tSpdDetLastEditorId = freezed,
    Object? tSpdDetCreatedAt = freezed,
    Object? tSpdDetUpdatedAt = freezed,
    Object? tipeSpdId = freezed,
    Object? tipeSpdMCompId = freezed,
    Object? tipeSpdMDirId = freezed,
    Object? tipeSpdGroup = freezed,
    Object? tipeSpdKey = freezed,
    Object? tipeSpdCode = freezed,
    Object? tipeSpdValue = freezed,
    Object? tipeSpdIsActive = freezed,
    Object? tipeSpdCreatorId = freezed,
    Object? tipeSpdLastEditorId = freezed,
    Object? tipeSpdCreatedAt = freezed,
    Object? tipeSpdUpdatedAt = freezed,
    Object? tipeSpdValue2 = freezed,
    Object? tipeSpdValue3 = freezed,
    Object? mKndDinasId = freezed,
    Object? mKndDinasMCompId = freezed,
    Object? mKndDinasMDirId = freezed,
    Object? mKndDinasNama = freezed,
    Object? mKndDinasNopol = freezed,
    Object? mKndDinasMLokasiId = freezed,
    Object? mKndDinasDesc = freezed,
    Object? mKndDinasIsActive = freezed,
    Object? mKndDinasCreatorId = freezed,
    Object? mKndDinasLastEditorId = freezed,
    Object? mKndDinasCreatedAt = freezed,
    Object? mKndDinasUpdatedAt = freezed,
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
      tRpdId: freezed == tRpdId
          ? _value.tRpdId
          : tRpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tRpdDetTSpdDetId: freezed == tRpdDetTSpdDetId
          ? _value.tRpdDetTSpdDetId
          : tRpdDetTSpdDetId // ignore: cast_nullable_to_non_nullable
              as int?,
      tRpdDetTipeSpdId: freezed == tRpdDetTipeSpdId
          ? _value.tRpdDetTipeSpdId
          : tRpdDetTipeSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      biaya: freezed == biaya
          ? _value.biaya
          : biaya // ignore: cast_nullable_to_non_nullable
              as int?,
      biayaRealisasi: freezed == biayaRealisasi
          ? _value.biayaRealisasi
          : biayaRealisasi // ignore: cast_nullable_to_non_nullable
              as int?,
      detailTransport: freezed == detailTransport
          ? _value.detailTransport
          : detailTransport // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tRpdDetMKndDinasId: freezed == tRpdDetMKndDinasId
          ? _value.tRpdDetMKndDinasId
          : tRpdDetMKndDinasId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isKendaraanDinas: freezed == isKendaraanDinas
          ? _value.isKendaraanDinas
          : isKendaraanDinas // ignore: cast_nullable_to_non_nullable
              as bool?,
      catatanRealisasi: freezed == catatanRealisasi
          ? _value.catatanRealisasi
          : catatanRealisasi // ignore: cast_nullable_to_non_nullable
              as String?,
      tRpdDetCreatorId: freezed == tRpdDetCreatorId
          ? _value.tRpdDetCreatorId
          : tRpdDetCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tRpdDetLastEditorId: freezed == tRpdDetLastEditorId
          ? _value.tRpdDetLastEditorId
          : tRpdDetLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdDetId: freezed == tSpdDetId
          ? _value.tSpdDetId
          : tSpdDetId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdDetTSpdId: freezed == tSpdDetTSpdId
          ? _value.tSpdDetTSpdId
          : tSpdDetTSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdDetTipeSpdId: freezed == tSpdDetTipeSpdId
          ? _value.tSpdDetTipeSpdId
          : tSpdDetTipeSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdDetBiaya: freezed == tSpdDetBiaya
          ? _value.tSpdDetBiaya
          : tSpdDetBiaya // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdDetBiayaRealisasi: freezed == tSpdDetBiayaRealisasi
          ? _value.tSpdDetBiayaRealisasi
          : tSpdDetBiayaRealisasi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetDetailTransport: freezed == tSpdDetDetailTransport
          ? _value.tSpdDetDetailTransport
          : tSpdDetDetailTransport // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetMKndDinasId: freezed == tSpdDetMKndDinasId
          ? _value.tSpdDetMKndDinasId
          : tSpdDetMKndDinasId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetIsKendaraanDinas: freezed == tSpdDetIsKendaraanDinas
          ? _value.tSpdDetIsKendaraanDinas
          : tSpdDetIsKendaraanDinas // ignore: cast_nullable_to_non_nullable
              as bool?,
      tSpdDetKeterangan: freezed == tSpdDetKeterangan
          ? _value.tSpdDetKeterangan
          : tSpdDetKeterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdDetCatatanRealisasi: freezed == tSpdDetCatatanRealisasi
          ? _value.tSpdDetCatatanRealisasi
          : tSpdDetCatatanRealisasi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetIsNow: freezed == tSpdDetIsNow
          ? _value.tSpdDetIsNow
          : tSpdDetIsNow // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetCreatorId: freezed == tSpdDetCreatorId
          ? _value.tSpdDetCreatorId
          : tSpdDetCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetLastEditorId: freezed == tSpdDetLastEditorId
          ? _value.tSpdDetLastEditorId
          : tSpdDetLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetCreatedAt: freezed == tSpdDetCreatedAt
          ? _value.tSpdDetCreatedAt
          : tSpdDetCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdDetUpdatedAt: freezed == tSpdDetUpdatedAt
          ? _value.tSpdDetUpdatedAt
          : tSpdDetUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdId: freezed == tipeSpdId
          ? _value.tipeSpdId
          : tipeSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeSpdMCompId: freezed == tipeSpdMCompId
          ? _value.tipeSpdMCompId
          : tipeSpdMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeSpdMDirId: freezed == tipeSpdMDirId
          ? _value.tipeSpdMDirId
          : tipeSpdMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeSpdGroup: freezed == tipeSpdGroup
          ? _value.tipeSpdGroup
          : tipeSpdGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdKey: freezed == tipeSpdKey
          ? _value.tipeSpdKey
          : tipeSpdKey // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdCode: freezed == tipeSpdCode
          ? _value.tipeSpdCode
          : tipeSpdCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdValue: freezed == tipeSpdValue
          ? _value.tipeSpdValue
          : tipeSpdValue // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdIsActive: freezed == tipeSpdIsActive
          ? _value.tipeSpdIsActive
          : tipeSpdIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tipeSpdCreatorId: freezed == tipeSpdCreatorId
          ? _value.tipeSpdCreatorId
          : tipeSpdCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeSpdLastEditorId: freezed == tipeSpdLastEditorId
          ? _value.tipeSpdLastEditorId
          : tipeSpdLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeSpdCreatedAt: freezed == tipeSpdCreatedAt
          ? _value.tipeSpdCreatedAt
          : tipeSpdCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdUpdatedAt: freezed == tipeSpdUpdatedAt
          ? _value.tipeSpdUpdatedAt
          : tipeSpdUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdValue2: freezed == tipeSpdValue2
          ? _value.tipeSpdValue2
          : tipeSpdValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeSpdValue3: freezed == tipeSpdValue3
          ? _value.tipeSpdValue3
          : tipeSpdValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasId: freezed == mKndDinasId
          ? _value.mKndDinasId
          : mKndDinasId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasMCompId: freezed == mKndDinasMCompId
          ? _value.mKndDinasMCompId
          : mKndDinasMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasMDirId: freezed == mKndDinasMDirId
          ? _value.mKndDinasMDirId
          : mKndDinasMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasNama: freezed == mKndDinasNama
          ? _value.mKndDinasNama
          : mKndDinasNama // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasNopol: freezed == mKndDinasNopol
          ? _value.mKndDinasNopol
          : mKndDinasNopol // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasMLokasiId: freezed == mKndDinasMLokasiId
          ? _value.mKndDinasMLokasiId
          : mKndDinasMLokasiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasDesc: freezed == mKndDinasDesc
          ? _value.mKndDinasDesc
          : mKndDinasDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasIsActive: freezed == mKndDinasIsActive
          ? _value.mKndDinasIsActive
          : mKndDinasIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasCreatorId: freezed == mKndDinasCreatorId
          ? _value.mKndDinasCreatorId
          : mKndDinasCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasLastEditorId: freezed == mKndDinasLastEditorId
          ? _value.mKndDinasLastEditorId
          : mKndDinasLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasCreatedAt: freezed == mKndDinasCreatedAt
          ? _value.mKndDinasCreatedAt
          : mKndDinasCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasUpdatedAt: freezed == mKndDinasUpdatedAt
          ? _value.mKndDinasUpdatedAt
          : mKndDinasUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$TRpdDetImplCopyWith<$Res> implements $TRpdDetCopyWith<$Res> {
  factory _$$TRpdDetImplCopyWith(
          _$TRpdDetImpl value, $Res Function(_$TRpdDetImpl) then) =
      __$$TRpdDetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
      @JsonKey(name: "meta_delete") bool? metaDelete,
      @JsonKey(name: "meta_update") bool? metaUpdate,
      @JsonKey(name: "meta_create") bool? metaCreate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "t_rpd_id") int? tRpdId,
      @JsonKey(name: "t_spd_det_id") int? tRpdDetTSpdDetId,
      @JsonKey(name: "tipe_spd_id") int? tRpdDetTipeSpdId,
      @JsonKey(name: "biaya") int? biaya,
      @JsonKey(name: "biaya_realisasi") int? biayaRealisasi,
      @JsonKey(name: "detail_transport") dynamic detailTransport,
      @JsonKey(name: "m_knd_dinas_id") dynamic tRpdDetMKndDinasId,
      @JsonKey(name: "is_kendaraan_dinas") bool? isKendaraanDinas,
      @JsonKey(name: "catatan_realisasi") String? catatanRealisasi,
      @JsonKey(name: "creator_id") dynamic tRpdDetCreatorId,
      @JsonKey(name: "last_editor_id") dynamic tRpdDetLastEditorId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "t_spd_det.id") int? tSpdDetId,
      @JsonKey(name: "t_spd_det.t_spd_id") int? tSpdDetTSpdId,
      @JsonKey(name: "t_spd_det.tipe_spd_id") int? tSpdDetTipeSpdId,
      @JsonKey(name: "t_spd_det.biaya") String? tSpdDetBiaya,
      @JsonKey(name: "t_spd_det.biaya_realisasi") dynamic tSpdDetBiayaRealisasi,
      @JsonKey(name: "t_spd_det.detail_transport")
      dynamic tSpdDetDetailTransport,
      @JsonKey(name: "t_spd_det.m_knd_dinas_id") dynamic tSpdDetMKndDinasId,
      @JsonKey(name: "t_spd_det.is_kendaraan_dinas")
      bool? tSpdDetIsKendaraanDinas,
      @JsonKey(name: "t_spd_det.keterangan") String? tSpdDetKeterangan,
      @JsonKey(name: "t_spd_det.catatan_realisasi")
      dynamic tSpdDetCatatanRealisasi,
      @JsonKey(name: "t_spd_det.is_now") dynamic tSpdDetIsNow,
      @JsonKey(name: "t_spd_det.creator_id") dynamic tSpdDetCreatorId,
      @JsonKey(name: "t_spd_det.last_editor_id") dynamic tSpdDetLastEditorId,
      @JsonKey(name: "t_spd_det.created_at") String? tSpdDetCreatedAt,
      @JsonKey(name: "t_spd_det.updated_at") String? tSpdDetUpdatedAt,
      @JsonKey(name: "tipe_spd.id") int? tipeSpdId,
      @JsonKey(name: "tipe_spd.m_comp_id") int? tipeSpdMCompId,
      @JsonKey(name: "tipe_spd.m_dir_id") dynamic tipeSpdMDirId,
      @JsonKey(name: "tipe_spd.group") String? tipeSpdGroup,
      @JsonKey(name: "tipe_spd.key") String? tipeSpdKey,
      @JsonKey(name: "tipe_spd.code") String? tipeSpdCode,
      @JsonKey(name: "tipe_spd.value") String? tipeSpdValue,
      @JsonKey(name: "tipe_spd.is_active") bool? tipeSpdIsActive,
      @JsonKey(name: "tipe_spd.creator_id") dynamic tipeSpdCreatorId,
      @JsonKey(name: "tipe_spd.last_editor_id") dynamic tipeSpdLastEditorId,
      @JsonKey(name: "tipe_spd.created_at") String? tipeSpdCreatedAt,
      @JsonKey(name: "tipe_spd.updated_at") String? tipeSpdUpdatedAt,
      @JsonKey(name: "tipe_spd.value_2") dynamic tipeSpdValue2,
      @JsonKey(name: "tipe_spd.value_3") dynamic tipeSpdValue3,
      @JsonKey(name: "m_knd_dinas.id") dynamic mKndDinasId,
      @JsonKey(name: "m_knd_dinas.m_comp_id") dynamic mKndDinasMCompId,
      @JsonKey(name: "m_knd_dinas.m_dir_id") dynamic mKndDinasMDirId,
      @JsonKey(name: "m_knd_dinas.nama") dynamic mKndDinasNama,
      @JsonKey(name: "m_knd_dinas.nopol") dynamic mKndDinasNopol,
      @JsonKey(name: "m_knd_dinas.m_lokasi_id") dynamic mKndDinasMLokasiId,
      @JsonKey(name: "m_knd_dinas.desc") dynamic mKndDinasDesc,
      @JsonKey(name: "m_knd_dinas.is_active") dynamic mKndDinasIsActive,
      @JsonKey(name: "m_knd_dinas.creator_id") dynamic mKndDinasCreatorId,
      @JsonKey(name: "m_knd_dinas.last_editor_id")
      dynamic mKndDinasLastEditorId,
      @JsonKey(name: "m_knd_dinas.created_at") dynamic mKndDinasCreatedAt,
      @JsonKey(name: "m_knd_dinas.updated_at") dynamic mKndDinasUpdatedAt,
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
class __$$TRpdDetImplCopyWithImpl<$Res>
    extends _$TRpdDetCopyWithImpl<$Res, _$TRpdDetImpl>
    implements _$$TRpdDetImplCopyWith<$Res> {
  __$$TRpdDetImplCopyWithImpl(
      _$TRpdDetImpl _value, $Res Function(_$TRpdDetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRead = freezed,
    Object? metaDelete = freezed,
    Object? metaUpdate = freezed,
    Object? metaCreate = freezed,
    Object? id = freezed,
    Object? tRpdId = freezed,
    Object? tRpdDetTSpdDetId = freezed,
    Object? tRpdDetTipeSpdId = freezed,
    Object? biaya = freezed,
    Object? biayaRealisasi = freezed,
    Object? detailTransport = freezed,
    Object? tRpdDetMKndDinasId = freezed,
    Object? isKendaraanDinas = freezed,
    Object? catatanRealisasi = freezed,
    Object? tRpdDetCreatorId = freezed,
    Object? tRpdDetLastEditorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tSpdDetId = freezed,
    Object? tSpdDetTSpdId = freezed,
    Object? tSpdDetTipeSpdId = freezed,
    Object? tSpdDetBiaya = freezed,
    Object? tSpdDetBiayaRealisasi = freezed,
    Object? tSpdDetDetailTransport = freezed,
    Object? tSpdDetMKndDinasId = freezed,
    Object? tSpdDetIsKendaraanDinas = freezed,
    Object? tSpdDetKeterangan = freezed,
    Object? tSpdDetCatatanRealisasi = freezed,
    Object? tSpdDetIsNow = freezed,
    Object? tSpdDetCreatorId = freezed,
    Object? tSpdDetLastEditorId = freezed,
    Object? tSpdDetCreatedAt = freezed,
    Object? tSpdDetUpdatedAt = freezed,
    Object? tipeSpdId = freezed,
    Object? tipeSpdMCompId = freezed,
    Object? tipeSpdMDirId = freezed,
    Object? tipeSpdGroup = freezed,
    Object? tipeSpdKey = freezed,
    Object? tipeSpdCode = freezed,
    Object? tipeSpdValue = freezed,
    Object? tipeSpdIsActive = freezed,
    Object? tipeSpdCreatorId = freezed,
    Object? tipeSpdLastEditorId = freezed,
    Object? tipeSpdCreatedAt = freezed,
    Object? tipeSpdUpdatedAt = freezed,
    Object? tipeSpdValue2 = freezed,
    Object? tipeSpdValue3 = freezed,
    Object? mKndDinasId = freezed,
    Object? mKndDinasMCompId = freezed,
    Object? mKndDinasMDirId = freezed,
    Object? mKndDinasNama = freezed,
    Object? mKndDinasNopol = freezed,
    Object? mKndDinasMLokasiId = freezed,
    Object? mKndDinasDesc = freezed,
    Object? mKndDinasIsActive = freezed,
    Object? mKndDinasCreatorId = freezed,
    Object? mKndDinasLastEditorId = freezed,
    Object? mKndDinasCreatedAt = freezed,
    Object? mKndDinasUpdatedAt = freezed,
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
    return _then(_$TRpdDetImpl(
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
      tRpdId: freezed == tRpdId
          ? _value.tRpdId
          : tRpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tRpdDetTSpdDetId: freezed == tRpdDetTSpdDetId
          ? _value.tRpdDetTSpdDetId
          : tRpdDetTSpdDetId // ignore: cast_nullable_to_non_nullable
              as int?,
      tRpdDetTipeSpdId: freezed == tRpdDetTipeSpdId
          ? _value.tRpdDetTipeSpdId
          : tRpdDetTipeSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      biaya: freezed == biaya
          ? _value.biaya
          : biaya // ignore: cast_nullable_to_non_nullable
              as int?,
      biayaRealisasi: freezed == biayaRealisasi
          ? _value.biayaRealisasi
          : biayaRealisasi // ignore: cast_nullable_to_non_nullable
              as int?,
      detailTransport: freezed == detailTransport
          ? _value.detailTransport
          : detailTransport // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tRpdDetMKndDinasId: freezed == tRpdDetMKndDinasId
          ? _value.tRpdDetMKndDinasId
          : tRpdDetMKndDinasId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isKendaraanDinas: freezed == isKendaraanDinas
          ? _value.isKendaraanDinas
          : isKendaraanDinas // ignore: cast_nullable_to_non_nullable
              as bool?,
      catatanRealisasi: freezed == catatanRealisasi
          ? _value.catatanRealisasi
          : catatanRealisasi // ignore: cast_nullable_to_non_nullable
              as String?,
      tRpdDetCreatorId: freezed == tRpdDetCreatorId
          ? _value.tRpdDetCreatorId
          : tRpdDetCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tRpdDetLastEditorId: freezed == tRpdDetLastEditorId
          ? _value.tRpdDetLastEditorId
          : tRpdDetLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdDetId: freezed == tSpdDetId
          ? _value.tSpdDetId
          : tSpdDetId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdDetTSpdId: freezed == tSpdDetTSpdId
          ? _value.tSpdDetTSpdId
          : tSpdDetTSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdDetTipeSpdId: freezed == tSpdDetTipeSpdId
          ? _value.tSpdDetTipeSpdId
          : tSpdDetTipeSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tSpdDetBiaya: freezed == tSpdDetBiaya
          ? _value.tSpdDetBiaya
          : tSpdDetBiaya // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdDetBiayaRealisasi: freezed == tSpdDetBiayaRealisasi
          ? _value.tSpdDetBiayaRealisasi
          : tSpdDetBiayaRealisasi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetDetailTransport: freezed == tSpdDetDetailTransport
          ? _value.tSpdDetDetailTransport
          : tSpdDetDetailTransport // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetMKndDinasId: freezed == tSpdDetMKndDinasId
          ? _value.tSpdDetMKndDinasId
          : tSpdDetMKndDinasId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetIsKendaraanDinas: freezed == tSpdDetIsKendaraanDinas
          ? _value.tSpdDetIsKendaraanDinas
          : tSpdDetIsKendaraanDinas // ignore: cast_nullable_to_non_nullable
              as bool?,
      tSpdDetKeterangan: freezed == tSpdDetKeterangan
          ? _value.tSpdDetKeterangan
          : tSpdDetKeterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdDetCatatanRealisasi: freezed == tSpdDetCatatanRealisasi
          ? _value.tSpdDetCatatanRealisasi
          : tSpdDetCatatanRealisasi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetIsNow: freezed == tSpdDetIsNow
          ? _value.tSpdDetIsNow
          : tSpdDetIsNow // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetCreatorId: freezed == tSpdDetCreatorId
          ? _value.tSpdDetCreatorId
          : tSpdDetCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetLastEditorId: freezed == tSpdDetLastEditorId
          ? _value.tSpdDetLastEditorId
          : tSpdDetLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSpdDetCreatedAt: freezed == tSpdDetCreatedAt
          ? _value.tSpdDetCreatedAt
          : tSpdDetCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tSpdDetUpdatedAt: freezed == tSpdDetUpdatedAt
          ? _value.tSpdDetUpdatedAt
          : tSpdDetUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdId: freezed == tipeSpdId
          ? _value.tipeSpdId
          : tipeSpdId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeSpdMCompId: freezed == tipeSpdMCompId
          ? _value.tipeSpdMCompId
          : tipeSpdMCompId // ignore: cast_nullable_to_non_nullable
              as int?,
      tipeSpdMDirId: freezed == tipeSpdMDirId
          ? _value.tipeSpdMDirId
          : tipeSpdMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeSpdGroup: freezed == tipeSpdGroup
          ? _value.tipeSpdGroup
          : tipeSpdGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdKey: freezed == tipeSpdKey
          ? _value.tipeSpdKey
          : tipeSpdKey // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdCode: freezed == tipeSpdCode
          ? _value.tipeSpdCode
          : tipeSpdCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdValue: freezed == tipeSpdValue
          ? _value.tipeSpdValue
          : tipeSpdValue // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdIsActive: freezed == tipeSpdIsActive
          ? _value.tipeSpdIsActive
          : tipeSpdIsActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      tipeSpdCreatorId: freezed == tipeSpdCreatorId
          ? _value.tipeSpdCreatorId
          : tipeSpdCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeSpdLastEditorId: freezed == tipeSpdLastEditorId
          ? _value.tipeSpdLastEditorId
          : tipeSpdLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeSpdCreatedAt: freezed == tipeSpdCreatedAt
          ? _value.tipeSpdCreatedAt
          : tipeSpdCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdUpdatedAt: freezed == tipeSpdUpdatedAt
          ? _value.tipeSpdUpdatedAt
          : tipeSpdUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeSpdValue2: freezed == tipeSpdValue2
          ? _value.tipeSpdValue2
          : tipeSpdValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tipeSpdValue3: freezed == tipeSpdValue3
          ? _value.tipeSpdValue3
          : tipeSpdValue3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasId: freezed == mKndDinasId
          ? _value.mKndDinasId
          : mKndDinasId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasMCompId: freezed == mKndDinasMCompId
          ? _value.mKndDinasMCompId
          : mKndDinasMCompId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasMDirId: freezed == mKndDinasMDirId
          ? _value.mKndDinasMDirId
          : mKndDinasMDirId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasNama: freezed == mKndDinasNama
          ? _value.mKndDinasNama
          : mKndDinasNama // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasNopol: freezed == mKndDinasNopol
          ? _value.mKndDinasNopol
          : mKndDinasNopol // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasMLokasiId: freezed == mKndDinasMLokasiId
          ? _value.mKndDinasMLokasiId
          : mKndDinasMLokasiId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasDesc: freezed == mKndDinasDesc
          ? _value.mKndDinasDesc
          : mKndDinasDesc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasIsActive: freezed == mKndDinasIsActive
          ? _value.mKndDinasIsActive
          : mKndDinasIsActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasCreatorId: freezed == mKndDinasCreatorId
          ? _value.mKndDinasCreatorId
          : mKndDinasCreatorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasLastEditorId: freezed == mKndDinasLastEditorId
          ? _value.mKndDinasLastEditorId
          : mKndDinasLastEditorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasCreatedAt: freezed == mKndDinasCreatedAt
          ? _value.mKndDinasCreatedAt
          : mKndDinasCreatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mKndDinasUpdatedAt: freezed == mKndDinasUpdatedAt
          ? _value.mKndDinasUpdatedAt
          : mKndDinasUpdatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$TRpdDetImpl implements _TRpdDet {
  const _$TRpdDetImpl(
      {@JsonKey(name: "meta_read") this.metaRead,
      @JsonKey(name: "meta_delete") this.metaDelete,
      @JsonKey(name: "meta_update") this.metaUpdate,
      @JsonKey(name: "meta_create") this.metaCreate,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "t_rpd_id") this.tRpdId,
      @JsonKey(name: "t_spd_det_id") this.tRpdDetTSpdDetId,
      @JsonKey(name: "tipe_spd_id") this.tRpdDetTipeSpdId,
      @JsonKey(name: "biaya") this.biaya,
      @JsonKey(name: "biaya_realisasi") this.biayaRealisasi,
      @JsonKey(name: "detail_transport") this.detailTransport,
      @JsonKey(name: "m_knd_dinas_id") this.tRpdDetMKndDinasId,
      @JsonKey(name: "is_kendaraan_dinas") this.isKendaraanDinas,
      @JsonKey(name: "catatan_realisasi") this.catatanRealisasi,
      @JsonKey(name: "creator_id") this.tRpdDetCreatorId,
      @JsonKey(name: "last_editor_id") this.tRpdDetLastEditorId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "t_spd_det.id") this.tSpdDetId,
      @JsonKey(name: "t_spd_det.t_spd_id") this.tSpdDetTSpdId,
      @JsonKey(name: "t_spd_det.tipe_spd_id") this.tSpdDetTipeSpdId,
      @JsonKey(name: "t_spd_det.biaya") this.tSpdDetBiaya,
      @JsonKey(name: "t_spd_det.biaya_realisasi") this.tSpdDetBiayaRealisasi,
      @JsonKey(name: "t_spd_det.detail_transport") this.tSpdDetDetailTransport,
      @JsonKey(name: "t_spd_det.m_knd_dinas_id") this.tSpdDetMKndDinasId,
      @JsonKey(name: "t_spd_det.is_kendaraan_dinas")
      this.tSpdDetIsKendaraanDinas,
      @JsonKey(name: "t_spd_det.keterangan") this.tSpdDetKeterangan,
      @JsonKey(name: "t_spd_det.catatan_realisasi")
      this.tSpdDetCatatanRealisasi,
      @JsonKey(name: "t_spd_det.is_now") this.tSpdDetIsNow,
      @JsonKey(name: "t_spd_det.creator_id") this.tSpdDetCreatorId,
      @JsonKey(name: "t_spd_det.last_editor_id") this.tSpdDetLastEditorId,
      @JsonKey(name: "t_spd_det.created_at") this.tSpdDetCreatedAt,
      @JsonKey(name: "t_spd_det.updated_at") this.tSpdDetUpdatedAt,
      @JsonKey(name: "tipe_spd.id") this.tipeSpdId,
      @JsonKey(name: "tipe_spd.m_comp_id") this.tipeSpdMCompId,
      @JsonKey(name: "tipe_spd.m_dir_id") this.tipeSpdMDirId,
      @JsonKey(name: "tipe_spd.group") this.tipeSpdGroup,
      @JsonKey(name: "tipe_spd.key") this.tipeSpdKey,
      @JsonKey(name: "tipe_spd.code") this.tipeSpdCode,
      @JsonKey(name: "tipe_spd.value") this.tipeSpdValue,
      @JsonKey(name: "tipe_spd.is_active") this.tipeSpdIsActive,
      @JsonKey(name: "tipe_spd.creator_id") this.tipeSpdCreatorId,
      @JsonKey(name: "tipe_spd.last_editor_id") this.tipeSpdLastEditorId,
      @JsonKey(name: "tipe_spd.created_at") this.tipeSpdCreatedAt,
      @JsonKey(name: "tipe_spd.updated_at") this.tipeSpdUpdatedAt,
      @JsonKey(name: "tipe_spd.value_2") this.tipeSpdValue2,
      @JsonKey(name: "tipe_spd.value_3") this.tipeSpdValue3,
      @JsonKey(name: "m_knd_dinas.id") this.mKndDinasId,
      @JsonKey(name: "m_knd_dinas.m_comp_id") this.mKndDinasMCompId,
      @JsonKey(name: "m_knd_dinas.m_dir_id") this.mKndDinasMDirId,
      @JsonKey(name: "m_knd_dinas.nama") this.mKndDinasNama,
      @JsonKey(name: "m_knd_dinas.nopol") this.mKndDinasNopol,
      @JsonKey(name: "m_knd_dinas.m_lokasi_id") this.mKndDinasMLokasiId,
      @JsonKey(name: "m_knd_dinas.desc") this.mKndDinasDesc,
      @JsonKey(name: "m_knd_dinas.is_active") this.mKndDinasIsActive,
      @JsonKey(name: "m_knd_dinas.creator_id") this.mKndDinasCreatorId,
      @JsonKey(name: "m_knd_dinas.last_editor_id") this.mKndDinasLastEditorId,
      @JsonKey(name: "m_knd_dinas.created_at") this.mKndDinasCreatedAt,
      @JsonKey(name: "m_knd_dinas.updated_at") this.mKndDinasUpdatedAt,
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

  factory _$TRpdDetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TRpdDetImplFromJson(json);

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
  @JsonKey(name: "t_rpd_id")
  final int? tRpdId;
  @override
  @JsonKey(name: "t_spd_det_id")
  final int? tRpdDetTSpdDetId;
  @override
  @JsonKey(name: "tipe_spd_id")
  final int? tRpdDetTipeSpdId;
  @override
  @JsonKey(name: "biaya")
  final int? biaya;
  @override
  @JsonKey(name: "biaya_realisasi")
  final int? biayaRealisasi;
  @override
  @JsonKey(name: "detail_transport")
  final dynamic detailTransport;
  @override
  @JsonKey(name: "m_knd_dinas_id")
  final dynamic tRpdDetMKndDinasId;
  @override
  @JsonKey(name: "is_kendaraan_dinas")
  final bool? isKendaraanDinas;
  @override
  @JsonKey(name: "catatan_realisasi")
  final String? catatanRealisasi;
  @override
  @JsonKey(name: "creator_id")
  final dynamic tRpdDetCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  final dynamic tRpdDetLastEditorId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "t_spd_det.id")
  final int? tSpdDetId;
  @override
  @JsonKey(name: "t_spd_det.t_spd_id")
  final int? tSpdDetTSpdId;
  @override
  @JsonKey(name: "t_spd_det.tipe_spd_id")
  final int? tSpdDetTipeSpdId;
  @override
  @JsonKey(name: "t_spd_det.biaya")
  final String? tSpdDetBiaya;
  @override
  @JsonKey(name: "t_spd_det.biaya_realisasi")
  final dynamic tSpdDetBiayaRealisasi;
  @override
  @JsonKey(name: "t_spd_det.detail_transport")
  final dynamic tSpdDetDetailTransport;
  @override
  @JsonKey(name: "t_spd_det.m_knd_dinas_id")
  final dynamic tSpdDetMKndDinasId;
  @override
  @JsonKey(name: "t_spd_det.is_kendaraan_dinas")
  final bool? tSpdDetIsKendaraanDinas;
  @override
  @JsonKey(name: "t_spd_det.keterangan")
  final String? tSpdDetKeterangan;
  @override
  @JsonKey(name: "t_spd_det.catatan_realisasi")
  final dynamic tSpdDetCatatanRealisasi;
  @override
  @JsonKey(name: "t_spd_det.is_now")
  final dynamic tSpdDetIsNow;
  @override
  @JsonKey(name: "t_spd_det.creator_id")
  final dynamic tSpdDetCreatorId;
  @override
  @JsonKey(name: "t_spd_det.last_editor_id")
  final dynamic tSpdDetLastEditorId;
  @override
  @JsonKey(name: "t_spd_det.created_at")
  final String? tSpdDetCreatedAt;
  @override
  @JsonKey(name: "t_spd_det.updated_at")
  final String? tSpdDetUpdatedAt;
  @override
  @JsonKey(name: "tipe_spd.id")
  final int? tipeSpdId;
  @override
  @JsonKey(name: "tipe_spd.m_comp_id")
  final int? tipeSpdMCompId;
  @override
  @JsonKey(name: "tipe_spd.m_dir_id")
  final dynamic tipeSpdMDirId;
  @override
  @JsonKey(name: "tipe_spd.group")
  final String? tipeSpdGroup;
  @override
  @JsonKey(name: "tipe_spd.key")
  final String? tipeSpdKey;
  @override
  @JsonKey(name: "tipe_spd.code")
  final String? tipeSpdCode;
  @override
  @JsonKey(name: "tipe_spd.value")
  final String? tipeSpdValue;
  @override
  @JsonKey(name: "tipe_spd.is_active")
  final bool? tipeSpdIsActive;
  @override
  @JsonKey(name: "tipe_spd.creator_id")
  final dynamic tipeSpdCreatorId;
  @override
  @JsonKey(name: "tipe_spd.last_editor_id")
  final dynamic tipeSpdLastEditorId;
  @override
  @JsonKey(name: "tipe_spd.created_at")
  final String? tipeSpdCreatedAt;
  @override
  @JsonKey(name: "tipe_spd.updated_at")
  final String? tipeSpdUpdatedAt;
  @override
  @JsonKey(name: "tipe_spd.value_2")
  final dynamic tipeSpdValue2;
  @override
  @JsonKey(name: "tipe_spd.value_3")
  final dynamic tipeSpdValue3;
  @override
  @JsonKey(name: "m_knd_dinas.id")
  final dynamic mKndDinasId;
  @override
  @JsonKey(name: "m_knd_dinas.m_comp_id")
  final dynamic mKndDinasMCompId;
  @override
  @JsonKey(name: "m_knd_dinas.m_dir_id")
  final dynamic mKndDinasMDirId;
  @override
  @JsonKey(name: "m_knd_dinas.nama")
  final dynamic mKndDinasNama;
  @override
  @JsonKey(name: "m_knd_dinas.nopol")
  final dynamic mKndDinasNopol;
  @override
  @JsonKey(name: "m_knd_dinas.m_lokasi_id")
  final dynamic mKndDinasMLokasiId;
  @override
  @JsonKey(name: "m_knd_dinas.desc")
  final dynamic mKndDinasDesc;
  @override
  @JsonKey(name: "m_knd_dinas.is_active")
  final dynamic mKndDinasIsActive;
  @override
  @JsonKey(name: "m_knd_dinas.creator_id")
  final dynamic mKndDinasCreatorId;
  @override
  @JsonKey(name: "m_knd_dinas.last_editor_id")
  final dynamic mKndDinasLastEditorId;
  @override
  @JsonKey(name: "m_knd_dinas.created_at")
  final dynamic mKndDinasCreatedAt;
  @override
  @JsonKey(name: "m_knd_dinas.updated_at")
  final dynamic mKndDinasUpdatedAt;
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
    return 'TRpdDet(metaRead: $metaRead, metaDelete: $metaDelete, metaUpdate: $metaUpdate, metaCreate: $metaCreate, id: $id, tRpdId: $tRpdId, tRpdDetTSpdDetId: $tRpdDetTSpdDetId, tRpdDetTipeSpdId: $tRpdDetTipeSpdId, biaya: $biaya, biayaRealisasi: $biayaRealisasi, detailTransport: $detailTransport, tRpdDetMKndDinasId: $tRpdDetMKndDinasId, isKendaraanDinas: $isKendaraanDinas, catatanRealisasi: $catatanRealisasi, tRpdDetCreatorId: $tRpdDetCreatorId, tRpdDetLastEditorId: $tRpdDetLastEditorId, createdAt: $createdAt, updatedAt: $updatedAt, tSpdDetId: $tSpdDetId, tSpdDetTSpdId: $tSpdDetTSpdId, tSpdDetTipeSpdId: $tSpdDetTipeSpdId, tSpdDetBiaya: $tSpdDetBiaya, tSpdDetBiayaRealisasi: $tSpdDetBiayaRealisasi, tSpdDetDetailTransport: $tSpdDetDetailTransport, tSpdDetMKndDinasId: $tSpdDetMKndDinasId, tSpdDetIsKendaraanDinas: $tSpdDetIsKendaraanDinas, tSpdDetKeterangan: $tSpdDetKeterangan, tSpdDetCatatanRealisasi: $tSpdDetCatatanRealisasi, tSpdDetIsNow: $tSpdDetIsNow, tSpdDetCreatorId: $tSpdDetCreatorId, tSpdDetLastEditorId: $tSpdDetLastEditorId, tSpdDetCreatedAt: $tSpdDetCreatedAt, tSpdDetUpdatedAt: $tSpdDetUpdatedAt, tipeSpdId: $tipeSpdId, tipeSpdMCompId: $tipeSpdMCompId, tipeSpdMDirId: $tipeSpdMDirId, tipeSpdGroup: $tipeSpdGroup, tipeSpdKey: $tipeSpdKey, tipeSpdCode: $tipeSpdCode, tipeSpdValue: $tipeSpdValue, tipeSpdIsActive: $tipeSpdIsActive, tipeSpdCreatorId: $tipeSpdCreatorId, tipeSpdLastEditorId: $tipeSpdLastEditorId, tipeSpdCreatedAt: $tipeSpdCreatedAt, tipeSpdUpdatedAt: $tipeSpdUpdatedAt, tipeSpdValue2: $tipeSpdValue2, tipeSpdValue3: $tipeSpdValue3, mKndDinasId: $mKndDinasId, mKndDinasMCompId: $mKndDinasMCompId, mKndDinasMDirId: $mKndDinasMDirId, mKndDinasNama: $mKndDinasNama, mKndDinasNopol: $mKndDinasNopol, mKndDinasMLokasiId: $mKndDinasMLokasiId, mKndDinasDesc: $mKndDinasDesc, mKndDinasIsActive: $mKndDinasIsActive, mKndDinasCreatorId: $mKndDinasCreatorId, mKndDinasLastEditorId: $mKndDinasLastEditorId, mKndDinasCreatedAt: $mKndDinasCreatedAt, mKndDinasUpdatedAt: $mKndDinasUpdatedAt, creatorId: $creatorId, creatorName: $creatorName, creatorEmail: $creatorEmail, creatorUsername: $creatorUsername, creatorEmailVerifiedAt: $creatorEmailVerifiedAt, creatorPassword: $creatorPassword, creatorMCompId: $creatorMCompId, creatorMDirId: $creatorMDirId, creatorIsActive: $creatorIsActive, creatorCreatorId: $creatorCreatorId, creatorLastEditorId: $creatorLastEditorId, creatorRememberToken: $creatorRememberToken, creatorCreatedAt: $creatorCreatedAt, creatorUpdatedAt: $creatorUpdatedAt, creatorProfilImage: $creatorProfilImage, creatorTelp: $creatorTelp, creatorMKaryId: $creatorMKaryId, lastEditorId: $lastEditorId, lastEditorName: $lastEditorName, lastEditorEmail: $lastEditorEmail, lastEditorUsername: $lastEditorUsername, lastEditorEmailVerifiedAt: $lastEditorEmailVerifiedAt, lastEditorPassword: $lastEditorPassword, lastEditorMCompId: $lastEditorMCompId, lastEditorMDirId: $lastEditorMDirId, lastEditorIsActive: $lastEditorIsActive, lastEditorCreatorId: $lastEditorCreatorId, lastEditorLastEditorId: $lastEditorLastEditorId, lastEditorRememberToken: $lastEditorRememberToken, lastEditorCreatedAt: $lastEditorCreatedAt, lastEditorUpdatedAt: $lastEditorUpdatedAt, lastEditorProfilImage: $lastEditorProfilImage, lastEditorTelp: $lastEditorTelp, lastEditorMKaryId: $lastEditorMKaryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TRpdDetImpl &&
            (identical(other.metaRead, metaRead) ||
                other.metaRead == metaRead) &&
            (identical(other.metaDelete, metaDelete) ||
                other.metaDelete == metaDelete) &&
            (identical(other.metaUpdate, metaUpdate) ||
                other.metaUpdate == metaUpdate) &&
            (identical(other.metaCreate, metaCreate) ||
                other.metaCreate == metaCreate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tRpdId, tRpdId) || other.tRpdId == tRpdId) &&
            (identical(other.tRpdDetTSpdDetId, tRpdDetTSpdDetId) ||
                other.tRpdDetTSpdDetId == tRpdDetTSpdDetId) &&
            (identical(other.tRpdDetTipeSpdId, tRpdDetTipeSpdId) ||
                other.tRpdDetTipeSpdId == tRpdDetTipeSpdId) &&
            (identical(other.biaya, biaya) || other.biaya == biaya) &&
            (identical(other.biayaRealisasi, biayaRealisasi) ||
                other.biayaRealisasi == biayaRealisasi) &&
            const DeepCollectionEquality()
                .equals(other.detailTransport, detailTransport) &&
            const DeepCollectionEquality()
                .equals(other.tRpdDetMKndDinasId, tRpdDetMKndDinasId) &&
            (identical(other.isKendaraanDinas, isKendaraanDinas) ||
                other.isKendaraanDinas == isKendaraanDinas) &&
            (identical(other.catatanRealisasi, catatanRealisasi) ||
                other.catatanRealisasi == catatanRealisasi) &&
            const DeepCollectionEquality()
                .equals(other.tRpdDetCreatorId, tRpdDetCreatorId) &&
            const DeepCollectionEquality()
                .equals(other.tRpdDetLastEditorId, tRpdDetLastEditorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.tSpdDetId, tSpdDetId) ||
                other.tSpdDetId == tSpdDetId) &&
            (identical(other.tSpdDetTSpdId, tSpdDetTSpdId) ||
                other.tSpdDetTSpdId == tSpdDetTSpdId) &&
            (identical(other.tSpdDetTipeSpdId, tSpdDetTipeSpdId) ||
                other.tSpdDetTipeSpdId == tSpdDetTipeSpdId) &&
            (identical(other.tSpdDetBiaya, tSpdDetBiaya) ||
                other.tSpdDetBiaya == tSpdDetBiaya) &&
            const DeepCollectionEquality()
                .equals(other.tSpdDetBiayaRealisasi, tSpdDetBiayaRealisasi) &&
            const DeepCollectionEquality()
                .equals(other.tSpdDetDetailTransport, tSpdDetDetailTransport) &&
            const DeepCollectionEquality()
                .equals(other.tSpdDetMKndDinasId, tSpdDetMKndDinasId) &&
            (identical(other.tSpdDetIsKendaraanDinas, tSpdDetIsKendaraanDinas) ||
                other.tSpdDetIsKendaraanDinas == tSpdDetIsKendaraanDinas) &&
            (identical(other.tSpdDetKeterangan, tSpdDetKeterangan) ||
                other.tSpdDetKeterangan == tSpdDetKeterangan) &&
            const DeepCollectionEquality().equals(
                other.tSpdDetCatatanRealisasi, tSpdDetCatatanRealisasi) &&
            const DeepCollectionEquality()
                .equals(other.tSpdDetIsNow, tSpdDetIsNow) &&
            const DeepCollectionEquality()
                .equals(other.tSpdDetCreatorId, tSpdDetCreatorId) &&
            const DeepCollectionEquality()
                .equals(other.tSpdDetLastEditorId, tSpdDetLastEditorId) &&
            (identical(other.tSpdDetCreatedAt, tSpdDetCreatedAt) ||
                other.tSpdDetCreatedAt == tSpdDetCreatedAt) &&
            (identical(other.tSpdDetUpdatedAt, tSpdDetUpdatedAt) ||
                other.tSpdDetUpdatedAt == tSpdDetUpdatedAt) &&
            (identical(other.tipeSpdId, tipeSpdId) ||
                other.tipeSpdId == tipeSpdId) &&
            (identical(other.tipeSpdMCompId, tipeSpdMCompId) ||
                other.tipeSpdMCompId == tipeSpdMCompId) &&
            const DeepCollectionEquality()
                .equals(other.tipeSpdMDirId, tipeSpdMDirId) &&
            (identical(other.tipeSpdGroup, tipeSpdGroup) ||
                other.tipeSpdGroup == tipeSpdGroup) &&
            (identical(other.tipeSpdKey, tipeSpdKey) ||
                other.tipeSpdKey == tipeSpdKey) &&
            (identical(other.tipeSpdCode, tipeSpdCode) ||
                other.tipeSpdCode == tipeSpdCode) &&
            (identical(other.tipeSpdValue, tipeSpdValue) ||
                other.tipeSpdValue == tipeSpdValue) &&
            (identical(other.tipeSpdIsActive, tipeSpdIsActive) ||
                other.tipeSpdIsActive == tipeSpdIsActive) &&
            const DeepCollectionEquality()
                .equals(other.tipeSpdCreatorId, tipeSpdCreatorId) &&
            const DeepCollectionEquality().equals(other.tipeSpdLastEditorId, tipeSpdLastEditorId) &&
            (identical(other.tipeSpdCreatedAt, tipeSpdCreatedAt) || other.tipeSpdCreatedAt == tipeSpdCreatedAt) &&
            (identical(other.tipeSpdUpdatedAt, tipeSpdUpdatedAt) || other.tipeSpdUpdatedAt == tipeSpdUpdatedAt) &&
            const DeepCollectionEquality().equals(other.tipeSpdValue2, tipeSpdValue2) &&
            const DeepCollectionEquality().equals(other.tipeSpdValue3, tipeSpdValue3) &&
            const DeepCollectionEquality().equals(other.mKndDinasId, mKndDinasId) &&
            const DeepCollectionEquality().equals(other.mKndDinasMCompId, mKndDinasMCompId) &&
            const DeepCollectionEquality().equals(other.mKndDinasMDirId, mKndDinasMDirId) &&
            const DeepCollectionEquality().equals(other.mKndDinasNama, mKndDinasNama) &&
            const DeepCollectionEquality().equals(other.mKndDinasNopol, mKndDinasNopol) &&
            const DeepCollectionEquality().equals(other.mKndDinasMLokasiId, mKndDinasMLokasiId) &&
            const DeepCollectionEquality().equals(other.mKndDinasDesc, mKndDinasDesc) &&
            const DeepCollectionEquality().equals(other.mKndDinasIsActive, mKndDinasIsActive) &&
            const DeepCollectionEquality().equals(other.mKndDinasCreatorId, mKndDinasCreatorId) &&
            const DeepCollectionEquality().equals(other.mKndDinasLastEditorId, mKndDinasLastEditorId) &&
            const DeepCollectionEquality().equals(other.mKndDinasCreatedAt, mKndDinasCreatedAt) &&
            const DeepCollectionEquality().equals(other.mKndDinasUpdatedAt, mKndDinasUpdatedAt) &&
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
        tRpdId,
        tRpdDetTSpdDetId,
        tRpdDetTipeSpdId,
        biaya,
        biayaRealisasi,
        const DeepCollectionEquality().hash(detailTransport),
        const DeepCollectionEquality().hash(tRpdDetMKndDinasId),
        isKendaraanDinas,
        catatanRealisasi,
        const DeepCollectionEquality().hash(tRpdDetCreatorId),
        const DeepCollectionEquality().hash(tRpdDetLastEditorId),
        createdAt,
        updatedAt,
        tSpdDetId,
        tSpdDetTSpdId,
        tSpdDetTipeSpdId,
        tSpdDetBiaya,
        const DeepCollectionEquality().hash(tSpdDetBiayaRealisasi),
        const DeepCollectionEquality().hash(tSpdDetDetailTransport),
        const DeepCollectionEquality().hash(tSpdDetMKndDinasId),
        tSpdDetIsKendaraanDinas,
        tSpdDetKeterangan,
        const DeepCollectionEquality().hash(tSpdDetCatatanRealisasi),
        const DeepCollectionEquality().hash(tSpdDetIsNow),
        const DeepCollectionEquality().hash(tSpdDetCreatorId),
        const DeepCollectionEquality().hash(tSpdDetLastEditorId),
        tSpdDetCreatedAt,
        tSpdDetUpdatedAt,
        tipeSpdId,
        tipeSpdMCompId,
        const DeepCollectionEquality().hash(tipeSpdMDirId),
        tipeSpdGroup,
        tipeSpdKey,
        tipeSpdCode,
        tipeSpdValue,
        tipeSpdIsActive,
        const DeepCollectionEquality().hash(tipeSpdCreatorId),
        const DeepCollectionEquality().hash(tipeSpdLastEditorId),
        tipeSpdCreatedAt,
        tipeSpdUpdatedAt,
        const DeepCollectionEquality().hash(tipeSpdValue2),
        const DeepCollectionEquality().hash(tipeSpdValue3),
        const DeepCollectionEquality().hash(mKndDinasId),
        const DeepCollectionEquality().hash(mKndDinasMCompId),
        const DeepCollectionEquality().hash(mKndDinasMDirId),
        const DeepCollectionEquality().hash(mKndDinasNama),
        const DeepCollectionEquality().hash(mKndDinasNopol),
        const DeepCollectionEquality().hash(mKndDinasMLokasiId),
        const DeepCollectionEquality().hash(mKndDinasDesc),
        const DeepCollectionEquality().hash(mKndDinasIsActive),
        const DeepCollectionEquality().hash(mKndDinasCreatorId),
        const DeepCollectionEquality().hash(mKndDinasLastEditorId),
        const DeepCollectionEquality().hash(mKndDinasCreatedAt),
        const DeepCollectionEquality().hash(mKndDinasUpdatedAt),
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
  _$$TRpdDetImplCopyWith<_$TRpdDetImpl> get copyWith =>
      __$$TRpdDetImplCopyWithImpl<_$TRpdDetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TRpdDetImplToJson(
      this,
    );
  }
}

abstract class _TRpdDet implements TRpdDet {
  const factory _TRpdDet(
      {@JsonKey(name: "meta_read") final bool? metaRead,
      @JsonKey(name: "meta_delete") final bool? metaDelete,
      @JsonKey(name: "meta_update") final bool? metaUpdate,
      @JsonKey(name: "meta_create") final bool? metaCreate,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "t_rpd_id") final int? tRpdId,
      @JsonKey(name: "t_spd_det_id") final int? tRpdDetTSpdDetId,
      @JsonKey(name: "tipe_spd_id") final int? tRpdDetTipeSpdId,
      @JsonKey(name: "biaya") final int? biaya,
      @JsonKey(name: "biaya_realisasi") final int? biayaRealisasi,
      @JsonKey(name: "detail_transport") final dynamic detailTransport,
      @JsonKey(name: "m_knd_dinas_id") final dynamic tRpdDetMKndDinasId,
      @JsonKey(name: "is_kendaraan_dinas") final bool? isKendaraanDinas,
      @JsonKey(name: "catatan_realisasi") final String? catatanRealisasi,
      @JsonKey(name: "creator_id") final dynamic tRpdDetCreatorId,
      @JsonKey(name: "last_editor_id") final dynamic tRpdDetLastEditorId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "t_spd_det.id") final int? tSpdDetId,
      @JsonKey(name: "t_spd_det.t_spd_id") final int? tSpdDetTSpdId,
      @JsonKey(name: "t_spd_det.tipe_spd_id") final int? tSpdDetTipeSpdId,
      @JsonKey(name: "t_spd_det.biaya") final String? tSpdDetBiaya,
      @JsonKey(name: "t_spd_det.biaya_realisasi")
      final dynamic tSpdDetBiayaRealisasi,
      @JsonKey(name: "t_spd_det.detail_transport")
      final dynamic tSpdDetDetailTransport,
      @JsonKey(name: "t_spd_det.m_knd_dinas_id")
      final dynamic tSpdDetMKndDinasId,
      @JsonKey(name: "t_spd_det.is_kendaraan_dinas")
      final bool? tSpdDetIsKendaraanDinas,
      @JsonKey(name: "t_spd_det.keterangan") final String? tSpdDetKeterangan,
      @JsonKey(name: "t_spd_det.catatan_realisasi")
      final dynamic tSpdDetCatatanRealisasi,
      @JsonKey(name: "t_spd_det.is_now") final dynamic tSpdDetIsNow,
      @JsonKey(name: "t_spd_det.creator_id") final dynamic tSpdDetCreatorId,
      @JsonKey(name: "t_spd_det.last_editor_id")
      final dynamic tSpdDetLastEditorId,
      @JsonKey(name: "t_spd_det.created_at") final String? tSpdDetCreatedAt,
      @JsonKey(name: "t_spd_det.updated_at") final String? tSpdDetUpdatedAt,
      @JsonKey(name: "tipe_spd.id") final int? tipeSpdId,
      @JsonKey(name: "tipe_spd.m_comp_id") final int? tipeSpdMCompId,
      @JsonKey(name: "tipe_spd.m_dir_id") final dynamic tipeSpdMDirId,
      @JsonKey(name: "tipe_spd.group") final String? tipeSpdGroup,
      @JsonKey(name: "tipe_spd.key") final String? tipeSpdKey,
      @JsonKey(name: "tipe_spd.code") final String? tipeSpdCode,
      @JsonKey(name: "tipe_spd.value") final String? tipeSpdValue,
      @JsonKey(name: "tipe_spd.is_active") final bool? tipeSpdIsActive,
      @JsonKey(name: "tipe_spd.creator_id") final dynamic tipeSpdCreatorId,
      @JsonKey(name: "tipe_spd.last_editor_id")
      final dynamic tipeSpdLastEditorId,
      @JsonKey(name: "tipe_spd.created_at") final String? tipeSpdCreatedAt,
      @JsonKey(name: "tipe_spd.updated_at") final String? tipeSpdUpdatedAt,
      @JsonKey(name: "tipe_spd.value_2") final dynamic tipeSpdValue2,
      @JsonKey(name: "tipe_spd.value_3") final dynamic tipeSpdValue3,
      @JsonKey(name: "m_knd_dinas.id") final dynamic mKndDinasId,
      @JsonKey(name: "m_knd_dinas.m_comp_id") final dynamic mKndDinasMCompId,
      @JsonKey(name: "m_knd_dinas.m_dir_id") final dynamic mKndDinasMDirId,
      @JsonKey(name: "m_knd_dinas.nama") final dynamic mKndDinasNama,
      @JsonKey(name: "m_knd_dinas.nopol") final dynamic mKndDinasNopol,
      @JsonKey(name: "m_knd_dinas.m_lokasi_id")
      final dynamic mKndDinasMLokasiId,
      @JsonKey(name: "m_knd_dinas.desc") final dynamic mKndDinasDesc,
      @JsonKey(name: "m_knd_dinas.is_active") final dynamic mKndDinasIsActive,
      @JsonKey(name: "m_knd_dinas.creator_id") final dynamic mKndDinasCreatorId,
      @JsonKey(name: "m_knd_dinas.last_editor_id")
      final dynamic mKndDinasLastEditorId,
      @JsonKey(name: "m_knd_dinas.created_at") final dynamic mKndDinasCreatedAt,
      @JsonKey(name: "m_knd_dinas.updated_at") final dynamic mKndDinasUpdatedAt,
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
      final dynamic lastEditorMKaryId}) = _$TRpdDetImpl;

  factory _TRpdDet.fromJson(Map<String, dynamic> json) = _$TRpdDetImpl.fromJson;

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
  @JsonKey(name: "t_rpd_id")
  int? get tRpdId;
  @override
  @JsonKey(name: "t_spd_det_id")
  int? get tRpdDetTSpdDetId;
  @override
  @JsonKey(name: "tipe_spd_id")
  int? get tRpdDetTipeSpdId;
  @override
  @JsonKey(name: "biaya")
  int? get biaya;
  @override
  @JsonKey(name: "biaya_realisasi")
  int? get biayaRealisasi;
  @override
  @JsonKey(name: "detail_transport")
  dynamic get detailTransport;
  @override
  @JsonKey(name: "m_knd_dinas_id")
  dynamic get tRpdDetMKndDinasId;
  @override
  @JsonKey(name: "is_kendaraan_dinas")
  bool? get isKendaraanDinas;
  @override
  @JsonKey(name: "catatan_realisasi")
  String? get catatanRealisasi;
  @override
  @JsonKey(name: "creator_id")
  dynamic get tRpdDetCreatorId;
  @override
  @JsonKey(name: "last_editor_id")
  dynamic get tRpdDetLastEditorId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "t_spd_det.id")
  int? get tSpdDetId;
  @override
  @JsonKey(name: "t_spd_det.t_spd_id")
  int? get tSpdDetTSpdId;
  @override
  @JsonKey(name: "t_spd_det.tipe_spd_id")
  int? get tSpdDetTipeSpdId;
  @override
  @JsonKey(name: "t_spd_det.biaya")
  String? get tSpdDetBiaya;
  @override
  @JsonKey(name: "t_spd_det.biaya_realisasi")
  dynamic get tSpdDetBiayaRealisasi;
  @override
  @JsonKey(name: "t_spd_det.detail_transport")
  dynamic get tSpdDetDetailTransport;
  @override
  @JsonKey(name: "t_spd_det.m_knd_dinas_id")
  dynamic get tSpdDetMKndDinasId;
  @override
  @JsonKey(name: "t_spd_det.is_kendaraan_dinas")
  bool? get tSpdDetIsKendaraanDinas;
  @override
  @JsonKey(name: "t_spd_det.keterangan")
  String? get tSpdDetKeterangan;
  @override
  @JsonKey(name: "t_spd_det.catatan_realisasi")
  dynamic get tSpdDetCatatanRealisasi;
  @override
  @JsonKey(name: "t_spd_det.is_now")
  dynamic get tSpdDetIsNow;
  @override
  @JsonKey(name: "t_spd_det.creator_id")
  dynamic get tSpdDetCreatorId;
  @override
  @JsonKey(name: "t_spd_det.last_editor_id")
  dynamic get tSpdDetLastEditorId;
  @override
  @JsonKey(name: "t_spd_det.created_at")
  String? get tSpdDetCreatedAt;
  @override
  @JsonKey(name: "t_spd_det.updated_at")
  String? get tSpdDetUpdatedAt;
  @override
  @JsonKey(name: "tipe_spd.id")
  int? get tipeSpdId;
  @override
  @JsonKey(name: "tipe_spd.m_comp_id")
  int? get tipeSpdMCompId;
  @override
  @JsonKey(name: "tipe_spd.m_dir_id")
  dynamic get tipeSpdMDirId;
  @override
  @JsonKey(name: "tipe_spd.group")
  String? get tipeSpdGroup;
  @override
  @JsonKey(name: "tipe_spd.key")
  String? get tipeSpdKey;
  @override
  @JsonKey(name: "tipe_spd.code")
  String? get tipeSpdCode;
  @override
  @JsonKey(name: "tipe_spd.value")
  String? get tipeSpdValue;
  @override
  @JsonKey(name: "tipe_spd.is_active")
  bool? get tipeSpdIsActive;
  @override
  @JsonKey(name: "tipe_spd.creator_id")
  dynamic get tipeSpdCreatorId;
  @override
  @JsonKey(name: "tipe_spd.last_editor_id")
  dynamic get tipeSpdLastEditorId;
  @override
  @JsonKey(name: "tipe_spd.created_at")
  String? get tipeSpdCreatedAt;
  @override
  @JsonKey(name: "tipe_spd.updated_at")
  String? get tipeSpdUpdatedAt;
  @override
  @JsonKey(name: "tipe_spd.value_2")
  dynamic get tipeSpdValue2;
  @override
  @JsonKey(name: "tipe_spd.value_3")
  dynamic get tipeSpdValue3;
  @override
  @JsonKey(name: "m_knd_dinas.id")
  dynamic get mKndDinasId;
  @override
  @JsonKey(name: "m_knd_dinas.m_comp_id")
  dynamic get mKndDinasMCompId;
  @override
  @JsonKey(name: "m_knd_dinas.m_dir_id")
  dynamic get mKndDinasMDirId;
  @override
  @JsonKey(name: "m_knd_dinas.nama")
  dynamic get mKndDinasNama;
  @override
  @JsonKey(name: "m_knd_dinas.nopol")
  dynamic get mKndDinasNopol;
  @override
  @JsonKey(name: "m_knd_dinas.m_lokasi_id")
  dynamic get mKndDinasMLokasiId;
  @override
  @JsonKey(name: "m_knd_dinas.desc")
  dynamic get mKndDinasDesc;
  @override
  @JsonKey(name: "m_knd_dinas.is_active")
  dynamic get mKndDinasIsActive;
  @override
  @JsonKey(name: "m_knd_dinas.creator_id")
  dynamic get mKndDinasCreatorId;
  @override
  @JsonKey(name: "m_knd_dinas.last_editor_id")
  dynamic get mKndDinasLastEditorId;
  @override
  @JsonKey(name: "m_knd_dinas.created_at")
  dynamic get mKndDinasCreatedAt;
  @override
  @JsonKey(name: "m_knd_dinas.updated_at")
  dynamic get mKndDinasUpdatedAt;
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
  _$$TRpdDetImplCopyWith<_$TRpdDetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_organisasi_karyawan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseOrganisasiKaryawanImpl _$$ResponseOrganisasiKaryawanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseOrganisasiKaryawanImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataOrganisasi.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseOrganisasiKaryawanImplToJson(
        _$ResponseOrganisasiKaryawanImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataOrganisasiImpl _$$DataOrganisasiImplFromJson(Map<String, dynamic> json) =>
    _$DataOrganisasiImpl(
      id: json['id'] as int?,
      mKaryId: json['m_kary_id'] as int?,
      mCompId: json['m_comp_id'] as int?,
      mDirId: json['m_dir_id'] as int?,
      nama: json['nama'] as String?,
      tahun: json['tahun'] as int?,
      jenisOrgId: json['jenis_org_id'] as int?,
      kotaId: json['kota_id'] as int?,
      posisi: json['posisi'] as String?,
      desc: json['desc'],
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      jenisOrganisasi: json['jenis_organisasi'] as String?,
      kota: json['kota'] as String?,
    );

Map<String, dynamic> _$$DataOrganisasiImplToJson(
        _$DataOrganisasiImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_kary_id': instance.mKaryId,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'nama': instance.nama,
      'tahun': instance.tahun,
      'jenis_org_id': instance.jenisOrgId,
      'kota_id': instance.kotaId,
      'posisi': instance.posisi,
      'desc': instance.desc,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'jenis_organisasi': instance.jenisOrganisasi,
      'kota': instance.kota,
    };

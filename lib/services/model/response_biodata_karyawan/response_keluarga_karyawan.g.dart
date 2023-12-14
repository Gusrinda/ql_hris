// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_keluarga_karyawan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseKeluargaKaryawanImpl _$$ResponseKeluargaKaryawanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseKeluargaKaryawanImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataKeluarga.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseKeluargaKaryawanImplToJson(
        _$ResponseKeluargaKaryawanImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataKeluargaImpl _$$DataKeluargaImplFromJson(Map<String, dynamic> json) =>
    _$DataKeluargaImpl(
      id: json['id'] as int?,
      mCompId: json['m_comp_id'] as int?,
      mDirId: json['m_dir_id'] as int?,
      mKaryId: json['m_kary_id'] as int?,
      keluargaId: json['keluarga_id'] as int?,
      nama: json['nama'] as String?,
      pendTerakhirId: json['pend_terakhir_id'] as int?,
      jkId: json['jk_id'] as int?,
      pekerjaanId: json['pekerjaan_id'] as int?,
      usia: json['usia'] as int?,
      desc: json['desc'] as String?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      keluarga: json['keluarga'] as String?,
      pendidikan: json['pendidikan'] as String?,
      jenisKelamin: json['jenis_kelamin'] as String?,
      pekerjaan: json['pekerjaan'] as String?,
    );

Map<String, dynamic> _$$DataKeluargaImplToJson(_$DataKeluargaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'm_kary_id': instance.mKaryId,
      'keluarga_id': instance.keluargaId,
      'nama': instance.nama,
      'pend_terakhir_id': instance.pendTerakhirId,
      'jk_id': instance.jkId,
      'pekerjaan_id': instance.pekerjaanId,
      'usia': instance.usia,
      'desc': instance.desc,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'keluarga': instance.keluarga,
      'pendidikan': instance.pendidikan,
      'jenis_kelamin': instance.jenisKelamin,
      'pekerjaan': instance.pekerjaan,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_pelatihan_karyawan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponsePelatihanKaryawanImpl _$$ResponsePelatihanKaryawanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponsePelatihanKaryawanImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataPelatihan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponsePelatihanKaryawanImplToJson(
        _$ResponsePelatihanKaryawanImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataPelatihanImpl _$$DataPelatihanImplFromJson(Map<String, dynamic> json) =>
    _$DataPelatihanImpl(
      id: json['id'] as int?,
      mKaryId: json['m_kary_id'] as int?,
      mCompId: json['m_comp_id'] as int?,
      mDirId: json['m_dir_id'] as int?,
      namaPel: json['nama_pel'] as String?,
      tahun: json['tahun'] as int?,
      namaLem: json['nama_lem'] as String?,
      kotaId: json['kota_id'] as int?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      kota: json['kota'] as String?,
    );

Map<String, dynamic> _$$DataPelatihanImplToJson(_$DataPelatihanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_kary_id': instance.mKaryId,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'nama_pel': instance.namaPel,
      'tahun': instance.tahun,
      'nama_lem': instance.namaLem,
      'kota_id': instance.kotaId,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'kota': instance.kota,
    };

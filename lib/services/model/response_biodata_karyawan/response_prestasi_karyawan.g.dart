// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_prestasi_karyawan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponsePrestasiKaryawanImpl _$$ResponsePrestasiKaryawanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponsePrestasiKaryawanImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataPrestasi.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponsePrestasiKaryawanImplToJson(
        _$ResponsePrestasiKaryawanImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataPrestasiImpl _$$DataPrestasiImplFromJson(Map<String, dynamic> json) =>
    _$DataPrestasiImpl(
      id: json['id'] as int?,
      mCompId: json['m_comp_id'] as int?,
      mDirId: json['m_dir_id'] as int?,
      mKaryId: json['m_kary_id'] as int?,
      namaPres: json['nama_pres'] as String?,
      tahun: json['tahun'] as int?,
      tingkatPresId: json['tingkat_pres_id'] as int?,
      desc: json['desc'] as String?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      tingkatPrestasi: json['tingkat_prestasi'] as String?,
    );

Map<String, dynamic> _$$DataPrestasiImplToJson(_$DataPrestasiImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'm_kary_id': instance.mKaryId,
      'nama_pres': instance.namaPres,
      'tahun': instance.tahun,
      'tingkat_pres_id': instance.tingkatPresId,
      'desc': instance.desc,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'tingkat_prestasi': instance.tingkatPrestasi,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_bahasa_karyawan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBahasaKaryawanImpl _$$ResponseBahasaKaryawanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBahasaKaryawanImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataBahasa.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseBahasaKaryawanImplToJson(
        _$ResponseBahasaKaryawanImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataBahasaImpl _$$DataBahasaImplFromJson(Map<String, dynamic> json) =>
    _$DataBahasaImpl(
      id: json['id'] as int?,
      mKaryId: json['m_kary_id'] as int?,
      mCompId: json['m_comp_id'] as int?,
      mDirId: json['m_dir_id'] as int?,
      bhsDikuasai: json['bhs_dikuasai'] as String?,
      nilaiLisan: json['nilai_lisan'] as int?,
      nilaiTertulis: json['nilai_tertulis'] as int?,
      desc: json['desc'],
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$DataBahasaImplToJson(_$DataBahasaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_kary_id': instance.mKaryId,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'bhs_dikuasai': instance.bhsDikuasai,
      'nilai_lisan': instance.nilaiLisan,
      'nilai_tertulis': instance.nilaiTertulis,
      'desc': instance.desc,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

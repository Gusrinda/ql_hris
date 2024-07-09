// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCheckVersionImpl _$$ResponseCheckVersionImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCheckVersionImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataVersion.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseCheckVersionImplToJson(
        _$ResponseCheckVersionImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataVersionImpl _$$DataVersionImplFromJson(Map<String, dynamic> json) =>
    _$DataVersionImpl(
      id: json['id'] as int?,
      compId: json['comp_id'] as int?,
      version: json['version'] as String?,
      note: json['note'] as String?,
      link: json['link'] as String?,
      type: json['type'] as String?,
      isActive: json['is_active'] as bool?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'],
    );

Map<String, dynamic> _$$DataVersionImplToJson(_$DataVersionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comp_id': instance.compId,
      'version': instance.version,
      'note': instance.note,
      'link': instance.link,
      'type': instance.type,
      'is_active': instance.isActive,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

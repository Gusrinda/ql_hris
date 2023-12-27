// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pengumuman_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PengumumanModelImpl _$$PengumumanModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PengumumanModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataPengumuman.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      currentPage: json['current_page'] as int?,
      perPage: json['per_page'] as int?,
      from: json['from'] as int?,
      to: json['to'] as int?,
      lastPage: json['last_page'] as int?,
      hasNext: json['has_next'] as bool?,
      prev: json['prev'],
      next: json['next'],
      processedTime: (json['processed_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PengumumanModelImplToJson(
        _$PengumumanModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'from': instance.from,
      'to': instance.to,
      'last_page': instance.lastPage,
      'has_next': instance.hasNext,
      'prev': instance.prev,
      'next': instance.next,
      'processed_time': instance.processedTime,
    };

_$DataPengumumanImpl _$$DataPengumumanImplFromJson(Map<String, dynamic> json) =>
    _$DataPengumumanImpl(
      metaRead: json['meta_read'] as bool?,
      metaDelete: json['meta_delete'] as bool?,
      metaUpdate: json['meta_update'] as bool?,
      metaCreate: json['meta_create'] as bool?,
      id: json['id'] as int?,
      judul: json['judul'] as String?,
      tag: json['tag'],
      content: json['content'] as String?,
      creatorId: json['creator_id'],
      lastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$DataPengumumanImplToJson(
        _$DataPengumumanImpl instance) =>
    <String, dynamic>{
      'meta_read': instance.metaRead,
      'meta_delete': instance.metaDelete,
      'meta_update': instance.metaUpdate,
      'meta_create': instance.metaCreate,
      'id': instance.id,
      'judul': instance.judul,
      'tag': instance.tag,
      'content': instance.content,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

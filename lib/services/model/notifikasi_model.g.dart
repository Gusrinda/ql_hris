// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifikasi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotifikasiModelImpl _$$NotifikasiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotifikasiModelImpl(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataNotif.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'],
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$NotifikasiModelImplToJson(
        _$NotifikasiModelImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$DataNotifImpl _$$DataNotifImplFromJson(Map<String, dynamic> json) =>
    _$DataNotifImpl(
      id: json['id'] as int?,
      mCompId: json['m_comp_id'],
      mDirId: json['m_dir_id'],
      nomor: json['nomor'] as String?,
      generateApprovalId: json['generate_approval_id'] as int?,
      generateApprovalDetId: json['generate_approval_det_id'],
      trxTable: json['trx_table'] as String?,
      trxId: json['trx_id'] as int?,
      trxName: json['trx_name'] as String?,
      trxNomor: json['trx_nomor'] as String?,
      trxDate: json['trx_date'] == null
          ? null
          : DateTime.parse(json['trx_date'] as String),
      trxObject: json['trx_object'],
      trxCreatorId: json['trx_creator_id'] as int?,
      actionType: json['action_type'] as String?,
      actionUserId: json['action_user_id'] as int?,
      actionAt: json['action_at'] as String?,
      actionNote: json['action_note'] as String?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$DataNotifImplToJson(_$DataNotifImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'nomor': instance.nomor,
      'generate_approval_id': instance.generateApprovalId,
      'generate_approval_det_id': instance.generateApprovalDetId,
      'trx_table': instance.trxTable,
      'trx_id': instance.trxId,
      'trx_name': instance.trxName,
      'trx_nomor': instance.trxNomor,
      'trx_date': instance.trxDate?.toIso8601String(),
      'trx_object': instance.trxObject,
      'trx_creator_id': instance.trxCreatorId,
      'action_type': instance.actionType,
      'action_user_id': instance.actionUserId,
      'action_at': instance.actionAt,
      'action_note': instance.actionNote,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'text': instance.text,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

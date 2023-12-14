// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_approval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseListApprovalImpl _$$ResponseListApprovalImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseListApprovalImpl(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataApproval.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$ResponseListApprovalImplToJson(
        _$ResponseListApprovalImpl instance) =>
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

_$DataApprovalImpl _$$DataApprovalImplFromJson(Map<String, dynamic> json) =>
    _$DataApprovalImpl(
      id: json['id'] as int?,
      mCompId: json['m_comp_id'] as int?,
      mDirId: json['m_dir_id'] as int?,
      nomor: json['nomor'] as String?,
      mApprovalId: json['m_approval_id'] as int?,
      trxId: json['trx_id'] as int?,
      trxName: json['trx_name'] as String?,
      formName: json['form_name'] as String?,
      trxTable: json['trx_table'] as String?,
      trxNomor: json['trx_nomor'] as String?,
      trxDate: json['trx_date'] == null
          ? null
          : DateTime.parse(json['trx_date'] as String),
      trxObject: json['trx_object'],
      trxCreatorId: json['trx_creator_id'] as int?,
      status: json['status'] as String?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      creator: json['creator'] as String?,
    );

Map<String, dynamic> _$$DataApprovalImplToJson(_$DataApprovalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'nomor': instance.nomor,
      'm_approval_id': instance.mApprovalId,
      'trx_id': instance.trxId,
      'trx_name': instance.trxName,
      'form_name': instance.formName,
      'trx_table': instance.trxTable,
      'trx_nomor': instance.trxNomor,
      'trx_date': instance.trxDate?.toIso8601String(),
      'trx_object': instance.trxObject,
      'trx_creator_id': instance.trxCreatorId,
      'status': instance.status,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'creator': instance.creator,
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

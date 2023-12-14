// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_detail_approval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDetailApprovalImpl _$$ResponseDetailApprovalImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDetailApprovalImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataApprovalDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDetailApprovalImplToJson(
        _$ResponseDetailApprovalImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataApprovalDetailImpl _$$DataApprovalDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$DataApprovalDetailImpl(
      approval: json['approval'] == null
          ? null
          : Approval.fromJson(json['approval'] as Map<String, dynamic>),
      approvalLog: (json['approval_log'] as List<dynamic>?)
          ?.map((e) => ApprovalLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      trx: json['trx'] == null
          ? null
          : Trx.fromJson(json['trx'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataApprovalDetailImplToJson(
        _$DataApprovalDetailImpl instance) =>
    <String, dynamic>{
      'approval': instance.approval,
      'approval_log': instance.approvalLog,
      'trx': instance.trx,
    };

_$ApprovalImpl _$$ApprovalImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalImpl(
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
      tahapSaatIni: json['tahap_saat_ini'] as int?,
      tahapTotal: json['tahap_total'] as int?,
    );

Map<String, dynamic> _$$ApprovalImplToJson(_$ApprovalImpl instance) =>
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
      'tahap_saat_ini': instance.tahapSaatIni,
      'tahap_total': instance.tahapTotal,
    };

_$ApprovalLogImpl _$$ApprovalLogImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalLogImpl(
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
      actionUser: json['action_user'] as String?,
    );

Map<String, dynamic> _$$ApprovalLogImplToJson(_$ApprovalLogImpl instance) =>
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
      'action_user': instance.actionUser,
    };

_$TrxImpl _$$TrxImplFromJson(Map<String, dynamic> json) => _$TrxImpl();

Map<String, dynamic> _$$TrxImplToJson(_$TrxImpl instance) =>
    <String, dynamic>{};

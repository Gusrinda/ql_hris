import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_detail_approval.freezed.dart';
part 'response_detail_approval.g.dart';

@freezed
class ResponseDetailApproval with _$ResponseDetailApproval {
    const factory ResponseDetailApproval({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        DataApprovalDetail? data,
    }) = _ResponseDetailApproval;

    factory ResponseDetailApproval.fromJson(Map<String, dynamic> json) => _$ResponseDetailApprovalFromJson(json);
}

@freezed
class DataApprovalDetail with _$DataApprovalDetail {
    const factory DataApprovalDetail({
        @JsonKey(name: "approval")
        Approval? approval,
        @JsonKey(name: "approval_log")
        List<ApprovalLog>? approvalLog,
        @JsonKey(name: "trx")
        Trx? trx,
    }) = _DataApprovalDetail;

    factory DataApprovalDetail.fromJson(Map<String, dynamic> json) => _$DataApprovalDetailFromJson(json);
}

@freezed
class Approval with _$Approval {
    const factory Approval({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_comp_id")
        int? mCompId,
        @JsonKey(name: "m_dir_id")
        int? mDirId,
        @JsonKey(name: "nomor")
        String? nomor,
        @JsonKey(name: "m_approval_id")
        int? mApprovalId,
        @JsonKey(name: "trx_id")
        int? trxId,
        @JsonKey(name: "trx_name")
        String? trxName,
        @JsonKey(name: "form_name")
        String? formName,
        @JsonKey(name: "trx_table")
        String? trxTable,
        @JsonKey(name: "trx_nomor")
        String? trxNomor,
        @JsonKey(name: "trx_date")
        DateTime? trxDate,
        @JsonKey(name: "trx_object")
        dynamic trxObject,
        @JsonKey(name: "trx_creator_id")
        int? trxCreatorId,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "creator_id")
        int? creatorId,
        @JsonKey(name: "last_editor_id")
        dynamic lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "creator")
        String? creator,
        @JsonKey(name: "tahap_saat_ini")
        int? tahapSaatIni,
        @JsonKey(name: "tahap_total")
        int? tahapTotal,
    }) = _Approval;

    factory Approval.fromJson(Map<String, dynamic> json) => _$ApprovalFromJson(json);
}

@freezed
class ApprovalLog with _$ApprovalLog {
    const factory ApprovalLog({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_comp_id")
        dynamic mCompId,
        @JsonKey(name: "m_dir_id")
        dynamic mDirId,
        @JsonKey(name: "nomor")
        String? nomor,
        @JsonKey(name: "generate_approval_id")
        int? generateApprovalId,
        @JsonKey(name: "generate_approval_det_id")
        dynamic generateApprovalDetId,
        @JsonKey(name: "trx_table")
        String? trxTable,
        @JsonKey(name: "trx_id")
        int? trxId,
        @JsonKey(name: "trx_name")
        String? trxName,
        @JsonKey(name: "trx_nomor")
        String? trxNomor,
        @JsonKey(name: "trx_date")
        DateTime? trxDate,
        @JsonKey(name: "trx_object")
        dynamic trxObject,
        @JsonKey(name: "trx_creator_id")
        int? trxCreatorId,
        @JsonKey(name: "action_type")
        String? actionType,
        @JsonKey(name: "action_user_id")
        int? actionUserId,
        @JsonKey(name: "action_at")
        String? actionAt,
        @JsonKey(name: "action_note")
        String? actionNote,
        @JsonKey(name: "creator_id")
        int? creatorId,
        @JsonKey(name: "last_editor_id")
        dynamic lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "action_user")
        String? actionUser,
    }) = _ApprovalLog;

    factory ApprovalLog.fromJson(Map<String, dynamic> json) => _$ApprovalLogFromJson(json);
}

@freezed
class Trx with _$Trx {
    const factory Trx() = _Trx;

    factory Trx.fromJson(Map<String, dynamic> json) => _$TrxFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_list_approval.freezed.dart';
part 'response_list_approval.g.dart';

@freezed
class ResponseListApproval with _$ResponseListApproval {
    const factory ResponseListApproval({
        @JsonKey(name: "current_page")
        int? currentPage,
        @JsonKey(name: "data")
        List<DataApproval>? data,
        @JsonKey(name: "first_page_url")
        String? firstPageUrl,
        @JsonKey(name: "from")
        int? from,
        @JsonKey(name: "last_page")
        int? lastPage,
        @JsonKey(name: "last_page_url")
        String? lastPageUrl,
        @JsonKey(name: "links")
        List<Link>? links,
        @JsonKey(name: "next_page_url")
        dynamic nextPageUrl,
        @JsonKey(name: "path")
        String? path,
        @JsonKey(name: "per_page")
        int? perPage,
        @JsonKey(name: "prev_page_url")
        dynamic prevPageUrl,
        @JsonKey(name: "to")
        int? to,
        @JsonKey(name: "total")
        int? total,
    }) = _ResponseListApproval;

    factory ResponseListApproval.fromJson(Map<String, dynamic> json) => _$ResponseListApprovalFromJson(json);
}

@freezed
class DataApproval with _$DataApproval {
    const factory DataApproval({
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
    }) = _DataApproval;

    factory DataApproval.fromJson(Map<String, dynamic> json) => _$DataApprovalFromJson(json);
}

@freezed
class Link with _$Link {
    const factory Link({
        @JsonKey(name: "url")
        String? url,
        @JsonKey(name: "label")
        String? label,
        @JsonKey(name: "active")
        bool? active,
    }) = _Link;

    factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

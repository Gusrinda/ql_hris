import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notifikasi_model.freezed.dart';
part 'notifikasi_model.g.dart';

@freezed
class NotifikasiModel with _$NotifikasiModel {
    const factory NotifikasiModel({
        @JsonKey(name: "current_page")
        int? currentPage,
        @JsonKey(name: "data")
        List<Datum>? data,
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
    }) = _NotifikasiModel;

    factory NotifikasiModel.fromJson(Map<String, dynamic> json) => _$NotifikasiModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
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
        @JsonKey(name: "text")
        String? text,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
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

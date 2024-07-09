import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_divisi_model.freezed.dart';
part 'get_divisi_model.g.dart';

@freezed
class GetDivisiModel with _$GetDivisiModel {
    const factory GetDivisiModel({
        @JsonKey(name: "data")
        List<DataDivisi>? data,
        @JsonKey(name: "total")
        int? total,
        @JsonKey(name: "current_page")
        int? currentPage,
        @JsonKey(name: "per_page")
        int? perPage,
        @JsonKey(name: "from")
        int? from,
        @JsonKey(name: "to")
        int? to,
        @JsonKey(name: "last_page")
        int? lastPage,
        @JsonKey(name: "has_next")
        bool? hasNext,
        @JsonKey(name: "prev")
        dynamic prev,
        @JsonKey(name: "next")
        dynamic next,
        @JsonKey(name: "processed_time")
        double? processedTime,
    }) = _GetDivisiModel;

    factory GetDivisiModel.fromJson(Map<String, dynamic> json) => _$GetDivisiModelFromJson(json);
}

@freezed
class DataDivisi with _$DataDivisi {
    const factory DataDivisi({
        @JsonKey(name: "meta_read")
        bool? metaRead,
        @JsonKey(name: "meta_delete")
        bool? metaDelete,
        @JsonKey(name: "meta_update")
        bool? metaUpdate,
        @JsonKey(name: "meta_create")
        bool? metaCreate,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_comp_id")
        int? datumMCompId,
        @JsonKey(name: "m_dir_id")
        int? datumMDirId,
        @JsonKey(name: "nama")
        String? nama,
        @JsonKey(name: "desc")
        String? desc,
        @JsonKey(name: "is_active")
        bool? isActive,
        @JsonKey(name: "creator_id")
        int? datumCreatorId,
        @JsonKey(name: "last_editor_id")
        int? datumLastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "m_comp.id")
        int? mCompId,
        @JsonKey(name: "m_comp.nama")
        String? mCompNama,
        @JsonKey(name: "m_comp.is_active")
        bool? mCompIsActive,
        @JsonKey(name: "m_comp.desc")
        dynamic mCompDesc,
        @JsonKey(name: "m_comp.creator_id")
        dynamic mCompCreatorId,
        @JsonKey(name: "m_comp.last_editor_id")
        dynamic mCompLastEditorId,
        @JsonKey(name: "m_comp.created_at")
        dynamic mCompCreatedAt,
        @JsonKey(name: "m_comp.updated_at")
        dynamic mCompUpdatedAt,
        @JsonKey(name: "m_dir.id")
        int? mDirId,
        @JsonKey(name: "m_dir.m_comp_id")
        int? mDirMCompId,
        @JsonKey(name: "m_dir.nama")
        String? mDirNama,
        @JsonKey(name: "m_dir.desc")
        dynamic mDirDesc,
        @JsonKey(name: "m_dir.is_active")
        bool? mDirIsActive,
        @JsonKey(name: "m_dir.creator_id")
        dynamic mDirCreatorId,
        @JsonKey(name: "m_dir.last_editor_id")
        dynamic mDirLastEditorId,
        @JsonKey(name: "m_dir.created_at")
        dynamic mDirCreatedAt,
        @JsonKey(name: "m_dir.updated_at")
        dynamic mDirUpdatedAt,
        @JsonKey(name: "creator.id")
        int? creatorId,
        @JsonKey(name: "creator.name")
        String? creatorName,
        @JsonKey(name: "creator.email")
        String? creatorEmail,
        @JsonKey(name: "creator.username")
        String? creatorUsername,
        @JsonKey(name: "creator.email_verified_at")
        dynamic creatorEmailVerifiedAt,
        @JsonKey(name: "creator.password")
        String? creatorPassword,
        @JsonKey(name: "creator.m_comp_id")
        int? creatorMCompId,
        @JsonKey(name: "creator.m_dir_id")
        int? creatorMDirId,
        @JsonKey(name: "creator.is_active")
        bool? creatorIsActive,
        @JsonKey(name: "creator.creator_id")
        dynamic creatorCreatorId,
        @JsonKey(name: "creator.last_editor_id")
        int? creatorLastEditorId,
        @JsonKey(name: "creator.remember_token")
        dynamic creatorRememberToken,
        @JsonKey(name: "creator.created_at")
        String? creatorCreatedAt,
        @JsonKey(name: "creator.updated_at")
        String? creatorUpdatedAt,
        @JsonKey(name: "creator.profil_image")
        dynamic creatorProfilImage,
        @JsonKey(name: "creator.telp")
        dynamic creatorTelp,
        @JsonKey(name: "creator.m_kary_id")
        dynamic creatorMKaryId,
        @JsonKey(name: "last_editor.id")
        int? lastEditorId,
        @JsonKey(name: "last_editor.name")
        String? lastEditorName,
        @JsonKey(name: "last_editor.email")
        String? lastEditorEmail,
        @JsonKey(name: "last_editor.username")
        String? lastEditorUsername,
        @JsonKey(name: "last_editor.email_verified_at")
        dynamic lastEditorEmailVerifiedAt,
        @JsonKey(name: "last_editor.password")
        String? lastEditorPassword,
        @JsonKey(name: "last_editor.m_comp_id")
        int? lastEditorMCompId,
        @JsonKey(name: "last_editor.m_dir_id")
        int? lastEditorMDirId,
        @JsonKey(name: "last_editor.is_active")
        bool? lastEditorIsActive,
        @JsonKey(name: "last_editor.creator_id")
        dynamic lastEditorCreatorId,
        @JsonKey(name: "last_editor.last_editor_id")
        int? lastEditorLastEditorId,
        @JsonKey(name: "last_editor.remember_token")
        dynamic lastEditorRememberToken,
        @JsonKey(name: "last_editor.created_at")
        String? lastEditorCreatedAt,
        @JsonKey(name: "last_editor.updated_at")
        String? lastEditorUpdatedAt,
        @JsonKey(name: "last_editor.profil_image")
        dynamic lastEditorProfilImage,
        @JsonKey(name: "last_editor.telp")
        dynamic lastEditorTelp,
        @JsonKey(name: "last_editor.m_kary_id")
        dynamic lastEditorMKaryId,
    }) = _DataDivisi;

    factory DataDivisi.fromJson(Map<String, dynamic> json) => _$DataDivisiFromJson(json);
}

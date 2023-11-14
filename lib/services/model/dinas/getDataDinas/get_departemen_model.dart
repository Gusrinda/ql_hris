import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_departemen_model.freezed.dart';
part 'get_departemen_model.g.dart';

@freezed
class GetDepartemenModel with _$GetDepartemenModel {
    const factory GetDepartemenModel({
        @JsonKey(name: "data")
        List<DataDepartemen>? data,
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
        String? next,
        @JsonKey(name: "processed_time")
        double? processedTime,
    }) = _GetDepartemenModel;

    factory GetDepartemenModel.fromJson(Map<String, dynamic> json) => _$GetDepartemenModelFromJson(json);
}

@freezed
class DataDepartemen with _$DataDepartemen {
    const factory DataDepartemen({
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
        @JsonKey(name: "m_dir_id")
        int? datumMDirId,
        @JsonKey(name: "m_divisi_id")
        int? datumMDivisiId,
        @JsonKey(name: "nama")
        String? nama,
        @JsonKey(name: "desc")
        String? desc,
        @JsonKey(name: "is_active")
        bool? isActive,
        @JsonKey(name: "creator_id")
        dynamic datumCreatorId,
        @JsonKey(name: "last_editor_id")
        dynamic datumLastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
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
        @JsonKey(name: "m_divisi.id")
        int? mDivisiId,
        @JsonKey(name: "m_divisi.m_comp_id")
        int? mDivisiMCompId,
        @JsonKey(name: "m_divisi.m_dir_id")
        int? mDivisiMDirId,
        @JsonKey(name: "m_divisi.nama")
        String? mDivisiNama,
        @JsonKey(name: "m_divisi.desc")
        String? mDivisiDesc,
        @JsonKey(name: "m_divisi.is_active")
        bool? mDivisiIsActive,
        @JsonKey(name: "m_divisi.creator_id")
        int? mDivisiCreatorId,
        @JsonKey(name: "m_divisi.last_editor_id")
        int? mDivisiLastEditorId,
        @JsonKey(name: "m_divisi.created_at")
        String? mDivisiCreatedAt,
        @JsonKey(name: "m_divisi.updated_at")
        String? mDivisiUpdatedAt,
        @JsonKey(name: "creator.id")
        dynamic creatorId,
        @JsonKey(name: "creator.name")
        dynamic creatorName,
        @JsonKey(name: "creator.email")
        dynamic creatorEmail,
        @JsonKey(name: "creator.username")
        dynamic creatorUsername,
        @JsonKey(name: "creator.email_verified_at")
        dynamic creatorEmailVerifiedAt,
        @JsonKey(name: "creator.password")
        dynamic creatorPassword,
        @JsonKey(name: "creator.m_comp_id")
        dynamic creatorMCompId,
        @JsonKey(name: "creator.m_dir_id")
        dynamic creatorMDirId,
        @JsonKey(name: "creator.is_active")
        dynamic creatorIsActive,
        @JsonKey(name: "creator.creator_id")
        dynamic creatorCreatorId,
        @JsonKey(name: "creator.last_editor_id")
        dynamic creatorLastEditorId,
        @JsonKey(name: "creator.remember_token")
        dynamic creatorRememberToken,
        @JsonKey(name: "creator.created_at")
        dynamic creatorCreatedAt,
        @JsonKey(name: "creator.updated_at")
        dynamic creatorUpdatedAt,
        @JsonKey(name: "creator.profil_image")
        dynamic creatorProfilImage,
        @JsonKey(name: "creator.telp")
        dynamic creatorTelp,
        @JsonKey(name: "creator.m_kary_id")
        dynamic creatorMKaryId,
        @JsonKey(name: "last_editor.id")
        dynamic lastEditorId,
        @JsonKey(name: "last_editor.name")
        dynamic lastEditorName,
        @JsonKey(name: "last_editor.email")
        dynamic lastEditorEmail,
        @JsonKey(name: "last_editor.username")
        dynamic lastEditorUsername,
        @JsonKey(name: "last_editor.email_verified_at")
        dynamic lastEditorEmailVerifiedAt,
        @JsonKey(name: "last_editor.password")
        dynamic lastEditorPassword,
        @JsonKey(name: "last_editor.m_comp_id")
        dynamic lastEditorMCompId,
        @JsonKey(name: "last_editor.m_dir_id")
        dynamic lastEditorMDirId,
        @JsonKey(name: "last_editor.is_active")
        dynamic lastEditorIsActive,
        @JsonKey(name: "last_editor.creator_id")
        dynamic lastEditorCreatorId,
        @JsonKey(name: "last_editor.last_editor_id")
        dynamic lastEditorLastEditorId,
        @JsonKey(name: "last_editor.remember_token")
        dynamic lastEditorRememberToken,
        @JsonKey(name: "last_editor.created_at")
        dynamic lastEditorCreatedAt,
        @JsonKey(name: "last_editor.updated_at")
        dynamic lastEditorUpdatedAt,
        @JsonKey(name: "last_editor.profil_image")
        dynamic lastEditorProfilImage,
        @JsonKey(name: "last_editor.telp")
        dynamic lastEditorTelp,
        @JsonKey(name: "last_editor.m_kary_id")
        dynamic lastEditorMKaryId,
    }) = _DataDepartemen;

    factory DataDepartemen.fromJson(Map<String, dynamic> json) => _$DataDepartemenFromJson(json);
}

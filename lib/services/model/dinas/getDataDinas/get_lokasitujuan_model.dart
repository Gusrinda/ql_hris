import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_lokasitujuan_model.freezed.dart';
part 'get_lokasitujuan_model.g.dart';

@freezed
class GetLokasiTujuanModel with _$GetLokasiTujuanModel {
    const factory GetLokasiTujuanModel({
        @JsonKey(name: "data")
        List<DataLokasiTujuan>? data,
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
    }) = _GetLokasiTujuanModel;

    factory GetLokasiTujuanModel.fromJson(Map<String, dynamic> json) => _$GetLokasiTujuanModelFromJson(json);
}

@freezed
class DataLokasiTujuan with _$DataLokasiTujuan {
    const factory DataLokasiTujuan({
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
        @JsonKey(name: "kode")
        String? kode,
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
    }) = _DataLokasiTujuan;

    factory DataLokasiTujuan.fromJson(Map<String, dynamic> json) => _$DataLokasiTujuanFromJson(json);
}

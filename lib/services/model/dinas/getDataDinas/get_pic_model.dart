import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_pic_model.freezed.dart';
part 'get_pic_model.g.dart';

@freezed
class GetPicModel with _$GetPicModel {
    const factory GetPicModel({
        @JsonKey(name: "data")
        List<DataPic>? data,
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
    }) = _GetPicModel;

    factory GetPicModel.fromJson(Map<String, dynamic> json) => _$GetPicModelFromJson(json);
}

@freezed
class DataPic with _$DataPic {
    const factory DataPic({
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
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "username")
        String? username,
        @JsonKey(name: "email_verified_at")
        dynamic emailVerifiedAt,
        @JsonKey(name: "m_comp_id")
        int? datumMCompId,
        @JsonKey(name: "m_dir_id")
        int? datumMDirId,
        @JsonKey(name: "is_active")
        bool? isActive,
        @JsonKey(name: "creator_id")
        dynamic creatorId,
        @JsonKey(name: "last_editor_id")
        dynamic lastEditorId,
        @JsonKey(name: "remember_token")
        dynamic rememberToken,
        @JsonKey(name: "created_at")
        dynamic createdAt,
        @JsonKey(name: "updated_at")
        dynamic updatedAt,
        @JsonKey(name: "profil_image")
        dynamic profilImage,
        @JsonKey(name: "telp")
        dynamic telp,
        @JsonKey(name: "m_kary_id")
        dynamic mKaryId,
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
    }) = _DataPic;

    factory DataPic.fromJson(Map<String, dynamic> json) => _$DataPicFromJson(json);
}

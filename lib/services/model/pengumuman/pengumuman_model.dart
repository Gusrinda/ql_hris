import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pengumuman_model.freezed.dart';
part 'pengumuman_model.g.dart';

@freezed
class PengumumanModel with _$PengumumanModel {
    const factory PengumumanModel({
        @JsonKey(name: "data")
        List<DataPengumuman>? data,
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
    }) = _PengumumanModel;

    factory PengumumanModel.fromJson(Map<String, dynamic> json) => _$PengumumanModelFromJson(json);
}

@freezed
class DataPengumuman with _$DataPengumuman {
    const factory DataPengumuman({
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
        @JsonKey(name: "judul")
        String? judul,
        @JsonKey(name: "thumb")
        String? thumb,
        @JsonKey(name: "slug")
        dynamic slug,
        @JsonKey(name: "tag")
        String? tag,
        @JsonKey(name: "content")
        String? content,
        @JsonKey(name: "is_active")
        bool? isActive,
        @JsonKey(name: "creator_id")
        dynamic creatorId,
        @JsonKey(name: "last_editor_id")
        dynamic lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
    }) = _DataPengumuman;

    factory DataPengumuman.fromJson(Map<String, dynamic> json) => _$DataPengumumanFromJson(json);
}

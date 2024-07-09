import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'berkas_model.freezed.dart';
part 'berkas_model.g.dart';

@freezed
class BerkasModel with _$BerkasModel {
    const factory BerkasModel({
        @JsonKey(name: "data")
        List<DataBerkas>? data,
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
    }) = _BerkasModel;

    factory BerkasModel.fromJson(Map<String, dynamic> json) => _$BerkasModelFromJson(json);
}

@freezed
class DataBerkas with _$DataBerkas {
    const factory DataBerkas({
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
        @JsonKey(name: "nama")
        String? nama,
        @JsonKey(name: "kategori")
        String? kategori,
        @JsonKey(name: "desc")
        String? desc,
        @JsonKey(name: "url")
        String? url,
        @JsonKey(name: "creator_id")
        dynamic creatorId,
        @JsonKey(name: "last_editor_id")
        dynamic lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
    }) = _DataBerkas;

    factory DataBerkas.fromJson(Map<String, dynamic> json) => _$DataBerkasFromJson(json);
}

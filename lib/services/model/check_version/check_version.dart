import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_version.freezed.dart';
part 'check_version.g.dart';

@freezed
class ResponseCheckVersion with _$ResponseCheckVersion {
    const factory ResponseCheckVersion({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        DataVersion? data,
    }) = _ResponseCheckVersion;

    factory ResponseCheckVersion.fromJson(Map<String, dynamic> json) => _$ResponseCheckVersionFromJson(json);
}

@freezed
class DataVersion with _$DataVersion {
    const factory DataVersion({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "comp_id")
        int? compId,
        @JsonKey(name: "version")
        String? version,
        @JsonKey(name: "note")
        String? note,
        @JsonKey(name: "link")
        String? link,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "is_active")
        bool? isActive,
        @JsonKey(name: "creator_id")
        int? creatorId,
        @JsonKey(name: "last_editor_id")
        dynamic lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        dynamic updatedAt,
    }) = _DataVersion;

    factory DataVersion.fromJson(Map<String, dynamic> json) => _$DataVersionFromJson(json);
}

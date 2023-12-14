import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_bahasa_karyawan.freezed.dart';
part 'response_bahasa_karyawan.g.dart';

@freezed
class ResponseBahasaKaryawan with _$ResponseBahasaKaryawan {
    const factory ResponseBahasaKaryawan({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        List<DataBahasa>? data,
    }) = _ResponseBahasaKaryawan;

    factory ResponseBahasaKaryawan.fromJson(Map<String, dynamic> json) => _$ResponseBahasaKaryawanFromJson(json);
}

@freezed
class DataBahasa with _$DataBahasa {
    const factory DataBahasa({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_kary_id")
        int? mKaryId,
        @JsonKey(name: "m_comp_id")
        int? mCompId,
        @JsonKey(name: "m_dir_id")
        int? mDirId,
        @JsonKey(name: "bhs_dikuasai")
        String? bhsDikuasai,
        @JsonKey(name: "nilai_lisan")
        int? nilaiLisan,
        @JsonKey(name: "nilai_tertulis")
        int? nilaiTertulis,
        @JsonKey(name: "desc")
        dynamic desc,
        @JsonKey(name: "creator_id")
        int? creatorId,
        @JsonKey(name: "last_editor_id")
        int? lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
    }) = _DataBahasa;

    factory DataBahasa.fromJson(Map<String, dynamic> json) => _$DataBahasaFromJson(json);
}

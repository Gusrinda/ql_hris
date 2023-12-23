import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pengumuman_model.freezed.dart';
part 'pengumuman_model.g.dart';

@freezed
class PengumumanModel with _$PengumumanModel {
    const factory PengumumanModel({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "kategori")
        String? kategori,
        @JsonKey(name: "judul")
        String? judul,
        @JsonKey(name: "tanggal")
        DateTime? tanggal,
        @JsonKey(name: "foto")
        String? foto,
        @JsonKey(name: "penulis_id")
        int? penulisId,
        @JsonKey(name: "editor_id")
        int? editorId,
        @JsonKey(name: "detail")
        String? detail,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "penulis")
        String? penulis,
        @JsonKey(name: "kecamatan")
        String? kecamatan,
        @JsonKey(name: "puskesmas_ids")
        String? puskesmasIds,
        @JsonKey(name: "lampiran")
        List<String?>? lampiran,
    }) = _PengumumanModel;

    factory PengumumanModel.fromJson(Map<String, dynamic> json) => _$PengumumanModelFromJson(json);
}

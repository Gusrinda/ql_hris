import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_pelatihan_karyawan.freezed.dart';
part 'response_pelatihan_karyawan.g.dart';

@freezed
class ResponsePelatihanKaryawan with _$ResponsePelatihanKaryawan {
    const factory ResponsePelatihanKaryawan({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        List<DataPelatihan>? data,
    }) = _ResponsePelatihanKaryawan;

    factory ResponsePelatihanKaryawan.fromJson(Map<String, dynamic> json) => _$ResponsePelatihanKaryawanFromJson(json);
}

@freezed
class DataPelatihan with _$DataPelatihan {
    const factory DataPelatihan({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_kary_id")
        int? mKaryId,
        @JsonKey(name: "m_comp_id")
        int? mCompId,
        @JsonKey(name: "m_dir_id")
        int? mDirId,
        @JsonKey(name: "nama_pel")
        String? namaPel,
        @JsonKey(name: "tahun")
        int? tahun,
        @JsonKey(name: "nama_lem")
        String? namaLem,
        @JsonKey(name: "kota_id")
        int? kotaId,
        @JsonKey(name: "creator_id")
        int? creatorId,
        @JsonKey(name: "last_editor_id")
        int? lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "kota")
        String? kota,
    }) = _DataPelatihan;

    factory DataPelatihan.fromJson(Map<String, dynamic> json) => _$DataPelatihanFromJson(json);
}

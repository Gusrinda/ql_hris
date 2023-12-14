import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_prestasi_karyawan.freezed.dart';
part 'response_prestasi_karyawan.g.dart';

@freezed
class ResponsePrestasiKaryawan with _$ResponsePrestasiKaryawan {
    const factory ResponsePrestasiKaryawan({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        List<DataPrestasi>? data,
    }) = _ResponsePrestasiKaryawan;

    factory ResponsePrestasiKaryawan.fromJson(Map<String, dynamic> json) => _$ResponsePrestasiKaryawanFromJson(json);
}

@freezed
class DataPrestasi with _$DataPrestasi {
    const factory DataPrestasi({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_comp_id")
        int? mCompId,
        @JsonKey(name: "m_dir_id")
        int? mDirId,
        @JsonKey(name: "m_kary_id")
        int? mKaryId,
        @JsonKey(name: "nama_pres")
        String? namaPres,
        @JsonKey(name: "tahun")
        int? tahun,
        @JsonKey(name: "tingkat_pres_id")
        int? tingkatPresId,
        @JsonKey(name: "desc")
        String? desc,
        @JsonKey(name: "creator_id")
        int? creatorId,
        @JsonKey(name: "last_editor_id")
        int? lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "tingkat_prestasi")
        String? tingkatPrestasi,
    }) = _DataPrestasi;

    factory DataPrestasi.fromJson(Map<String, dynamic> json) => _$DataPrestasiFromJson(json);
}

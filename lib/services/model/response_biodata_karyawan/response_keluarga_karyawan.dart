import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_keluarga_karyawan.freezed.dart';
part 'response_keluarga_karyawan.g.dart';

@freezed
class ResponseKeluargaKaryawan with _$ResponseKeluargaKaryawan {
    const factory ResponseKeluargaKaryawan({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        List<DataKeluarga>? data,
    }) = _ResponseKeluargaKaryawan;

    factory ResponseKeluargaKaryawan.fromJson(Map<String, dynamic> json) => _$ResponseKeluargaKaryawanFromJson(json);
}

@freezed
class DataKeluarga with _$DataKeluarga {
    const factory DataKeluarga({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_comp_id")
        int? mCompId,
        @JsonKey(name: "m_dir_id")
        int? mDirId,
        @JsonKey(name: "m_kary_id")
        int? mKaryId,
        @JsonKey(name: "keluarga_id")
        int? keluargaId,
        @JsonKey(name: "nama")
        String? nama,
        @JsonKey(name: "pend_terakhir_id")
        int? pendTerakhirId,
        @JsonKey(name: "jk_id")
        int? jkId,
        @JsonKey(name: "pekerjaan_id")
        int? pekerjaanId,
        @JsonKey(name: "usia")
        int? usia,
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
        @JsonKey(name: "keluarga")
        String? keluarga,
        @JsonKey(name: "pendidikan")
        String? pendidikan,
        @JsonKey(name: "jenis_kelamin")
        String? jenisKelamin,
        @JsonKey(name: "pekerjaan")
        String? pekerjaan,
    }) = _DataKeluarga;

    factory DataKeluarga.fromJson(Map<String, dynamic> json) => _$DataKeluargaFromJson(json);
}

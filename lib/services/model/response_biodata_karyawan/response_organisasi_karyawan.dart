import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_organisasi_karyawan.freezed.dart';
part 'response_organisasi_karyawan.g.dart';

@freezed
class ResponseOrganisasiKaryawan with _$ResponseOrganisasiKaryawan {
    const factory ResponseOrganisasiKaryawan({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        List<DataOrganisasi>? data,
    }) = _ResponseOrganisasiKaryawan;

    factory ResponseOrganisasiKaryawan.fromJson(Map<String, dynamic> json) => _$ResponseOrganisasiKaryawanFromJson(json);
}

@freezed
class DataOrganisasi with _$DataOrganisasi {
    const factory DataOrganisasi({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_kary_id")
        int? mKaryId,
        @JsonKey(name: "m_comp_id")
        int? mCompId,
        @JsonKey(name: "m_dir_id")
        int? mDirId,
        @JsonKey(name: "nama")
        String? nama,
        @JsonKey(name: "tahun")
        int? tahun,
        @JsonKey(name: "jenis_org_id")
        int? jenisOrgId,
        @JsonKey(name: "kota_id")
        int? kotaId,
        @JsonKey(name: "posisi")
        String? posisi,
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
        @JsonKey(name: "jenis_organisasi")
        String? jenisOrganisasi,
        @JsonKey(name: "kota")
        String? kota,
    }) = _DataOrganisasi;

    factory DataOrganisasi.fromJson(Map<String, dynamic> json) => _$DataOrganisasiFromJson(json);
}

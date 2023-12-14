import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_pengalaman_karyawan.freezed.dart';
part 'response_pengalaman_karyawan.g.dart';

@freezed
class ResponsePengalamaniKaryawan with _$ResponsePengalamaniKaryawan {
    const factory ResponsePengalamaniKaryawan({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        List<DataPengalaman>? data,
    }) = _ResponsePengalamaniKaryawan;

    factory ResponsePengalamaniKaryawan.fromJson(Map<String, dynamic> json) => _$ResponsePengalamaniKaryawanFromJson(json);
}

@freezed
class DataPengalaman with _$DataPengalaman {
    const factory DataPengalaman({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_comp_id")
        int? mCompId,
        @JsonKey(name: "m_dir_id")
        int? mDirId,
        @JsonKey(name: "m_kary_id")
        int? mKaryId,
        @JsonKey(name: "instansi")
        String? instansi,
        @JsonKey(name: "bidang_usaha")
        String? bidangUsaha,
        @JsonKey(name: "no_tlp")
        String? noTlp,
        @JsonKey(name: "posisi")
        String? posisi,
        @JsonKey(name: "thn_masuk")
        int? thnMasuk,
        @JsonKey(name: "thn_keluar")
        int? thnKeluar,
        @JsonKey(name: "alamat_kantor")
        String? alamatKantor,
        @JsonKey(name: "kota_id")
        int? kotaId,
        @JsonKey(name: "surat_referensi")
        String? suratReferensi,
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
    }) = _DataPengalaman;

    factory DataPengalaman.fromJson(Map<String, dynamic> json) => _$DataPengalamanFromJson(json);
}

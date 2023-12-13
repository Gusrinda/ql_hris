import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_pendidikan_karyawan.freezed.dart';
part 'response_pendidikan_karyawan.g.dart';

@freezed
class ResponsePendidikanKaryawan with _$ResponsePendidikanKaryawan {
    const factory ResponsePendidikanKaryawan({
        @JsonKey(name: "timestamp")
        String? timestamp,
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        List<ListDataPendidikan>? data,
    }) = _ResponsePendidikanKaryawan;

    factory ResponsePendidikanKaryawan.fromJson(Map<String, dynamic> json) => _$ResponsePendidikanKaryawanFromJson(json);
}

@freezed
class ListDataPendidikan with _$ListDataPendidikan {
    const factory ListDataPendidikan({
        @JsonKey(name: "karyawan")
        String? karyawan,
        @JsonKey(name: "tingkat")
        String? tingkat,
        @JsonKey(name: "kota")
        String? kota,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_kary_id")
        int? mKaryId,
        @JsonKey(name: "m_comp_id")
        dynamic mCompId,
        @JsonKey(name: "m_dir_id")
        dynamic mDirId,
        @JsonKey(name: "tingkat_id")
        int? tingkatId,
        @JsonKey(name: "nama_sekolah")
        String? namaSekolah,
        @JsonKey(name: "thn_masuk")
        int? thnMasuk,
        @JsonKey(name: "thn_lulus")
        int? thnLulus,
        @JsonKey(name: "kota_id")
        int? kotaId,
        @JsonKey(name: "nilai")
        int? nilai,
        @JsonKey(name: "jurusan")
        String? jurusan,
        @JsonKey(name: "is_pend_terakhir")
        bool? isPendTerakhir,
        @JsonKey(name: "ijazah_no")
        String? ijazahNo,
        @JsonKey(name: "ijazah_foto")
        String? ijazahFoto,
        @JsonKey(name: "desc")
        String? desc,
        @JsonKey(name: "creator_id")
        int? creatorId,
        @JsonKey(name: "last_editor_id")
        dynamic lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
    }) = _ListDataPendidikan;

    factory ListDataPendidikan.fromJson(Map<String, dynamic> json) => _$ListDataPendidikanFromJson(json);
}

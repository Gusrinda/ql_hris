import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_standar_gaji.freezed.dart';
part 'response_standar_gaji.g.dart';

@freezed
class ResponseStandarGaji with _$ResponseStandarGaji {
    const factory ResponseStandarGaji({
        @JsonKey(name: "data")
        List<DataStandarGaji>? data,
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
    }) = _ResponseStandarGaji;

    factory ResponseStandarGaji.fromJson(Map<String, dynamic> json) => _$ResponseStandarGajiFromJson(json);
}

@freezed
class DataStandarGaji with _$DataStandarGaji {
    const factory DataStandarGaji({
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
        @JsonKey(name: "m_comp_id")
        int? datumMCompId,
        @JsonKey(name: "m_dir_id")
        int? datumMDirId,
        @JsonKey(name: "kode")
        String? kode,
        @JsonKey(name: "m_divisi_id")
        int? datumMDivisiId,
        @JsonKey(name: "m_dept_id")
        int? datumMDeptId,
        @JsonKey(name: "m_zona_id")
        int? datumMZonaId,
        @JsonKey(name: "m_posisi_id")
        int? datumMPosisiId,
        @JsonKey(name: "grading_id")
        int? datumGradingId,
        @JsonKey(name: "gaji_pokok")
        int? gajiPokok,
        @JsonKey(name: "gaji_pokok_periode")
        String? gajiPokokPeriode,
        @JsonKey(name: "uang_saku")
        int? uangSaku,
        @JsonKey(name: "uang_saku_periode")
        String? uangSakuPeriode,
        @JsonKey(name: "tunjangan_posisi")
        int? tunjanganPosisi,
        @JsonKey(name: "tunjangan_posisi_periode")
        String? tunjanganPosisiPeriode,
        @JsonKey(name: "tunjangan_kemahalan_id")
        int? datumTunjanganKemahalanId,
        @JsonKey(name: "tunjangan_kemahalan_periode")
        String? tunjanganKemahalanPeriode,
        @JsonKey(name: "uang_makan")
        int? uangMakan,
        @JsonKey(name: "uang_makan_periode")
        String? uangMakanPeriode,
        @JsonKey(name: "tunjangan_tetap")
        int? tunjanganTetap,
        @JsonKey(name: "tunjangan_tetap_periode")
        String? tunjanganTetapPeriode,
        @JsonKey(name: "desc")
        String? desc,
        @JsonKey(name: "is_active")
        bool? isActive,
        @JsonKey(name: "creator_id")
        dynamic datumCreatorId,
        @JsonKey(name: "last_editor_id")
        dynamic datumLastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "m_comp.id")
        int? mCompId,
        @JsonKey(name: "m_comp.nama")
        String? mCompNama,
        @JsonKey(name: "m_comp.is_active")
        bool? mCompIsActive,
        @JsonKey(name: "m_comp.desc")
        dynamic mCompDesc,
        @JsonKey(name: "m_comp.creator_id")
        dynamic mCompCreatorId,
        @JsonKey(name: "m_comp.last_editor_id")
        dynamic mCompLastEditorId,
        @JsonKey(name: "m_comp.created_at")
        dynamic mCompCreatedAt,
        @JsonKey(name: "m_comp.updated_at")
        dynamic mCompUpdatedAt,
        @JsonKey(name: "m_dir.id")
        dynamic mDirId,
        @JsonKey(name: "m_dir.m_comp_id")
        dynamic mDirMCompId,
        @JsonKey(name: "m_dir.nama")
        dynamic mDirNama,
        @JsonKey(name: "m_dir.desc")
        dynamic mDirDesc,
        @JsonKey(name: "m_dir.is_active")
        dynamic mDirIsActive,
        @JsonKey(name: "m_dir.creator_id")
        dynamic mDirCreatorId,
        @JsonKey(name: "m_dir.last_editor_id")
        dynamic mDirLastEditorId,
        @JsonKey(name: "m_dir.created_at")
        dynamic mDirCreatedAt,
        @JsonKey(name: "m_dir.updated_at")
        dynamic mDirUpdatedAt,
        @JsonKey(name: "m_divisi.id")
        int? mDivisiId,
        @JsonKey(name: "m_divisi.m_comp_id")
        int? mDivisiMCompId,
        @JsonKey(name: "m_divisi.m_dir_id")
        int? mDivisiMDirId,
        @JsonKey(name: "m_divisi.nama")
        String? mDivisiNama,
        @JsonKey(name: "m_divisi.desc")
        String? mDivisiDesc,
        @JsonKey(name: "m_divisi.is_active")
        bool? mDivisiIsActive,
        @JsonKey(name: "m_divisi.creator_id")
        int? mDivisiCreatorId,
        @JsonKey(name: "m_divisi.last_editor_id")
        int? mDivisiLastEditorId,
        @JsonKey(name: "m_divisi.created_at")
        String? mDivisiCreatedAt,
        @JsonKey(name: "m_divisi.updated_at")
        String? mDivisiUpdatedAt,
        @JsonKey(name: "m_dept.id")
        int? mDeptId,
        @JsonKey(name: "m_dept.m_dir_id")
        int? mDeptMDirId,
        @JsonKey(name: "m_dept.m_divisi_id")
        int? mDeptMDivisiId,
        @JsonKey(name: "m_dept.nama")
        String? mDeptNama,
        @JsonKey(name: "m_dept.desc")
        String? mDeptDesc,
        @JsonKey(name: "m_dept.is_active")
        bool? mDeptIsActive,
        @JsonKey(name: "m_dept.creator_id")
        dynamic mDeptCreatorId,
        @JsonKey(name: "m_dept.last_editor_id")
        dynamic mDeptLastEditorId,
        @JsonKey(name: "m_dept.created_at")
        String? mDeptCreatedAt,
        @JsonKey(name: "m_dept.updated_at")
        String? mDeptUpdatedAt,
        @JsonKey(name: "m_zona.id")
        int? mZonaId,
        @JsonKey(name: "m_zona.m_comp_id")
        int? mZonaMCompId,
        @JsonKey(name: "m_zona.m_dir_id")
        int? mZonaMDirId,
        @JsonKey(name: "m_zona.m_tunj_kemahalan_id")
        int? mZonaMTunjKemahalanId,
        @JsonKey(name: "m_zona.kode")
        String? mZonaKode,
        @JsonKey(name: "m_zona.nama")
        String? mZonaNama,
        @JsonKey(name: "m_zona.desc")
        String? mZonaDesc,
        @JsonKey(name: "m_zona.is_active")
        bool? mZonaIsActive,
        @JsonKey(name: "m_zona.creator_id")
        dynamic mZonaCreatorId,
        @JsonKey(name: "m_zona.last_editor_id")
        dynamic mZonaLastEditorId,
        @JsonKey(name: "m_zona.created_at")
        String? mZonaCreatedAt,
        @JsonKey(name: "m_zona.updated_at")
        String? mZonaUpdatedAt,
        @JsonKey(name: "m_posisi.id")
        int? mPosisiId,
        @JsonKey(name: "m_posisi.m_comp_id")
        int? mPosisiMCompId,
        @JsonKey(name: "m_posisi.m_dir_id")
        int? mPosisiMDirId,
        @JsonKey(name: "m_posisi.kode")
        String? mPosisiKode,
        @JsonKey(name: "m_posisi.desc_kerja")
        String? mPosisiDescKerja,
        @JsonKey(name: "m_posisi.desc_kerja_1")
        String? mPosisiDescKerja1,
        @JsonKey(name: "m_posisi.desc_kerja_2")
        String? mPosisiDescKerja2,
        @JsonKey(name: "m_posisi.min_pengalaman")
        String? mPosisiMinPengalaman,
        @JsonKey(name: "m_posisi.min_pendidikan_id")
        int? mPosisiMinPendidikanId,
        @JsonKey(name: "m_posisi.min_gaji_pokok")
        String? mPosisiMinGajiPokok,
        @JsonKey(name: "m_posisi.max_gaji_pokok")
        String? mPosisiMaxGajiPokok,
        @JsonKey(name: "m_posisi.biaya")
        dynamic mPosisiBiaya,
        @JsonKey(name: "m_posisi.tipe_bpjs_id")
        int? mPosisiTipeBpjsId,
        @JsonKey(name: "m_posisi.potongan_bpjs")
        String? mPosisiPotonganBpjs,
        @JsonKey(name: "m_posisi.desc")
        dynamic mPosisiDesc,
        @JsonKey(name: "m_posisi.is_active")
        bool? mPosisiIsActive,
        @JsonKey(name: "m_posisi.creator_id")
        dynamic mPosisiCreatorId,
        @JsonKey(name: "m_posisi.last_editor_id")
        dynamic mPosisiLastEditorId,
        @JsonKey(name: "m_posisi.created_at")
        String? mPosisiCreatedAt,
        @JsonKey(name: "m_posisi.updated_at")
        String? mPosisiUpdatedAt,
        @JsonKey(name: "grading.id")
        int? gradingId,
        @JsonKey(name: "grading.m_comp_id")
        int? gradingMCompId,
        @JsonKey(name: "grading.m_dir_id")
        dynamic gradingMDirId,
        @JsonKey(name: "grading.group")
        String? gradingGroup,
        @JsonKey(name: "grading.key")
        String? gradingKey,
        @JsonKey(name: "grading.code")
        String? gradingCode,
        @JsonKey(name: "grading.value")
        String? gradingValue,
        @JsonKey(name: "grading.is_active")
        bool? gradingIsActive,
        @JsonKey(name: "grading.creator_id")
        dynamic gradingCreatorId,
        @JsonKey(name: "grading.last_editor_id")
        dynamic gradingLastEditorId,
        @JsonKey(name: "grading.created_at")
        String? gradingCreatedAt,
        @JsonKey(name: "grading.updated_at")
        String? gradingUpdatedAt,
        @JsonKey(name: "grading.value_2")
        dynamic gradingValue2,
        @JsonKey(name: "grading.value_3")
        dynamic gradingValue3,
        @JsonKey(name: "tunjangan_kemahalan.id")
        int? tunjanganKemahalanId,
        @JsonKey(name: "tunjangan_kemahalan.m_comp_id")
        int? tunjanganKemahalanMCompId,
        @JsonKey(name: "tunjangan_kemahalan.m_dir_id")
        int? tunjanganKemahalanMDirId,
        @JsonKey(name: "tunjangan_kemahalan.kode")
        String? tunjanganKemahalanKode,
        @JsonKey(name: "tunjangan_kemahalan.m_divisi_id")
        int? tunjanganKemahalanMDivisiId,
        @JsonKey(name: "tunjangan_kemahalan.m_dept_id")
        int? tunjanganKemahalanMDeptId,
        @JsonKey(name: "tunjangan_kemahalan.m_zona_id")
        dynamic tunjanganKemahalanMZonaId,
        @JsonKey(name: "tunjangan_kemahalan.m_posisi_id")
        int? tunjanganKemahalanMPosisiId,
        @JsonKey(name: "tunjangan_kemahalan.besaran")
        String? tunjanganKemahalanBesaran,
        @JsonKey(name: "tunjangan_kemahalan.desc")
        String? tunjanganKemahalanDesc,
        @JsonKey(name: "tunjangan_kemahalan.is_active")
        bool? tunjanganKemahalanIsActive,
        @JsonKey(name: "tunjangan_kemahalan.creator_id")
        dynamic tunjanganKemahalanCreatorId,
        @JsonKey(name: "tunjangan_kemahalan.last_editor_id")
        dynamic tunjanganKemahalanLastEditorId,
        @JsonKey(name: "tunjangan_kemahalan.created_at")
        String? tunjanganKemahalanCreatedAt,
        @JsonKey(name: "tunjangan_kemahalan.updated_at")
        String? tunjanganKemahalanUpdatedAt,
        @JsonKey(name: "creator.id")
        dynamic creatorId,
        @JsonKey(name: "creator.name")
        dynamic creatorName,
        @JsonKey(name: "creator.email")
        dynamic creatorEmail,
        @JsonKey(name: "creator.username")
        dynamic creatorUsername,
        @JsonKey(name: "creator.email_verified_at")
        dynamic creatorEmailVerifiedAt,
        @JsonKey(name: "creator.password")
        dynamic creatorPassword,
        @JsonKey(name: "creator.m_comp_id")
        dynamic creatorMCompId,
        @JsonKey(name: "creator.m_dir_id")
        dynamic creatorMDirId,
        @JsonKey(name: "creator.is_active")
        dynamic creatorIsActive,
        @JsonKey(name: "creator.creator_id")
        dynamic creatorCreatorId,
        @JsonKey(name: "creator.last_editor_id")
        dynamic creatorLastEditorId,
        @JsonKey(name: "creator.remember_token")
        dynamic creatorRememberToken,
        @JsonKey(name: "creator.created_at")
        dynamic creatorCreatedAt,
        @JsonKey(name: "creator.updated_at")
        dynamic creatorUpdatedAt,
        @JsonKey(name: "creator.profil_image")
        dynamic creatorProfilImage,
        @JsonKey(name: "creator.telp")
        dynamic creatorTelp,
        @JsonKey(name: "creator.m_kary_id")
        dynamic creatorMKaryId,
        @JsonKey(name: "last_editor.id")
        dynamic lastEditorId,
        @JsonKey(name: "last_editor.name")
        dynamic lastEditorName,
        @JsonKey(name: "last_editor.email")
        dynamic lastEditorEmail,
        @JsonKey(name: "last_editor.username")
        dynamic lastEditorUsername,
        @JsonKey(name: "last_editor.email_verified_at")
        dynamic lastEditorEmailVerifiedAt,
        @JsonKey(name: "last_editor.password")
        dynamic lastEditorPassword,
        @JsonKey(name: "last_editor.m_comp_id")
        dynamic lastEditorMCompId,
        @JsonKey(name: "last_editor.m_dir_id")
        dynamic lastEditorMDirId,
        @JsonKey(name: "last_editor.is_active")
        dynamic lastEditorIsActive,
        @JsonKey(name: "last_editor.creator_id")
        dynamic lastEditorCreatorId,
        @JsonKey(name: "last_editor.last_editor_id")
        dynamic lastEditorLastEditorId,
        @JsonKey(name: "last_editor.remember_token")
        dynamic lastEditorRememberToken,
        @JsonKey(name: "last_editor.created_at")
        dynamic lastEditorCreatedAt,
        @JsonKey(name: "last_editor.updated_at")
        dynamic lastEditorUpdatedAt,
        @JsonKey(name: "last_editor.profil_image")
        dynamic lastEditorProfilImage,
        @JsonKey(name: "last_editor.telp")
        dynamic lastEditorTelp,
        @JsonKey(name: "last_editor.m_kary_id")
        dynamic lastEditorMKaryId,
    }) = _DataStandarGaji;

    factory DataStandarGaji.fromJson(Map<String, dynamic> json) => _$DataStandarGajiFromJson(json);
}

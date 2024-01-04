// class ProfileModel {
//   String? imagePath;
//   String? email;
//   int? employeeId;
//   String? username;
//   String? name;
//   String? phoneNumber;
//   String? password;
//   ProfileModel({
//     this.imagePath,
//     this.email,
//     this.employeeId,
//     this.name,
//     this.username,
//     this.phoneNumber,
//     this.password,
//   });

//   factory ProfileModel.fromMap(Map<String, dynamic> json) => ProfileModel(
//         imagePath: json["profil_image"],
//         email: json["email"],
//         employeeId: json["id"],
//         name: json["name"],
//         username: json["username"],
//         phoneNumber: json["telp"],
//         password: json["password"],
//       );
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
    const factory ProfileModel({
        @JsonKey(name: "data")
        DataProfile? data,
        @JsonKey(name: "processed_time")
        double? processedTime,
    }) = _ProfileModel;

    factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}

@freezed
class DataProfile with _$DataProfile {
    const factory DataProfile({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "username")
        String? username,
        @JsonKey(name: "email_verified_at")
        dynamic emailVerifiedAt,
        @JsonKey(name: "m_comp_id")
        int? dataMCompId,
        @JsonKey(name: "m_dir_id")
        int? dataMDirId,
        @JsonKey(name: "is_active")
        bool? isActive,
        @JsonKey(name: "creator_id")
        dynamic creatorId,
        @JsonKey(name: "last_editor_id")
        int? lastEditorId,
        @JsonKey(name: "remember_token")
        dynamic rememberToken,
        @JsonKey(name: "created_at")
        dynamic createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "profil_image")
        String? profilImage,
        @JsonKey(name: "telp")
        String? telp,
        @JsonKey(name: "m_kary_id")
        int? dataMKaryId,
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
        @JsonKey(name: "m_kary.id")
        int? mKaryId,
        @JsonKey(name: "m_kary.m_comp_id")
        int? mKaryMCompId,
        @JsonKey(name: "m_kary.m_dir_id")
        int? mKaryMDirId,
        @JsonKey(name: "m_kary.m_divisi_id")
        int? mKaryMDivisiId,
        @JsonKey(name: "m_kary.m_dept_id")
        int? mKaryMDeptId,
        @JsonKey(name: "m_kary.m_zona_id")
        int? mKaryMZonaId,
        @JsonKey(name: "m_kary.grading_id")
        dynamic mKaryGradingId,
        @JsonKey(name: "m_kary.costcontre_id")
        int? mKaryCostcontreId,
        @JsonKey(name: "m_kary.kode")
        String? mKaryKode,
        @JsonKey(name: "m_kary.m_posisi_id")
        int? mKaryMPosisiId,
        @JsonKey(name: "m_kary.m_jam_kerja_id")
        int? mKaryMJamKerjaId,
        @JsonKey(name: "m_kary.kode_presensi")
        String? mKaryKodePresensi,
        @JsonKey(name: "m_kary.nik")
        String? mKaryNik,
        @JsonKey(name: "m_kary.nama_depan")
        String? mKaryNamaDepan,
        @JsonKey(name: "m_kary.nama_belakang")
        String? mKaryNamaBelakang,
        @JsonKey(name: "m_kary.nama_lengkap")
        String? mKaryNamaLengkap,
        @JsonKey(name: "m_kary.nama_panggilan")
        String? mKaryNamaPanggilan,
        @JsonKey(name: "m_kary.jk_id")
        int? mKaryJkId,
        @JsonKey(name: "m_kary.tempat_lahir")
        String? mKaryTempatLahir,
        @JsonKey(name: "m_kary.tgl_lahir")
        String? mKaryTglLahir,
        @JsonKey(name: "m_kary.provinsi_id")
        int? mKaryProvinsiId,
        @JsonKey(name: "m_kary.kota_id")
        int? mKaryKotaId,
        @JsonKey(name: "m_kary.kecamatan_id")
        int? mKaryKecamatanId,
        @JsonKey(name: "m_kary.kode_pos")
        String? mKaryKodePos,
        @JsonKey(name: "m_kary.alamat_asli")
        String? mKaryAlamatAsli,
        @JsonKey(name: "m_kary.alamat_domisili")
        String? mKaryAlamatDomisili,
        @JsonKey(name: "m_kary.no_tlp")
        String? mKaryNoTlp,
        @JsonKey(name: "m_kary.no_tlp_lainnya")
        String? mKaryNoTlpLainnya,
        @JsonKey(name: "m_kary.no_darurat")
        String? mKaryNoDarurat,
        @JsonKey(name: "m_kary.nama_kontak_darurat")
        String? mKaryNamaKontakDarurat,
        @JsonKey(name: "m_kary.agama_id")
        int? mKaryAgamaId,
        @JsonKey(name: "m_kary.gol_darah_id")
        int? mKaryGolDarahId,
        @JsonKey(name: "m_kary.status_nikah_id")
        int? mKaryStatusNikahId,
        @JsonKey(name: "m_kary.tanggungan_id")
        int? mKaryTanggunganId,
        @JsonKey(name: "m_kary.hub_dgn_karyawan")
        String? mKaryHubDgnKaryawan,
        @JsonKey(name: "m_kary.cuti_jatah_reguler")
        int? mKaryCutiJatahReguler,
        @JsonKey(name: "m_kary.cuti_sisa_reguler")
        int? mKaryCutiSisaReguler,
        @JsonKey(name: "m_kary.cuti_panjang")
        int? mKaryCutiPanjang,
        @JsonKey(name: "m_kary.cuti_sisa_panjang")
        int? mKaryCutiSisaPanjang,
        @JsonKey(name: "m_kary.status_kary_id")
        dynamic mKaryStatusKaryId,
        @JsonKey(name: "m_kary.lama_kontrak_awal")
        dynamic mKaryLamaKontrakAwal,
        @JsonKey(name: "m_kary.lama_kontrak_akhir")
        dynamic mKaryLamaKontrakAkhir,
        @JsonKey(name: "m_kary.tgl_masuk")
        String? mKaryTglMasuk,
        @JsonKey(name: "m_kary.tgl_berhenti")
        dynamic mKaryTglBerhenti,
        @JsonKey(name: "m_kary.alasan_berhenti")
        dynamic mKaryAlasanBerhenti,
        @JsonKey(name: "m_kary.uk_baju")
        String? mKaryUkBaju,
        @JsonKey(name: "m_kary.uk_celana")
        String? mKaryUkCelana,
        @JsonKey(name: "m_kary.uk_sepatu")
        String? mKaryUkSepatu,
        @JsonKey(name: "m_kary.desc")
        dynamic mKaryDesc,
        @JsonKey(name: "m_kary.is_active")
        bool? mKaryIsActive,
        @JsonKey(name: "m_kary.creator_id")
        dynamic mKaryCreatorId,
        @JsonKey(name: "m_kary.last_editor_id")
        int? mKaryLastEditorId,
        @JsonKey(name: "m_kary.created_at")
        String? mKaryCreatedAt,
        @JsonKey(name: "m_kary.updated_at")
        String? mKaryUpdatedAt,
        @JsonKey(name: "m_kary.m_standart_gaji_id")
        int? mKaryMStandartGajiId,
        @JsonKey(name: "m_kary.periode_gaji_id")
        int? mKaryPeriodeGajiId,
        @JsonKey(name: "m_kary.ref_id")
        dynamic mKaryRefId,
        @JsonKey(name: "m_kary.atasan_id")
        int? mKaryAtasanId,
        @JsonKey(name: "m_kary.presensi_lokasi_default_id")
        dynamic mKaryPresensiLokasiDefaultId,
        @JsonKey(name: "m_kary.exp_date_cuti")
        String? mKaryExpDateCuti,
        @JsonKey(name: "m_kary.limit_potong")
        int? mKaryLimitPotong,
        @JsonKey(name: "atasan")
        String? atasan,
        @JsonKey(name: "info_cuti")
        InfoCuti? infoCuti,
        @JsonKey(name: "default_users_socialite")
        List<dynamic>? defaultUsersSocialite,
    }) = _DataProfile;

    factory DataProfile.fromJson(Map<String, dynamic> json) => _$DataProfileFromJson(json);
}

@freezed
class InfoCuti with _$InfoCuti {
    const factory InfoCuti({
        @JsonKey(name: "cuti_p24")
        int? cutiP24,
        @JsonKey(name: "cuti_reguler")
        int? cutiReguler,
        @JsonKey(name: "work_present")
        int? workPresent,
        @JsonKey(name: "cuti_terpakai")
        int? cutiTerpakai,
        @JsonKey(name: "potongan_cuti")
        int? potonganCuti,
        @JsonKey(name: "sisa_cuti_p24")
        int? sisaCutiP24,
        @JsonKey(name: "cuti_masa_kerja")
        int? cutiMasaKerja,
        @JsonKey(name: "work_not_present")
        int? workNotPresent,
        @JsonKey(name: "cuti_p24_terpakai")
        int? cutiP24Terpakai,
        @JsonKey(name: "sisa_cuti_reguler")
        int? sisaCutiReguler,
        @JsonKey(name: "work_days_in_month")
        int? workDaysInMonth,
        @JsonKey(name: "sisa_cuti_masa_kerja")
        int? sisaCutiMasaKerja,
    }) = _InfoCuti;

    factory InfoCuti.fromJson(Map<String, dynamic> json) => _$InfoCutiFromJson(json);
}
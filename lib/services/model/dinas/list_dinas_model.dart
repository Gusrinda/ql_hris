import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'list_dinas_model.freezed.dart';
part 'list_dinas_model.g.dart';

@freezed
class ListDinasModel with _$ListDinasModel {
    const factory ListDinasModel({
        @JsonKey(name: "data")
        List<Datum>? data,
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
    }) = _ListDinasModel;

    factory ListDinasModel.fromJson(Map<String, dynamic> json) => _$ListDinasModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
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
        @JsonKey(name: "nomor")
        String? nomor,
        @JsonKey(name: "m_comp_id")
        int? datumMCompId,
        @JsonKey(name: "m_spd_id")
        int? datumMSpdId,
        @JsonKey(name: "m_dir_id")
        int? datumMDirId,
        @JsonKey(name: "m_divisi_id")
        int? datumMDivisiId,
        @JsonKey(name: "m_dept_id")
        int? datumMDeptId,
        @JsonKey(name: "m_posisi_id")
        int? datumMPosisiId,
        @JsonKey(name: "tanggal")
        String? tanggal,
        @JsonKey(name: "tgl_acara_awal")
        String? tglAcaraAwal,
        @JsonKey(name: "tgl_acara_akhir")
        String? tglAcaraAkhir,
        @JsonKey(name: "jenis_spd_id")
        int? datumJenisSpdId,
        @JsonKey(name: "m_zona_asal_id")
        int? datumMZonaAsalId,
        @JsonKey(name: "m_zona_tujuan_id")
        int? datumMZonaTujuanId,
        @JsonKey(name: "m_lokasi_tujuan_id")
        int? datumMLokasiTujuanId,
        @JsonKey(name: "m_kary_id")
        dynamic datumMKaryId,
        @JsonKey(name: "pic_id")
        int? datumPicId,
        @JsonKey(name: "total_biaya")
        int? totalBiaya,
        @JsonKey(name: "kegiatan")
        String? kegiatan,
        @JsonKey(name: "keterangan")
        String? keterangan,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "creator_id")
        int? datumCreatorId,
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
        @JsonKey(name: "m_spd.id")
        int? mSpdId,
        @JsonKey(name: "m_spd.m_comp_id")
        int? mSpdMCompId,
        @JsonKey(name: "m_spd.m_dir_id")
        int? mSpdMDirId,
        @JsonKey(name: "m_spd.kode")
        String? mSpdKode,
        @JsonKey(name: "m_spd.m_divisi_id")
        int? mSpdMDivisiId,
        @JsonKey(name: "m_spd.m_posisi_id")
        int? mSpdMPosisiId,
        @JsonKey(name: "m_spd.m_dept_id")
        int? mSpdMDeptId,
        @JsonKey(name: "m_spd.m_zona_id")
        int? mSpdMZonaId,
        @JsonKey(name: "m_spd.grading_id")
        dynamic mSpdGradingId,
        @JsonKey(name: "m_spd.grading")
        dynamic mSpdGrading,
        @JsonKey(name: "m_spd.desc")
        String? mSpdDesc,
        @JsonKey(name: "m_spd.is_active")
        bool? mSpdIsActive,
        @JsonKey(name: "m_spd.creator_id")
        dynamic mSpdCreatorId,
        @JsonKey(name: "m_spd.last_editor_id")
        dynamic mSpdLastEditorId,
        @JsonKey(name: "m_spd.created_at")
        String? mSpdCreatedAt,
        @JsonKey(name: "m_spd.updated_at")
        String? mSpdUpdatedAt,
        @JsonKey(name: "m_dir.id")
        int? mDirId,
        @JsonKey(name: "m_dir.m_comp_id")
        int? mDirMCompId,
        @JsonKey(name: "m_dir.nama")
        String? mDirNama,
        @JsonKey(name: "m_dir.desc")
        dynamic mDirDesc,
        @JsonKey(name: "m_dir.is_active")
        bool? mDirIsActive,
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
        dynamic mDivisiDesc,
        @JsonKey(name: "m_divisi.is_active")
        bool? mDivisiIsActive,
        @JsonKey(name: "m_divisi.creator_id")
        int? mDivisiCreatorId,
        @JsonKey(name: "m_divisi.last_editor_id")
        dynamic mDivisiLastEditorId,
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
        String? mPosisiDesc,
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
        @JsonKey(name: "jenis_spd.id")
        int? jenisSpdId,
        @JsonKey(name: "jenis_spd.m_comp_id")
        int? jenisSpdMCompId,
        @JsonKey(name: "jenis_spd.m_dir_id")
        dynamic jenisSpdMDirId,
        @JsonKey(name: "jenis_spd.group")
        String? jenisSpdGroup,
        @JsonKey(name: "jenis_spd.key")
        String? jenisSpdKey,
        @JsonKey(name: "jenis_spd.code")
        String? jenisSpdCode,
        @JsonKey(name: "jenis_spd.value")
        String? jenisSpdValue,
        @JsonKey(name: "jenis_spd.is_active")
        bool? jenisSpdIsActive,
        @JsonKey(name: "jenis_spd.creator_id")
        dynamic jenisSpdCreatorId,
        @JsonKey(name: "jenis_spd.last_editor_id")
        dynamic jenisSpdLastEditorId,
        @JsonKey(name: "jenis_spd.created_at")
        String? jenisSpdCreatedAt,
        @JsonKey(name: "jenis_spd.updated_at")
        String? jenisSpdUpdatedAt,
        @JsonKey(name: "m_zona_asal.id")
        int? mZonaAsalId,
        @JsonKey(name: "m_zona_asal.m_comp_id")
        int? mZonaAsalMCompId,
        @JsonKey(name: "m_zona_asal.m_dir_id")
        int? mZonaAsalMDirId,
        @JsonKey(name: "m_zona_asal.m_tunj_kemahalan_id")
        int? mZonaAsalMTunjKemahalanId,
        @JsonKey(name: "m_zona_asal.kode")
        String? mZonaAsalKode,
        @JsonKey(name: "m_zona_asal.nama")
        String? mZonaAsalNama,
        @JsonKey(name: "m_zona_asal.desc")
        String? mZonaAsalDesc,
        @JsonKey(name: "m_zona_asal.is_active")
        bool? mZonaAsalIsActive,
        @JsonKey(name: "m_zona_asal.creator_id")
        dynamic mZonaAsalCreatorId,
        @JsonKey(name: "m_zona_asal.last_editor_id")
        dynamic mZonaAsalLastEditorId,
        @JsonKey(name: "m_zona_asal.created_at")
        String? mZonaAsalCreatedAt,
        @JsonKey(name: "m_zona_asal.updated_at")
        String? mZonaAsalUpdatedAt,
        @JsonKey(name: "m_zona_tujuan.id")
        int? mZonaTujuanId,
        @JsonKey(name: "m_zona_tujuan.m_comp_id")
        int? mZonaTujuanMCompId,
        @JsonKey(name: "m_zona_tujuan.m_dir_id")
        int? mZonaTujuanMDirId,
        @JsonKey(name: "m_zona_tujuan.m_tunj_kemahalan_id")
        int? mZonaTujuanMTunjKemahalanId,
        @JsonKey(name: "m_zona_tujuan.kode")
        String? mZonaTujuanKode,
        @JsonKey(name: "m_zona_tujuan.nama")
        String? mZonaTujuanNama,
        @JsonKey(name: "m_zona_tujuan.desc")
        String? mZonaTujuanDesc,
        @JsonKey(name: "m_zona_tujuan.is_active")
        bool? mZonaTujuanIsActive,
        @JsonKey(name: "m_zona_tujuan.creator_id")
        dynamic mZonaTujuanCreatorId,
        @JsonKey(name: "m_zona_tujuan.last_editor_id")
        dynamic mZonaTujuanLastEditorId,
        @JsonKey(name: "m_zona_tujuan.created_at")
        String? mZonaTujuanCreatedAt,
        @JsonKey(name: "m_zona_tujuan.updated_at")
        String? mZonaTujuanUpdatedAt,
        @JsonKey(name: "m_lokasi_tujuan.id")
        int? mLokasiTujuanId,
        @JsonKey(name: "m_lokasi_tujuan.m_comp_id")
        int? mLokasiTujuanMCompId,
        @JsonKey(name: "m_lokasi_tujuan.m_dir_id")
        int? mLokasiTujuanMDirId,
        @JsonKey(name: "m_lokasi_tujuan.kode")
        String? mLokasiTujuanKode,
        @JsonKey(name: "m_lokasi_tujuan.nama")
        String? mLokasiTujuanNama,
        @JsonKey(name: "m_lokasi_tujuan.desc")
        String? mLokasiTujuanDesc,
        @JsonKey(name: "m_lokasi_tujuan.is_active")
        bool? mLokasiTujuanIsActive,
        @JsonKey(name: "m_lokasi_tujuan.creator_id")
        dynamic mLokasiTujuanCreatorId,
        @JsonKey(name: "m_lokasi_tujuan.last_editor_id")
        dynamic mLokasiTujuanLastEditorId,
        @JsonKey(name: "m_lokasi_tujuan.created_at")
        String? mLokasiTujuanCreatedAt,
        @JsonKey(name: "m_lokasi_tujuan.updated_at")
        String? mLokasiTujuanUpdatedAt,
        @JsonKey(name: "m_kary.id")
        dynamic mKaryId,
        @JsonKey(name: "m_kary.m_comp_id")
        dynamic mKaryMCompId,
        @JsonKey(name: "m_kary.m_dir_id")
        dynamic mKaryMDirId,
        @JsonKey(name: "m_kary.m_divisi_id")
        dynamic mKaryMDivisiId,
        @JsonKey(name: "m_kary.m_dept_id")
        dynamic mKaryMDeptId,
        @JsonKey(name: "m_kary.m_zona_id")
        dynamic mKaryMZonaId,
        @JsonKey(name: "m_kary.grading_id")
        dynamic mKaryGradingId,
        @JsonKey(name: "m_kary.costcontre_id")
        dynamic mKaryCostcontreId,
        @JsonKey(name: "m_kary.kode")
        dynamic mKaryKode,
        @JsonKey(name: "m_kary.m_posisi_id")
        dynamic mKaryMPosisiId,
        @JsonKey(name: "m_kary.m_jam_kerja_id")
        dynamic mKaryMJamKerjaId,
        @JsonKey(name: "m_kary.kode_presensi")
        dynamic mKaryKodePresensi,
        @JsonKey(name: "m_kary.nik")
        dynamic mKaryNik,
        @JsonKey(name: "m_kary.nama_depan")
        dynamic mKaryNamaDepan,
        @JsonKey(name: "m_kary.nama_belakang")
        dynamic mKaryNamaBelakang,
        @JsonKey(name: "m_kary.nama_lengkap")
        dynamic mKaryNamaLengkap,
        @JsonKey(name: "m_kary.nama_panggilan")
        dynamic mKaryNamaPanggilan,
        @JsonKey(name: "m_kary.jk_id")
        dynamic mKaryJkId,
        @JsonKey(name: "m_kary.tempat_lahir")
        dynamic mKaryTempatLahir,
        @JsonKey(name: "m_kary.tgl_lahir")
        dynamic mKaryTglLahir,
        @JsonKey(name: "m_kary.provinsi_id")
        dynamic mKaryProvinsiId,
        @JsonKey(name: "m_kary.kota_id")
        dynamic mKaryKotaId,
        @JsonKey(name: "m_kary.kecamatan_id")
        dynamic mKaryKecamatanId,
        @JsonKey(name: "m_kary.kode_pos")
        dynamic mKaryKodePos,
        @JsonKey(name: "m_kary.alamat_asli")
        dynamic mKaryAlamatAsli,
        @JsonKey(name: "m_kary.alamat_domisili")
        dynamic mKaryAlamatDomisili,
        @JsonKey(name: "m_kary.no_tlp")
        dynamic mKaryNoTlp,
        @JsonKey(name: "m_kary.no_tlp_lainnya")
        dynamic mKaryNoTlpLainnya,
        @JsonKey(name: "m_kary.no_darurat")
        dynamic mKaryNoDarurat,
        @JsonKey(name: "m_kary.nama_kontak_darurat")
        dynamic mKaryNamaKontakDarurat,
        @JsonKey(name: "m_kary.agama_id")
        dynamic mKaryAgamaId,
        @JsonKey(name: "m_kary.gol_darah_id")
        dynamic mKaryGolDarahId,
        @JsonKey(name: "m_kary.status_nikah_id")
        dynamic mKaryStatusNikahId,
        @JsonKey(name: "m_kary.jml_tanggungan")
        dynamic mKaryJmlTanggungan,
        @JsonKey(name: "m_kary.hub_dgn_karyawan")
        dynamic mKaryHubDgnKaryawan,
        @JsonKey(name: "m_kary.cuti_jatah_reguler")
        dynamic mKaryCutiJatahReguler,
        @JsonKey(name: "m_kary.cuti_sisa_reguler")
        dynamic mKaryCutiSisaReguler,
        @JsonKey(name: "m_kary.cuti_panjang")
        dynamic mKaryCutiPanjang,
        @JsonKey(name: "m_kary.cuti_sisa_panjang")
        dynamic mKaryCutiSisaPanjang,
        @JsonKey(name: "m_kary.status_kary_id")
        dynamic mKaryStatusKaryId,
        @JsonKey(name: "m_kary.lama_kontrak_awal")
        dynamic mKaryLamaKontrakAwal,
        @JsonKey(name: "m_kary.lama_kontrak_akhir")
        dynamic mKaryLamaKontrakAkhir,
        @JsonKey(name: "m_kary.tgl_masuk")
        dynamic mKaryTglMasuk,
        @JsonKey(name: "m_kary.tgl_berhenti")
        dynamic mKaryTglBerhenti,
        @JsonKey(name: "m_kary.alasan_berhenti")
        dynamic mKaryAlasanBerhenti,
        @JsonKey(name: "m_kary.uk_baju")
        dynamic mKaryUkBaju,
        @JsonKey(name: "m_kary.uk_celana")
        dynamic mKaryUkCelana,
        @JsonKey(name: "m_kary.uk_sepatu")
        dynamic mKaryUkSepatu,
        @JsonKey(name: "m_kary.desc")
        dynamic mKaryDesc,
        @JsonKey(name: "m_kary.is_active")
        dynamic mKaryIsActive,
        @JsonKey(name: "m_kary.creator_id")
        dynamic mKaryCreatorId,
        @JsonKey(name: "m_kary.last_editor_id")
        dynamic mKaryLastEditorId,
        @JsonKey(name: "m_kary.created_at")
        dynamic mKaryCreatedAt,
        @JsonKey(name: "m_kary.updated_at")
        dynamic mKaryUpdatedAt,
        @JsonKey(name: "pic.id")
        int? picId,
        @JsonKey(name: "pic.m_comp_id")
        int? picMCompId,
        @JsonKey(name: "pic.m_dir_id")
        int? picMDirId,
        @JsonKey(name: "pic.m_divisi_id")
        int? picMDivisiId,
        @JsonKey(name: "pic.m_dept_id")
        int? picMDeptId,
        @JsonKey(name: "pic.m_zona_id")
        int? picMZonaId,
        @JsonKey(name: "pic.grading_id")
        dynamic picGradingId,
        @JsonKey(name: "pic.costcontre_id")
        int? picCostcontreId,
        @JsonKey(name: "pic.kode")
        String? picKode,
        @JsonKey(name: "pic.m_posisi_id")
        int? picMPosisiId,
        @JsonKey(name: "pic.m_jam_kerja_id")
        int? picMJamKerjaId,
        @JsonKey(name: "pic.kode_presensi")
        String? picKodePresensi,
        @JsonKey(name: "pic.nik")
        String? picNik,
        @JsonKey(name: "pic.nama_depan")
        String? picNamaDepan,
        @JsonKey(name: "pic.nama_belakang")
        String? picNamaBelakang,
        @JsonKey(name: "pic.nama_lengkap")
        String? picNamaLengkap,
        @JsonKey(name: "pic.nama_panggilan")
        String? picNamaPanggilan,
        @JsonKey(name: "pic.jk_id")
        int? picJkId,
        @JsonKey(name: "pic.tempat_lahir")
        String? picTempatLahir,
        @JsonKey(name: "pic.tgl_lahir")
        String? picTglLahir,
        @JsonKey(name: "pic.provinsi_id")
        int? picProvinsiId,
        @JsonKey(name: "pic.kota_id")
        int? picKotaId,
        @JsonKey(name: "pic.kecamatan_id")
        int? picKecamatanId,
        @JsonKey(name: "pic.kode_pos")
        String? picKodePos,
        @JsonKey(name: "pic.alamat_asli")
        String? picAlamatAsli,
        @JsonKey(name: "pic.alamat_domisili")
        String? picAlamatDomisili,
        @JsonKey(name: "pic.no_tlp")
        String? picNoTlp,
        @JsonKey(name: "pic.no_tlp_lainnya")
        dynamic picNoTlpLainnya,
        @JsonKey(name: "pic.no_darurat")
        String? picNoDarurat,
        @JsonKey(name: "pic.nama_kontak_darurat")
        String? picNamaKontakDarurat,
        @JsonKey(name: "pic.agama_id")
        int? picAgamaId,
        @JsonKey(name: "pic.gol_darah_id")
        int? picGolDarahId,
        @JsonKey(name: "pic.status_nikah_id")
        int? picStatusNikahId,
        @JsonKey(name: "pic.jml_tanggungan")
        dynamic picJmlTanggungan,
        @JsonKey(name: "pic.hub_dgn_karyawan")
        String? picHubDgnKaryawan,
        @JsonKey(name: "pic.cuti_jatah_reguler")
        int? picCutiJatahReguler,
        @JsonKey(name: "pic.cuti_sisa_reguler")
        int? picCutiSisaReguler,
        @JsonKey(name: "pic.cuti_panjang")
        int? picCutiPanjang,
        @JsonKey(name: "pic.cuti_sisa_panjang")
        int? picCutiSisaPanjang,
        @JsonKey(name: "pic.status_kary_id")
        dynamic picStatusKaryId,
        @JsonKey(name: "pic.lama_kontrak_awal")
        dynamic picLamaKontrakAwal,
        @JsonKey(name: "pic.lama_kontrak_akhir")
        dynamic picLamaKontrakAkhir,
        @JsonKey(name: "pic.tgl_masuk")
        dynamic picTglMasuk,
        @JsonKey(name: "pic.tgl_berhenti")
        dynamic picTglBerhenti,
        @JsonKey(name: "pic.alasan_berhenti")
        dynamic picAlasanBerhenti,
        @JsonKey(name: "pic.uk_baju")
        String? picUkBaju,
        @JsonKey(name: "pic.uk_celana")
        String? picUkCelana,
        @JsonKey(name: "pic.uk_sepatu")
        String? picUkSepatu,
        @JsonKey(name: "pic.desc")
        dynamic picDesc,
        @JsonKey(name: "pic.is_active")
        bool? picIsActive,
        @JsonKey(name: "pic.creator_id")
        dynamic picCreatorId,
        @JsonKey(name: "pic.last_editor_id")
        dynamic picLastEditorId,
        @JsonKey(name: "pic.created_at")
        String? picCreatedAt,
        @JsonKey(name: "pic.updated_at")
        String? picUpdatedAt,
        @JsonKey(name: "creator.id")
        int? creatorId,
        @JsonKey(name: "creator.name")
        String? creatorName,
        @JsonKey(name: "creator.email")
        String? creatorEmail,
        @JsonKey(name: "creator.username")
        String? creatorUsername,
        @JsonKey(name: "creator.email_verified_at")
        dynamic creatorEmailVerifiedAt,
        @JsonKey(name: "creator.password")
        String? creatorPassword,
        @JsonKey(name: "creator.m_comp_id")
        int? creatorMCompId,
        @JsonKey(name: "creator.m_dir_id")
        int? creatorMDirId,
        @JsonKey(name: "creator.is_active")
        bool? creatorIsActive,
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
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

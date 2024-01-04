import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_biodata_karyawan.freezed.dart';
part 'response_biodata_karyawan.g.dart';

@freezed
class ResponseBiodataKaryawan with _$ResponseBiodataKaryawan {
  const factory ResponseBiodataKaryawan({
    @JsonKey(name: "timestamp") String? timestamp,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Biodata? data,
  }) = _ResponseBiodataKaryawan;

  factory ResponseBiodataKaryawan.fromJson(Map<String, dynamic> json) =>
      _$ResponseBiodataKaryawanFromJson(json);
}

@freezed
class Biodata with _$Biodata {
  const factory Biodata({
    @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_comp_id")
        int? mCompId,
        @JsonKey(name: "m_dir_id")
        int? mDirId,
        @JsonKey(name: "m_divisi_id")
        int? mDivisiId,
        @JsonKey(name: "m_dept_id")
        int? mDeptId,
        @JsonKey(name: "m_zona_id")
        int? mZonaId,
        @JsonKey(name: "grading_id")
        dynamic gradingId,
        @JsonKey(name: "costcontre_id")
        int? costcontreId,
        @JsonKey(name: "kode")
        String? kode,
        @JsonKey(name: "m_posisi_id")
        int? mPosisiId,
        @JsonKey(name: "m_jam_kerja_id")
        int? mJamKerjaId,
        @JsonKey(name: "kode_presensi")
        String? kodePresensi,
        @JsonKey(name: "nik")
        String? nik,
        @JsonKey(name: "nama_depan")
        String? namaDepan,
        @JsonKey(name: "nama_belakang")
        String? namaBelakang,
        @JsonKey(name: "nama_lengkap")
        String? namaLengkap,
        @JsonKey(name: "nama_panggilan")
        String? namaPanggilan,
        @JsonKey(name: "jk_id")
        int? jkId,
        @JsonKey(name: "tempat_lahir")
        String? tempatLahir,
        @JsonKey(name: "tgl_lahir")
        DateTime? tglLahir,
        @JsonKey(name: "provinsi_id")
        int? provinsiId,
        @JsonKey(name: "kota_id")
        int? kotaId,
        @JsonKey(name: "kecamatan_id")
        int? kecamatanId,
        @JsonKey(name: "kode_pos")
        String? kodePos,
        @JsonKey(name: "alamat_asli")
        String? alamatAsli,
        @JsonKey(name: "alamat_domisili")
        String? alamatDomisili,
        @JsonKey(name: "no_tlp")
        String? noTlp,
        @JsonKey(name: "no_tlp_lainnya")
        String? noTlpLainnya,
        @JsonKey(name: "no_darurat")
        String? noDarurat,
        @JsonKey(name: "nama_kontak_darurat")
        String? namaKontakDarurat,
        @JsonKey(name: "agama_id")
        int? agamaId,
        @JsonKey(name: "gol_darah_id")
        int? golDarahId,
        @JsonKey(name: "status_nikah_id")
        int? statusNikahId,
        @JsonKey(name: "tanggungan_id")
        int? tanggunganId,
        @JsonKey(name: "hub_dgn_karyawan")
        String? hubDgnKaryawan,
        @JsonKey(name: "cuti_jatah_reguler")
        int? cutiJatahReguler,
        @JsonKey(name: "cuti_sisa_reguler")
        int? cutiSisaReguler,
        @JsonKey(name: "cuti_panjang")
        int? cutiPanjang,
        @JsonKey(name: "cuti_sisa_panjang")
        int? cutiSisaPanjang,
        @JsonKey(name: "status_kary_id")
        dynamic statusKaryId,
        @JsonKey(name: "lama_kontrak_awal")
        dynamic lamaKontrakAwal,
        @JsonKey(name: "lama_kontrak_akhir")
        dynamic lamaKontrakAkhir,
        @JsonKey(name: "tgl_masuk")
        DateTime? tglMasuk,
        @JsonKey(name: "tgl_berhenti")
        dynamic tglBerhenti,
        @JsonKey(name: "alasan_berhenti")
        dynamic alasanBerhenti,
        @JsonKey(name: "uk_baju")
        String? ukBaju,
        @JsonKey(name: "uk_celana")
        String? ukCelana,
        @JsonKey(name: "uk_sepatu")
        String? ukSepatu,
        @JsonKey(name: "desc")
        String? desc,
        @JsonKey(name: "is_active")
        bool? isActive,
        @JsonKey(name: "creator_id")
        dynamic creatorId,
        @JsonKey(name: "last_editor_id")
        int? lastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "m_standart_gaji_id")
        int? mStandartGajiId,
        @JsonKey(name: "periode_gaji_id")
        int? periodeGajiId,
        @JsonKey(name: "ref_id")
        dynamic refId,
        @JsonKey(name: "presensi_lokasi_default_id")
        dynamic presensiLokasiDefaultId,
        @JsonKey(name: "exp_date_cuti")
        dynamic expDateCuti,
        @JsonKey(name: "limit_potong")
        int? limitPotong,
        @JsonKey(name: "atasan_id")
        int? atasanId,
        @JsonKey(name: "cuti_p24")
        dynamic cutiP24,
        @JsonKey(name: "cuti_sisa_p24")
        dynamic cutiSisaP24,
        @JsonKey(name: "dir")
        dynamic dir,
        @JsonKey(name: "div")
        String? div,
        @JsonKey(name: "dept")
        String? dept,
        @JsonKey(name: "zona")
        String? zona,
        @JsonKey(name: "grading")
        dynamic grading,
        @JsonKey(name: "posisi")
        String? posisi,
        @JsonKey(name: "jam_kerja")
        String? jamKerja,
        @JsonKey(name: "jk")
        String? jk,
        @JsonKey(name: "provinsi")
        String? provinsi,
        @JsonKey(name: "kota")
        String? kota,
        @JsonKey(name: "kecamatan")
        String? kecamatan,
        @JsonKey(name: "agama")
        String? agama,
        @JsonKey(name: "gol_darah")
        String? golDarah,
        @JsonKey(name: "tanggungan")
        String? tanggungan,
        @JsonKey(name: "costcontre")
        String? costcontre,
        @JsonKey(name: "status_nikah")
        String? statusNikah,
        @JsonKey(name: "ktp_no")
        String? ktpNo,
        @JsonKey(name: "ktp_foto")
        String? ktpFoto,
        @JsonKey(name: "pas_foto")
        String? pasFoto,
        @JsonKey(name: "kk_no")
        String? kkNo,
        @JsonKey(name: "kk_foto")
        String? kkFoto,
        @JsonKey(name: "npwp_no")
        String? npwpNo,
        @JsonKey(name: "npwp_foto")
        String? npwpFoto,
        @JsonKey(name: "npwp_tgl_berlaku")
        DateTime? npwpTglBerlaku,
        @JsonKey(name: "bpjs_tipe_id")
        int? bpjsTipeId,
        @JsonKey(name: "bpjs_no")
        String? bpjsNo,
        @JsonKey(name: "bpjs_no_kesehatan")
        String? bpjsNoKesehatan,
        @JsonKey(name: "bpjs_no_ketenagakerjaan")
        String? bpjsNoKetenagakerjaan,
        @JsonKey(name: "bpjs_foto")
        String? bpjsFoto,
        @JsonKey(name: "berkas_lain")
        String? berkasLain,
        @JsonKey(name: "desc_file")
        dynamic descFile,
        @JsonKey(name: "periode_gaji")
        String? periodeGaji,
        @JsonKey(name: "metode")
        String? metode,
        @JsonKey(name: "metode_id")
        int? metodeId,
        @JsonKey(name: "tipe")
        String? tipe,
        @JsonKey(name: "tipe_id")
        int? tipeId,
        @JsonKey(name: "bank")
        String? bank,
        @JsonKey(name: "bank_id")
        int? bankId,
        @JsonKey(name: "no_rek")
        String? noRek,
        @JsonKey(name: "atas_nama_rek")
        String? atasNamaRek,
  }) = _Biodata;

  factory Biodata.fromJson(Map<String, dynamic> json) =>
      _$BiodataFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      data: json['data'] == null
          ? null
          : DataProfile.fromJson(json['data'] as Map<String, dynamic>),
      processedTime: (json['processed_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'processed_time': instance.processedTime,
    };

_$DataProfileImpl _$$DataProfileImplFromJson(Map<String, dynamic> json) =>
    _$DataProfileImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      dataMCompId: json['m_comp_id'] as int?,
      dataMDirId: json['m_dir_id'] as int?,
      isActive: json['is_active'] as bool?,
      creatorId: json['creator_id'],
      lastEditorId: json['last_editor_id'] as int?,
      rememberToken: json['remember_token'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'] as String?,
      profilImage: json['profil_image'] as String?,
      telp: json['telp'] as String?,
      dataMKaryId: json['m_kary_id'] as int?,
      mCompId: json['m_comp.id'] as int?,
      mCompNama: json['m_comp.nama'] as String?,
      mCompIsActive: json['m_comp.is_active'] as bool?,
      mCompDesc: json['m_comp.desc'],
      mCompCreatorId: json['m_comp.creator_id'],
      mCompLastEditorId: json['m_comp.last_editor_id'],
      mCompCreatedAt: json['m_comp.created_at'],
      mCompUpdatedAt: json['m_comp.updated_at'],
      mDirId: json['m_dir.id'],
      mDirMCompId: json['m_dir.m_comp_id'],
      mDirNama: json['m_dir.nama'],
      mDirDesc: json['m_dir.desc'],
      mDirIsActive: json['m_dir.is_active'],
      mDirCreatorId: json['m_dir.creator_id'],
      mDirLastEditorId: json['m_dir.last_editor_id'],
      mDirCreatedAt: json['m_dir.created_at'],
      mDirUpdatedAt: json['m_dir.updated_at'],
      mKaryId: json['m_kary.id'] as int?,
      mKaryMCompId: json['m_kary.m_comp_id'] as int?,
      mKaryMDirId: json['m_kary.m_dir_id'] as int?,
      mKaryMDivisiId: json['m_kary.m_divisi_id'] as int?,
      mKaryMDeptId: json['m_kary.m_dept_id'] as int?,
      mKaryMZonaId: json['m_kary.m_zona_id'] as int?,
      mKaryGradingId: json['m_kary.grading_id'],
      mKaryCostcontreId: json['m_kary.costcontre_id'] as int?,
      mKaryKode: json['m_kary.kode'] as String?,
      mKaryMPosisiId: json['m_kary.m_posisi_id'] as int?,
      mKaryMJamKerjaId: json['m_kary.m_jam_kerja_id'] as int?,
      mKaryKodePresensi: json['m_kary.kode_presensi'] as String?,
      mKaryNik: json['m_kary.nik'] as String?,
      mKaryNamaDepan: json['m_kary.nama_depan'] as String?,
      mKaryNamaBelakang: json['m_kary.nama_belakang'] as String?,
      mKaryNamaLengkap: json['m_kary.nama_lengkap'] as String?,
      mKaryNamaPanggilan: json['m_kary.nama_panggilan'] as String?,
      mKaryJkId: json['m_kary.jk_id'] as int?,
      mKaryTempatLahir: json['m_kary.tempat_lahir'] as String?,
      mKaryTglLahir: json['m_kary.tgl_lahir'] as String?,
      mKaryProvinsiId: json['m_kary.provinsi_id'] as int?,
      mKaryKotaId: json['m_kary.kota_id'] as int?,
      mKaryKecamatanId: json['m_kary.kecamatan_id'] as int?,
      mKaryKodePos: json['m_kary.kode_pos'] as String?,
      mKaryAlamatAsli: json['m_kary.alamat_asli'] as String?,
      mKaryAlamatDomisili: json['m_kary.alamat_domisili'] as String?,
      mKaryNoTlp: json['m_kary.no_tlp'] as String?,
      mKaryNoTlpLainnya: json['m_kary.no_tlp_lainnya'] as String?,
      mKaryNoDarurat: json['m_kary.no_darurat'] as String?,
      mKaryNamaKontakDarurat: json['m_kary.nama_kontak_darurat'] as String?,
      mKaryAgamaId: json['m_kary.agama_id'] as int?,
      mKaryGolDarahId: json['m_kary.gol_darah_id'] as int?,
      mKaryStatusNikahId: json['m_kary.status_nikah_id'] as int?,
      mKaryTanggunganId: json['m_kary.tanggungan_id'] as int?,
      mKaryHubDgnKaryawan: json['m_kary.hub_dgn_karyawan'] as String?,
      mKaryCutiJatahReguler: json['m_kary.cuti_jatah_reguler'] as int?,
      mKaryCutiSisaReguler: json['m_kary.cuti_sisa_reguler'] as int?,
      mKaryCutiPanjang: json['m_kary.cuti_panjang'] as int?,
      mKaryCutiSisaPanjang: json['m_kary.cuti_sisa_panjang'] as int?,
      mKaryStatusKaryId: json['m_kary.status_kary_id'],
      mKaryLamaKontrakAwal: json['m_kary.lama_kontrak_awal'],
      mKaryLamaKontrakAkhir: json['m_kary.lama_kontrak_akhir'],
      mKaryTglMasuk: json['m_kary.tgl_masuk'] as String?,
      mKaryTglBerhenti: json['m_kary.tgl_berhenti'],
      mKaryAlasanBerhenti: json['m_kary.alasan_berhenti'],
      mKaryUkBaju: json['m_kary.uk_baju'] as String?,
      mKaryUkCelana: json['m_kary.uk_celana'] as String?,
      mKaryUkSepatu: json['m_kary.uk_sepatu'] as String?,
      mKaryDesc: json['m_kary.desc'],
      mKaryIsActive: json['m_kary.is_active'] as bool?,
      mKaryCreatorId: json['m_kary.creator_id'],
      mKaryLastEditorId: json['m_kary.last_editor_id'] as int?,
      mKaryCreatedAt: json['m_kary.created_at'] as String?,
      mKaryUpdatedAt: json['m_kary.updated_at'] as String?,
      mKaryMStandartGajiId: json['m_kary.m_standart_gaji_id'] as int?,
      mKaryPeriodeGajiId: json['m_kary.periode_gaji_id'] as int?,
      mKaryRefId: json['m_kary.ref_id'],
      mKaryAtasanId: json['m_kary.atasan_id'] as int?,
      mKaryPresensiLokasiDefaultId: json['m_kary.presensi_lokasi_default_id'],
      mKaryExpDateCuti: json['m_kary.exp_date_cuti'] as String?,
      mKaryLimitPotong: json['m_kary.limit_potong'] as int?,
      atasan: json['atasan'] as String?,
      defaultUsersSocialite: json['default_users_socialite'] as List<dynamic>?,
    );

Map<String, dynamic> _$$DataProfileImplToJson(_$DataProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'email_verified_at': instance.emailVerifiedAt,
      'm_comp_id': instance.dataMCompId,
      'm_dir_id': instance.dataMDirId,
      'is_active': instance.isActive,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'remember_token': instance.rememberToken,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'profil_image': instance.profilImage,
      'telp': instance.telp,
      'm_kary_id': instance.dataMKaryId,
      'm_comp.id': instance.mCompId,
      'm_comp.nama': instance.mCompNama,
      'm_comp.is_active': instance.mCompIsActive,
      'm_comp.desc': instance.mCompDesc,
      'm_comp.creator_id': instance.mCompCreatorId,
      'm_comp.last_editor_id': instance.mCompLastEditorId,
      'm_comp.created_at': instance.mCompCreatedAt,
      'm_comp.updated_at': instance.mCompUpdatedAt,
      'm_dir.id': instance.mDirId,
      'm_dir.m_comp_id': instance.mDirMCompId,
      'm_dir.nama': instance.mDirNama,
      'm_dir.desc': instance.mDirDesc,
      'm_dir.is_active': instance.mDirIsActive,
      'm_dir.creator_id': instance.mDirCreatorId,
      'm_dir.last_editor_id': instance.mDirLastEditorId,
      'm_dir.created_at': instance.mDirCreatedAt,
      'm_dir.updated_at': instance.mDirUpdatedAt,
      'm_kary.id': instance.mKaryId,
      'm_kary.m_comp_id': instance.mKaryMCompId,
      'm_kary.m_dir_id': instance.mKaryMDirId,
      'm_kary.m_divisi_id': instance.mKaryMDivisiId,
      'm_kary.m_dept_id': instance.mKaryMDeptId,
      'm_kary.m_zona_id': instance.mKaryMZonaId,
      'm_kary.grading_id': instance.mKaryGradingId,
      'm_kary.costcontre_id': instance.mKaryCostcontreId,
      'm_kary.kode': instance.mKaryKode,
      'm_kary.m_posisi_id': instance.mKaryMPosisiId,
      'm_kary.m_jam_kerja_id': instance.mKaryMJamKerjaId,
      'm_kary.kode_presensi': instance.mKaryKodePresensi,
      'm_kary.nik': instance.mKaryNik,
      'm_kary.nama_depan': instance.mKaryNamaDepan,
      'm_kary.nama_belakang': instance.mKaryNamaBelakang,
      'm_kary.nama_lengkap': instance.mKaryNamaLengkap,
      'm_kary.nama_panggilan': instance.mKaryNamaPanggilan,
      'm_kary.jk_id': instance.mKaryJkId,
      'm_kary.tempat_lahir': instance.mKaryTempatLahir,
      'm_kary.tgl_lahir': instance.mKaryTglLahir,
      'm_kary.provinsi_id': instance.mKaryProvinsiId,
      'm_kary.kota_id': instance.mKaryKotaId,
      'm_kary.kecamatan_id': instance.mKaryKecamatanId,
      'm_kary.kode_pos': instance.mKaryKodePos,
      'm_kary.alamat_asli': instance.mKaryAlamatAsli,
      'm_kary.alamat_domisili': instance.mKaryAlamatDomisili,
      'm_kary.no_tlp': instance.mKaryNoTlp,
      'm_kary.no_tlp_lainnya': instance.mKaryNoTlpLainnya,
      'm_kary.no_darurat': instance.mKaryNoDarurat,
      'm_kary.nama_kontak_darurat': instance.mKaryNamaKontakDarurat,
      'm_kary.agama_id': instance.mKaryAgamaId,
      'm_kary.gol_darah_id': instance.mKaryGolDarahId,
      'm_kary.status_nikah_id': instance.mKaryStatusNikahId,
      'm_kary.tanggungan_id': instance.mKaryTanggunganId,
      'm_kary.hub_dgn_karyawan': instance.mKaryHubDgnKaryawan,
      'm_kary.cuti_jatah_reguler': instance.mKaryCutiJatahReguler,
      'm_kary.cuti_sisa_reguler': instance.mKaryCutiSisaReguler,
      'm_kary.cuti_panjang': instance.mKaryCutiPanjang,
      'm_kary.cuti_sisa_panjang': instance.mKaryCutiSisaPanjang,
      'm_kary.status_kary_id': instance.mKaryStatusKaryId,
      'm_kary.lama_kontrak_awal': instance.mKaryLamaKontrakAwal,
      'm_kary.lama_kontrak_akhir': instance.mKaryLamaKontrakAkhir,
      'm_kary.tgl_masuk': instance.mKaryTglMasuk,
      'm_kary.tgl_berhenti': instance.mKaryTglBerhenti,
      'm_kary.alasan_berhenti': instance.mKaryAlasanBerhenti,
      'm_kary.uk_baju': instance.mKaryUkBaju,
      'm_kary.uk_celana': instance.mKaryUkCelana,
      'm_kary.uk_sepatu': instance.mKaryUkSepatu,
      'm_kary.desc': instance.mKaryDesc,
      'm_kary.is_active': instance.mKaryIsActive,
      'm_kary.creator_id': instance.mKaryCreatorId,
      'm_kary.last_editor_id': instance.mKaryLastEditorId,
      'm_kary.created_at': instance.mKaryCreatedAt,
      'm_kary.updated_at': instance.mKaryUpdatedAt,
      'm_kary.m_standart_gaji_id': instance.mKaryMStandartGajiId,
      'm_kary.periode_gaji_id': instance.mKaryPeriodeGajiId,
      'm_kary.ref_id': instance.mKaryRefId,
      'm_kary.atasan_id': instance.mKaryAtasanId,
      'm_kary.presensi_lokasi_default_id':
          instance.mKaryPresensiLokasiDefaultId,
      'm_kary.exp_date_cuti': instance.mKaryExpDateCuti,
      'm_kary.limit_potong': instance.mKaryLimitPotong,
      'atasan': instance.atasan,
      'default_users_socialite': instance.defaultUsersSocialite,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lembur_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LemburModelImpl _$$LemburModelImplFromJson(Map<String, dynamic> json) =>
    _$LemburModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataLembur.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      currentPage: json['current_page'] as int?,
      perPage: json['per_page'] as int?,
      from: json['from'] as int?,
      to: json['to'] as int?,
      lastPage: json['last_page'] as int?,
      hasNext: json['has_next'] as bool?,
      prev: json['prev'],
      next: json['next'],
      processedTime: (json['processed_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LemburModelImplToJson(_$LemburModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'from': instance.from,
      'to': instance.to,
      'last_page': instance.lastPage,
      'has_next': instance.hasNext,
      'prev': instance.prev,
      'next': instance.next,
      'processed_time': instance.processedTime,
    };

_$DataLemburImpl _$$DataLemburImplFromJson(Map<String, dynamic> json) =>
    _$DataLemburImpl(
      metaRead: json['meta_read'] as bool?,
      metaDelete: json['meta_delete'] as bool?,
      metaUpdate: json['meta_update'] as bool?,
      metaCreate: json['meta_create'] as bool?,
      id: json['id'] as int?,
      nomor: json['nomor'] as String?,
      datumMCompId: json['m_comp_id'] as int?,
      datumMDirId: json['m_dir_id'] as int?,
      datumMKaryId: json['m_kary_id'] as int?,
      tanggal: json['tanggal'] as String?,
      jamMulai: json['jam_mulai'] as String?,
      jamSelesai: json['jam_selesai'] as String?,
      datumTipeLemburId: json['tipe_lembur_id'] as int?,
      intervalMin: json['interval_min'] as int?,
      datumAlasanId: json['alasan_id'] as int?,
      noDoc: json['no_doc'] as String?,
      doc: json['doc'] as String?,
      keterangan: json['keterangan'],
      status: json['status'] as String?,
      datumCreatorId: json['creator_id'],
      datumLastEditorId: json['last_editor_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      mCompId: json['m_comp.id'] as int?,
      mCompNama: json['m_comp.nama'] as String?,
      mCompIsActive: json['m_comp.is_active'] as bool?,
      mCompDesc: json['m_comp.desc'],
      mCompCreatorId: json['m_comp.creator_id'],
      mCompLastEditorId: json['m_comp.last_editor_id'],
      mCompCreatedAt: json['m_comp.created_at'],
      mCompUpdatedAt: json['m_comp.updated_at'],
      mDirId: json['m_dir.id'] as int?,
      mDirMCompId: json['m_dir.m_comp_id'] as int?,
      mDirNama: json['m_dir.nama'] as String?,
      mDirDesc: json['m_dir.desc'],
      mDirIsActive: json['m_dir.is_active'] as bool?,
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
      mKaryNoTlpLainnya: json['m_kary.no_tlp_lainnya'],
      mKaryNoDarurat: json['m_kary.no_darurat'] as String?,
      mKaryNamaKontakDarurat: json['m_kary.nama_kontak_darurat'] as String?,
      mKaryAgamaId: json['m_kary.agama_id'] as int?,
      mKaryGolDarahId: json['m_kary.gol_darah_id'] as int?,
      mKaryStatusNikahId: json['m_kary.status_nikah_id'] as int?,
      mKaryJmlTanggungan: json['m_kary.jml_tanggungan'],
      mKaryHubDgnKaryawan: json['m_kary.hub_dgn_karyawan'] as String?,
      mKaryCutiJatahReguler: json['m_kary.cuti_jatah_reguler'] as int?,
      mKaryCutiSisaReguler: json['m_kary.cuti_sisa_reguler'] as int?,
      mKaryCutiPanjang: json['m_kary.cuti_panjang'] as int?,
      mKaryCutiSisaPanjang: json['m_kary.cuti_sisa_panjang'] as int?,
      mKaryStatusKaryId: json['m_kary.status_kary_id'],
      mKaryLamaKontrakAwal: json['m_kary.lama_kontrak_awal'],
      mKaryLamaKontrakAkhir: json['m_kary.lama_kontrak_akhir'],
      mKaryTglMasuk: json['m_kary.tgl_masuk'],
      mKaryTglBerhenti: json['m_kary.tgl_berhenti'],
      mKaryAlasanBerhenti: json['m_kary.alasan_berhenti'],
      mKaryUkBaju: json['m_kary.uk_baju'] as String?,
      mKaryUkCelana: json['m_kary.uk_celana'] as String?,
      mKaryUkSepatu: json['m_kary.uk_sepatu'] as String?,
      mKaryDesc: json['m_kary.desc'],
      mKaryIsActive: json['m_kary.is_active'] as bool?,
      mKaryCreatorId: json['m_kary.creator_id'],
      mKaryLastEditorId: json['m_kary.last_editor_id'],
      mKaryCreatedAt: json['m_kary.created_at'] as String?,
      mKaryUpdatedAt: json['m_kary.updated_at'] as String?,
      tipeLemburId: json['tipe_lembur.id'] as int?,
      tipeLemburMCompId: json['tipe_lembur.m_comp_id'] as int?,
      tipeLemburMDirId: json['tipe_lembur.m_dir_id'],
      tipeLemburGroup: json['tipe_lembur.group'] as String?,
      tipeLemburKey: json['tipe_lembur.key'] as String?,
      tipeLemburCode: json['tipe_lembur.code'] as String?,
      tipeLemburValue: json['tipe_lembur.value'] as String?,
      tipeLemburIsActive: json['tipe_lembur.is_active'] as bool?,
      tipeLemburCreatorId: json['tipe_lembur.creator_id'],
      tipeLemburLastEditorId: json['tipe_lembur.last_editor_id'],
      tipeLemburCreatedAt: json['tipe_lembur.created_at'] as String?,
      tipeLemburUpdatedAt: json['tipe_lembur.updated_at'] as String?,
      alasanId: json['alasan.id'] as int?,
      alasanMCompId: json['alasan.m_comp_id'] as int?,
      alasanMDirId: json['alasan.m_dir_id'],
      alasanGroup: json['alasan.group'] as String?,
      alasanKey: json['alasan.key'] as String?,
      alasanCode: json['alasan.code'] as String?,
      alasanValue: json['alasan.value'] as String?,
      alasanIsActive: json['alasan.is_active'] as bool?,
      alasanCreatorId: json['alasan.creator_id'],
      alasanLastEditorId: json['alasan.last_editor_id'],
      alasanCreatedAt: json['alasan.created_at'] as String?,
      alasanUpdatedAt: json['alasan.updated_at'] as String?,
      creatorId: json['creator.id'],
      creatorName: json['creator.name'],
      creatorEmail: json['creator.email'],
      creatorUsername: json['creator.username'],
      creatorEmailVerifiedAt: json['creator.email_verified_at'],
      creatorPassword: json['creator.password'],
      creatorMCompId: json['creator.m_comp_id'],
      creatorMDirId: json['creator.m_dir_id'],
      creatorIsActive: json['creator.is_active'],
      creatorCreatorId: json['creator.creator_id'],
      creatorLastEditorId: json['creator.last_editor_id'],
      creatorRememberToken: json['creator.remember_token'],
      creatorCreatedAt: json['creator.created_at'],
      creatorUpdatedAt: json['creator.updated_at'],
      creatorProfilImage: json['creator.profil_image'],
      creatorTelp: json['creator.telp'],
      creatorMKaryId: json['creator.m_kary_id'],
      lastEditorId: json['last_editor.id'],
      lastEditorName: json['last_editor.name'],
      lastEditorEmail: json['last_editor.email'],
      lastEditorUsername: json['last_editor.username'],
      lastEditorEmailVerifiedAt: json['last_editor.email_verified_at'],
      lastEditorPassword: json['last_editor.password'],
      lastEditorMCompId: json['last_editor.m_comp_id'],
      lastEditorMDirId: json['last_editor.m_dir_id'],
      lastEditorIsActive: json['last_editor.is_active'],
      lastEditorCreatorId: json['last_editor.creator_id'],
      lastEditorLastEditorId: json['last_editor.last_editor_id'],
      lastEditorRememberToken: json['last_editor.remember_token'],
      lastEditorCreatedAt: json['last_editor.created_at'],
      lastEditorUpdatedAt: json['last_editor.updated_at'],
      lastEditorProfilImage: json['last_editor.profil_image'],
      lastEditorTelp: json['last_editor.telp'],
      lastEditorMKaryId: json['last_editor.m_kary_id'],
    );

Map<String, dynamic> _$$DataLemburImplToJson(_$DataLemburImpl instance) =>
    <String, dynamic>{
      'meta_read': instance.metaRead,
      'meta_delete': instance.metaDelete,
      'meta_update': instance.metaUpdate,
      'meta_create': instance.metaCreate,
      'id': instance.id,
      'nomor': instance.nomor,
      'm_comp_id': instance.datumMCompId,
      'm_dir_id': instance.datumMDirId,
      'm_kary_id': instance.datumMKaryId,
      'tanggal': instance.tanggal,
      'jam_mulai': instance.jamMulai,
      'jam_selesai': instance.jamSelesai,
      'tipe_lembur_id': instance.datumTipeLemburId,
      'interval_min': instance.intervalMin,
      'alasan_id': instance.datumAlasanId,
      'no_doc': instance.noDoc,
      'doc': instance.doc,
      'keterangan': instance.keterangan,
      'status': instance.status,
      'creator_id': instance.datumCreatorId,
      'last_editor_id': instance.datumLastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
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
      'm_kary.jml_tanggungan': instance.mKaryJmlTanggungan,
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
      'tipe_lembur.id': instance.tipeLemburId,
      'tipe_lembur.m_comp_id': instance.tipeLemburMCompId,
      'tipe_lembur.m_dir_id': instance.tipeLemburMDirId,
      'tipe_lembur.group': instance.tipeLemburGroup,
      'tipe_lembur.key': instance.tipeLemburKey,
      'tipe_lembur.code': instance.tipeLemburCode,
      'tipe_lembur.value': instance.tipeLemburValue,
      'tipe_lembur.is_active': instance.tipeLemburIsActive,
      'tipe_lembur.creator_id': instance.tipeLemburCreatorId,
      'tipe_lembur.last_editor_id': instance.tipeLemburLastEditorId,
      'tipe_lembur.created_at': instance.tipeLemburCreatedAt,
      'tipe_lembur.updated_at': instance.tipeLemburUpdatedAt,
      'alasan.id': instance.alasanId,
      'alasan.m_comp_id': instance.alasanMCompId,
      'alasan.m_dir_id': instance.alasanMDirId,
      'alasan.group': instance.alasanGroup,
      'alasan.key': instance.alasanKey,
      'alasan.code': instance.alasanCode,
      'alasan.value': instance.alasanValue,
      'alasan.is_active': instance.alasanIsActive,
      'alasan.creator_id': instance.alasanCreatorId,
      'alasan.last_editor_id': instance.alasanLastEditorId,
      'alasan.created_at': instance.alasanCreatedAt,
      'alasan.updated_at': instance.alasanUpdatedAt,
      'creator.id': instance.creatorId,
      'creator.name': instance.creatorName,
      'creator.email': instance.creatorEmail,
      'creator.username': instance.creatorUsername,
      'creator.email_verified_at': instance.creatorEmailVerifiedAt,
      'creator.password': instance.creatorPassword,
      'creator.m_comp_id': instance.creatorMCompId,
      'creator.m_dir_id': instance.creatorMDirId,
      'creator.is_active': instance.creatorIsActive,
      'creator.creator_id': instance.creatorCreatorId,
      'creator.last_editor_id': instance.creatorLastEditorId,
      'creator.remember_token': instance.creatorRememberToken,
      'creator.created_at': instance.creatorCreatedAt,
      'creator.updated_at': instance.creatorUpdatedAt,
      'creator.profil_image': instance.creatorProfilImage,
      'creator.telp': instance.creatorTelp,
      'creator.m_kary_id': instance.creatorMKaryId,
      'last_editor.id': instance.lastEditorId,
      'last_editor.name': instance.lastEditorName,
      'last_editor.email': instance.lastEditorEmail,
      'last_editor.username': instance.lastEditorUsername,
      'last_editor.email_verified_at': instance.lastEditorEmailVerifiedAt,
      'last_editor.password': instance.lastEditorPassword,
      'last_editor.m_comp_id': instance.lastEditorMCompId,
      'last_editor.m_dir_id': instance.lastEditorMDirId,
      'last_editor.is_active': instance.lastEditorIsActive,
      'last_editor.creator_id': instance.lastEditorCreatorId,
      'last_editor.last_editor_id': instance.lastEditorLastEditorId,
      'last_editor.remember_token': instance.lastEditorRememberToken,
      'last_editor.created_at': instance.lastEditorCreatedAt,
      'last_editor.updated_at': instance.lastEditorUpdatedAt,
      'last_editor.profil_image': instance.lastEditorProfilImage,
      'last_editor.telp': instance.lastEditorTelp,
      'last_editor.m_kary_id': instance.lastEditorMKaryId,
    };

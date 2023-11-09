// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_cuti_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListCutiModelImpl _$$ListCutiModelImplFromJson(Map<String, dynamic> json) =>
    _$ListCutiModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$ListCutiModelImplToJson(_$ListCutiModelImpl instance) =>
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

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      metaRead: json['meta_read'] as bool?,
      metaDelete: json['meta_delete'] as bool?,
      metaUpdate: json['meta_update'] as bool?,
      metaCreate: json['meta_create'] as bool?,
      id: json['id'] as int?,
      nomor: json['nomor'] as String?,
      datumMCompId: json['m_comp_id'] as int?,
      datumMDirId: json['m_dir_id'] as int?,
      datumMKaryId: json['m_kary_id'],
      datumAlasanId: json['alasan_id'] as int?,
      datumTipeCutiId: json['tipe_cuti_id'] as int?,
      dateFrom: json['date_from'] as String?,
      dateTo: json['date_to'] as String?,
      timeFrom: json['time_from'] as String?,
      timeTo: json['time_to'] as String?,
      keterangan: json['keterangan'] as String?,
      status: json['status'] as String?,
      datumCreatorId: json['creator_id'] as int?,
      datumLastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
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
      mKaryId: json['m_kary.id'],
      mKaryMCompId: json['m_kary.m_comp_id'],
      mKaryMDirId: json['m_kary.m_dir_id'],
      mKaryMDivisiId: json['m_kary.m_divisi_id'],
      mKaryMDeptId: json['m_kary.m_dept_id'],
      mKaryMZonaId: json['m_kary.m_zona_id'],
      mKaryGradingId: json['m_kary.grading_id'],
      mKaryCostcontreId: json['m_kary.costcontre_id'],
      mKaryKode: json['m_kary.kode'],
      mKaryMPosisiId: json['m_kary.m_posisi_id'],
      mKaryMJamKerjaId: json['m_kary.m_jam_kerja_id'],
      mKaryKodePresensi: json['m_kary.kode_presensi'],
      mKaryNik: json['m_kary.nik'],
      mKaryNamaDepan: json['m_kary.nama_depan'],
      mKaryNamaBelakang: json['m_kary.nama_belakang'],
      mKaryNamaLengkap: json['m_kary.nama_lengkap'],
      mKaryNamaPanggilan: json['m_kary.nama_panggilan'],
      mKaryJkId: json['m_kary.jk_id'],
      mKaryTempatLahir: json['m_kary.tempat_lahir'],
      mKaryTglLahir: json['m_kary.tgl_lahir'],
      mKaryProvinsiId: json['m_kary.provinsi_id'],
      mKaryKotaId: json['m_kary.kota_id'],
      mKaryKecamatanId: json['m_kary.kecamatan_id'],
      mKaryKodePos: json['m_kary.kode_pos'],
      mKaryAlamatAsli: json['m_kary.alamat_asli'],
      mKaryAlamatDomisili: json['m_kary.alamat_domisili'],
      mKaryNoTlp: json['m_kary.no_tlp'],
      mKaryNoTlpLainnya: json['m_kary.no_tlp_lainnya'],
      mKaryNoDarurat: json['m_kary.no_darurat'],
      mKaryNamaKontakDarurat: json['m_kary.nama_kontak_darurat'],
      mKaryAgamaId: json['m_kary.agama_id'],
      mKaryGolDarahId: json['m_kary.gol_darah_id'],
      mKaryStatusNikahId: json['m_kary.status_nikah_id'],
      mKaryJmlTanggungan: json['m_kary.jml_tanggungan'],
      mKaryHubDgnKaryawan: json['m_kary.hub_dgn_karyawan'],
      mKaryCutiJatahReguler: json['m_kary.cuti_jatah_reguler'],
      mKaryCutiSisaReguler: json['m_kary.cuti_sisa_reguler'],
      mKaryCutiPanjang: json['m_kary.cuti_panjang'],
      mKaryCutiSisaPanjang: json['m_kary.cuti_sisa_panjang'],
      mKaryStatusKaryId: json['m_kary.status_kary_id'],
      mKaryLamaKontrakAwal: json['m_kary.lama_kontrak_awal'],
      mKaryLamaKontrakAkhir: json['m_kary.lama_kontrak_akhir'],
      mKaryTglMasuk: json['m_kary.tgl_masuk'],
      mKaryTglBerhenti: json['m_kary.tgl_berhenti'],
      mKaryAlasanBerhenti: json['m_kary.alasan_berhenti'],
      mKaryUkBaju: json['m_kary.uk_baju'],
      mKaryUkCelana: json['m_kary.uk_celana'],
      mKaryUkSepatu: json['m_kary.uk_sepatu'],
      mKaryDesc: json['m_kary.desc'],
      mKaryIsActive: json['m_kary.is_active'],
      mKaryCreatorId: json['m_kary.creator_id'],
      mKaryLastEditorId: json['m_kary.last_editor_id'],
      mKaryCreatedAt: json['m_kary.created_at'],
      mKaryUpdatedAt: json['m_kary.updated_at'],
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
      tipeCutiId: json['tipe_cuti.id'] as int?,
      tipeCutiMCompId: json['tipe_cuti.m_comp_id'] as int?,
      tipeCutiMDirId: json['tipe_cuti.m_dir_id'],
      tipeCutiGroup: json['tipe_cuti.group'] as String?,
      tipeCutiKey: json['tipe_cuti.key'] as String?,
      tipeCutiCode: json['tipe_cuti.code'] as String?,
      tipeCutiValue: json['tipe_cuti.value'] as String?,
      tipeCutiIsActive: json['tipe_cuti.is_active'] as bool?,
      tipeCutiCreatorId: json['tipe_cuti.creator_id'],
      tipeCutiLastEditorId: json['tipe_cuti.last_editor_id'],
      tipeCutiCreatedAt: json['tipe_cuti.created_at'] as String?,
      tipeCutiUpdatedAt: json['tipe_cuti.updated_at'] as String?,
      creatorId: json['creator.id'] as int?,
      creatorName: json['creator.name'] as String?,
      creatorEmail: json['creator.email'] as String?,
      creatorUsername: json['creator.username'] as String?,
      creatorEmailVerifiedAt: json['creator.email_verified_at'],
      creatorPassword: json['creator.password'] as String?,
      creatorMCompId: json['creator.m_comp_id'] as int?,
      creatorMDirId: json['creator.m_dir_id'] as int?,
      creatorIsActive: json['creator.is_active'] as bool?,
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

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
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
      'alasan_id': instance.datumAlasanId,
      'tipe_cuti_id': instance.datumTipeCutiId,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'time_from': instance.timeFrom,
      'time_to': instance.timeTo,
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
      'tipe_cuti.id': instance.tipeCutiId,
      'tipe_cuti.m_comp_id': instance.tipeCutiMCompId,
      'tipe_cuti.m_dir_id': instance.tipeCutiMDirId,
      'tipe_cuti.group': instance.tipeCutiGroup,
      'tipe_cuti.key': instance.tipeCutiKey,
      'tipe_cuti.code': instance.tipeCutiCode,
      'tipe_cuti.value': instance.tipeCutiValue,
      'tipe_cuti.is_active': instance.tipeCutiIsActive,
      'tipe_cuti.creator_id': instance.tipeCutiCreatorId,
      'tipe_cuti.last_editor_id': instance.tipeCutiLastEditorId,
      'tipe_cuti.created_at': instance.tipeCutiCreatedAt,
      'tipe_cuti.updated_at': instance.tipeCutiUpdatedAt,
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

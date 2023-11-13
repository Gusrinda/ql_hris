// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_dinas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListDinasModelImpl _$$ListDinasModelImplFromJson(Map<String, dynamic> json) =>
    _$ListDinasModelImpl(
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

Map<String, dynamic> _$$ListDinasModelImplToJson(
        _$ListDinasModelImpl instance) =>
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
      datumMSpdId: json['m_spd_id'] as int?,
      datumMDirId: json['m_dir_id'] as int?,
      datumMDivisiId: json['m_divisi_id'] as int?,
      datumMDeptId: json['m_dept_id'] as int?,
      datumMPosisiId: json['m_posisi_id'] as int?,
      tanggal: json['tanggal'] as String?,
      tglAcaraAwal: json['tgl_acara_awal'] as String?,
      tglAcaraAkhir: json['tgl_acara_akhir'] as String?,
      datumJenisSpdId: json['jenis_spd_id'] as int?,
      datumMZonaAsalId: json['m_zona_asal_id'] as int?,
      datumMZonaTujuanId: json['m_zona_tujuan_id'] as int?,
      datumMLokasiTujuanId: json['m_lokasi_tujuan_id'] as int?,
      datumMKaryId: json['m_kary_id'],
      datumPicId: json['pic_id'] as int?,
      totalBiaya: json['total_biaya'] as int?,
      kegiatan: json['kegiatan'] as String?,
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
      mSpdId: json['m_spd.id'] as int?,
      mSpdMCompId: json['m_spd.m_comp_id'] as int?,
      mSpdMDirId: json['m_spd.m_dir_id'] as int?,
      mSpdKode: json['m_spd.kode'] as String?,
      mSpdMDivisiId: json['m_spd.m_divisi_id'] as int?,
      mSpdMPosisiId: json['m_spd.m_posisi_id'] as int?,
      mSpdMDeptId: json['m_spd.m_dept_id'] as int?,
      mSpdMZonaId: json['m_spd.m_zona_id'] as int?,
      mSpdGradingId: json['m_spd.grading_id'],
      mSpdGrading: json['m_spd.grading'],
      mSpdDesc: json['m_spd.desc'] as String?,
      mSpdIsActive: json['m_spd.is_active'] as bool?,
      mSpdCreatorId: json['m_spd.creator_id'],
      mSpdLastEditorId: json['m_spd.last_editor_id'],
      mSpdCreatedAt: json['m_spd.created_at'] as String?,
      mSpdUpdatedAt: json['m_spd.updated_at'] as String?,
      mDirId: json['m_dir.id'] as int?,
      mDirMCompId: json['m_dir.m_comp_id'] as int?,
      mDirNama: json['m_dir.nama'] as String?,
      mDirDesc: json['m_dir.desc'],
      mDirIsActive: json['m_dir.is_active'] as bool?,
      mDirCreatorId: json['m_dir.creator_id'],
      mDirLastEditorId: json['m_dir.last_editor_id'],
      mDirCreatedAt: json['m_dir.created_at'],
      mDirUpdatedAt: json['m_dir.updated_at'],
      mDivisiId: json['m_divisi.id'] as int?,
      mDivisiMCompId: json['m_divisi.m_comp_id'] as int?,
      mDivisiMDirId: json['m_divisi.m_dir_id'] as int?,
      mDivisiNama: json['m_divisi.nama'] as String?,
      mDivisiDesc: json['m_divisi.desc'],
      mDivisiIsActive: json['m_divisi.is_active'] as bool?,
      mDivisiCreatorId: json['m_divisi.creator_id'] as int?,
      mDivisiLastEditorId: json['m_divisi.last_editor_id'],
      mDivisiCreatedAt: json['m_divisi.created_at'] as String?,
      mDivisiUpdatedAt: json['m_divisi.updated_at'] as String?,
      mDeptId: json['m_dept.id'] as int?,
      mDeptMDirId: json['m_dept.m_dir_id'] as int?,
      mDeptMDivisiId: json['m_dept.m_divisi_id'] as int?,
      mDeptNama: json['m_dept.nama'] as String?,
      mDeptDesc: json['m_dept.desc'] as String?,
      mDeptIsActive: json['m_dept.is_active'] as bool?,
      mDeptCreatorId: json['m_dept.creator_id'],
      mDeptLastEditorId: json['m_dept.last_editor_id'],
      mDeptCreatedAt: json['m_dept.created_at'] as String?,
      mDeptUpdatedAt: json['m_dept.updated_at'] as String?,
      mPosisiId: json['m_posisi.id'] as int?,
      mPosisiMCompId: json['m_posisi.m_comp_id'] as int?,
      mPosisiMDirId: json['m_posisi.m_dir_id'] as int?,
      mPosisiKode: json['m_posisi.kode'] as String?,
      mPosisiDescKerja: json['m_posisi.desc_kerja'] as String?,
      mPosisiDescKerja1: json['m_posisi.desc_kerja_1'] as String?,
      mPosisiDescKerja2: json['m_posisi.desc_kerja_2'] as String?,
      mPosisiMinPengalaman: json['m_posisi.min_pengalaman'] as String?,
      mPosisiMinPendidikanId: json['m_posisi.min_pendidikan_id'] as int?,
      mPosisiMinGajiPokok: json['m_posisi.min_gaji_pokok'] as String?,
      mPosisiMaxGajiPokok: json['m_posisi.max_gaji_pokok'] as String?,
      mPosisiBiaya: json['m_posisi.biaya'],
      mPosisiTipeBpjsId: json['m_posisi.tipe_bpjs_id'] as int?,
      mPosisiPotonganBpjs: json['m_posisi.potongan_bpjs'] as String?,
      mPosisiDesc: json['m_posisi.desc'] as String?,
      mPosisiIsActive: json['m_posisi.is_active'] as bool?,
      mPosisiCreatorId: json['m_posisi.creator_id'],
      mPosisiLastEditorId: json['m_posisi.last_editor_id'],
      mPosisiCreatedAt: json['m_posisi.created_at'] as String?,
      mPosisiUpdatedAt: json['m_posisi.updated_at'] as String?,
      jenisSpdId: json['jenis_spd.id'] as int?,
      jenisSpdMCompId: json['jenis_spd.m_comp_id'] as int?,
      jenisSpdMDirId: json['jenis_spd.m_dir_id'],
      jenisSpdGroup: json['jenis_spd.group'] as String?,
      jenisSpdKey: json['jenis_spd.key'] as String?,
      jenisSpdCode: json['jenis_spd.code'] as String?,
      jenisSpdValue: json['jenis_spd.value'] as String?,
      jenisSpdIsActive: json['jenis_spd.is_active'] as bool?,
      jenisSpdCreatorId: json['jenis_spd.creator_id'],
      jenisSpdLastEditorId: json['jenis_spd.last_editor_id'],
      jenisSpdCreatedAt: json['jenis_spd.created_at'] as String?,
      jenisSpdUpdatedAt: json['jenis_spd.updated_at'] as String?,
      mZonaAsalId: json['m_zona_asal.id'] as int?,
      mZonaAsalMCompId: json['m_zona_asal.m_comp_id'] as int?,
      mZonaAsalMDirId: json['m_zona_asal.m_dir_id'] as int?,
      mZonaAsalMTunjKemahalanId:
          json['m_zona_asal.m_tunj_kemahalan_id'] as int?,
      mZonaAsalKode: json['m_zona_asal.kode'] as String?,
      mZonaAsalNama: json['m_zona_asal.nama'] as String?,
      mZonaAsalDesc: json['m_zona_asal.desc'] as String?,
      mZonaAsalIsActive: json['m_zona_asal.is_active'] as bool?,
      mZonaAsalCreatorId: json['m_zona_asal.creator_id'],
      mZonaAsalLastEditorId: json['m_zona_asal.last_editor_id'],
      mZonaAsalCreatedAt: json['m_zona_asal.created_at'] as String?,
      mZonaAsalUpdatedAt: json['m_zona_asal.updated_at'] as String?,
      mZonaTujuanId: json['m_zona_tujuan.id'] as int?,
      mZonaTujuanMCompId: json['m_zona_tujuan.m_comp_id'] as int?,
      mZonaTujuanMDirId: json['m_zona_tujuan.m_dir_id'] as int?,
      mZonaTujuanMTunjKemahalanId:
          json['m_zona_tujuan.m_tunj_kemahalan_id'] as int?,
      mZonaTujuanKode: json['m_zona_tujuan.kode'] as String?,
      mZonaTujuanNama: json['m_zona_tujuan.nama'] as String?,
      mZonaTujuanDesc: json['m_zona_tujuan.desc'] as String?,
      mZonaTujuanIsActive: json['m_zona_tujuan.is_active'] as bool?,
      mZonaTujuanCreatorId: json['m_zona_tujuan.creator_id'],
      mZonaTujuanLastEditorId: json['m_zona_tujuan.last_editor_id'],
      mZonaTujuanCreatedAt: json['m_zona_tujuan.created_at'] as String?,
      mZonaTujuanUpdatedAt: json['m_zona_tujuan.updated_at'] as String?,
      mLokasiTujuanId: json['m_lokasi_tujuan.id'] as int?,
      mLokasiTujuanMCompId: json['m_lokasi_tujuan.m_comp_id'] as int?,
      mLokasiTujuanMDirId: json['m_lokasi_tujuan.m_dir_id'] as int?,
      mLokasiTujuanKode: json['m_lokasi_tujuan.kode'] as String?,
      mLokasiTujuanNama: json['m_lokasi_tujuan.nama'] as String?,
      mLokasiTujuanDesc: json['m_lokasi_tujuan.desc'] as String?,
      mLokasiTujuanIsActive: json['m_lokasi_tujuan.is_active'] as bool?,
      mLokasiTujuanCreatorId: json['m_lokasi_tujuan.creator_id'],
      mLokasiTujuanLastEditorId: json['m_lokasi_tujuan.last_editor_id'],
      mLokasiTujuanCreatedAt: json['m_lokasi_tujuan.created_at'] as String?,
      mLokasiTujuanUpdatedAt: json['m_lokasi_tujuan.updated_at'] as String?,
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
      picId: json['pic.id'] as int?,
      picMCompId: json['pic.m_comp_id'] as int?,
      picMDirId: json['pic.m_dir_id'] as int?,
      picMDivisiId: json['pic.m_divisi_id'] as int?,
      picMDeptId: json['pic.m_dept_id'] as int?,
      picMZonaId: json['pic.m_zona_id'] as int?,
      picGradingId: json['pic.grading_id'],
      picCostcontreId: json['pic.costcontre_id'] as int?,
      picKode: json['pic.kode'] as String?,
      picMPosisiId: json['pic.m_posisi_id'] as int?,
      picMJamKerjaId: json['pic.m_jam_kerja_id'] as int?,
      picKodePresensi: json['pic.kode_presensi'] as String?,
      picNik: json['pic.nik'] as String?,
      picNamaDepan: json['pic.nama_depan'] as String?,
      picNamaBelakang: json['pic.nama_belakang'] as String?,
      picNamaLengkap: json['pic.nama_lengkap'] as String?,
      picNamaPanggilan: json['pic.nama_panggilan'] as String?,
      picJkId: json['pic.jk_id'] as int?,
      picTempatLahir: json['pic.tempat_lahir'] as String?,
      picTglLahir: json['pic.tgl_lahir'] as String?,
      picProvinsiId: json['pic.provinsi_id'] as int?,
      picKotaId: json['pic.kota_id'] as int?,
      picKecamatanId: json['pic.kecamatan_id'] as int?,
      picKodePos: json['pic.kode_pos'] as String?,
      picAlamatAsli: json['pic.alamat_asli'] as String?,
      picAlamatDomisili: json['pic.alamat_domisili'] as String?,
      picNoTlp: json['pic.no_tlp'] as String?,
      picNoTlpLainnya: json['pic.no_tlp_lainnya'],
      picNoDarurat: json['pic.no_darurat'] as String?,
      picNamaKontakDarurat: json['pic.nama_kontak_darurat'] as String?,
      picAgamaId: json['pic.agama_id'] as int?,
      picGolDarahId: json['pic.gol_darah_id'] as int?,
      picStatusNikahId: json['pic.status_nikah_id'] as int?,
      picJmlTanggungan: json['pic.jml_tanggungan'],
      picHubDgnKaryawan: json['pic.hub_dgn_karyawan'] as String?,
      picCutiJatahReguler: json['pic.cuti_jatah_reguler'] as int?,
      picCutiSisaReguler: json['pic.cuti_sisa_reguler'] as int?,
      picCutiPanjang: json['pic.cuti_panjang'] as int?,
      picCutiSisaPanjang: json['pic.cuti_sisa_panjang'] as int?,
      picStatusKaryId: json['pic.status_kary_id'],
      picLamaKontrakAwal: json['pic.lama_kontrak_awal'],
      picLamaKontrakAkhir: json['pic.lama_kontrak_akhir'],
      picTglMasuk: json['pic.tgl_masuk'],
      picTglBerhenti: json['pic.tgl_berhenti'],
      picAlasanBerhenti: json['pic.alasan_berhenti'],
      picUkBaju: json['pic.uk_baju'] as String?,
      picUkCelana: json['pic.uk_celana'] as String?,
      picUkSepatu: json['pic.uk_sepatu'] as String?,
      picDesc: json['pic.desc'],
      picIsActive: json['pic.is_active'] as bool?,
      picCreatorId: json['pic.creator_id'],
      picLastEditorId: json['pic.last_editor_id'],
      picCreatedAt: json['pic.created_at'] as String?,
      picUpdatedAt: json['pic.updated_at'] as String?,
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
      'm_spd_id': instance.datumMSpdId,
      'm_dir_id': instance.datumMDirId,
      'm_divisi_id': instance.datumMDivisiId,
      'm_dept_id': instance.datumMDeptId,
      'm_posisi_id': instance.datumMPosisiId,
      'tanggal': instance.tanggal,
      'tgl_acara_awal': instance.tglAcaraAwal,
      'tgl_acara_akhir': instance.tglAcaraAkhir,
      'jenis_spd_id': instance.datumJenisSpdId,
      'm_zona_asal_id': instance.datumMZonaAsalId,
      'm_zona_tujuan_id': instance.datumMZonaTujuanId,
      'm_lokasi_tujuan_id': instance.datumMLokasiTujuanId,
      'm_kary_id': instance.datumMKaryId,
      'pic_id': instance.datumPicId,
      'total_biaya': instance.totalBiaya,
      'kegiatan': instance.kegiatan,
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
      'm_spd.id': instance.mSpdId,
      'm_spd.m_comp_id': instance.mSpdMCompId,
      'm_spd.m_dir_id': instance.mSpdMDirId,
      'm_spd.kode': instance.mSpdKode,
      'm_spd.m_divisi_id': instance.mSpdMDivisiId,
      'm_spd.m_posisi_id': instance.mSpdMPosisiId,
      'm_spd.m_dept_id': instance.mSpdMDeptId,
      'm_spd.m_zona_id': instance.mSpdMZonaId,
      'm_spd.grading_id': instance.mSpdGradingId,
      'm_spd.grading': instance.mSpdGrading,
      'm_spd.desc': instance.mSpdDesc,
      'm_spd.is_active': instance.mSpdIsActive,
      'm_spd.creator_id': instance.mSpdCreatorId,
      'm_spd.last_editor_id': instance.mSpdLastEditorId,
      'm_spd.created_at': instance.mSpdCreatedAt,
      'm_spd.updated_at': instance.mSpdUpdatedAt,
      'm_dir.id': instance.mDirId,
      'm_dir.m_comp_id': instance.mDirMCompId,
      'm_dir.nama': instance.mDirNama,
      'm_dir.desc': instance.mDirDesc,
      'm_dir.is_active': instance.mDirIsActive,
      'm_dir.creator_id': instance.mDirCreatorId,
      'm_dir.last_editor_id': instance.mDirLastEditorId,
      'm_dir.created_at': instance.mDirCreatedAt,
      'm_dir.updated_at': instance.mDirUpdatedAt,
      'm_divisi.id': instance.mDivisiId,
      'm_divisi.m_comp_id': instance.mDivisiMCompId,
      'm_divisi.m_dir_id': instance.mDivisiMDirId,
      'm_divisi.nama': instance.mDivisiNama,
      'm_divisi.desc': instance.mDivisiDesc,
      'm_divisi.is_active': instance.mDivisiIsActive,
      'm_divisi.creator_id': instance.mDivisiCreatorId,
      'm_divisi.last_editor_id': instance.mDivisiLastEditorId,
      'm_divisi.created_at': instance.mDivisiCreatedAt,
      'm_divisi.updated_at': instance.mDivisiUpdatedAt,
      'm_dept.id': instance.mDeptId,
      'm_dept.m_dir_id': instance.mDeptMDirId,
      'm_dept.m_divisi_id': instance.mDeptMDivisiId,
      'm_dept.nama': instance.mDeptNama,
      'm_dept.desc': instance.mDeptDesc,
      'm_dept.is_active': instance.mDeptIsActive,
      'm_dept.creator_id': instance.mDeptCreatorId,
      'm_dept.last_editor_id': instance.mDeptLastEditorId,
      'm_dept.created_at': instance.mDeptCreatedAt,
      'm_dept.updated_at': instance.mDeptUpdatedAt,
      'm_posisi.id': instance.mPosisiId,
      'm_posisi.m_comp_id': instance.mPosisiMCompId,
      'm_posisi.m_dir_id': instance.mPosisiMDirId,
      'm_posisi.kode': instance.mPosisiKode,
      'm_posisi.desc_kerja': instance.mPosisiDescKerja,
      'm_posisi.desc_kerja_1': instance.mPosisiDescKerja1,
      'm_posisi.desc_kerja_2': instance.mPosisiDescKerja2,
      'm_posisi.min_pengalaman': instance.mPosisiMinPengalaman,
      'm_posisi.min_pendidikan_id': instance.mPosisiMinPendidikanId,
      'm_posisi.min_gaji_pokok': instance.mPosisiMinGajiPokok,
      'm_posisi.max_gaji_pokok': instance.mPosisiMaxGajiPokok,
      'm_posisi.biaya': instance.mPosisiBiaya,
      'm_posisi.tipe_bpjs_id': instance.mPosisiTipeBpjsId,
      'm_posisi.potongan_bpjs': instance.mPosisiPotonganBpjs,
      'm_posisi.desc': instance.mPosisiDesc,
      'm_posisi.is_active': instance.mPosisiIsActive,
      'm_posisi.creator_id': instance.mPosisiCreatorId,
      'm_posisi.last_editor_id': instance.mPosisiLastEditorId,
      'm_posisi.created_at': instance.mPosisiCreatedAt,
      'm_posisi.updated_at': instance.mPosisiUpdatedAt,
      'jenis_spd.id': instance.jenisSpdId,
      'jenis_spd.m_comp_id': instance.jenisSpdMCompId,
      'jenis_spd.m_dir_id': instance.jenisSpdMDirId,
      'jenis_spd.group': instance.jenisSpdGroup,
      'jenis_spd.key': instance.jenisSpdKey,
      'jenis_spd.code': instance.jenisSpdCode,
      'jenis_spd.value': instance.jenisSpdValue,
      'jenis_spd.is_active': instance.jenisSpdIsActive,
      'jenis_spd.creator_id': instance.jenisSpdCreatorId,
      'jenis_spd.last_editor_id': instance.jenisSpdLastEditorId,
      'jenis_spd.created_at': instance.jenisSpdCreatedAt,
      'jenis_spd.updated_at': instance.jenisSpdUpdatedAt,
      'm_zona_asal.id': instance.mZonaAsalId,
      'm_zona_asal.m_comp_id': instance.mZonaAsalMCompId,
      'm_zona_asal.m_dir_id': instance.mZonaAsalMDirId,
      'm_zona_asal.m_tunj_kemahalan_id': instance.mZonaAsalMTunjKemahalanId,
      'm_zona_asal.kode': instance.mZonaAsalKode,
      'm_zona_asal.nama': instance.mZonaAsalNama,
      'm_zona_asal.desc': instance.mZonaAsalDesc,
      'm_zona_asal.is_active': instance.mZonaAsalIsActive,
      'm_zona_asal.creator_id': instance.mZonaAsalCreatorId,
      'm_zona_asal.last_editor_id': instance.mZonaAsalLastEditorId,
      'm_zona_asal.created_at': instance.mZonaAsalCreatedAt,
      'm_zona_asal.updated_at': instance.mZonaAsalUpdatedAt,
      'm_zona_tujuan.id': instance.mZonaTujuanId,
      'm_zona_tujuan.m_comp_id': instance.mZonaTujuanMCompId,
      'm_zona_tujuan.m_dir_id': instance.mZonaTujuanMDirId,
      'm_zona_tujuan.m_tunj_kemahalan_id': instance.mZonaTujuanMTunjKemahalanId,
      'm_zona_tujuan.kode': instance.mZonaTujuanKode,
      'm_zona_tujuan.nama': instance.mZonaTujuanNama,
      'm_zona_tujuan.desc': instance.mZonaTujuanDesc,
      'm_zona_tujuan.is_active': instance.mZonaTujuanIsActive,
      'm_zona_tujuan.creator_id': instance.mZonaTujuanCreatorId,
      'm_zona_tujuan.last_editor_id': instance.mZonaTujuanLastEditorId,
      'm_zona_tujuan.created_at': instance.mZonaTujuanCreatedAt,
      'm_zona_tujuan.updated_at': instance.mZonaTujuanUpdatedAt,
      'm_lokasi_tujuan.id': instance.mLokasiTujuanId,
      'm_lokasi_tujuan.m_comp_id': instance.mLokasiTujuanMCompId,
      'm_lokasi_tujuan.m_dir_id': instance.mLokasiTujuanMDirId,
      'm_lokasi_tujuan.kode': instance.mLokasiTujuanKode,
      'm_lokasi_tujuan.nama': instance.mLokasiTujuanNama,
      'm_lokasi_tujuan.desc': instance.mLokasiTujuanDesc,
      'm_lokasi_tujuan.is_active': instance.mLokasiTujuanIsActive,
      'm_lokasi_tujuan.creator_id': instance.mLokasiTujuanCreatorId,
      'm_lokasi_tujuan.last_editor_id': instance.mLokasiTujuanLastEditorId,
      'm_lokasi_tujuan.created_at': instance.mLokasiTujuanCreatedAt,
      'm_lokasi_tujuan.updated_at': instance.mLokasiTujuanUpdatedAt,
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
      'pic.id': instance.picId,
      'pic.m_comp_id': instance.picMCompId,
      'pic.m_dir_id': instance.picMDirId,
      'pic.m_divisi_id': instance.picMDivisiId,
      'pic.m_dept_id': instance.picMDeptId,
      'pic.m_zona_id': instance.picMZonaId,
      'pic.grading_id': instance.picGradingId,
      'pic.costcontre_id': instance.picCostcontreId,
      'pic.kode': instance.picKode,
      'pic.m_posisi_id': instance.picMPosisiId,
      'pic.m_jam_kerja_id': instance.picMJamKerjaId,
      'pic.kode_presensi': instance.picKodePresensi,
      'pic.nik': instance.picNik,
      'pic.nama_depan': instance.picNamaDepan,
      'pic.nama_belakang': instance.picNamaBelakang,
      'pic.nama_lengkap': instance.picNamaLengkap,
      'pic.nama_panggilan': instance.picNamaPanggilan,
      'pic.jk_id': instance.picJkId,
      'pic.tempat_lahir': instance.picTempatLahir,
      'pic.tgl_lahir': instance.picTglLahir,
      'pic.provinsi_id': instance.picProvinsiId,
      'pic.kota_id': instance.picKotaId,
      'pic.kecamatan_id': instance.picKecamatanId,
      'pic.kode_pos': instance.picKodePos,
      'pic.alamat_asli': instance.picAlamatAsli,
      'pic.alamat_domisili': instance.picAlamatDomisili,
      'pic.no_tlp': instance.picNoTlp,
      'pic.no_tlp_lainnya': instance.picNoTlpLainnya,
      'pic.no_darurat': instance.picNoDarurat,
      'pic.nama_kontak_darurat': instance.picNamaKontakDarurat,
      'pic.agama_id': instance.picAgamaId,
      'pic.gol_darah_id': instance.picGolDarahId,
      'pic.status_nikah_id': instance.picStatusNikahId,
      'pic.jml_tanggungan': instance.picJmlTanggungan,
      'pic.hub_dgn_karyawan': instance.picHubDgnKaryawan,
      'pic.cuti_jatah_reguler': instance.picCutiJatahReguler,
      'pic.cuti_sisa_reguler': instance.picCutiSisaReguler,
      'pic.cuti_panjang': instance.picCutiPanjang,
      'pic.cuti_sisa_panjang': instance.picCutiSisaPanjang,
      'pic.status_kary_id': instance.picStatusKaryId,
      'pic.lama_kontrak_awal': instance.picLamaKontrakAwal,
      'pic.lama_kontrak_akhir': instance.picLamaKontrakAkhir,
      'pic.tgl_masuk': instance.picTglMasuk,
      'pic.tgl_berhenti': instance.picTglBerhenti,
      'pic.alasan_berhenti': instance.picAlasanBerhenti,
      'pic.uk_baju': instance.picUkBaju,
      'pic.uk_celana': instance.picUkCelana,
      'pic.uk_sepatu': instance.picUkSepatu,
      'pic.desc': instance.picDesc,
      'pic.is_active': instance.picIsActive,
      'pic.creator_id': instance.picCreatorId,
      'pic.last_editor_id': instance.picLastEditorId,
      'pic.created_at': instance.picCreatedAt,
      'pic.updated_at': instance.picUpdatedAt,
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
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_templatespd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTemplateSpdModelImpl _$$GetTemplateSpdModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTemplateSpdModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataTemplateSpd.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$GetTemplateSpdModelImplToJson(
        _$GetTemplateSpdModelImpl instance) =>
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

_$DataTemplateSpdImpl _$$DataTemplateSpdImplFromJson(
        Map<String, dynamic> json) =>
    _$DataTemplateSpdImpl(
      metaRead: json['meta_read'] as bool?,
      metaDelete: json['meta_delete'] as bool?,
      metaUpdate: json['meta_update'] as bool?,
      metaCreate: json['meta_create'] as bool?,
      id: json['id'] as int?,
      datumMCompId: json['m_comp_id'] as int?,
      datumMDirId: json['m_dir_id'] as int?,
      kode: json['kode'] as String?,
      datumMDivisiId: json['m_divisi_id'] as int?,
      datumMPosisiId: json['m_posisi_id'] as int?,
      datumMDeptId: json['m_dept_id'] as int?,
      datumMZonaId: json['m_zona_id'] as int?,
      datumGradingId: json['grading_id'],
      grading: json['grading'],
      desc: json['desc'] as String?,
      isActive: json['is_active'] as bool?,
      datumCreatorId: json['creator_id'],
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
      mDivisiId: json['m_divisi.id'] as int?,
      mDivisiMCompId: json['m_divisi.m_comp_id'] as int?,
      mDivisiMDirId: json['m_divisi.m_dir_id'] as int?,
      mDivisiNama: json['m_divisi.nama'] as String?,
      mDivisiDesc: json['m_divisi.desc'] as String?,
      mDivisiIsActive: json['m_divisi.is_active'] as bool?,
      mDivisiCreatorId: json['m_divisi.creator_id'] as int?,
      mDivisiLastEditorId: json['m_divisi.last_editor_id'] as int?,
      mDivisiCreatedAt: json['m_divisi.created_at'] as String?,
      mDivisiUpdatedAt: json['m_divisi.updated_at'] as String?,
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
      mZonaId: json['m_zona.id'] as int?,
      mZonaMCompId: json['m_zona.m_comp_id'] as int?,
      mZonaMDirId: json['m_zona.m_dir_id'] as int?,
      mZonaMTunjKemahalanId: json['m_zona.m_tunj_kemahalan_id'] as int?,
      mZonaKode: json['m_zona.kode'] as String?,
      mZonaNama: json['m_zona.nama'] as String?,
      mZonaDesc: json['m_zona.desc'] as String?,
      mZonaIsActive: json['m_zona.is_active'] as bool?,
      mZonaCreatorId: json['m_zona.creator_id'],
      mZonaLastEditorId: json['m_zona.last_editor_id'],
      mZonaCreatedAt: json['m_zona.created_at'] as String?,
      mZonaUpdatedAt: json['m_zona.updated_at'] as String?,
      gradingId: json['grading.id'],
      gradingMCompId: json['grading.m_comp_id'],
      gradingMDirId: json['grading.m_dir_id'],
      gradingGroup: json['grading.group'],
      gradingKey: json['grading.key'],
      gradingCode: json['grading.code'],
      gradingValue: json['grading.value'],
      gradingIsActive: json['grading.is_active'],
      gradingCreatorId: json['grading.creator_id'],
      gradingLastEditorId: json['grading.last_editor_id'],
      gradingCreatedAt: json['grading.created_at'],
      gradingUpdatedAt: json['grading.updated_at'],
      gradingValue2: json['grading.value_2'],
      gradingValue3: json['grading.value_3'],
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

Map<String, dynamic> _$$DataTemplateSpdImplToJson(
        _$DataTemplateSpdImpl instance) =>
    <String, dynamic>{
      'meta_read': instance.metaRead,
      'meta_delete': instance.metaDelete,
      'meta_update': instance.metaUpdate,
      'meta_create': instance.metaCreate,
      'id': instance.id,
      'm_comp_id': instance.datumMCompId,
      'm_dir_id': instance.datumMDirId,
      'kode': instance.kode,
      'm_divisi_id': instance.datumMDivisiId,
      'm_posisi_id': instance.datumMPosisiId,
      'm_dept_id': instance.datumMDeptId,
      'm_zona_id': instance.datumMZonaId,
      'grading_id': instance.datumGradingId,
      'grading': instance.grading,
      'desc': instance.desc,
      'is_active': instance.isActive,
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
      'm_zona.id': instance.mZonaId,
      'm_zona.m_comp_id': instance.mZonaMCompId,
      'm_zona.m_dir_id': instance.mZonaMDirId,
      'm_zona.m_tunj_kemahalan_id': instance.mZonaMTunjKemahalanId,
      'm_zona.kode': instance.mZonaKode,
      'm_zona.nama': instance.mZonaNama,
      'm_zona.desc': instance.mZonaDesc,
      'm_zona.is_active': instance.mZonaIsActive,
      'm_zona.creator_id': instance.mZonaCreatorId,
      'm_zona.last_editor_id': instance.mZonaLastEditorId,
      'm_zona.created_at': instance.mZonaCreatedAt,
      'm_zona.updated_at': instance.mZonaUpdatedAt,
      'grading.id': instance.gradingId,
      'grading.m_comp_id': instance.gradingMCompId,
      'grading.m_dir_id': instance.gradingMDirId,
      'grading.group': instance.gradingGroup,
      'grading.key': instance.gradingKey,
      'grading.code': instance.gradingCode,
      'grading.value': instance.gradingValue,
      'grading.is_active': instance.gradingIsActive,
      'grading.creator_id': instance.gradingCreatorId,
      'grading.last_editor_id': instance.gradingLastEditorId,
      'grading.created_at': instance.gradingCreatedAt,
      'grading.updated_at': instance.gradingUpdatedAt,
      'grading.value_2': instance.gradingValue2,
      'grading.value_3': instance.gradingValue3,
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

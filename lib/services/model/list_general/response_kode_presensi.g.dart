// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_kode_presensi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseKodePresensiImpl _$$ResponseKodePresensiImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseKodePresensiImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataKodePresensi.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$ResponseKodePresensiImplToJson(
        _$ResponseKodePresensiImpl instance) =>
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

_$DataKodePresensiImpl _$$DataKodePresensiImplFromJson(
        Map<String, dynamic> json) =>
    _$DataKodePresensiImpl(
      metaRead: json['meta_read'] as bool?,
      metaDelete: json['meta_delete'] as bool?,
      metaUpdate: json['meta_update'] as bool?,
      metaCreate: json['meta_create'] as bool?,
      id: json['id'] as int?,
      datumMCompId: json['m_comp_id'] as int?,
      datumMDirId: json['m_dir_id'] as int?,
      kode: json['kode'] as String?,
      datumTipeJamKerjaId: json['tipe_jam_kerja_id'] as int?,
      waktuMulai: json['waktu_mulai'] as String?,
      waktuAkhir: json['waktu_akhir'] as String?,
      isHariBerikutnya: json['is_hari_berikutnya'] as bool?,
      desc: json['desc'] as String?,
      isActive: json['is_active'] as bool?,
      datumCreatorId: json['creator_id'] as int?,
      datumLastEditorId: json['last_editor_id'] as int?,
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
      mDirId: json['m_dir.id'],
      mDirMCompId: json['m_dir.m_comp_id'],
      mDirNama: json['m_dir.nama'],
      mDirDesc: json['m_dir.desc'],
      mDirIsActive: json['m_dir.is_active'],
      mDirCreatorId: json['m_dir.creator_id'],
      mDirLastEditorId: json['m_dir.last_editor_id'],
      mDirCreatedAt: json['m_dir.created_at'],
      mDirUpdatedAt: json['m_dir.updated_at'],
      tipeJamKerjaId: json['tipe_jam_kerja.id'] as int?,
      tipeJamKerjaMCompId: json['tipe_jam_kerja.m_comp_id'] as int?,
      tipeJamKerjaMDirId: json['tipe_jam_kerja.m_dir_id'],
      tipeJamKerjaGroup: json['tipe_jam_kerja.group'] as String?,
      tipeJamKerjaKey: json['tipe_jam_kerja.key'] as String?,
      tipeJamKerjaCode: json['tipe_jam_kerja.code'] as String?,
      tipeJamKerjaValue: json['tipe_jam_kerja.value'] as String?,
      tipeJamKerjaIsActive: json['tipe_jam_kerja.is_active'] as bool?,
      tipeJamKerjaCreatorId: json['tipe_jam_kerja.creator_id'],
      tipeJamKerjaLastEditorId: json['tipe_jam_kerja.last_editor_id'],
      tipeJamKerjaCreatedAt: json['tipe_jam_kerja.created_at'] as String?,
      tipeJamKerjaUpdatedAt: json['tipe_jam_kerja.updated_at'] as String?,
      tipeJamKerjaValue2: json['tipe_jam_kerja.value_2'],
      tipeJamKerjaValue3: json['tipe_jam_kerja.value_3'],
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
      creatorLastEditorId: json['creator.last_editor_id'] as int?,
      creatorRememberToken: json['creator.remember_token'],
      creatorCreatedAt: json['creator.created_at'] as String?,
      creatorUpdatedAt: json['creator.updated_at'] as String?,
      creatorProfilImage: json['creator.profil_image'] as String?,
      creatorTelp: json['creator.telp'],
      creatorMKaryId: json['creator.m_kary_id'] as int?,
      lastEditorId: json['last_editor.id'] as int?,
      lastEditorName: json['last_editor.name'] as String?,
      lastEditorEmail: json['last_editor.email'] as String?,
      lastEditorUsername: json['last_editor.username'] as String?,
      lastEditorEmailVerifiedAt: json['last_editor.email_verified_at'],
      lastEditorPassword: json['last_editor.password'] as String?,
      lastEditorMCompId: json['last_editor.m_comp_id'] as int?,
      lastEditorMDirId: json['last_editor.m_dir_id'] as int?,
      lastEditorIsActive: json['last_editor.is_active'] as bool?,
      lastEditorCreatorId: json['last_editor.creator_id'],
      lastEditorLastEditorId: json['last_editor.last_editor_id'] as int?,
      lastEditorRememberToken: json['last_editor.remember_token'],
      lastEditorCreatedAt: json['last_editor.created_at'] as String?,
      lastEditorUpdatedAt: json['last_editor.updated_at'] as String?,
      lastEditorProfilImage: json['last_editor.profil_image'] as String?,
      lastEditorTelp: json['last_editor.telp'],
      lastEditorMKaryId: json['last_editor.m_kary_id'] as int?,
    );

Map<String, dynamic> _$$DataKodePresensiImplToJson(
        _$DataKodePresensiImpl instance) =>
    <String, dynamic>{
      'meta_read': instance.metaRead,
      'meta_delete': instance.metaDelete,
      'meta_update': instance.metaUpdate,
      'meta_create': instance.metaCreate,
      'id': instance.id,
      'm_comp_id': instance.datumMCompId,
      'm_dir_id': instance.datumMDirId,
      'kode': instance.kode,
      'tipe_jam_kerja_id': instance.datumTipeJamKerjaId,
      'waktu_mulai': instance.waktuMulai,
      'waktu_akhir': instance.waktuAkhir,
      'is_hari_berikutnya': instance.isHariBerikutnya,
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
      'tipe_jam_kerja.id': instance.tipeJamKerjaId,
      'tipe_jam_kerja.m_comp_id': instance.tipeJamKerjaMCompId,
      'tipe_jam_kerja.m_dir_id': instance.tipeJamKerjaMDirId,
      'tipe_jam_kerja.group': instance.tipeJamKerjaGroup,
      'tipe_jam_kerja.key': instance.tipeJamKerjaKey,
      'tipe_jam_kerja.code': instance.tipeJamKerjaCode,
      'tipe_jam_kerja.value': instance.tipeJamKerjaValue,
      'tipe_jam_kerja.is_active': instance.tipeJamKerjaIsActive,
      'tipe_jam_kerja.creator_id': instance.tipeJamKerjaCreatorId,
      'tipe_jam_kerja.last_editor_id': instance.tipeJamKerjaLastEditorId,
      'tipe_jam_kerja.created_at': instance.tipeJamKerjaCreatedAt,
      'tipe_jam_kerja.updated_at': instance.tipeJamKerjaUpdatedAt,
      'tipe_jam_kerja.value_2': instance.tipeJamKerjaValue2,
      'tipe_jam_kerja.value_3': instance.tipeJamKerjaValue3,
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

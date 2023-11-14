// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPicModelImpl _$$GetPicModelImplFromJson(Map<String, dynamic> json) =>
    _$GetPicModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataPic.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      currentPage: json['current_page'] as int?,
      perPage: json['per_page'] as int?,
      from: json['from'] as int?,
      to: json['to'] as int?,
      lastPage: json['last_page'] as int?,
      hasNext: json['has_next'] as bool?,
      prev: json['prev'],
      next: json['next'] as String?,
      processedTime: (json['processed_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GetPicModelImplToJson(_$GetPicModelImpl instance) =>
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

_$DataPicImpl _$$DataPicImplFromJson(Map<String, dynamic> json) =>
    _$DataPicImpl(
      metaRead: json['meta_read'] as bool?,
      metaDelete: json['meta_delete'] as bool?,
      metaUpdate: json['meta_update'] as bool?,
      metaCreate: json['meta_create'] as bool?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      datumMCompId: json['m_comp_id'] as int?,
      datumMDirId: json['m_dir_id'] as int?,
      isActive: json['is_active'] as bool?,
      creatorId: json['creator_id'],
      lastEditorId: json['last_editor_id'],
      rememberToken: json['remember_token'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      profilImage: json['profil_image'],
      telp: json['telp'],
      mKaryId: json['m_kary_id'],
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
    );

Map<String, dynamic> _$$DataPicImplToJson(_$DataPicImpl instance) =>
    <String, dynamic>{
      'meta_read': instance.metaRead,
      'meta_delete': instance.metaDelete,
      'meta_update': instance.metaUpdate,
      'meta_create': instance.metaCreate,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'email_verified_at': instance.emailVerifiedAt,
      'm_comp_id': instance.datumMCompId,
      'm_dir_id': instance.datumMDirId,
      'is_active': instance.isActive,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'remember_token': instance.rememberToken,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'profil_image': instance.profilImage,
      'telp': instance.telp,
      'm_kary_id': instance.mKaryId,
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
    };

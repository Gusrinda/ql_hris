// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryAttendanceModelImpl _$$HistoryAttendanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryAttendanceModelImpl(
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

Map<String, dynamic> _$$HistoryAttendanceModelImplToJson(
        _$HistoryAttendanceModelImpl instance) =>
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
      datumMCompId: json['m_comp_id'] as int?,
      datumDefaultUserId: json['default_user_id'] as int?,
      tanggal: json['tanggal'] as String?,
      status: json['status'] as String?,
      checkinTime: json['checkin_time'] as String?,
      checkinFoto: json['checkin_foto'] as String?,
      checkinLat: json['checkin_lat'] as String?,
      checkinLong: json['checkin_long'] as String?,
      checkinAddress: json['checkin_address'] as String?,
      checkinRegion: json['checkin_region'] as String?,
      checkinOnScope: json['checkin_on_scope'] as bool?,
      checkoutTime: json['checkout_time'] as String?,
      checkoutFoto: json['checkout_foto'] as String?,
      checkoutLat: json['checkout_lat'] as String?,
      checkoutLong: json['checkout_long'] as String?,
      checkoutAddress: json['checkout_address'] as String?,
      checkoutRegion: json['checkout_region'] as String?,
      checkoutOnScope: json['checkout_on_scope'] as bool?,
      datumCreatorId: json['creator_id'] as int?,
      datumLastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      catatanIn: json['catatan_in'] as String?,
      catatanOut: json['catatan_out'],
      mCompId: json['m_comp.id'] as int?,
      mCompNama: json['m_comp.nama'] as String?,
      mCompIsActive: json['m_comp.is_active'] as bool?,
      mCompDesc: json['m_comp.desc'],
      mCompCreatorId: json['m_comp.creator_id'],
      mCompLastEditorId: json['m_comp.last_editor_id'],
      mCompCreatedAt: json['m_comp.created_at'],
      mCompUpdatedAt: json['m_comp.updated_at'],
      defaultUserId: json['default_user.id'] as int?,
      defaultUserName: json['default_user.name'] as String?,
      defaultUserEmail: json['default_user.email'] as String?,
      defaultUserUsername: json['default_user.username'] as String?,
      defaultUserEmailVerifiedAt: json['default_user.email_verified_at'],
      defaultUserPassword: json['default_user.password'] as String?,
      defaultUserMCompId: json['default_user.m_comp_id'] as int?,
      defaultUserMDirId: json['default_user.m_dir_id'] as int?,
      defaultUserIsActive: json['default_user.is_active'] as bool?,
      defaultUserCreatorId: json['default_user.creator_id'],
      defaultUserLastEditorId: json['default_user.last_editor_id'] as int?,
      defaultUserRememberToken: json['default_user.remember_token'],
      defaultUserCreatedAt: json['default_user.created_at'],
      defaultUserUpdatedAt: json['default_user.updated_at'] as String?,
      defaultUserProfilImage: json['default_user.profil_image'] as String?,
      defaultUserTelp: json['default_user.telp'] as String?,
      defaultUserMKaryId: json['default_user.m_kary_id'] as int?,
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
      creatorCreatedAt: json['creator.created_at'],
      creatorUpdatedAt: json['creator.updated_at'] as String?,
      creatorProfilImage: json['creator.profil_image'] as String?,
      creatorTelp: json['creator.telp'] as String?,
      creatorMKaryId: json['creator.m_kary_id'] as int?,
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
      'm_comp_id': instance.datumMCompId,
      'default_user_id': instance.datumDefaultUserId,
      'tanggal': instance.tanggal,
      'status': instance.status,
      'checkin_time': instance.checkinTime,
      'checkin_foto': instance.checkinFoto,
      'checkin_lat': instance.checkinLat,
      'checkin_long': instance.checkinLong,
      'checkin_address': instance.checkinAddress,
      'checkin_region': instance.checkinRegion,
      'checkin_on_scope': instance.checkinOnScope,
      'checkout_time': instance.checkoutTime,
      'checkout_foto': instance.checkoutFoto,
      'checkout_lat': instance.checkoutLat,
      'checkout_long': instance.checkoutLong,
      'checkout_address': instance.checkoutAddress,
      'checkout_region': instance.checkoutRegion,
      'checkout_on_scope': instance.checkoutOnScope,
      'creator_id': instance.datumCreatorId,
      'last_editor_id': instance.datumLastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'catatan_in': instance.catatanIn,
      'catatan_out': instance.catatanOut,
      'm_comp.id': instance.mCompId,
      'm_comp.nama': instance.mCompNama,
      'm_comp.is_active': instance.mCompIsActive,
      'm_comp.desc': instance.mCompDesc,
      'm_comp.creator_id': instance.mCompCreatorId,
      'm_comp.last_editor_id': instance.mCompLastEditorId,
      'm_comp.created_at': instance.mCompCreatedAt,
      'm_comp.updated_at': instance.mCompUpdatedAt,
      'default_user.id': instance.defaultUserId,
      'default_user.name': instance.defaultUserName,
      'default_user.email': instance.defaultUserEmail,
      'default_user.username': instance.defaultUserUsername,
      'default_user.email_verified_at': instance.defaultUserEmailVerifiedAt,
      'default_user.password': instance.defaultUserPassword,
      'default_user.m_comp_id': instance.defaultUserMCompId,
      'default_user.m_dir_id': instance.defaultUserMDirId,
      'default_user.is_active': instance.defaultUserIsActive,
      'default_user.creator_id': instance.defaultUserCreatorId,
      'default_user.last_editor_id': instance.defaultUserLastEditorId,
      'default_user.remember_token': instance.defaultUserRememberToken,
      'default_user.created_at': instance.defaultUserCreatedAt,
      'default_user.updated_at': instance.defaultUserUpdatedAt,
      'default_user.profil_image': instance.defaultUserProfilImage,
      'default_user.telp': instance.defaultUserTelp,
      'default_user.m_kary_id': instance.defaultUserMKaryId,
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

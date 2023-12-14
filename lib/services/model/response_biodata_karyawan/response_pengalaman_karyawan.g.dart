// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_pengalaman_karyawan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponsePengalamaniKaryawanImpl _$$ResponsePengalamaniKaryawanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponsePengalamaniKaryawanImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataPengalaman.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponsePengalamaniKaryawanImplToJson(
        _$ResponsePengalamaniKaryawanImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataPengalamanImpl _$$DataPengalamanImplFromJson(Map<String, dynamic> json) =>
    _$DataPengalamanImpl(
      id: json['id'] as int?,
      mCompId: json['m_comp_id'] as int?,
      mDirId: json['m_dir_id'] as int?,
      mKaryId: json['m_kary_id'] as int?,
      instansi: json['instansi'] as String?,
      bidangUsaha: json['bidang_usaha'] as String?,
      noTlp: json['no_tlp'] as String?,
      posisi: json['posisi'] as String?,
      thnMasuk: json['thn_masuk'] as int?,
      thnKeluar: json['thn_keluar'] as int?,
      alamatKantor: json['alamat_kantor'] as String?,
      kotaId: json['kota_id'] as int?,
      suratReferensi: json['surat_referensi'] as String?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      kota: json['kota'] as String?,
    );

Map<String, dynamic> _$$DataPengalamanImplToJson(
        _$DataPengalamanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'm_kary_id': instance.mKaryId,
      'instansi': instance.instansi,
      'bidang_usaha': instance.bidangUsaha,
      'no_tlp': instance.noTlp,
      'posisi': instance.posisi,
      'thn_masuk': instance.thnMasuk,
      'thn_keluar': instance.thnKeluar,
      'alamat_kantor': instance.alamatKantor,
      'kota_id': instance.kotaId,
      'surat_referensi': instance.suratReferensi,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'kota': instance.kota,
    };

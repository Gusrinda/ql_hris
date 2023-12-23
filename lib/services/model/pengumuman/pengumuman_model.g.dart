// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pengumuman_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PengumumanModelImpl _$$PengumumanModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PengumumanModelImpl(
      id: json['id'] as int?,
      kategori: json['kategori'] as String?,
      judul: json['judul'] as String?,
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      foto: json['foto'] as String?,
      penulisId: json['penulis_id'] as int?,
      editorId: json['editor_id'] as int?,
      detail: json['detail'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      penulis: json['penulis'] as String?,
      kecamatan: json['kecamatan'] as String?,
      puskesmasIds: json['puskesmas_ids'] as String?,
      lampiran: (json['lampiran'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$PengumumanModelImplToJson(
        _$PengumumanModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kategori': instance.kategori,
      'judul': instance.judul,
      'tanggal': instance.tanggal?.toIso8601String(),
      'foto': instance.foto,
      'penulis_id': instance.penulisId,
      'editor_id': instance.editorId,
      'detail': instance.detail,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'penulis': instance.penulis,
      'kecamatan': instance.kecamatan,
      'puskesmas_ids': instance.puskesmasIds,
      'lampiran': instance.lampiran,
    };

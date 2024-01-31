// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_pendidikan_karyawan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponsePendidikanKaryawanImpl _$$ResponsePendidikanKaryawanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponsePendidikanKaryawanImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ListDataPendidikan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponsePendidikanKaryawanImplToJson(
        _$ResponsePendidikanKaryawanImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$ListDataPendidikanImpl _$$ListDataPendidikanImplFromJson(
        Map<String, dynamic> json) =>
    _$ListDataPendidikanImpl(
      karyawan: json['karyawan'] as String?,
      tingkat: json['tingkat'] as String?,
      kota: json['kota'] as String?,
      id: json['id'] as int?,
      mKaryId: json['m_kary_id'] as int?,
      mCompId: json['m_comp_id'],
      mDirId: json['m_dir_id'],
      tingkatId: json['tingkat_id'] as int?,
      namaSekolah: json['nama_sekolah'] as String?,
      thnMasuk: json['thn_masuk'] as int?,
      thnLulus: json['thn_lulus'] as int?,
      kotaId: json['kota_id'] as int?,
      nilai: (json['nilai'] as num?)?.toDouble(),
      jurusan: json['jurusan'] as String?,
      isPendTerakhir: json['is_pend_terakhir'] as bool?,
      ijazahNo: json['ijazah_no'] as String?,
      ijazahFoto: json['ijazah_foto'] as String?,
      desc: json['desc'] as String?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ListDataPendidikanImplToJson(
        _$ListDataPendidikanImpl instance) =>
    <String, dynamic>{
      'karyawan': instance.karyawan,
      'tingkat': instance.tingkat,
      'kota': instance.kota,
      'id': instance.id,
      'm_kary_id': instance.mKaryId,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'tingkat_id': instance.tingkatId,
      'nama_sekolah': instance.namaSekolah,
      'thn_masuk': instance.thnMasuk,
      'thn_lulus': instance.thnLulus,
      'kota_id': instance.kotaId,
      'nilai': instance.nilai,
      'jurusan': instance.jurusan,
      'is_pend_terakhir': instance.isPendTerakhir,
      'ijazah_no': instance.ijazahNo,
      'ijazah_foto': instance.ijazahFoto,
      'desc': instance.desc,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

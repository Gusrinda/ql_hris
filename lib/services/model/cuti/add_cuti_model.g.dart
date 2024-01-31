// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_cuti_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCutiModelImpl _$$AddCutiModelImplFromJson(Map<String, dynamic> json) =>
    _$AddCutiModelImpl(
      message: json['message'] as String?,
      success:
          (json['success'] as List<dynamic>?)?.map((e) => e as String).toList(),
      errors: json['errors'] as List<dynamic>?,
      id: json['id'] as int?,
      processedTime: (json['processed_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AddCutiModelImplToJson(_$AddCutiModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'errors': instance.errors,
      'id': instance.id,
      'processed_time': instance.processedTime,
    };

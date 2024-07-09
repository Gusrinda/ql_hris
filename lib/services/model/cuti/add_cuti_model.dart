import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'add_cuti_model.freezed.dart';
part 'add_cuti_model.g.dart';

@freezed
class AddCutiModel with _$AddCutiModel {
    const factory AddCutiModel({
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "success")
        List<String>? success,
        @JsonKey(name: "errors")
        List<dynamic>? errors,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "processed_time")
        double? processedTime,
    }) = _AddCutiModel;

    factory AddCutiModel.fromJson(Map<String, dynamic> json) => _$AddCutiModelFromJson(json);
}


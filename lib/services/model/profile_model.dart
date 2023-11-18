class ProfileModel {
  String? imagePath;
  String? email;
  int? employeeId;
  String? username;
  String? phoneNumber;
  String? password;
  ProfileModel({
    this.imagePath,
    this.email,
    this.employeeId,
    this.username,
    this.phoneNumber,
    this.password,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> json) => ProfileModel(
        imagePath: json["profil_image"],
        email: json["email"],
        employeeId: json["id"],
        username: json["username"],
        phoneNumber: json["telp"],
        password: json["password"],
      );

  // ProfileModel copyWith({
  //   String? imagePath,
  //   String? email,
  //   int? employeeId,
  //   String? username,
  //   String? phoneNumber,
  // }) {
  //   return ProfileModel(
  //     imagePath: imagePath ?? this.imagePath,
  //     email: email ?? this.email,
  //     employeeId: employeeId ?? this.employeeId,
  //     username: username ?? this.username,
  //     phoneNumber: phoneNumber ?? this.phoneNumber,
  //   );
  // }
}

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';

// part 'profile_model.freezed.dart';
// part 'profile_model.g.dart';

// @freezed
// class ProfileModel with _$ProfileModel {
//     const factory ProfileModel({
//         @JsonKey(name: "data")
//         Data? data,
//         @JsonKey(name: "processed_time")
//         double? processedTime,
//     }) = _ProfileModel;

//     factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
// }

// @freezed
// class Data with _$Data {
//     const factory Data({
//         @JsonKey(name: "id")
//         int? id,
//         @JsonKey(name: "name")
//         String? name,
//         @JsonKey(name: "email")
//         String? email,
//         @JsonKey(name: "username")
//         String? username,
//         @JsonKey(name: "email_verified_at")
//         dynamic emailVerifiedAt,
//         @JsonKey(name: "password")
//         String? password,
//         @JsonKey(name: "m_comp_id")
//         int? dataMCompId,
//         @JsonKey(name: "m_dir_id")
//         int? dataMDirId,
//         @JsonKey(name: "is_active")
//         bool? isActive,
//         @JsonKey(name: "creator_id")
//         dynamic creatorId,
//         @JsonKey(name: "last_editor_id")
//         int? lastEditorId,
//         @JsonKey(name: "remember_token")
//         dynamic rememberToken,
//         @JsonKey(name: "created_at")
//         dynamic createdAt,
//         @JsonKey(name: "updated_at")
//         String? updatedAt,
//         @JsonKey(name: "profil_image")
//         dynamic profilImage,
//         @JsonKey(name: "m_comp.id")
//         int? mCompId,
//         @JsonKey(name: "m_comp.nama")
//         String? mCompNama,
//         @JsonKey(name: "m_comp.is_active")
//         bool? mCompIsActive,
//         @JsonKey(name: "m_comp.desc")
//         dynamic mCompDesc,
//         @JsonKey(name: "m_comp.creator_id")
//         dynamic mCompCreatorId,
//         @JsonKey(name: "m_comp.last_editor_id")
//         dynamic mCompLastEditorId,
//         @JsonKey(name: "m_comp.created_at")
//         dynamic mCompCreatedAt,
//         @JsonKey(name: "m_comp.updated_at")
//         dynamic mCompUpdatedAt,
//         @JsonKey(name: "m_dir.id")
//         dynamic mDirId,
//         @JsonKey(name: "m_dir.m_comp_id")
//         dynamic mDirMCompId,
//         @JsonKey(name: "m_dir.nama")
//         dynamic mDirNama,
//         @JsonKey(name: "m_dir.desc")
//         dynamic mDirDesc,
//         @JsonKey(name: "m_dir.is_active")
//         dynamic mDirIsActive,
//         @JsonKey(name: "m_dir.creator_id")
//         dynamic mDirCreatorId,
//         @JsonKey(name: "m_dir.last_editor_id")
//         dynamic mDirLastEditorId,
//         @JsonKey(name: "m_dir.created_at")
//         dynamic mDirCreatedAt,
//         @JsonKey(name: "m_dir.updated_at")
//         dynamic mDirUpdatedAt,
//         @JsonKey(name: "default_users_socialite")
//         List<dynamic>? defaultUsersSocialite,
//     }) = _Data;

//     factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
// }

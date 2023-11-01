// class HistoryAttendanceModel {
//   int? total;
//   int? currentPage;
//   int? perPage;
//   int? from;
//   int? to;
//   int? lastPage;
//   bool? hasNext;
//   dynamic prev;
//   dynamic next;
//   double? processedTime;
//   List<HistoryAttendanceDetailModel>? historyAttendanceDetail;
//   HistoryAttendanceModel({
//     this.total,
//     this.currentPage,
//     this.perPage,
//     this.from,
//     this.to,
//     this.lastPage,
//     this.hasNext,
//     this.prev,
//     this.next,
//     this.processedTime,
//     this.historyAttendanceDetail,
//   });

//   factory HistoryAttendanceModel.fromMap(Map<String, dynamic> json) =>
//       HistoryAttendanceModel(
//         total: json["total"],
//         currentPage: json["current_page"],
//         perPage: json["per_page"],
//         from: json["from"],
//         to: json["to"],
//         lastPage: json["last_page"],
//         hasNext: json["has_next"],
//         prev: json["prev"],
//         next: json["next"],
//         processedTime: json["processed_time"],
//         historyAttendanceDetail:
//             HistoryAttendanceDetailModel.historyAttendanceDetailsFromMap(
//           json["data"],
//         ),
//       );

// static List<HistoryAttendanceModel> historyAttendanceFromMap(
//         List<dynamic> str) =>
//     List<HistoryAttendanceModel>.from(
//       str.map(
//         (x) => HistoryAttendanceModel.fromMap(x),
//       ),
//     );

//   // static List<HistoryAttendanceModel> historyAttendanceFromMap(
//   //     Map<String, dynamic> str) {
//   //   List<HistoryAttendanceModel> result = [];
//   //   str.forEach((key, value) {
//   //     result.add(HistoryAttendanceModel.fromMap(value));
//   //   });
//   //   return result;
//   // }
// }

// class HistoryAttendanceDetailModel {
//   int? id;
//   int? mCompId;
//   int? datumDefaultUserId;
//   String? tanggal;
//   String? status;
//   String? checkinTime;
//   String? checkinFoto;
//   String? checkinAddress;
//   String? checkinRegion;
//   bool? checkinOnScope;
//   String? checkoutTime;
//   String? checkoutFoto;
//   String? checkoutAddress;
//   bool? checkoutOnScope;
//   String? createdAt;
//   String? updatedAt;
//   int? defaultUserId;
//   String? defaultUserCreatedAt;
//   String? defaultUserUpdatedAt;
//   HistoryAttendanceDetailModel({
//     this.id,
//     this.mCompId,
//     this.datumDefaultUserId,
//     this.tanggal,
//     this.status,
//     this.checkinTime,
//     this.checkinFoto,
//     this.checkinAddress,
//     this.checkinRegion,
//     this.checkinOnScope,
//     this.checkoutTime,
//     this.checkoutFoto,
//     this.checkoutAddress,
//     this.checkoutOnScope,
//     this.createdAt,
//     this.updatedAt,
//     this.defaultUserId,
//     this.defaultUserCreatedAt,
//     this.defaultUserUpdatedAt,
//   });

//   factory HistoryAttendanceDetailModel.fromMap(Map<String, dynamic> json) =>
//       HistoryAttendanceDetailModel(
//         id: json["id"],
//         mCompId: json["mcompid"],
//         datumDefaultUserId: json["defaultuserid"],
//         tanggal: json["tanggal"],
//         status: json["status"],
//         checkinTime: json["checkintime"],
//         checkinAddress: json["checkinaddress"],
//         checkinRegion: json["checkinregion"],
//         checkinOnScope: json["checkinonscope"],
//         checkoutTime: json["checkouttime"],
//         checkoutAddress: json["checkoutaddress"],
//         checkoutOnScope: json["checkoutonscope"],
//         createdAt: json["createdat"],
//         updatedAt: json["updatedat"],
//         defaultUserId: json["defaultuserid"],
//         defaultUserCreatedAt: json["defaultusercreatedat"],
//         defaultUserUpdatedAt: json["defaultuserupdatedat"],
//       );

// static List<HistoryAttendanceDetailModel> historyAttendanceDetailsFromMap(
//         List<dynamic> str) =>
//     List<HistoryAttendanceDetailModel>.from(
//       str.map(
//         (x) => HistoryAttendanceDetailModel.fromMap(x),
//       ),
//     );

//   // static List<HistoryAttendanceDetailModel> historyAttendanceDetailsFromMap(
//   //     Map<String, dynamic> str) {
//   //   List<HistoryAttendanceDetailModel> result = [];
//   //   str.forEach((key, value) {
//   //     result.add(HistoryAttendanceDetailModel.fromMap(value));
//   //   });
//   //   return result;
//   // }
// }

// import 'dart:convert';

// class HistoryAttendanceModel {
//   List<Datum>? data;
//   int? total;
//   int? currentPage;
//   int? perPage;
//   int? from;
//   int? to;
//   int? lastPage;
//   bool? hasNext;
//   dynamic prev;
//   dynamic next;
//   double? processedTime;

//   HistoryAttendanceModel({
//     this.data,
//     this.total,
//     this.currentPage,
//     this.perPage,
//     this.from,
//     this.to,
//     this.lastPage,
//     this.hasNext,
//     this.prev,
//     this.next,
//     this.processedTime,
//   });

//   factory HistoryAttendanceModel.fromRawJson(String str) =>
//       HistoryAttendanceModel.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory HistoryAttendanceModel.fromJson(Map<String, dynamic> json) =>
//       HistoryAttendanceModel(
//         data: json["data"] == null
//             ? []
//             : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
//         total: json["total"],
//         currentPage: json["current_page"],
//         perPage: json["per_page"],
//         from: json["from"],
//         to: json["to"],
//         lastPage: json["last_page"],
//         hasNext: json["has_next"],
//         prev: json["prev"],
//         next: json["next"],
//         processedTime: json["processed_time"]?.toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data == null
//             ? []
//             : List<dynamic>.from(data!.map((x) => x.toJson())),
//         "total": total,
//         "current_page": currentPage,
//         "per_page": perPage,
//         "from": from,
//         "to": to,
//         "last_page": lastPage,
//         "has_next": hasNext,
//         "prev": prev,
//         "next": next,
//         "processed_time": processedTime,
//       };

//   static List<HistoryAttendanceModel> historyAttendanceFromMap(
//       Map<String, dynamic> map) {
//     List<HistoryAttendanceModel> result = [];
//     if (map.containsKey('data')) {
//       for (var item in map['data']) {
//         result.add(HistoryAttendanceModel.fromJson(item));
//       }
//     }
//     return result;
//   }
// }

// class Datum {
//   int? id;
//   int? mCompId;
//   int? datumDefaultUserId;
//   String? tanggal;
//   String? status;
//   String? checkinTime;
//   String? checkinFoto;
//   String? checkinAddress;
//   String? checkinRegion;
//   bool? checkinOnScope;
//   String? checkoutTime;
//   String? checkoutFoto;
//   String? checkoutAddress;
//   bool? checkoutOnScope;
//   String? createdAt;
//   String? updatedAt;
//   int? defaultUserId;
//   String? defaultUserCreatedAt;
//   String? defaultUserUpdatedAt;

//   Datum({
//     this.id,
//     this.mCompId,
//     this.datumDefaultUserId,
//     this.tanggal,
//     this.status,
//     this.checkinTime,
//     this.checkinFoto,
//     this.checkinAddress,
//     this.checkinRegion,
//     this.checkinOnScope,
//     this.checkoutTime,
//     this.checkoutFoto,
//     this.checkoutAddress,
//     this.checkoutOnScope,
//     this.createdAt,
//     this.updatedAt,
//     this.defaultUserId,
//     this.defaultUserCreatedAt,
//     this.defaultUserUpdatedAt,
//   });

//   factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         id: json["id"],
//         mCompId: json["m_comp_id"],
//         datumDefaultUserId: json["default_user_id"],
//         tanggal: json["tanggal"],
//         status: json["status"],
//         checkinTime: json["checkin_time"],
//         checkinFoto: json["checkin_foto"],
//         checkinAddress: json["checkin_address"],
//         checkinRegion: json["checkin_region"],
//         checkinOnScope: json["checkin_on_scope"],
//         checkoutTime: json["checkout_time"],
//         checkoutFoto: json["checkout_foto"],
//         checkoutAddress: json["checkout_address"],
//         checkoutOnScope: json["checkout_on_scope"],
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"],
//         defaultUserId: json["default_user.id"],
//         defaultUserCreatedAt: json["default_user.created_at"],
//         defaultUserUpdatedAt: json["default_user.updated_at"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "m_comp_id": mCompId,
//         "default_user_id": datumDefaultUserId,
//         "tanggal": tanggal,
//         "status": status,
//         "checkin_time": checkinTime,
//         "checkin_foto": checkinFoto,
//         "checkin_address": checkinAddress,
//         "checkin_region": checkinRegion,
//         "checkin_on_scope": checkinOnScope,
//         "checkout_time": checkoutTime,
//         "checkout_foto": checkoutFoto,
//         "checkout_address": checkoutAddress,
//         "checkout_on_scope": checkoutOnScope,
//         "created_at": createdAt,
//         "updated_at": updatedAt,
//         "default_user.id": defaultUserId,
//         "default_user.created_at": defaultUserCreatedAt,
//         "default_user.updated_at": defaultUserUpdatedAt,
//       };

//       static List<Datum> historyAttendanceDetailFromMap(
//       Map<String, dynamic> map) {
//     List<Datum> result = [];
//     if (map.containsKey('data')) {
//       for (var item in map['data']) {
//         result.add(Datum.fromJson(item));
//       }
//     }
//     return result;
//   }
// }


import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'history_attendance_model.freezed.dart';
part 'history_attendance_model.g.dart';

@freezed
class HistoryAttendanceModel with _$HistoryAttendanceModel {
    const factory HistoryAttendanceModel({
        @JsonKey(name: "data")
        List<Datum>? data,
        @JsonKey(name: "total")
        int? total,
        @JsonKey(name: "current_page")
        int? currentPage,
        @JsonKey(name: "per_page")
        int? perPage,
        @JsonKey(name: "from")
        int? from,
        @JsonKey(name: "to")
        int? to,
        @JsonKey(name: "last_page")
        int? lastPage,
        @JsonKey(name: "has_next")
        bool? hasNext,
        @JsonKey(name: "prev")
        dynamic prev,
        @JsonKey(name: "next")
        dynamic next,
        @JsonKey(name: "processed_time")
        double? processedTime,
    }) = _HistoryAttendanceModel;

    factory HistoryAttendanceModel.fromJson(Map<String, dynamic> json) => _$HistoryAttendanceModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "meta_read")
        bool? metaRead,
        @JsonKey(name: "meta_delete")
        bool? metaDelete,
        @JsonKey(name: "meta_update")
        bool? metaUpdate,
        @JsonKey(name: "meta_create")
        bool? metaCreate,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "m_comp_id")
        int? datumMCompId,
        @JsonKey(name: "default_user_id")
        int? datumDefaultUserId,
        @JsonKey(name: "tanggal")
        String? tanggal,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "checkin_time")
        String? checkinTime,
        @JsonKey(name: "checkin_foto")
        String? checkinFoto,
        @JsonKey(name: "checkin_lat")
        String? checkinLat,
        @JsonKey(name: "checkin_long")
        String? checkinLong,
        @JsonKey(name: "checkin_address")
        String? checkinAddress,
        @JsonKey(name: "checkin_region")
        String? checkinRegion,
        @JsonKey(name: "checkin_on_scope")
        bool? checkinOnScope,
        @JsonKey(name: "checkout_time")
        dynamic checkoutTime,
        @JsonKey(name: "checkout_foto")
        String? checkoutFoto,
        @JsonKey(name: "checkout_lat")
        dynamic checkoutLat,
        @JsonKey(name: "checkout_long")
        dynamic checkoutLong,
        @JsonKey(name: "checkout_address")
        dynamic checkoutAddress,
        @JsonKey(name: "checkout_region")
        dynamic checkoutRegion,
        @JsonKey(name: "checkout_on_scope")
        dynamic checkoutOnScope,
        @JsonKey(name: "creator_id")
        dynamic datumCreatorId,
        @JsonKey(name: "last_editor_id")
        dynamic datumLastEditorId,
        @JsonKey(name: "created_at")
        String? createdAt,
        @JsonKey(name: "updated_at")
        String? updatedAt,
        @JsonKey(name: "m_comp.id")
        int? mCompId,
        @JsonKey(name: "m_comp.nama")
        String? mCompNama,
        @JsonKey(name: "m_comp.is_active")
        bool? mCompIsActive,
        @JsonKey(name: "m_comp.desc")
        dynamic mCompDesc,
        @JsonKey(name: "m_comp.creator_id")
        dynamic mCompCreatorId,
        @JsonKey(name: "m_comp.last_editor_id")
        dynamic mCompLastEditorId,
        @JsonKey(name: "m_comp.created_at")
        dynamic mCompCreatedAt,
        @JsonKey(name: "m_comp.updated_at")
        dynamic mCompUpdatedAt,
        @JsonKey(name: "default_user.id")
        int? defaultUserId,
        @JsonKey(name: "default_user.name")
        String? defaultUserName,
        @JsonKey(name: "default_user.email")
        String? defaultUserEmail,
        @JsonKey(name: "default_user.username")
        String? defaultUserUsername,
        @JsonKey(name: "default_user.email_verified_at")
        dynamic defaultUserEmailVerifiedAt,
        @JsonKey(name: "default_user.password")
        String? defaultUserPassword,
        @JsonKey(name: "default_user.m_comp_id")
        int? defaultUserMCompId,
        @JsonKey(name: "default_user.m_dir_id")
        int? defaultUserMDirId,
        @JsonKey(name: "default_user.is_active")
        bool? defaultUserIsActive,
        @JsonKey(name: "default_user.creator_id")
        dynamic defaultUserCreatorId,
        @JsonKey(name: "default_user.last_editor_id")
        int? defaultUserLastEditorId,
        @JsonKey(name: "default_user.remember_token")
        dynamic defaultUserRememberToken,
        @JsonKey(name: "default_user.created_at")
        dynamic defaultUserCreatedAt,
        @JsonKey(name: "default_user.updated_at")
        String? defaultUserUpdatedAt,
        @JsonKey(name: "default_user.profil_image")
        dynamic defaultUserProfilImage,
        @JsonKey(name: "creator.id")
        dynamic creatorId,
        @JsonKey(name: "creator.name")
        dynamic creatorName,
        @JsonKey(name: "creator.email")
        dynamic creatorEmail,
        @JsonKey(name: "creator.username")
        dynamic creatorUsername,
        @JsonKey(name: "creator.email_verified_at")
        dynamic creatorEmailVerifiedAt,
        @JsonKey(name: "creator.password")
        dynamic creatorPassword,
        @JsonKey(name: "creator.m_comp_id")
        dynamic creatorMCompId,
        @JsonKey(name: "creator.m_dir_id")
        dynamic creatorMDirId,
        @JsonKey(name: "creator.is_active")
        dynamic creatorIsActive,
        @JsonKey(name: "creator.creator_id")
        dynamic creatorCreatorId,
        @JsonKey(name: "creator.last_editor_id")
        dynamic creatorLastEditorId,
        @JsonKey(name: "creator.remember_token")
        dynamic creatorRememberToken,
        @JsonKey(name: "creator.created_at")
        dynamic creatorCreatedAt,
        @JsonKey(name: "creator.updated_at")
        dynamic creatorUpdatedAt,
        @JsonKey(name: "creator.profil_image")
        dynamic creatorProfilImage,
        @JsonKey(name: "last_editor.id")
        dynamic lastEditorId,
        @JsonKey(name: "last_editor.name")
        dynamic lastEditorName,
        @JsonKey(name: "last_editor.email")
        dynamic lastEditorEmail,
        @JsonKey(name: "last_editor.username")
        dynamic lastEditorUsername,
        @JsonKey(name: "last_editor.email_verified_at")
        dynamic lastEditorEmailVerifiedAt,
        @JsonKey(name: "last_editor.password")
        dynamic lastEditorPassword,
        @JsonKey(name: "last_editor.m_comp_id")
        dynamic lastEditorMCompId,
        @JsonKey(name: "last_editor.m_dir_id")
        dynamic lastEditorMDirId,
        @JsonKey(name: "last_editor.is_active")
        dynamic lastEditorIsActive,
        @JsonKey(name: "last_editor.creator_id")
        dynamic lastEditorCreatorId,
        @JsonKey(name: "last_editor.last_editor_id")
        dynamic lastEditorLastEditorId,
        @JsonKey(name: "last_editor.remember_token")
        dynamic lastEditorRememberToken,
        @JsonKey(name: "last_editor.created_at")
        dynamic lastEditorCreatedAt,
        @JsonKey(name: "last_editor.updated_at")
        dynamic lastEditorUpdatedAt,
        @JsonKey(name: "last_editor.profil_image")
        dynamic lastEditorProfilImage,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

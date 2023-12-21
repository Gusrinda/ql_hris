import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_detail_approval.freezed.dart';
part 'response_detail_approval.g.dart';

@freezed
class ResponseDetailApproval with _$ResponseDetailApproval {
  const factory ResponseDetailApproval({
    @JsonKey(name: "timestamp") String? timestamp,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataDetailApproval? data,
  }) = _ResponseDetailApproval;

  factory ResponseDetailApproval.fromJson(Map<String, dynamic> json) =>
      _$ResponseDetailApprovalFromJson(json);
}

@freezed
class DataDetailApproval with _$DataDetailApproval {
  const factory DataDetailApproval({
    @JsonKey(name: "approval") Approval? approval,
    @JsonKey(name: "approval_log") List<ApprovalLog>? approvalLog,
    @JsonKey(name: "trx") Trx? trx,
  }) = _Data;

  factory DataDetailApproval.fromJson(Map<String, dynamic> json) =>
      _$DataDetailApprovalFromJson(json);
}

@freezed
class Approval with _$Approval {
  const factory Approval({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "m_comp_id") int? mCompId,
    @JsonKey(name: "m_dir_id") int? mDirId,
    @JsonKey(name: "nomor") String? nomor,
    @JsonKey(name: "m_approval_id") int? mApprovalId,
    @JsonKey(name: "trx_id") int? trxId,
    @JsonKey(name: "trx_name") String? trxName,
    @JsonKey(name: "form_name") String? formName,
    @JsonKey(name: "trx_table") String? trxTable,
    @JsonKey(name: "trx_nomor") String? trxNomor,
    @JsonKey(name: "trx_date") DateTime? trxDate,
    @JsonKey(name: "trx_object") dynamic trxObject,
    @JsonKey(name: "trx_creator_id") int? trxCreatorId,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "creator_id") int? creatorId,
    @JsonKey(name: "last_editor_id") dynamic lastEditorId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "creator") String? creator,
    @JsonKey(name: "tahap_saat_ini") int? tahapSaatIni,
    @JsonKey(name: "tahap_total") int? tahapTotal,
  }) = _Approval;

  factory Approval.fromJson(Map<String, dynamic> json) =>
      _$ApprovalFromJson(json);
}

@freezed
class ApprovalLog with _$ApprovalLog {
  const factory ApprovalLog({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "m_comp_id") dynamic mCompId,
    @JsonKey(name: "m_dir_id") dynamic mDirId,
    @JsonKey(name: "nomor") String? nomor,
    @JsonKey(name: "generate_approval_id") int? generateApprovalId,
    @JsonKey(name: "generate_approval_det_id") int? generateApprovalDetId,
    @JsonKey(name: "trx_table") String? trxTable,
    @JsonKey(name: "trx_id") int? trxId,
    @JsonKey(name: "trx_name") String? trxName,
    @JsonKey(name: "trx_nomor") String? trxNomor,
    @JsonKey(name: "trx_date") DateTime? trxDate,
    @JsonKey(name: "trx_object") dynamic trxObject,
    @JsonKey(name: "trx_creator_id") int? trxCreatorId,
    @JsonKey(name: "action_type") String? actionType,
    @JsonKey(name: "action_user_id") int? actionUserId,
    @JsonKey(name: "action_at") String? actionAt,
    @JsonKey(name: "action_note") String? actionNote,
    @JsonKey(name: "creator_id") int? creatorId,
    @JsonKey(name: "last_editor_id") dynamic lastEditorId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "action_user") String? actionUser,
  }) = _ApprovalLog;

  factory ApprovalLog.fromJson(Map<String, dynamic> json) =>
      _$ApprovalLogFromJson(json);
}

@freezed
class Trx with _$Trx {
  const factory Trx({
    @JsonKey(name: "nomor") String? nomor,
    @JsonKey(name: "tanggal") DateTime? tanggal,
    @JsonKey(name: "tgl_acara_awal") DateTime? tglAcaraAwal,
    @JsonKey(name: "tgl_acara_akhir") DateTime? tglAcaraAkhir,
    @JsonKey(name: "jenis_spd_id") int? jenisSpdId,
    @JsonKey(name: "jenis_spd") String? jenisSpd,
    @JsonKey(name: "m_zona_asal_id") int? mZonaAsalId,
    @JsonKey(name: "zona_asal") String? zonaAsal,
    @JsonKey(name: "m_zona_tujuan_id") int? mZonaTujuanId,
    @JsonKey(name: "zona_tujuan") String? zonaTujuan,
    @JsonKey(name: "m_lokasi_tujuan_id") int? mLokasiTujuanId,
    @JsonKey(name: "lokasi") String? lokasi,
    @JsonKey(name: "m_kary_id") int? mKaryId,
    @JsonKey(name: "nama_kary") dynamic namaKary,
    @JsonKey(name: "pic_id") int? picId,
    @JsonKey(name: "nama_pic") dynamic namaPic,
    @JsonKey(name: "total_biaya") String? totalBiaya,
    @JsonKey(name: "tipe_cuti") String? tipeCuti,
    @JsonKey(name: "alasan_cuti") String? alasanCuti,
    @JsonKey(name: "kegiatan") String? kegiatan,
    @JsonKey(name: "keterangan") String? keterangan,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "alasan_id") int? alasanId,
    @JsonKey(name: "alasan") String? alasan,
    @JsonKey(name: "tipe_cuti_id") int? tipeCutiId,
    @JsonKey(name: "date_from") DateTime? dateFrom,
    @JsonKey(name: "date_to") DateTime? dateTo,
    @JsonKey(name: "jam_mulai") String? jamMulai,
    @JsonKey(name: "jam_selesai") String? jamSelesai,
    @JsonKey(name: "no_doc") String? noDoc,
    @JsonKey(name: "doc") dynamic doc,
  }) = _Trx;

  factory Trx.fromJson(Map<String, dynamic> json) => _$TrxFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_detail_approval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDetailApprovalImpl _$$ResponseDetailApprovalImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDetailApprovalImpl(
      timestamp: json['timestamp'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataDetailApproval.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDetailApprovalImplToJson(
        _$ResponseDetailApprovalImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      approval: json['approval'] == null
          ? null
          : Approval.fromJson(json['approval'] as Map<String, dynamic>),
      approvalLog: (json['approval_log'] as List<dynamic>?)
          ?.map((e) => ApprovalLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      trx: json['trx'] == null
          ? null
          : Trx.fromJson(json['trx'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'approval': instance.approval,
      'approval_log': instance.approvalLog,
      'trx': instance.trx,
    };

_$ApprovalImpl _$$ApprovalImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalImpl(
      id: json['id'] as int?,
      mCompId: json['m_comp_id'] as int?,
      mDirId: json['m_dir_id'] as int?,
      nomor: json['nomor'] as String?,
      mApprovalId: json['m_approval_id'] as int?,
      trxId: json['trx_id'] as int?,
      trxName: json['trx_name'] as String?,
      formName: json['form_name'] as String?,
      trxTable: json['trx_table'] as String?,
      trxNomor: json['trx_nomor'] as String?,
      trxDate: json['trx_date'] == null
          ? null
          : DateTime.parse(json['trx_date'] as String),
      trxObject: json['trx_object'],
      trxCreatorId: json['trx_creator_id'] as int?,
      status: json['status'] as String?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      creator: json['creator'] as String?,
      tahapSaatIni: json['tahap_saat_ini'] as int?,
      tahapTotal: json['tahap_total'] as int?,
    );

Map<String, dynamic> _$$ApprovalImplToJson(_$ApprovalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'nomor': instance.nomor,
      'm_approval_id': instance.mApprovalId,
      'trx_id': instance.trxId,
      'trx_name': instance.trxName,
      'form_name': instance.formName,
      'trx_table': instance.trxTable,
      'trx_nomor': instance.trxNomor,
      'trx_date': instance.trxDate?.toIso8601String(),
      'trx_object': instance.trxObject,
      'trx_creator_id': instance.trxCreatorId,
      'status': instance.status,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'creator': instance.creator,
      'tahap_saat_ini': instance.tahapSaatIni,
      'tahap_total': instance.tahapTotal,
    };

_$ApprovalLogImpl _$$ApprovalLogImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalLogImpl(
      id: json['id'] as int?,
      mCompId: json['m_comp_id'],
      mDirId: json['m_dir_id'],
      nomor: json['nomor'] as String?,
      generateApprovalId: json['generate_approval_id'] as int?,
      generateApprovalDetId: json['generate_approval_det_id'] as int?,
      trxTable: json['trx_table'] as String?,
      trxId: json['trx_id'] as int?,
      trxName: json['trx_name'] as String?,
      trxNomor: json['trx_nomor'] as String?,
      trxDate: json['trx_date'] == null
          ? null
          : DateTime.parse(json['trx_date'] as String),
      trxObject: json['trx_object'],
      trxCreatorId: json['trx_creator_id'] as int?,
      actionType: json['action_type'] as String?,
      actionUserId: json['action_user_id'] as int?,
      actionAt: json['action_at'] as String?,
      actionNote: json['action_note'] as String?,
      creatorId: json['creator_id'] as int?,
      lastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      actionUser: json['action_user'] as String?,
    );

Map<String, dynamic> _$$ApprovalLogImplToJson(_$ApprovalLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm_comp_id': instance.mCompId,
      'm_dir_id': instance.mDirId,
      'nomor': instance.nomor,
      'generate_approval_id': instance.generateApprovalId,
      'generate_approval_det_id': instance.generateApprovalDetId,
      'trx_table': instance.trxTable,
      'trx_id': instance.trxId,
      'trx_name': instance.trxName,
      'trx_nomor': instance.trxNomor,
      'trx_date': instance.trxDate?.toIso8601String(),
      'trx_object': instance.trxObject,
      'trx_creator_id': instance.trxCreatorId,
      'action_type': instance.actionType,
      'action_user_id': instance.actionUserId,
      'action_at': instance.actionAt,
      'action_note': instance.actionNote,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'action_user': instance.actionUser,
    };

_$TrxImpl _$$TrxImplFromJson(Map<String, dynamic> json) => _$TrxImpl(
      nomor: json['nomor'] as String?,
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      tglAcaraAwal: json['tgl_acara_awal'] == null
          ? null
          : DateTime.parse(json['tgl_acara_awal'] as String),
      tglAcaraAkhir: json['tgl_acara_akhir'] == null
          ? null
          : DateTime.parse(json['tgl_acara_akhir'] as String),
      jenisSpdId: json['jenis_spd_id'] as int?,
      jenisSpd: json['jenis_spd'] as String?,
      mZonaAsalId: json['m_zona_asal_id'] as int?,
      zonaAsal: json['zona_asal'] as String?,
      mZonaTujuanId: json['m_zona_tujuan_id'] as int?,
      zonaTujuan: json['zona_tujuan'] as String?,
      mLokasiTujuanId: json['m_lokasi_tujuan_id'] as int?,
      lokasi: json['lokasi'] as String?,
      mKaryId: json['m_kary_id'] as int?,
      namaKary: json['nama_kary'],
      picId: json['pic_id'] as int?,
      namaPic: json['nama_pic'],
      totalBiaya: json['total_biaya'] as String?,
      totalBiayaSpd: json['total_biaya_spd'],
      totalBiayaSelisih: json['total_biaya_selisih'] as String?,
      tipeCuti: json['tipe_cuti'] as String?,
      alasanCuti: json['alasan_cuti'] as String?,
      kegiatan: json['kegiatan'] as String?,
      keterangan: json['keterangan'] as String?,
      status: json['status'] as String?,
      alasanId: json['alasan_id'] as int?,
      alasan: json['alasan'] as String?,
      tipeCutiId: json['tipe_cuti_id'] as int?,
      dateFrom: json['date_from'] == null
          ? null
          : DateTime.parse(json['date_from'] as String),
      dateTo: json['date_to'] == null
          ? null
          : DateTime.parse(json['date_to'] as String),
      jamMulai: json['jam_mulai'] as String?,
      jamSelesai: json['jam_selesai'] as String?,
      noDoc: json['no_doc'] as String?,
      doc: json['doc'],
      attachment: json['attachment'],
      interval: json['interval'] as int?,
      intervalMin: json['interval_min'] as int?,
      timeFrom: json['time_from'],
      timeTo: json['time_to'],
      catatanKend: json['catatan_kend'] as String?,
      cutiSisaPanjang: json['cuti_sisa_panjang'] as int?,
      cutiSisaReguler: json['cuti_sisa_reguler'] as int?,
      cutiSisaP24: json['cuti_sisa_p24'] as int?,
      infoCuti: json['info_cuti'] == null
          ? null
          : InfoCuti.fromJson(json['info_cuti'] as Map<String, dynamic>),
      namaDivisi: json['nama_divisi'] as String?,
      namaDept: json['nama_dept'] as String?,
      lokasiTujuan: json['lokasi_tujuan'] as String?,
      pic: json['pic'] as String?,
      tRpdDet: (json['t_rpd_det'] as List<dynamic>?)
          ?.map((e) => TRpdDet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrxImplToJson(_$TrxImpl instance) => <String, dynamic>{
      'nomor': instance.nomor,
      'tanggal': instance.tanggal?.toIso8601String(),
      'tgl_acara_awal': instance.tglAcaraAwal?.toIso8601String(),
      'tgl_acara_akhir': instance.tglAcaraAkhir?.toIso8601String(),
      'jenis_spd_id': instance.jenisSpdId,
      'jenis_spd': instance.jenisSpd,
      'm_zona_asal_id': instance.mZonaAsalId,
      'zona_asal': instance.zonaAsal,
      'm_zona_tujuan_id': instance.mZonaTujuanId,
      'zona_tujuan': instance.zonaTujuan,
      'm_lokasi_tujuan_id': instance.mLokasiTujuanId,
      'lokasi': instance.lokasi,
      'm_kary_id': instance.mKaryId,
      'nama_kary': instance.namaKary,
      'pic_id': instance.picId,
      'nama_pic': instance.namaPic,
      'total_biaya': instance.totalBiaya,
      'total_biaya_spd': instance.totalBiayaSpd,
      'total_biaya_selisih': instance.totalBiayaSelisih,
      'tipe_cuti': instance.tipeCuti,
      'alasan_cuti': instance.alasanCuti,
      'kegiatan': instance.kegiatan,
      'keterangan': instance.keterangan,
      'status': instance.status,
      'alasan_id': instance.alasanId,
      'alasan': instance.alasan,
      'tipe_cuti_id': instance.tipeCutiId,
      'date_from': instance.dateFrom?.toIso8601String(),
      'date_to': instance.dateTo?.toIso8601String(),
      'jam_mulai': instance.jamMulai,
      'jam_selesai': instance.jamSelesai,
      'no_doc': instance.noDoc,
      'doc': instance.doc,
      'attachment': instance.attachment,
      'interval': instance.interval,
      'interval_min': instance.intervalMin,
      'time_from': instance.timeFrom,
      'time_to': instance.timeTo,
      'catatan_kend': instance.catatanKend,
      'cuti_sisa_panjang': instance.cutiSisaPanjang,
      'cuti_sisa_reguler': instance.cutiSisaReguler,
      'cuti_sisa_p24': instance.cutiSisaP24,
      'info_cuti': instance.infoCuti,
      'nama_divisi': instance.namaDivisi,
      'nama_dept': instance.namaDept,
      'lokasi_tujuan': instance.lokasiTujuan,
      'pic': instance.pic,
      't_rpd_det': instance.tRpdDet,
    };

_$InfoCutiImpl _$$InfoCutiImplFromJson(Map<String, dynamic> json) =>
    _$InfoCutiImpl(
      cutiP24: json['cuti_p24'] as int?,
      cutiReguler: json['cuti_reguler'] as int?,
      workPresent: json['work_present'] as int?,
      cutiTerpakai: json['cuti_terpakai'] as int?,
      potonganCuti: json['potongan_cuti'] as int?,
      sisaCutiP24: json['sisa_cuti_p24'] as int?,
      cutiMasaKerja: json['cuti_masa_kerja'] as int?,
      workNotPresent: json['work_not_present'] as int?,
      cutiP24Terpakai: json['cuti_p24_terpakai'] as int?,
      sisaCutiReguler: json['sisa_cuti_reguler'] as int?,
      workDaysInMonth: json['work_days_in_month'] as int?,
      sisaCutiMasaKerja: json['sisa_cuti_masa_kerja'] as int?,
    );

Map<String, dynamic> _$$InfoCutiImplToJson(_$InfoCutiImpl instance) =>
    <String, dynamic>{
      'cuti_p24': instance.cutiP24,
      'cuti_reguler': instance.cutiReguler,
      'work_present': instance.workPresent,
      'cuti_terpakai': instance.cutiTerpakai,
      'potongan_cuti': instance.potonganCuti,
      'sisa_cuti_p24': instance.sisaCutiP24,
      'cuti_masa_kerja': instance.cutiMasaKerja,
      'work_not_present': instance.workNotPresent,
      'cuti_p24_terpakai': instance.cutiP24Terpakai,
      'sisa_cuti_reguler': instance.sisaCutiReguler,
      'work_days_in_month': instance.workDaysInMonth,
      'sisa_cuti_masa_kerja': instance.sisaCutiMasaKerja,
    };

_$TRpdDetImpl _$$TRpdDetImplFromJson(Map<String, dynamic> json) =>
    _$TRpdDetImpl(
      id: json['id'] as int?,
      tRpdId: json['t_rpd_id'] as int?,
      tSpdDetId: json['t_spd_det_id'],
      tipeSpdId: json['tipe_spd_id'] as int?,
      tipeSpd: json['tipe_spd'] as String?,
      biaya: json['biaya'] as int?,
      biayaRealisasi: json['biaya_realisasi'] as int?,
      detailTransport: json['detail_transport'] as String?,
      mKndDinasId: json['m_knd_dinas_id'],
      isKendaraanDinas: json['is_kendaraan_dinas'] as bool?,
      catatanRealisasi: json['catatan_realisasi'] as String?,
      creatorId: json['creator_id'],
      lastEditorId: json['last_editor_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$TRpdDetImplToJson(_$TRpdDetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      't_rpd_id': instance.tRpdId,
      't_spd_det_id': instance.tSpdDetId,
      'tipe_spd_id': instance.tipeSpdId,
      'tipe_spd': instance.tipeSpd,
      'biaya': instance.biaya,
      'biaya_realisasi': instance.biayaRealisasi,
      'detail_transport': instance.detailTransport,
      'm_knd_dinas_id': instance.mKndDinasId,
      'is_kendaraan_dinas': instance.isKendaraanDinas,
      'catatan_realisasi': instance.catatanRealisasi,
      'creator_id': instance.creatorId,
      'last_editor_id': instance.lastEditorId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

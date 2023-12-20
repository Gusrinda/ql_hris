import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';

class BiodataKaryawanService {
  static Future<Object> getBiodataKaryawan(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/data_diri");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  static Future<Object> editDataDiri(
    String token,
    int? userId,
    Map<String, dynamic> biodataFields,
  ) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_kary/data_diri_update");

    Map<String, dynamic> requestBody = {};

    if (userId != null) requestBody["user_id"] = userId;
    biodataFields.forEach((key, value) {
      if (value != null) {
        requestBody[key] = value;
      }
    });

    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.post,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
      body: json.encode(requestBody),
    );
  }

  // static Future<Object> editDataDiri(
  //   String token,
  //   int? userId,
  //   int? dirId,
  //   int? divisiId,
  //   int? deptId,
  //   int? zonaId,
  //   int? gradingId,
  //   int? costcentreId,
  //   int? posisiId,
  //   int? jamKerjaId,
  //   String? nik,
  //   String? namaDepan,
  //   String? namaBelakang,
  //   String? namaLengkap,
  //   String? namaPanggilan,
  //   int? jkId,
  //   String? tempatLahir,
  //   String? tglLahir,
  //   int? provinsiId,
  //   int? kotaId,
  //   int? kecamatanId,
  //   String? kodePos,
  //   String? alamatAsli,
  //   String? alamatDomisili,
  //   String? noTlp,
  //   String? noTlpLainnya,
  //   String? noDarurat,
  //   String? namaKontakDarurat,
  //   int? agamaId,
  //   int? golDarahId,
  //   int? statusNikahId,
  //   int? tanggunganId,
  //   String? hubDgnKaryawan,
  //   int? cutiJatahReguler,
  //   int? cutiSisaReguler,
  //   int? cutiPanjang,
  //   int? cutiSisaPanjang,
  //   int? statusKaryId,
  //   String? tglMasuk,
  //   String? tglBerhenti,
  //   String? alasanBerhenti,
  //   String? ukBaju,
  //   String? ukCelana,
  //   String? ukSepatu,
  // ) async {
  //   var url = Uri.parse(
  //       "${MyGeneralConst.API_URL}/path/to/your/api/endpoint?/$userId");
  //   return await GeneralServicesNoMobile.baseService(
  //     url: url,
  //     method: GeneralServicesMethodNoMobile.post,
  //     headers: GeneralServicesNoMobile.addToken2Headers(token),
  //     body: json.encode({
  //       "m_dir_id": dirId!,
  //       "m_divisi_id": divisiId!,
  //       "m_dept_id": deptId!,
  //       "m_zona_id": zonaId!,
  //       "grading_id": gradingId!,
  //       "costcontre_id": costcentreId!,
  //       "m_posisi_id": posisiId!,
  //       "m_jam_kerja_id": jamKerjaId!,
  //       "nik": nik!,
  //       "nama_depan": namaDepan!,
  //       "nama_belakang": namaBelakang!,
  //       "nama_lengkap": namaLengkap!,
  //       "nama_panggilan": namaPanggilan!,
  //       "jk_id": jkId!,
  //       "tempat_lahir": tempatLahir!,
  //       "tgl_lahir": tglLahir!,
  //       "provinsi_id": provinsiId!,
  //       "kota_id": kotaId!,
  //       "kecamatan_id": kecamatanId!,
  //       "kode_pos": kodePos!,
  //       "alamat_asli": alamatAsli!,
  //       "alamat_domisili": alamatDomisili!,
  //       "no_tlp": noTlp!,
  //       "no_tlp_lainnya": noTlpLainnya!,
  //       "no_darurat": noDarurat!,
  //       "nama_kontak_darurat": namaKontakDarurat!,
  //       "agama_id": agamaId!,
  //       "gol_darah_id": golDarahId!,
  //       "status_nikah_id": statusNikahId!,
  //       "tanggungan_id": tanggunganId!,
  //       "hub_dgn_karyawan": hubDgnKaryawan!,
  //       "cuti_jatah_reguler": cutiJatahReguler!,
  //       "cuti_sisa_reguler": cutiSisaReguler!,
  //       "cuti_panjang": cutiPanjang!,
  //       "cuti_sisa_panjang": cutiSisaPanjang!,
  //       "status_kary_id": statusKaryId!,
  //       "tgl_masuk": tglMasuk!,
  //       "tgl_berhenti": tglBerhenti!,
  //       "alasan_berhenti": alasanBerhenti!,
  //       "uk_baju": ukBaju!,
  //       "uk_celana": ukCelana!,
  //       "uk_sepatu": ukSepatu!,
  //     }),
  //   );
  // }
}

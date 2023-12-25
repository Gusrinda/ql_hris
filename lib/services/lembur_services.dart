import 'dart:convert';
import 'dart:io';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class LemburServices {
  static Future<Object> getListLembur(String token, DateTime date) async {
    var lastDate = DateTime(date.year, date.month + 1, 0).day;
    var lastDateStr = lastDate.toString();
    var formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-$lastDateStr";
    print("Tanggal Terakhir bulan ini adalah tanggal $formattedDate");
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/t_lembur?scopes=filter&date_from=${date.year}-${date.month.toString().padLeft(2, '0')}-1&date_to=$formattedDate");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> addLembur(
    String token,
    int mCompID,
    int mDirID,
    int mKaryID,
    String dateLembur,
    int alasanLemburID,
    int tipeLemburID,
    String timeFrom,
    String timeTo,
    // String? noDoc,
    // File? doc,
    String keterangan,
  ) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_lembur");
    print("Ini yang dikirim saat POST Cuti :");
    print("alasan_id : ${alasanLemburID}");
    print("tipe_lembur_id : ${tipeLemburID}");
    print("Tanggal : ${dateLembur}");
    print("keterangan : ${keterangan}");
    print("Ini mCompID : ${mCompID}");
    print("Ini mDirID : ${mDirID}");
    print("Ini mKaryID : ${mKaryID}");
    print("Ini timeFrom : ${timeFrom}");
    print("Ini timeTo : ${timeTo}");

    // Buat objek body dengan nilai null hanya untuk field-field yang tidak perlu dikirim
    Map<String, dynamic> body = {
      "m_comp_id": mCompID,
      "m_dir_id": mDirID,
      "m_kary_id": mKaryID,
      "alasan_id": alasanLemburID,
      "tipe_lembur_id": tipeLemburID,
      "tanggal": dateLembur,
      "jam_mulai": timeFrom,
      "jam_selesai": timeTo,
      "keterangan": keterangan,
    };

    // Tambahkan field-field opsional yang tidak perlu dikirim jika null
    // if (noDoc != null) body["no_doc"] = noDoc;
    // if (doc != null) body["doc"] = doc;

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode(body),
    );
  }

  // static Future<Object> addLembur(
  //   String token,
  //   int mCompID,
  //   int mDirID,
  //   int mKaryID,
  //   String dateLembur,
  //   int alasanLemburID,
  //   int tipeLemburID,
  //   String timeFrom,
  //   String timeTo,
  //   String? noDoc,
  //   File? doc,
  //   String keterangan,
  // ) async {
  //   var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_cuti");
  //   print("Ini yang dikirim saat POST Cuti :");
  //   print("alasan_id : ${alasanLemburID}");
  //   print("tipe_lembur_id : ${tipeLemburID}");
  //   print("Tanggal : ${dateLembur}");
  //   print("keterangan : ${keterangan}");
  //   print("Ini mCompID : ${mCompID}");
  //   print("Ini mDirID : ${mDirID}");
  //   print("Ini mKaryID : ${mKaryID}");
  //   print("Ini timeFrom : ${timeFrom}");
  //   print("Ini timeTo : ${timeTo}");

  //   return await GeneralServices.baseService(
  //     url: url,
  //     method: GeneralServicesMethod.post,
  //     headers: GeneralServices.addToken2Headers(token),
  //     body: json.encode({
  //       "m_comp_id": mCompID,
  //       "m_dir_id": mDirID,
  //       "m_kary_id": mKaryID,
  //       "alasan_id": alasanLemburID,
  //       "tipe_lembur_id": tipeLemburID,
  //       "tanggal": dateLembur,
  //       "jam_mulai": timeFrom,
  //       "jam_selesai": timeTo,
  //       "no_doc": noDoc,
  //       "doc": doc,
  //       "keterangan": keterangan,
  //     }),
  //   );
  // }

  static Future<Object> getAlasanLembur(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group='ALASAN LEMBUR' AND this.is_active='true'");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getTipeLembur(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group='TIPE LEMBUR' AND this.is_active='true'");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }
}

import 'dart:convert';

import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_pic_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class DinasServices {
  static Future<Object> getListDinas(String token, DateTime date) async {
    var lastDate = DateTime(date.year, date.month + 1, 0).day;
    var lastDateStr = lastDate.toString();
    var formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-$lastDateStr";
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/t_spd?date_from=${date.year}-${date.month}-1&date_to=$formattedDate");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> addDinas(
      String token,
      int divisi,
      int departemen,
      int posisi,
      int templateSpd,
      int direktorat,
      tanggal,
      tanggalAwal,
      tanggalAkhir,
      int jenisSpd,
      int zonaAsal,
      int zonaTujuan,
      int lokasiTujuan,
      int pic) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_spd");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "m_divisi_id": divisi,
        "m_dept_id": departemen,
        "m_posisi_id": posisi,
        "m_spd_id": templateSpd,
        "m_dir_id": direktorat,
        "tanggal": tanggal,
        "tgl_acara_awal": tanggalAwal,
        "tgl_acara_akhir": tanggalAkhir,
        "jenis_spd_id": jenisSpd,
        "m_zona_asal_id": zonaAsal,
        "m_zona_tujuan_id": zonaTujuan,
        "m_lokasi_tujuan_id": lokasiTujuan,
        "pic_id": pic,
        "total_biaya": 0,
      }),
    );
  }

  static Future<Object> getDivisi(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_divisi");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getDepartemen(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_dept");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getPosisi(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_posisi");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getTemplateSpd(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_spd");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getDirektorat(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_dir");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getJenisSpd(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=jenisSPD");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getZona(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_zona");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getLokasiTujuan(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_lokasi");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getPic(
      String token, int page, String? search, String? searchField) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/default_users?page=$page&search=$search&searchfield=$searchField");
    print("URL SEARCH ? ${url}");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

// static Future<List<DataPic>> getAllPics(String token) async {
//   List<DataPic> allPics = [];
//   int currentPage = 1;

//   while (true) {
//     var response = await getPic(token, currentPage);

//     if (response is ServicesSuccess && response.response is Map<String, dynamic>) {
//       var picData = response.response["data"] as List<dynamic>;
//       List<DataPic> currentPagePics = picData.map((data) => DataPic.fromJson(data)).toList();

//       allPics.addAll(currentPagePics);
//       currentPage++;

//       // Cek apakah masih ada halaman berikutnya
//       var hasNextPage = response.response["has_next"] ?? false;
//       if (!hasNextPage) {
//         break;
//       }
//     } else {
//       // Handle kesalahan
//       break;
//     }
//   }

//   return allPics;
// }

// static Future<Object> getPic(String token, int page) async {
//   var url = Uri.parse("${MyGeneralConst.API_URL}/operation/default_users?page=$page");
//   return await GeneralServices.baseService(
//     url: url,
//     method: GeneralServicesMethod.get,
//     headers: GeneralServices.addToken2Headers(token),
//   );
// }
}

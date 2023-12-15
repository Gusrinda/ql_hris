import 'dart:convert';

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
      int pic,
      int kendDinas) async {
    print('Token: $token');
    print('ini divisi: $divisi');
    print('ini departemen: $departemen');
    print('ini posisi: $posisi');
    print('ini template spd: $templateSpd');
    print('ini direktorat: $direktorat');
    print('ini tanggal: $tanggal');
    print('ini tanggal awal: $tanggalAwal');
    print('ini tanggal akhir: $tanggalAkhir');
    print('ini jenis spd: $jenisSpd');
    print('ini zona asal: $zonaAsal');
    print('ini zona tujuan: $zonaTujuan');
    print('ini lokasi tujuan: $lokasiTujuan');
    print('ini pic: $pic');
    print('ini kenddinas: $kendDinas');

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
        "is_kend_dinas": kendDinas,
      }),
    );
  }

  static Future<Object> getDivisi(
      String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_divisi?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getDepartemen(
      String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_dept?paginate=1000");
    // print("URL SEARCH ? ${url}");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getPosisi(
      String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_posisi?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getTemplateSpd(
      String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_spd?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getDirektorat(
      String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_dir?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getJenisSpd(
      String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getZona(
      String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_zona?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getLokasiTujuan(
      String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_lokasi?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getPic(
      String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/default_users?paginate=1000");
    // print("URL SEARCH ? ${url}");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> editDinas(
    String token,
    int dinasId,
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
    int pic,
    int kendDinas,
  ) async {
    print('ini divisi: $divisi');
    print('ini departemen: $departemen');
    print('ini posisi: $posisi');
    print('ini template spd: $templateSpd');
    print('ini direktorat: $direktorat');
    print('ini tanggal: $tanggal');
    print('ini tanggal awal: $tanggalAwal');
    print('ini tanggal akhir: $tanggalAkhir');
    print('ini jenis spd: $jenisSpd');
    print('ini zona asal: $zonaAsal');
    print('ini zona tujuan: $zonaTujuan');
    print('ini lokasi tujuan: $lokasiTujuan');
    print('ini pic: $pic');
    print('ini kenddinas: $kendDinas');
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_spd/$dinasId");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.put,
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
        "is_kend_dinas": kendDinas,
      }),
    );
  }
}

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
        "${MyGeneralConst.API_URL}/operation/t_spd?where=this.created_at between '${date.year}-${date.month.toString().padLeft(2, '0')}-01 00:00:00' and '$formattedDate 23:59:59'");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> addDinas(
    String token,
    int divisi,
    int departemen,
    int posisi,
    int? templateSpd,
    // int direktorat,
    tanggal,
    tanggalAwal,
    tanggalAkhir,
    int jenisSpd,
    int zonaAsal,
    int zonaTujuan,
    int lokasiTujuan,
    // int biaya,
    int pic,
    int kendDinas,
    String desc,
  ) async {
    print('Token: $token');
    print('ini divisi: $divisi');
    print('ini departemen: $departemen');
    print('ini posisi: $posisi');
    print('ini template spd: $templateSpd');
    // print('ini direktorat: $direktorat');
    print('ini tanggal: $tanggal');
    print('ini tanggal awal: $tanggalAwal');
    print('ini tanggal akhir: $tanggalAkhir');
    print('ini jenis spd: $jenisSpd');
    print('ini zona asal: $zonaAsal');
    print('ini zona tujuan: $zonaTujuan');
    print('ini lokasi tujuan: $lokasiTujuan');
    print('ini pic: $pic');
    print('ini kenddinas: $kendDinas');
    print('Kendaraan: $desc');

    Object requestBody = {
      "m_divisi_id": divisi,
      // "m_dir_id": direktorat,
      "m_dept_id": departemen,
      "m_posisi_id": posisi,
      "m_spd_id": templateSpd,
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
      "catatan_kend": desc,
    }..removeWhere((key, value) => value == null || value == '' || value == -99);

    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_spd");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: json.encode(requestBody),
    );
  }

  static Future<Object> getDivisi(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_divisi?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getDepartemen(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_dept?paginate=1000");
    // print("URL SEARCH ? ${url}");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getPosisi(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_posisi?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getTemplateSpd(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_spd?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getDirektorat(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_dir?paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getJenisSpd(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=jenisSPD&paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getZona(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_zona?paginate=2000&filter_is_active=true");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getLokasiTujuan(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_lokasi?paginate=2000&filter_is_active=true");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> getPic(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/default_users?scopes=pic&paginate=500000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> editDinas(
    String token,
    int spdID,
    int divisi,
    int departemen,
    int posisi,
    int? templateSpd,
    // int direktorat,
    tanggal,
    tanggalAwal,
    tanggalAkhir,
    int jenisSpd,
    int zonaAsal,
    int zonaTujuan,
    int lokasiTujuan,
    // int biaya,
    int pic,
    int kendDinas,
    String desc,
  ) async {
    print('Token: $token');
    print('ini divisi: $divisi');
    print('ini departemen: $departemen');
    print('ini posisi: $posisi');
    print('ini template spd: $templateSpd');
    // print('ini direktorat: $direktorat');
    print('ini tanggal: $tanggal');
    print('ini tanggal awal: $tanggalAwal');
    print('ini tanggal akhir: $tanggalAkhir');
    print('ini jenis spd: $jenisSpd');
    print('ini zona asal: $zonaAsal');
    print('ini zona tujuan: $zonaTujuan');
    print('ini lokasi tujuan: $lokasiTujuan');
    print('ini pic: $pic');
    print('ini kenddinas: $kendDinas');
    print('Kendaraan: $desc');

    Object requestBody = {
      "m_divisi_id": divisi,
      // "m_dir_id": direktorat,
      "m_dept_id": departemen,
      "m_posisi_id": posisi,
      "m_spd_id": templateSpd,
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
      "catatan_kend": desc,
    }..removeWhere((key, value) => value == null || value == '' || value == -99);

    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_spd/$spdID");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.put,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
      body: json.encode(requestBody),
    );
  }
}

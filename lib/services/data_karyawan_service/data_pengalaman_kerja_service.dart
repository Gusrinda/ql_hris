import 'dart:convert';
import 'dart:io';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:http/http.dart' as http;

class DataPengalamanKerjaService {
  static Future<Object> getListPengalaman(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/pk");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> deleteDataPengalaman(
      String token, String dataID) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_kary/pk_delete");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.delete,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "id": dataID,
      }),
    );
  }

  static Future<Object> createDataPengalamanKerja(
    String token,
    int compId,
    int dirId,
    String instansi,
    String bidangUsaha,
    String noTelp,
    String posisi,
    String tahunMasuk,
    String tahunKeluar,
    String alamat,
    int kotaId,
    File suratReferensi,
  ) async {
    try {
      var url =
          Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/pk_create");

      print("Ini yang dikirim saat POST Pendidikan :");
      print("compId : ${compId}");
      print("dirId : ${dirId}");
      print("tahunMasuk : ${tahunMasuk}");
      print("instansi : ${instansi}");
      print("bidangUsaha : ${bidangUsaha}");
      print("noTelp : ${noTelp}");
      print("posisi : ${posisi}");
      print("tahunMasuk : ${tahunMasuk}");
      print("tahunKeluar : ${tahunKeluar}");
      print("alamat : ${alamat}");
      print("kotaId : ${kotaId}");
      print("suratReferensi : ${suratReferensi}");

      var request = http.MultipartRequest('POST', url)
        ..headers.addAll(GeneralServices.addToken2Headers(token));

      // Mengirimkan Data Biasa
      request.fields['m_comp_id'] = compId.toString();
      request.fields['m_dir_id'] = dirId.toString();
      request.fields['instansi'] = instansi;
      request.fields['bidang_usaha'] = bidangUsaha;
      request.fields['no_tlp'] = noTelp;
      request.fields['posisi'] = posisi;
      request.fields['thn_masuk'] = tahunMasuk;
      request.fields['thn_keluar'] = tahunKeluar;
      request.fields['alamat_kantor'] = alamat;
      request.fields['kota_id'] = kotaId.toString();
      // request.fields['surat_referensi'] = suratReferensi;

      // Mengirimkan File
      request.files.add(
        await http.MultipartFile.fromPath(
            'surat_referensi', suratReferensi.path),
      );

      var response = await request.send();
      var responseBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        return ServicesSuccess(
          code: response.statusCode,
          response: json.decode(responseBody),
        );
      } else {
        return ServicesFailure(
          code: response.statusCode,
          errorResponse: json.decode(responseBody)['message'],
        );
      }
    } catch (e) {
      // Handle exceptions
      print("Exception: $e");
      return ServicesFailure(
        code: MyGeneralConst.CODE_UNKWON_ERROR,
        errorResponse: "Unknown Error!\nPlease try again!",
      );
    }
  }
}

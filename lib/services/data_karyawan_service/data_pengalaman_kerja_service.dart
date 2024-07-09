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
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }

  static Future<Object> deleteDataPengalaman(
      String token, String dataID) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/pk_delete");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.delete,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
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
    File? suratReferensi,
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
        ..headers.addAll(GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ));

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
      Map<String, File?> files = {
        'surat_referensi': suratReferensi,
      }..removeWhere((key, value) => value == null || value.path.isEmpty);

      request.files.addAll(await Future.wait(
        files.entries.map(
          (entry) async => await http.MultipartFile.fromPath(
            entry.key,
            entry.value!.path,
          ),
        ),
      ));

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

  static Future<Object> editDataPengalamanKerja(
    String token,
    int compId,
    int dirId,
    int pengalamanId,
    String instansi,
    String bidangUsaha,
    String noTelp,
    String posisi,
    String tahunMasuk,
    String tahunKeluar,
    String alamat,
    int kotaId,
    File? suratReferensi,
  ) async {
    try {
      print("Ini yang dikirim saat Edit Pendidikan :");
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

      Object requestBody = {
        'id': pengalamanId,
        'm_comp_id': compId,
        'm_dir_id': dirId,
        'instansi': instansi,
        'bidang_usaha': bidangUsaha,
        'no_tlp': noTelp,
        'posisi': posisi,
        'thn_masuk': tahunMasuk,
        'thn_keluar': tahunKeluar,
        'alamat_kantor': alamat,
        'kota_id': kotaId,
      };

      Map<String, File?> files = {
        'surat_referensi': suratReferensi,
      }..removeWhere((key, value) => value == null || value.path.isEmpty);

      // Pengecekan tambahan untuk menghapus yang data path kosong
      files.removeWhere(
          (key, value) => value?.path == '' || value?.path == 'kosong');

      return await GeneralServices.baseService(
        url: Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/pk_update"),
        method: GeneralServicesMethod.putMultiFiles,
        headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
        body: requestBody,
        files: files,
      );
    } on HttpException {
      return ServicesFailure(
          code: MyGeneralConst.CODE_NO_INTERNET_CONNECTION,
          errorResponse: "No Internet Connection");
    } on FormatException {
      return ServicesFailure(
          code: MyGeneralConst.CODE_INVALID_FORMAT,
          errorResponse: "Invalid Format");
    } catch (e) {
      print("Exception: $e");
      return ServicesFailure(
        code: MyGeneralConst.CODE_UNKWON_ERROR,
        errorResponse: "$e",
      );
    }
  }

  // static Future<Object> editDataPengalamanKerja(
  //   String token,
  //   int compId,
  //   int dirId,
  //   int pengalamanId,
  //   String instansi,
  //   String bidangUsaha,
  //   String noTelp,
  //   String posisi,
  //   String tahunMasuk,
  //   String tahunKeluar,
  //   String alamat,
  //   int kotaId,
  //   File? suratReferensi,
  // ) async {
  //   try {
  //     var url =
  //         Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/pk_update");

  //     var request = http.MultipartRequest('POST', url)
  //       ..headers.addAll(GeneralServices.addToken2Headers(
      //   token: token,
      //   isServiceNoMobile: false,
      // ));

  //     // Mengirimkan Data Biasa
  //     request.fields['id'] = pengalamanId.toString();
  //     request.fields['m_comp_id'] = compId.toString();
  //     request.fields['m_dir_id'] = dirId.toString();
  //     request.fields['instansi'] = instansi;
  //     request.fields['bidang_usaha'] = bidangUsaha;
  //     request.fields['no_tlp'] = noTelp;
  //     request.fields['posisi'] = posisi;
  //     request.fields['thn_masuk'] = tahunMasuk;
  //     request.fields['thn_keluar'] = tahunKeluar;
  //     request.fields['alamat_kantor'] = alamat;
  //     request.fields['kota_id'] = kotaId.toString();
  //     // request.fields['surat_referensi'] = suratReferensi;

  //     // Mengirimkan File
  //     Map<String, File?> files = {
  //       'surat_referensi': suratReferensi,
  //     }..removeWhere((key, value) => value == null || value.path.isEmpty);

  //     request.files.addAll(await Future.wait(
  //       files.entries.map(
  //         (entry) async => await http.MultipartFile.fromPath(
  //           entry.key,
  //           entry.value!.path,
  //         ),
  //       ),
  //     ));

  //     var response = await request.send();
  //     var responseBody = await response.stream.bytesToString();

  //     if (response.statusCode == 200) {
  //       return ServicesSuccess(
  //         code: response.statusCode,
  //         response: json.decode(responseBody),
  //       );
  //     } else {
  //       return ServicesFailure(
  //         code: response.statusCode,
  //         errorResponse: json.decode(responseBody)['message'],
  //       );
  //     }
  //   } catch (e) {
  //     // Handle exceptions
  //     print("Exception: $e");
  //     return ServicesFailure(
  //       code: MyGeneralConst.CODE_UNKWON_ERROR,
  //       errorResponse: "Unknown Error!\nPlease try again!",
  //     );
  //   }
  // }
}

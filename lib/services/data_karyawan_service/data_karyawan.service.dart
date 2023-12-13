import 'dart:convert';
import 'dart:io';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:http/http.dart' as http;

class DataKaryawanService {

  static Future<Object> createDataPendidikan(
    String token,
    int tingkatID,
    String namaSekolah,
    String tahunMasuk,
    String tahunLulus,
    int kotaID,
    double nilai,
    String jurusan,
    int isPendTerakhir,
    String ijazahNo,
    File ijazahFoto,
    String desc,
  ) async {
    try {
      var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/pendidikan_create");

      print("Ini yang dikirim saat POST Pendidikan :");
      print("tingkat_id : ${tingkatID}");
      print("nama_sekolah : ${namaSekolah}");
      print("thn_masuk : ${tahunMasuk}");
      print("thn_lulus : ${tahunLulus}");
      print("kota_id : ${kotaID}");
      print("nilai : ${nilai}");
      print("jurusan : ${jurusan}");
      print("is_pend_terakhir : ${isPendTerakhir}");
      print("ijazah_no : ${ijazahNo}");
      print("desc : ${desc}");
      print("ijazah_foto : ${ijazahFoto}");

      var request = http.MultipartRequest('POST', url)
        ..headers.addAll(GeneralServices.addToken2Headers(token));

      // Mengirimkan Data Biasa
      request.fields['tingkat_id'] = tingkatID.toString();
      request.fields['nama_sekolah'] = namaSekolah;
      request.fields['thn_masuk'] = tahunMasuk;
      request.fields['thn_lulus'] = tahunLulus;
      request.fields['kota_id'] = kotaID.toString();
      request.fields['nilai'] = nilai.toString();
      request.fields['jurusan'] = jurusan;
      request.fields['is_pend_terakhir'] = isPendTerakhir.toString();
      request.fields['ijazah_no'] = ijazahNo;
      request.fields['desc'] = desc;

      // Mengirimkan File
      request.files.add(
        await http.MultipartFile.fromPath('ijazah_foto', ijazahFoto.path),
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

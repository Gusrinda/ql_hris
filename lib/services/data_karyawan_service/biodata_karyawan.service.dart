import 'dart:convert';
import 'dart:io';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';
import 'package:http/http.dart' as http;

class BiodataKaryawanService {
  static Future<Object> getBiodataKaryawan(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_kary/data_diri");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  // static Future<Object> editDataDiri(
  //   String token,
  //   int? userId,
  //   Map<String, dynamic> biodataFields,
  // ) async {
  //   var url = Uri.parse(
  //       "${MyGeneralConst.API_URL}/operation/m_kary/data_diri_update");

  //   Map<String, dynamic> requestBody = {};

  //   if (userId != null) requestBody["user_id"] = userId;
  //   biodataFields.forEach((key, value) {
  //     if (value != null) {
  //       requestBody[key] = value;
  //     }
  //   });

  //   return await GeneralServices.baseService(
  //     url: url,
  //     method: GeneralServicesMethod.post,
  //     headers: GeneralServices.addToken2Headers(token),
  //     body: json.encode(requestBody),
  //   );
  // }

  static Future<Object> editDataDiri(
    String token,
    int? userId,
    int? divisiId,
    int? deptId,
    int? zonaId,
    int? posisiId,
    String? kodePresensi,
    String? namaDepan,
    String? namaBelakang,
    String? namaLengkap,
    String? namaPanggilan,
    int? jkId,
    String? tempatLahir,
    String? tglLahir,
    int? provinsiId,
    int? kotaId,
    int? kecamatanId,
    String? kodePos,
    String? alamatAsli,
    String? alamatDomisili,
    String? noTlp,
    String? noTlpLainnya,
    String? noDarurat,
    String? namaKontakDarurat,
    int? agamaId,
    int? golDarahId,
    int? statusNikahId,
    int? tanggunganId,
    String? hubDgnKaryawan,
    String? tglMasuk,
    String? ukBaju,
    String? ukCelana,
    String? ukSepatu,
    File? ktpFoto,
    File? pasFoto,
    File? bpjsFoto,
    String? ktpNo,
    String? kkNo,
    File? kkFoto,
    String? npwpNo,
    File? npwpFoto,
    String? npwpTglBerlaku,
    int? bpjsTipeId,
    String? bpjsNo,
    // File? berkasLain,
    String? desc,
    int? bankId,
    String? noRek,
    String? atasNamaRek,
  ) async {
    try {
      var url = Uri.parse(
          "${MyGeneralConst.API_URL}/operation/m_kary/data_diri_update");
      var request = http.MultipartRequest('POST', url)
        ..headers.addAll(GeneralServices.addToken2Headers(token));

      print("Ini yang dikirim saat POST Biodata :");
      print("Divisi : ${divisiId}");
      print("departemen : ${deptId}");
      print("zona : ${zonaId}");
      print("posisi : ${posisiId}");
      print("kode Presensi : ${kodePresensi}");
      print("nama Depan : ${namaDepan}");
      print("nama Belakang : ${namaBelakang}");
      print("nama Lengkap : ${namaLengkap}");
      print("nama panggilan : ${namaPanggilan}");
      print("jenis kelamin : ${jkId}");
      print("tempat lahir : ${tempatLahir}");
      print("tgl lahir : ${tglLahir}");
      print("provinsi : ${provinsiId}");
      print("kota : ${kotaId}");
      print("kecamatan : ${kecamatanId}");
      print("kode pos : ${kodePos}");
      print("Foto Ktp : ${ktpFoto}");
      print("Foto karyawan : ${pasFoto}");
      print("Foto Kk : ${kkFoto}");
      print("Foto npwp : ${npwpFoto}");
      print("Foto bpjs : ${bpjsFoto}");
      // print("Foto berkas lain : ${berkasLain}");

      request.fields["m_divisi_id"] = divisiId.toString();
      request.fields["m_dept_id"] = deptId.toString();
      request.fields["m_zona_id"] = zonaId.toString();
      request.fields["m_posisi_id"] = posisiId.toString();
      request.fields["kode_presensi"] = kodePresensi!;
      request.fields["nama_depan"] = namaDepan!;
      request.fields["nama_belakang"] = namaBelakang!;
      request.fields["nama_lengkap"] = namaLengkap!;
      request.fields["nama_panggilan"] = namaPanggilan!;
      request.fields["jk_id"] = jkId.toString();
      request.fields["tempat_lahir"] = tempatLahir!;
      request.fields["tgl_lahir"] = tglLahir!;
      request.fields["provinsi_id"] = provinsiId.toString();
      request.fields["kota_id"] = kotaId.toString();
      request.fields["kecamatan_id"] = kecamatanId.toString();
      request.fields["kode_pos"] = kodePos!;
      request.fields["alamat_asli"] = alamatAsli!;
      request.fields["alamat_domisili"] = alamatDomisili!;
      request.fields["no_tlp"] = noTlp!;
      request.fields["no_tlp_lainnya"] = noTlpLainnya!;
      request.fields["no_darurat"] = noDarurat!;
      request.fields["nama_kontak_darurat"] = namaKontakDarurat!;
      request.fields["agama_id"] = agamaId.toString();
      request.fields["gol_darah_id"] = golDarahId.toString();
      request.fields["status_nikah_id"] = statusNikahId.toString();
      request.fields["tanggungan_id"] = tanggunganId.toString();
      request.fields["hub_dgn_karyawan"] = hubDgnKaryawan!;
      request.fields["tgl_masuk"] = tglMasuk!;
      request.fields["uk_baju"] = ukBaju!;
      request.fields["uk_celana"] = ukCelana!;
      request.fields["uk_sepatu"] = ukSepatu!;
      request.fields["ktp_no"] = ktpNo!;
      request.fields["kk_no"] = kkNo!;
      request.fields["npwp_no"] = npwpNo!;
      request.fields["npwp_tgl_berlaku"] = npwpTglBerlaku!;
      request.fields["bpjs_tipe_id"] = bpjsTipeId.toString();
      request.fields["bpjs_no"] = bpjsNo!;
      request.fields["desc_file"] = desc!;
      request.fields["bank_id"] = bankId.toString();
      request.fields["no_rek"] = noRek!;
      request.fields["atas_nama_rek"] = atasNamaRek!;

      // Mengirimkan File
      request.files.addAll([
        await http.MultipartFile.fromPath("ktp_foto", ktpFoto!.path),
        await http.MultipartFile.fromPath("pas_foto", pasFoto!.path),
        await http.MultipartFile.fromPath("kk_foto", kkFoto!.path),
        await http.MultipartFile.fromPath("npwp_foto", npwpFoto!.path),
        await http.MultipartFile.fromPath("bpjs_foto", bpjsFoto!.path),
        // await http.MultipartFile.fromPath("berkas_lain", berkasLain!.path),
      ]);

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
      print("Exception: $e");
      return ServicesFailure(
        code: MyGeneralConst.CODE_UNKWON_ERROR,
        errorResponse: "Unknown Error!\nPlease try again!",
      );
    }
  }
}

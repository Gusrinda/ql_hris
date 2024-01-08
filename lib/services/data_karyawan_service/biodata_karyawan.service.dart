// ignore_for_file: avoid_print, curly_braces_in_flow_control_structures

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

  static Future<Object> editDataDiri(
      String token,
      int? userId,
      int? divisiId,
      int? deptId,
      int? zonaId,
      int? posisiId,
      String? kodePresensi,
      String? nik,
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
      // File? bpjsFoto,
      String? ktpNo,
      String? kkNo,
      File? kkFoto,
      String? npwpNo,
      File? npwpFoto,
      String? npwpTglBerlaku,
      int? bpjsTipeId,
      String? bpjsNo,
      String? bpjsKerjaNo,
      File? berkasLain,
      String? desc,
      int? bankId,
      String? noRek,
      String? atasNamaRek) async {
    try {
      print("zona : $zonaId");
      print("posisi : $posisiId");
      print("kode Presensi : $kodePresensi");
      print("nama Depan : $namaDepan");
      print("nama Belakang : $namaBelakang");
      print("nama Lengkap : $namaLengkap");
      print("nama panggilan : $namaPanggilan");
      print("jenis kelamin : $jkId");
      print("tempat lahir : $tempatLahir");
      print("tgl lahir : $tglLahir");
      print("provinsi : $provinsiId");
      print("kota : $kotaId");
      print("kecamatan : $kecamatanId");
      print("kode pos : $kodePos");
      print("alamat Asli : $alamatAsli");
      print("alamat Domisili : $alamatDomisili");
      print("no telp : $noTlp");
      print("no telp lainnya : $noTlpLainnya");
      print("no darurat : $noDarurat");
      print("nama kontak darurat : $namaKontakDarurat");
      print("agama : $agamaId");
      print("golongan darah : $golDarahId");
      print("status nikah : $statusNikahId");
      print("tanggungan : $tanggunganId");
      print("hubungan dengan karyawan : $hubDgnKaryawan");
      print("tanggal masuk : $tglMasuk");
      print("ukuran baju : $ukBaju");
      print("ukuran celana : $ukCelana");
      print("ukuran sepatu : $ukSepatu");
      print("no KTP : $ktpNo");
      print("no KK : $kkNo");
      print("no NPWP : $npwpNo");
      print("tanggal berlaku NPWP : $npwpTglBerlaku");
      print("tipe BPJS : $bpjsTipeId");
      print("no BPJS : $bpjsNo");
      print("deskripsi berkas : $desc");
      print("bank : $bankId");
      print("no rekening : $noRek");
      print("atas nama rekening : $atasNamaRek");

      print("Files yang diUpload:");
      print("File KTP : ${File(ktpFoto?.path ?? "")}");
      print("File KTP : ${File(pasFoto?.path ?? "")}");
      // print("File KTP : ${File(bpjsFoto?.path ?? "")}");
      print("File KTP : ${File(kkFoto?.path ?? "")}");
      print("File KTP : ${File(npwpFoto?.path ?? "")}");
      print("File KTP : ${File(berkasLain?.path ?? "")}");

      // Create a map for the request body
      Object requestBody = {
        'm_divisi_id': divisiId,
        'm_dept_id': deptId,
        'm_zona.id': zonaId,
        'm_posisi_id': posisiId,
        'kode_presensi': kodePresensi,
        'nik': nik,
        'nama_depan': namaDepan,
        'nama_belakang': namaBelakang,
        'nama_lengkap': namaLengkap,
        'nama_panggilan': namaPanggilan,
        'jk_id': jkId,
        'tempat_lahir': tempatLahir,
        'tgl_lahir': tglLahir,
        'provinsi_id': provinsiId,
        'kota_id': kotaId,
        'kecamatan_id': kecamatanId,
        'kode_pos': kodePos,
        'alamat_asli': alamatAsli,
        'alamat_domisili': alamatDomisili,
        'no_tlp': noTlp,
        'no_tlp_lainnya': noTlpLainnya,
        'no_darurat': noDarurat,
        'nama_kontak_darurat': namaKontakDarurat,
        'agama_id': agamaId,
        'gol_darah_id': golDarahId,
        'status_nikah_id': statusNikahId,
        'tanggungan_id': tanggunganId,
        'hub_dgn_karyawan': hubDgnKaryawan,
        'tgl_masuk': tglMasuk,
        'uk_baju': ukBaju,
        'uk_celana': ukCelana,
        'uk_sepatu': ukSepatu,
        'ktp_no': ktpNo,
        'kk_no': kkNo,
        'npwp_no': npwpNo,
        'npwp_tgl_berlaku': npwpTglBerlaku,
        'bpjs_tipe_id': bpjsTipeId,
        'bpjs_no': bpjsNo,
        'bpjs_no_kesehatan': bpjsNo,
        'bpjs_no_ketenagakerjaan': bpjsKerjaNo,
        'desc_file': desc,
        'bank_id': bankId,
        'no_rek': noRek,
        'atas_nama_rek': atasNamaRek,
      }..removeWhere(
          (key, value) => value == null || value == '' || value == ' ');

      Map<String, File?> files = {
        'ktp_foto': File(ktpFoto?.path ?? ''),
        'pas_foto': File(pasFoto?.path ?? ''),
        // 'bpjs_foto': File(bpjsFoto?.path ?? ''),
        'kk_foto': File(kkFoto?.path ?? ''),
        'npwp_foto': File(npwpFoto?.path ?? ''),
        'berkas_lain': File(berkasLain?.path ?? ''),
      }..removeWhere((key, value) => value == null || value.path.isEmpty);

      // Pengecekan tambahan untuk menghapus yang data path kosong
      files.removeWhere(
          (key, value) => value?.path == '' || value?.path == 'kosong');

      return await GeneralServices.baseService(
        url: Uri.parse(
            "${MyGeneralConst.API_URL}/operation/m_kary/data_diri_update"),
        method: GeneralServicesMethod.postMultiFiles,
        headers: GeneralServices.addToken2Headers(token),
        body: requestBody,
        files: files,
      );

      // Map<String, File?> filesMap = {
      //   'ktp_foto': File(ktpFoto!.path),
      //   'pas_foto': File(pasFoto!.path),
      //   'bpjs_foto': File(bpjsFoto!.path),
      //   'kk_foto': File(kkFoto!.path),
      //   'npwp_foto': File(npwpFoto!.path),
      //   'berkas_lain': File(berkasLain!.path),
      // }..removeWhere((key, value) => value == null || value == File(''));

      // return await GeneralServices.baseService(
      //   url: Uri.parse(
      //       "${MyGeneralConst.API_URL}/operation/m_kary/data_diri_update"),
      //   method: GeneralServicesMethod.post,
      //   headers: GeneralServices.addToken2Headers(token),
      //   body: json.encode(requestBody),
      //   // files: filesMap,
      // );
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

  // static Future<Object> editDataDiri(
  //   String token,
  //   int? userId,
  //   int? divisiId,
  //   int? deptId,
  //   int? zonaId,
  //   int? posisiId,
  //   String? kodePresensi,
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
  //   String? tglMasuk,
  //   String? ukBaju,
  //   String? ukCelana,
  //   String? ukSepatu,
  //   File? ktpFoto,
  //   File? pasFoto,
  //   File? bpjsFoto,
  //   String? ktpNo,
  //   String? kkNo,
  //   File? kkFoto,
  //   String? npwpNo,
  //   File? npwpFoto,
  //   String? npwpTglBerlaku,
  //   int? bpjsTipeId,
  //   String? bpjsNo,
  //   File? berkasLain,
  //   String? desc,
  //   int? bankId,
  //   String? noRek,
  //   String? atasNamaRek,
  // ) async {
  //   try {
  //     var url = Uri.parse(
  //         "${MyGeneralConst.API_URL}/operation/m_kary/data_diri_update");
  //     var request = http.MultipartRequest('POST', url)
  //       ..headers.addAll(GeneralServices.addToken2Headers(token));

  //     print("zona : $zonaId");
  //     print("posisi : $posisiId");
  //     print("kode Presensi : $kodePresensi");
  //     print("nama Depan : $namaDepan");
  //     print("nama Belakang : $namaBelakang");
  //     print("nama Lengkap : $namaLengkap");
  //     print("nama panggilan : $namaPanggilan");
  //     print("jenis kelamin : $jkId");
  //     print("tempat lahir : $tempatLahir");
  //     print("tgl lahir : $tglLahir");
  //     print("provinsi : $provinsiId");
  //     print("kota : $kotaId");
  //     print("kecamatan : $kecamatanId");
  //     print("kode pos : $kodePos");
  //     print("alamat Asli : $alamatAsli");
  //     print("alamat Domisili : $alamatDomisili");
  //     print("no telp : $noTlp");
  //     print("no telp lainnya : $noTlpLainnya");
  //     print("no darurat : $noDarurat");
  //     print("nama kontak darurat : $namaKontakDarurat");
  //     print("agama : $agamaId");
  //     print("golongan darah : $golDarahId");
  //     print("status nikah : $statusNikahId");
  //     print("tanggungan : $tanggunganId");
  //     print("hubungan dengan karyawan : $hubDgnKaryawan");
  //     print("tanggal masuk : $tglMasuk");
  //     print("ukuran baju : $ukBaju");
  //     print("ukuran celana : $ukCelana");
  //     print("ukuran sepatu : $ukSepatu");
  //     print("no KTP : $ktpNo");
  //     print("no KK : $kkNo");
  //     print("no NPWP : $npwpNo");
  //     print("tanggal berlaku NPWP : $npwpTglBerlaku");
  //     print("tipe BPJS : $bpjsTipeId");
  //     print("no BPJS : $bpjsNo");
  //     print("deskripsi berkas : $desc");
  //     print("bank : $bankId");
  //     print("no rekening : $noRek");
  //     print("atas nama rekening : $atasNamaRek");

  //     // Tambahkan field-field opsional yang tidak perlu dikirim jika null
  //     if (zonaId != null) request.fields["m_zona_id"] = zonaId.toString();
  //     if (posisiId != null) request.fields["m_posisi_id"] = posisiId.toString();
  //     if (kodePresensi != null) request.fields["kode_presensi"] = kodePresensi;
  //     if (namaDepan != null) request.fields["nama_depan"] = namaDepan;
  //     if (namaBelakang != null) request.fields["nama_belakang"] = namaBelakang;
  //     if (namaLengkap != null) request.fields["nama_lengkap"] = namaLengkap;
  //     if (namaPanggilan != null)
  //       request.fields["nama_panggilan"] = namaPanggilan;
  //     if (jkId != null) request.fields["jk_id"] = jkId.toString();
  //     if (tempatLahir != null) request.fields["tempat_lahir"] = tempatLahir;
  //     if (tglLahir != null) request.fields["tgl_lahir"] = tglLahir;
  //     if (provinsiId != null)
  //       request.fields["provinsi_id"] = provinsiId.toString();
  //     if (kotaId != null) request.fields["kota_id"] = kotaId.toString();
  //     if (kecamatanId != null)
  //       request.fields["kecamatan_id"] = kecamatanId.toString();
  //     if (kodePos != null) request.fields["kode_pos"] = kodePos;
  //     if (alamatAsli != null) request.fields["alamat_asli"] = alamatAsli;
  //     if (alamatDomisili != null)
  //       request.fields["alamat_domisili"] = alamatDomisili;
  //     if (noTlp != null) request.fields["no_tlp"] = noTlp;
  //     if (noTlpLainnya != null) request.fields["no_tlp_lainnya"] = noTlpLainnya;
  //     if (noDarurat != null) request.fields["no_darurat"] = noDarurat;
  //     if (namaKontakDarurat != null)
  //       request.fields["nama_kontak_darurat"] = namaKontakDarurat;
  //     if (agamaId != null) request.fields["agama_id"] = agamaId.toString();
  //     if (golDarahId != null)
  //       request.fields["gol_darah_id"] = golDarahId.toString();
  //     if (statusNikahId != null)
  //       request.fields["status_nikah_id"] = statusNikahId.toString();
  //     if (tanggunganId != null)
  //       request.fields["tanggungan_id"] = tanggunganId.toString();
  //     if (hubDgnKaryawan != null)
  //       request.fields["hub_dgn_karyawan"] = hubDgnKaryawan;
  //     if (tglMasuk != null) request.fields["tgl_masuk"] = tglMasuk;
  //     if (ukBaju != null) request.fields["uk_baju"] = ukBaju;
  //     if (ukCelana != null) request.fields["uk_celana"] = ukCelana;
  //     if (ukSepatu != null) request.fields["uk_sepatu"] = ukSepatu;
  //     if (ktpNo != null) request.fields["ktp_no"] = ktpNo;
  //     if (kkNo != null) request.fields["kk_no"] = kkNo;
  //     if (npwpNo != null) request.fields["npwp_no"] = npwpNo;
  //     if (npwpTglBerlaku != null)
  //       request.fields["npwp_tgl_berlaku"] = npwpTglBerlaku;
  //     if (bpjsTipeId != null)
  //       request.fields["bpjs_tipe_id"] = bpjsTipeId.toString();
  //     if (bpjsNo != null) request.fields["bpjs_no"] = bpjsNo;
  //     if (desc != null) request.fields["desc_file"] = desc;
  //     if (bankId != null) request.fields["bank_id"] = bankId.toString();
  //     if (noRek != null) request.fields["no_rek"] = noRek;
  //     if (atasNamaRek != null) request.fields["atas_nama_rek"] = atasNamaRek;

  //     // Mengirimkan File
  //     if (ktpFoto != null) {
  //       request.files
  //           .add(await http.MultipartFile.fromPath("ktp_foto", ktpFoto.path));
  //     }
  //     if (pasFoto != null) {
  //       request.files
  //           .add(await http.MultipartFile.fromPath("pas_foto", pasFoto.path));
  //     }
  //     if (bpjsFoto != null) {
  //       request.files
  //           .add(await http.MultipartFile.fromPath("bpjs_foto", bpjsFoto.path));
  //     }
  //     if (kkFoto != null) {
  //       request.files
  //           .add(await http.MultipartFile.fromPath("kk_foto", kkFoto.path));
  //     }
  //     if (npwpFoto != null) {
  //       request.files
  //           .add(await http.MultipartFile.fromPath("npwp_foto", npwpFoto.path));
  //     }
  //     if (berkasLain != null) {
  //       request.files.add(
  //           await http.MultipartFile.fromPath("berkas_lain", berkasLain.path));
  //     }

  //     var response = await request.send();
  //     var responseBody = await response.stream.bytesToString();

  //     if (response.statusCode == 200) {
  //       print("Error API: $responseBody");
  //       return ServicesSuccess(
  //         code: response.statusCode,
  //         response: json.decode(responseBody),
  //       );
  //     } else {
  //       print("Error API: $responseBody");
  //       return ServicesFailure(
  //         code: response.statusCode,
  //         errorResponse: json.decode(responseBody)['message'],
  //       );
  //     }
  //   } catch (e) {
  //     print("Exception: $e");
  //     return ServicesFailure(
  //       code: MyGeneralConst.CODE_UNKWON_ERROR,
  //       errorResponse: "$e",
  //     );
  //   }
  // }
}

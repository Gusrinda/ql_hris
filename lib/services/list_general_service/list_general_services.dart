import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';

class ListGeneralService {
  static Future<Object> getTingkatPendidikan(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=tingkatPend&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  // static Future<Object> getKota(String token) async {
  //   var url = Uri.parse(
  //       "${MyGeneralConst.API_URL}/operation/m_general?scopes=genKota&provinsi_id=101&paginate=100");
  //   return await GeneralServices.baseService(
  //     url: url,
  //     method: GeneralServicesMethod.get,
  //     headers: GeneralServices.addToken2Headers(token),
  //   );
  // }

  static Future<Object> getKotabyProvinsi(String token, int idProvinsi) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=genKota&provinsi_id=$idProvinsi&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getKecamatan(String token, int idKota) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=genKecamatan&kota_id=$idKota&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getKotaAll(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group='KOTA'&paginate=1000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getJenisOrganisasi(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group='JENIS ORGANISASI'&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getJenisKelamin(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group='JENIS KELAMIN'&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getPekerjaan(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group='PEKERJAAN'&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getHubKeluarga(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group='HUBUNGAN KELUARGA'&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getGrading(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=grading");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getKodePre(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_jam_kerja?paginate=1000");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  static Future<Object> getProvinsi(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=genProvinsi&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getAgama(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/m_general?scopes=agama");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getGolDarah(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=golDarah");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getStatusNikah(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=statusnikah");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getTanggungan(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=tanggungan&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getCostcentre(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?simplest=true&where=this.group%3D%27COSENTRE%27&paginate=300");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getStandartGaji(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_standart_gaji?paginate=1000");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  // static Future<Object> getKodePresensi(String token) async {
  //   var url = Uri.parse(
  //       "${MyGeneralConst.API_URL}/operation/m_jam_kerja?paginate=100");
  //   return await GeneralServicesNoMobile.baseService(
  //     url: url,
  //     method: GeneralServicesMethodNoMobile.get,
  //     headers: GeneralServicesNoMobile.addToken2Headers(token),
  //   );
  // }

  static Future<Object> getTipeBPJS(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?simplest=true&transform=false&where=this.group%3D%27TIPE+BPJS%27+AND+this.is_active%3D%27true%27&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getPeriodeGaji(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group%3D%27PERIODE+GAJI%27+AND+this.is_active%3D%27true%27&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getTipePembayaran(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?simplest=true&transform=false&join=true&where=this.group%3D%27TIPE+PEMBAYARAN%27+AND+this.is_active%3D%27true%27&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getMetodePembayaran(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?simplest=true&transform=false&join=true&where=this.group%3D%27METODE+PEMBAYARAN%27+AND+this.is_active&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getNamaBank(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?simplest=true&transform=false&join=true&where=this.group%3D%27BANK%27+AND+this.is_active&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }
}

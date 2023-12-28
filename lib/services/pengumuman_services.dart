import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';

class PengumumanServices {
  static Future<Object> getPengumuman(String token) async {
    // var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_pengumuman");
    var url = Uri.parse(
        "https://server.qqltech.com:7005/operation/t_pengumuman?paginate=100");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }
}

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';

class BerkasServices {
  static Future<Object> getBerkas(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_berkas");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }
}

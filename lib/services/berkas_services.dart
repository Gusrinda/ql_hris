import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class BerkasServices {
  static Future<Object> getBerkas(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/m_berkas");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token: token, isServiceNoMobile: true),
    );
  }

  static Future<Object> getListBerkas(String token, String kategori) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_berkas?where=this.kategori='$kategori'&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token: token, isServiceNoMobile: true),
    );
  }
}

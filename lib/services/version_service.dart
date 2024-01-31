import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class VersionServices {
  
  static Future<Object> getVersion() async {
    print("Service Dijalankan");
    var url = Uri.parse("${MyGeneralConst.API_URL}/public/presensi_app_version/current");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      // headers: GeneralServices.addToken2Headers(token),
    );
  }
}

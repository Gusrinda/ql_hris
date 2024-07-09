import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class NotifikasiServices {
  static Future<Object> getNotifikasi(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/generate_approval_log/notif");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(
        token: token,
        isServiceNoMobile: false,
      ),
    );
  }
}
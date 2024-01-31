import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class PengumumanServices {
  static Future<Object> getPengumuman(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/t_pengumuman?where=this.is_active=true&paginate=100");
    // var url = Uri.parse(
    //     "https://server.qqltech.com:7005/operation/t_pengumuman?paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }
}

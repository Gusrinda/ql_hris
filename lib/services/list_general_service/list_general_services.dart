import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

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

  static Future<Object> getKota(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?scopes=genKota&provinsi_id=101&paginate=100");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }
}

import 'dart:developer';

import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class BirthdayService {
  static Future<Object> getBirthday({
    required String token,
  }) async {
    String dateNow = DateFormat('MM-dd').format(DateTime.now());
    log("Ulang Tahun hari ini $dateNow");

    // dateNow = '11-09';

    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_kary?scopes=HUT&selectfield=this.nama_lengkap,this.tgl_lahir,this.tempat_lahir&paginate=300&filter_is_active=true");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token: token),
    );
  }
}

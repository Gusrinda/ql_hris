import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';

class ApprovalServices {
  static Future<Object> getApproval(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/generate_approval/outstanding?join=false&transform=false&single=true&paginate=100");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  static Future<Object> getDetailApproval(String token, int approvalID) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/generate_approval/outstandingDetail?id=$approvalID");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  static Future<Object> postApproval(String token, int approvalID,  String typeApproval,  String note) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/generate_approval/outstandingDetail?id=$approvalID");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "id": approvalID,
        "type": typeApproval,
        "note": note,
      }),
    );
  }
}

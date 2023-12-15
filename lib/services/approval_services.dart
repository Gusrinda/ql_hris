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

  static Future<Object> getDetailApproval(String token, String approvalID) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/generate_approval/outstandingDetail?id=$approvalID");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  static Future<Object> sendApproval(String token, String approvalID,  String typeApproval,  String note) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/generate_approval/progressing");
    int intID = int.parse(approvalID);
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode({
        "id": intID,
        "type": typeApproval,
        "note": note,
      }),
    );
  }
}

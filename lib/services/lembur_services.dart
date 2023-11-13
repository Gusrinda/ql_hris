import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';

class LemburServices {
  static Future<Object> getListLembur(String token, DateTime date) async {
    var lastDate = DateTime(date.year, date.month + 1, 0).day;
    var lastDateStr = lastDate.toString();
    var formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-$lastDateStr";
    print("Tanggal Terakhir bulan ini adalah tanggal $formattedDate");
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/t_lembur?scopes=filter&date_from=${date.year}-${date.month}-1&date_to=$formattedDate");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getDetailLembur(String token, int lemburId) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/t_lembur/$lemburId");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }
}
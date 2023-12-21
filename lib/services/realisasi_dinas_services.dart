import 'dart:convert';

import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:sj_presensi_mobile/utils/services.dart';
import 'package:sj_presensi_mobile/utils/services_no_source_mobile.dart';

class RealisasiDinasServices {
  static Future<Object> getListDinas(String token) async {
    var url =
        Uri.parse("${MyGeneralConst.API_URL}/operation/t_spd?paginate=1000000");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServices.addToken2Headers(token),
    );
  }

  static Future<Object> getListRealisasiDinas(String token) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_rpd");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  static Future<Object> addRealisasiDinas(
    String token,
    String nomor,
    int mCompId,
    int tSpdId,
    int totalBiayaSpd,
    int totalBiayaSelisih,
    int pengambilanSpd,
    String keterangan,
    String status,
    int creatorId,
    int lastEditorId,
    List<Map<String, dynamic>> tRpdDetList,
  ) async {
    // Mendefinisikan URL untuk permintaan POST
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_rpd");

    // Melakukan permintaan POST menggunakan metode baseService
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.post,
      headers: GeneralServices.addToken2Headers(token),
      body: json.encode(
        {
          "nomor": nomor,
          "m_comp_id": mCompId,
          "t_spd_id": tSpdId,
          "total_biaya_spd": totalBiayaSpd,
          "total_biaya_selisih": totalBiayaSelisih,
          "pengambilan_spd": pengambilanSpd,
          "keterangan": keterangan,
          "status": status,
          "creator_id": creatorId,
          "last_editor_id": lastEditorId,
          "t_rpd_det": [
            for (var tRpdDet in tRpdDetList)
              {
                "t_spd_det_id": tRpdDet["t_spd_det_id"],
                "tipe_spd_id": tRpdDet["tipe_spd_id"],
                "biaya": tRpdDet["biaya"],
                "biaya_realisasi": tRpdDet["biaya_realisasi"],
                "detail_transport": tRpdDet["detail_transport"],
                "m_knd_dinas_id": tRpdDet["m_knd_dinas_id"],
                "is_kendaraan_dinas": tRpdDet["is_kendaraan_dinas"],
                "catatan_realisasi": tRpdDet["catatan_realisasi"],
                "creator_id": tRpdDet["creator_id"],
                "last_editor_id": tRpdDet["last_editor_id"],
              },
          ],
        },
      ),
    );
  }

  static Future<Object> getDetailRealisasiDinas(String token, int id) async {
    var url = Uri.parse("${MyGeneralConst.API_URL}/operation/t_rpd/$id");
    return await GeneralServicesNoMobile.baseService(
      url: url,
      method: GeneralServicesMethodNoMobile.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }

  static Future<Object> getTipe(String token) async {
    var url = Uri.parse(
        "${MyGeneralConst.API_URL}/operation/m_general?where=this.group='TIPE SPD'");
    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: GeneralServicesNoMobile.addToken2Headers(token),
    );
  }
}
import 'package:sj_presensi_mobile/utils/services.dart';

class PengumumanServices {
  static Future<Object> getPengumuman() async {
    String token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiN2IzNmFkOTkzNDgxOWZmZWJkNjU1ZmI4ZGIxZTg3ZTJjODFlZTI0NDRkOTRiMTI5NjAzNzE2MjlmMDU2OGM0MTBiOWFiNTI2NjU0ZTNjNzciLCJpYXQiOjE3MDAyNzM0NzAuMzc1NDg0LCJuYmYiOjE3MDAyNzM0NzAuMzc1NDg4LCJleHAiOjE3MzE4OTU4NzAuMzY4MTQ0LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.k22gydqgRgNcL8flm5PDEfzr-AL-9jFRwwIDvrHdC02PIxHDgT50kup_JecgIlRCkb9IbTUBcYhkxZZkduR-s0XBGoeeedhrQWI-AiSAi56qWZ0s8S_V8JhusF7ccs1hwh2rSEoqd9zeEKQBd6G8c_aZij1X-PdWZNUns2CRwI5RLB73--aAnLTOTKY9pB7ODAY1IPrIVZG9kqFfYBHsolFF2h_pUOY15fYR897LUv6UpHLYAXFdjpOkQzsGNkCet2qQJB_UWb6JCk95Z_FRxQjoHbo7oiZ47FGHYaGNRf0DSER-MAzWVOMu3CmYMrdKhznKins1iP60rBGEKqONR4ZadZodirLbBVKy7gkmyXwAQQ4pHoF-8fFMNwT8aBvpzBmbVXIYWHhs_gyXPATI4kT0K373NTqjj7El8SSYvVmYiRKuarRZM54jYApHDNksZuYkj8q6bXx80G-2P6ws8gbRYkh9OPl_SrjH2InUTsYBFOJhqyVxz-eiR3NQ6S7I7h4_-MrD0U03TptpyRHcEdWfsp2nGyhf0SfucPAXjJIILYeC0QL_IZH_Pe_m2DAjl9fq3pSRfjFdhaPKiMKlbe8BSkPw7BI7HxJHB7wU_m7AldOKi3d5l_WmRAVpOl92JCYvB-3_YqGeGadnkrfYVoM8DH5-zYpK8LtUy_-rQ1g";

    var url = Uri.parse(
        "https://server.qqltech.com:7007/operation/t_artikel/ortu?puskesmas_ids=[1, 2]");

    return await GeneralServices.baseService(
      url: url,
      method: GeneralServicesMethod.get,
      headers: {'Authorization': 'Bearer $token'},
    );
  }
}

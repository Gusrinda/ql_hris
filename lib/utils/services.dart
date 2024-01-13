import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;

import 'const.dart';

class ServicesSuccess {
  int code;
  dynamic response;
  ServicesSuccess({
    required this.code,
    required this.response,
  });
}

class ServicesFailure {
  int code;
  dynamic errorResponse;
  ServicesFailure({
    required this.code,
    this.errorResponse,
  });
}

enum GeneralServicesMethod {
  get,
  post,
  postMultiPart,
  postMultiFiles,
  delete,
  put,
  putMultipart,
  putMultiFiles,
}

class GeneralServices {
  static const Map<String, String> _headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
  static Map<String, String> addToken2Headers(String token) {
    Map<String, String> headers = Map<String, String>.from(_headers)
      ..addAll({'Authorization': "Bearer $token", 'Source': "mobile"});

    return headers;
  }

  static Future<Object> baseService(
      {required Uri url,
      required GeneralServicesMethod method,
      Map<String, String>? headers = _headers,
      Object? body,
      String? imagePath,
      Map<String?, File?>? files}) async {
    try {
      print("URL API: ${url}");
      print("BODY API: ${body}");
      final connectivityResult = await (Connectivity().checkConnectivity());
      if (!(connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi)) {
        throw const HttpException("No Internet Connection");
      }
      http.Response response;
      if (method == GeneralServicesMethod.post) {
        response = await http.post(
          url,
          headers: headers,
          body: body,
        );
      } else if (method == GeneralServicesMethod.postMultiPart) {
        body = body as Map<String, dynamic>;
        Map<String, String> bodyFormed = {};
        for (var key in body.keys) {
          if (body[key] != null) bodyFormed[key] = body[key].toString();
        }
        var request = http.MultipartRequest('POST', url)
          ..fields.addAll(bodyFormed)
          ..headers.addAll(headers!)
          ..files.add(await http.MultipartFile.fromPath('foto', imagePath!));
        var res = await request.send();
        response = await http.Response.fromStream(res);
      } else if (method == GeneralServicesMethod.postMultiFiles) {
        body = body as Map<String, dynamic>;
        Map<String, String> bodyFormed = {};
        for (var key in body.keys) {
          if (body[key] != null) bodyFormed[key] = body[key].toString();
        }

        var request = http.MultipartRequest('POST', url)
          ..headers.addAll(headers!)
          ..fields.addAll(bodyFormed);

        // Add files to the request
        if (files != null && files.isNotEmpty) {
          for (var entry in files.entries) {
            String? fieldName = entry.key;
            File? file = entry.value;
            request.files
                .add(await http.MultipartFile.fromPath(fieldName!, file!.path));
          }
        }

        // Send the request
        var res = await request.send();
        response = await http.Response.fromStream(res);
      } else if (method == GeneralServicesMethod.get) {
        response = await http.get(
          url,
          headers: headers,
        );
      } else if (method == GeneralServicesMethod.putMultipart) {
        body = body as Map<String, dynamic>;
        Map<String, String> bodyFormed = {};
        for (var key in body.keys) {
          if (body[key] != null) bodyFormed[key] = body[key].toString();
        }
        var request = http.MultipartRequest('POST', url)
          ..fields.addAll(bodyFormed)
          ..headers.addAll(headers!)
          ..files.add(
              await http.MultipartFile.fromPath('profil_image', imagePath!));
        var res = await request.send();
        response = await http.Response.fromStream(res);
      } else if (method == GeneralServicesMethod.putMultiFiles) {
        body = body as Map<String, dynamic>;
        Map<String, String> bodyFormed = {};
        for (var key in body.keys) {
          if (body[key] != null) bodyFormed[key] = body[key].toString();
        }

        var request = http.MultipartRequest('POST', url)
          ..headers.addAll(headers!)
          ..fields.addAll(bodyFormed);

        // Add files to the request
        if (files != null && files.isNotEmpty) {
          for (var entry in files.entries) {
            String? fieldName = entry.key;
            File? file = entry.value;
            request.files
                .add(await http.MultipartFile.fromPath(fieldName!, file!.path));
          }
        }

        // Send the request
        var res = await request.send();
        response = await http.Response.fromStream(res);
      } else if (method == GeneralServicesMethod.put) {
        response = await http.put(
          url,
          headers: headers,
          body: body,
        );
      } else {
        response = await http.delete(
          url,
          headers: headers,
          body: body,
        );
      }

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        return ServicesSuccess(
          code: response.statusCode,
          response: responseBody,
        );
      }
      if (response.statusCode == MyGeneralConst.CODE_INTERNAL_SERVER_ERROR) {
        return ServicesFailure(
          code: response.statusCode,
          errorResponse:
              'Server Error!\n' + json.decode(response.body)['message'],
        );
      }
      if (response.statusCode == MyGeneralConst.CODE_BAD_REQUEST) {
        Map<String, dynamic> responseBody = json.decode(response.body);

        if (responseBody.containsKey('errors') &&
            responseBody['errors'] != null) {
          return ServicesFailure(
            code: response.statusCode,
            errorResponse: responseBody["errors"].toString(),
          );
        } else if (responseBody.containsKey('message') &&
            responseBody['message'] != null) {
          return ServicesFailure(
            code: response.statusCode,
            errorResponse: responseBody["message"].toString(),
          );
        } else {
          return ServicesFailure(
            code: response.statusCode,
            errorResponse: 'Error Tidak Diketahui',
          );
        }
      }

      if (response.statusCode == MyGeneralConst.CODE_NOT_FOUND) {
        return ServicesFailure(
          code: response.statusCode,
          errorResponse: json.decode(response.body)['message'],
        );
      }
      if (response.statusCode == MyGeneralConst.CODE_ERROR_VALIDATION) {
        return ServicesFailure(
          code: response.statusCode,
          errorResponse: json.decode(response.body)['message'],
        );
      }
      if (response.statusCode == MyGeneralConst.CODE_LARGE_FILE) {
        return ServicesFailure(
          code: response.statusCode,
          errorResponse: "Ukuran File Terlalu Besar",
        );
      }
      return ServicesFailure(
        code: response.statusCode,
        errorResponse: json.decode(response.body)['message'],
      );
    } on HttpException {
      return ServicesFailure(
          code: MyGeneralConst.CODE_NO_INTERNET_CONNECTION,
          errorResponse: "No Internet Connection");
    } on FormatException {
      return ServicesFailure(
          code: MyGeneralConst.CODE_INVALID_FORMAT,
          errorResponse: "Invalid Format");
    } catch (e) {
      print(e);
      return ServicesFailure(
          code: MyGeneralConst.CODE_UNKWON_ERROR,
          errorResponse: "Unknwon Error!\nPlease try again!");
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/empresa.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/permisos.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/user.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/api_cnx.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_url_api_controller.dart';
//import 'package:solicitudes_multiempresa_apk/app/utils/cnx.dart';

import '../api_exception.dart';

class ApiLogin {
  //static ApiCnx apiCnx = ApiCnx(baseUrl: CNX.BASE_URL);

  ApiLogin();

  static Future<int?> testCnxTemp(String url, String username, String password) async {
    try {
      ApiCnx testApiCnx = ApiCnx(baseUrl: url);
      final response = await testApiCnx.post(
        "/login",
        data: {
          'username': username,
          'password': password,
        },
      );
      print(response.data.runtimeType);
      return response.statusCode;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw "Connection  Timeout Exception";
      }

      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future testCnx(String url) async {
    try {
      ApiCnx testApiCnx = ApiCnx(baseUrl: url);
      Response response = await testApiCnx.get(
        "/empresaconfg",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "X-API-KEY": "a87c5bfd-24b8-4054-be2d-1780ecfa58d4",
          },
        ),
      );
      print(response.data.runtimeType);
      int? statusCode = response.statusCode;
      List<dynamic> listToMap = response.data;
      List<Empresa> listEmpresas = [];
      for (var i = 0; i < listToMap.length; i++) {
        listEmpresas.add(Empresa.fromJson(listToMap[i]));
      }
      var result = {
        'statusCode': statusCode,
        'listEmpresas': listEmpresas
      };
      return result;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw "Connection  Timeout Exception";
      }

      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<User> loginInit(String username, String password) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      final response = await apiCnx.post(
        "/login",
        data: {
          'username': username,
          'password': password,
        },
      );
      print(response.data.runtimeType);
      User user = User.fromJson(response.data);
      return user;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<Map<String, Object>> loginApp(
      String username, String password, String empresa, int appID) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      final response = await apiCnx.post(
        "/login",
        data: {
          'username': username,
          'password': password,
          'empCodigo': empresa,
          'appID': appID,
        },
      );
      print(response.data.runtimeType);
      User user = User.fromJson(response.data);
      List<dynamic> listToMap = response.data['Permisos'];
      List<Permisos> listPermisos = [];
      for (var i = 0; i < listToMap.length; i++) {
        listPermisos.add(Permisos.fromJson(listToMap[i]));
      }

      var result = {
        'user': user,
        'permisos': listPermisos,
      };

      return result;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<Empresa> loadConfig() async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        "/empresa",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      Empresa empresa = Empresa.fromJson(response.data);
      return empresa;
      /* List<dynamic> listToMap = response.data;
      List<Empresa> listEmpresa = [];
      for (var i = 0; i < listToMap.length; i++) {
        listEmpresa.add(Empresa.fromJson(listToMap[i]));
      }
      return listEmpresa; */
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<List<Permisos>> loadPermisos(String token) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      //var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        "/permisos",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      // List<Permisos> listPermisos = Permisos.fromJson(response.data);

      List<dynamic> listToMap = response.data;
      List<Permisos> listPermisos = [];
      for (var i = 0; i < listToMap.length; i++) {
        listPermisos.add(Permisos.fromJson(listToMap[i]));
      }
      return listPermisos;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}

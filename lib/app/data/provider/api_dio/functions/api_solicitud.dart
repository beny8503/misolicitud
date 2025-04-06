import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/clasificacion.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/cliente.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/ejecutor.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/objeto.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_url_api_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/api_cnx.dart';
//import 'package:solicitudes_multiempresa_apk/app/utils/cnx.dart';

import '../api_exception.dart';

class ApiSolicitud {
  //static ApiCnx apiCnx = ApiCnx(baseUrl: CNX.BASE_URL);

  ApiSolicitud();

  static Future<List<Cliente>> getCliente() async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        "/clientes",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      List<dynamic> listToMap = response.data;
      List<Cliente> listClientes = [];
      for (var i = 0; i < listToMap.length; i++) {
        listClientes.add(Cliente.fromJson(listToMap[i]));
      }
      return listClientes;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<List<Cliente>> getClienteID(int id) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        "'/clientes/$id'",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      List<dynamic> listToMap = response.data;
      List<Cliente> listClientes = [];
      for (var i = 0; i < listToMap.length; i++) {
        listClientes.add(Cliente.fromJson(listToMap[i]));
      }
      return listClientes;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<List<Clasificacion>> getClasificacion() async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        "/clasificacion",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      List<dynamic> listToMap = response.data;
      List<Clasificacion> listClasificacion = [];
      for (var i = 0; i < listToMap.length; i++) {
        listClasificacion.add(Clasificacion.fromJson(listToMap[i]));
      }
      return listClasificacion;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<List<Clasificacion>> getClasificacionID(String id) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        "'/clasificacion/$id'",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      List<dynamic> listToMap = response.data;
      List<Clasificacion> listClasificacion = [];
      for (var i = 0; i < listToMap.length; i++) {
        listClasificacion.add(Clasificacion.fromJson(listToMap[i]));
      }
      return listClasificacion;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<List<Ejecutor>> getEjecutores() async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        "/ejecutores",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      List<dynamic> listToMap = response.data;
      List<Ejecutor> listEjecutores = [];
      for (var i = 0; i < listToMap.length; i++) {
        listEjecutores.add(Ejecutor.fromJson(listToMap[i]));
      }
      return listEjecutores;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<List<Ejecutor>> getEjecutoresID(int id) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        '/ejecutores/$id',
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      List<dynamic> listToMap = response.data;
      List<Ejecutor> listEjecutores = [];
      for (var i = 0; i < listToMap.length; i++) {
        listEjecutores.add(Ejecutor.fromJson(listToMap[i]));
      }
      return listEjecutores;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<List<Ejecutor>> getEjecutoresCliente(String idCliente) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        '/ejecutores',
        queryParameters: {
          'clientID': idCliente,
        },
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      List<dynamic> listToMap = response.data;
      List<Ejecutor> listEjecutores = [];
      for (var i = 0; i < listToMap.length; i++) {
        listEjecutores.add(Ejecutor.fromJson(listToMap[i]));
      }
      return listEjecutores;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<List<Objeto>> getObjetos(data) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        "/objetos",
        queryParameters: data,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data.runtimeType);
      List<dynamic> listToMap = response.data;
      List<Objeto> listObjetos = [];
      for (var i = 0; i < listToMap.length; i++) {
        listObjetos.add(Objeto.fromJson(listToMap[i]));
      }
      return listObjetos;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<dynamic> insertSolicitud(data) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.post(
        "/solicitudes",
        data: data,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      var result = response.data;
      return result;
    } on DioException catch (e) {
      final errorMessage =
          e.message.toString() + DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<dynamic> updateSolicitud(String idSol, data) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.patch(
        "/solicitudes/$idSol",
        data: data,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      //print(response.data);
      return response['Response'];
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<dynamic> sincronizarSolicitud(data) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.post(
        "/solicitudes/bulk",
        data: data,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      var temp = response.data;
     // List<dynamic> list = temp['Response'];

      //return list;
      return temp;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}

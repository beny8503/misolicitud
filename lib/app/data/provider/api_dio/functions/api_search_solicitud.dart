import 'package:dio/dio.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_gestion.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/api_cnx.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_url_api_controller.dart';
//import 'package:solicitudes_multiempresa_apk/app/utils/cnx.dart';

import '../api_exception.dart';

class ApiSearchSolicitud {
  //static ApiCnx apiCnx = ApiCnx(baseUrl: CNX.BASE_URL);

  ApiSearchSolicitud();

  static Future searchSolicitud(data) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.get(
        "/solicitudes",
        queryParameters: data,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response.data);
      List<dynamic> listToMap = response.data;
      List<SolicitudGestion> listSolGest = [];
      List<Map<String, dynamic>> objSolGest = [];
      for (var i = 0; i < listToMap.length; i++) {
        Map<String, dynamic> temp = listToMap[i];
        SolicitudGestion tempSol = SolicitudGestion.fromJson(listToMap[i]);
        listSolGest.add(tempSol);
        objSolGest.add({
          /*'idSolGest': listToMap[i]['solID'],
          'empCodigo': listToMap[i]['empCodigo'],
          'objetos': listToMap[i]['objetos'],*/
          'idSolGest': tempSol.solID,
          'empCodigo': tempSol.empCodigo,
          'objetos': temp.containsKey('objetos') ? temp['objetos'] : null,
        });
      }
      var result = {
        'listSolGest': listSolGest,
        'objSolGest': objSolGest,
      };
      return result;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<Map<String, dynamic>> deleteSolicitud(String id) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.delete(
        "/solicitudes/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response);
      return response['Response'];
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  static Future<Map<String, dynamic>> cambiarEstado(
      String idSolicitud, int newEstado, String observacion) async {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      ApiCnx apiCnx = ApiCnx(baseUrl: 'https://${urlCnx.urlApi}/api');

      var token = await SessionManager().get("userToken");
      final response = await apiCnx.patch(
        "/solicitudes/$idSolicitud/cambiarestado",
        data: {
          "solEstado": newEstado,
          "solEstObserv": observacion,
        },
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      print(response);
      var test = response['Response'][0];
      return test;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw "1-Connection  Timeout Exception";
      }
      final errorMessage =
          e.message.toString() + DioExceptions.fromDioError(e).toString();
      var objError = e.response?.data;
      var detail = objError['DetailError']['message'][0];
      var detailMsj = detail['Mensajes'][0]['Description'];
      throw '2-' + detailMsj;
    }
  }
}

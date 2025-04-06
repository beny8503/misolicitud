import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = "Petición cancelada";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Sin respuesta";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Sin respuesta";
        break;
      case DioExceptionType.sendTimeout:
        message = "Error al envio";
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          message = 'Revise su conexión.';
          break;
        }
        message = 'Ocurrió un error inesperado.';
        break;
      default:
        message = "Algo salió mal";
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Credenciales incorrectas';
      case 403:
        return 'Forbidden';
      case 404:
        return error['message'];
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Algo va mal si el error persiste contactenos';
    }
  }

  @override
  String toString() => message;
}

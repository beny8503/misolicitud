import 'package:isar/isar.dart';

part 'solicitud_bandeja_salida.g.dart';

@Collection()
class SolicitudBandejaSalida {
  Id idSolicitudBD = Isar.autoIncrement;
  String? descripcion;
  String? solFecha;
  String? solClienteCod;
  String? solEjecutorCod;
  String? solClasifica;
  int? clientID;
  int? ejecutorID;
  int? clasosID;
  String? empCodigo;
  String? solFoto;
  String? clasificacionDescripcion;
  String? clienteDescripcion;
  String? ejecutorDescripcion;
  String? objetoDescripcion;
  String? pendiente;
  String? solID;
  String? solEstado;
  String? solCodigo;
  String? observacionEstado;

  SolicitudBandejaSalida();

  SolicitudBandejaSalida.fromJson(Map<String, dynamic> json) {
    solFecha = json['solFecha'];
    solClienteCod = json['solClienteCod'];
    solEjecutorCod = json['solEjecutorCod'];
    empCodigo = json['empCodigo'];
    solFoto = json['solFoto'];
    descripcion = json['descripcion'];
    solClasifica = json['solClasifica'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'solFecha': solFecha,
      'clientID': clientID,
      'ejecutorID': ejecutorID,
      'empCodigo': empCodigo,
      'solFoto': solFoto,
      'descripcion': descripcion,
      'clasosID': clasosID,
    };
  }
}

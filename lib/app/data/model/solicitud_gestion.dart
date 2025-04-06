import 'package:isar/isar.dart';

part 'solicitud_gestion.g.dart';

@Collection()
class SolicitudGestion {
  Id idSolicitudGestionBD = Isar.autoIncrement;
  String solID = '';
  String? solCodigo;
  String? solDescripcion;
  String? solFecha;
  String? solEstado;
  String? empCodigo;
  String? empNombre;
  String? solicitado;
  String? clasificacionDenom;
  String? clienteDenom;
  String? clienteCodigo;
  String? ejecutorDenom;
  String? ejecutorCodigo;
  String? fotourl;
  String? objetos;

  SolicitudGestion();

  SolicitudGestion.fromJson(Map<String, dynamic> json) {
    solID = json['solID'];
    solCodigo = json['solCodigo'].trim();
    solDescripcion = json['solDescripcion'];
    solFecha = json['solFecha'];
    solEstado = json['solEstado'];
    empCodigo = json['empCodigo'];
    empNombre = json['empNombre'];
    solicitado = json['solicitado'];
    clasificacionDenom = json['clasificacionDenom'];
    clienteDenom = json['clienteDenom'];
    clienteCodigo = json['clienteCodigo'];
    ejecutorDenom = json['ejecutorDenom'];
    ejecutorCodigo = json['ejecutorCodigo'];
    fotourl = json['fotourl'];
    objetos = json.containsKey('objetos') ? loadObj(json['objetos']) : '';
  }
  String loadObj (element){
    String codigos = '';
    if(element.length > 0){
      for(var i = 0; i < element.length; i++){
        codigos += element[i]['objetoCodigo'] + ' - ' + element[i]['objetoDenom'] + ', ';
      }
    }
    return codigos.substring(0, codigos.length-2);
  }
  /* Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'solFecha': solFecha,
      'clientID': clientID,
      'ejecutorID': ejecutorID,
      'empCodigo': empCodigo,
      'foto': foto,
      'descripcion': descripcion,
      'clasosID': clasosID,
    };
  } */
}

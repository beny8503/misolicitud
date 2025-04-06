import 'package:isar/isar.dart';

part 'clasificacion.g.dart';

@Collection()
class Clasificacion {
  Id idClasificacionBD = Isar.autoIncrement;
  String? tipo;
  String? descripcion;
  int? prioridad;
  String? clasifId;

  Clasificacion();

  Clasificacion.fromJson(Map<String, dynamic> json) {
    tipo = json['clasosTipo'];
    clasifId = json['clasosID'];
    descripcion = json['clasosDenom'];
    prioridad = json['clasosPrioridad'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'clasosID': clasifId,
      'clasosTipo': tipo,
      'clasosDenom': descripcion,
      'clasosPrioridad': prioridad,
    };
  }
}

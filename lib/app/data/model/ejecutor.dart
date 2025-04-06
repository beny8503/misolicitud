import 'package:isar/isar.dart';

part 'ejecutor.g.dart';

@Collection()
class Ejecutor {
  Id idEjecutorBD = Isar.autoIncrement;
  String? codigo;
  String? descripcion;
  String? tipo;
  String? clase;
  String? ejecId;
  String? clientID;
  int? solGestID;

  Ejecutor({
    this.tipo,
    this.descripcion,
    this.codigo,
    this.clase,
    this.ejecId,
    this.clientID,
    this.solGestID,
  });

  Ejecutor.fromJson(Map<String, dynamic> json) {
    tipo = json['ejecTipo'];
    ejecId = json['ejecID'];
    descripcion = json['ejecDenom'];
    codigo = json['ejecCodigo'];
    clase = json['ejecClass'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ejecTipo': tipo,
      'ejecID': ejecId,
      'ejecDenom': descripcion,
      'ejecCodigo': codigo,
      'ejecClass': clase,
    };
  }
}

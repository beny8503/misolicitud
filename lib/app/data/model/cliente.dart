import 'package:isar/isar.dart';

part 'cliente.g.dart';

@Collection()
class Cliente {
  Id idClienteDB = Isar.autoIncrement;
  String? codigo;
  String? descripcion;
  String? clientId;
  //String? tipo;
  String? empCod;
  String? empNombre;

  Cliente();

  Cliente.fromJson(Map<String, dynamic> json) {
    codigo = json['clienteCod'];
    descripcion = json['clienteDenom'];
    clientId = json['clienteID'];
    //tipo = json['clientTipo'];
    empCod = json['clienteEmpCod'];
    empNombre = json['clienteEmpNombre'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'clienteCod': codigo,
      'clienteDenom': descripcion,
      'clienteID': clientId,
      //'clientTipo': tipo,
      'clienteEmpCod': empCod,
      'clienteEmpNombre': empNombre,
    };
  }
}

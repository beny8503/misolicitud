import 'package:isar/isar.dart';

part 'empresa.g.dart';

@Collection()
class Empresa {
  Id idEmpresaDB = Isar.autoIncrement;
  String empCod = '';
  String? empNombre;
  String empID = '';
  String? empClasif;
  String? empTipo;
  bool? useObject;
  bool? useEjecutor;
  bool? useClass;

  Empresa();

  Empresa.fromJson(Map<String, dynamic> json) {
    empCod = json['empCod'] ?? empCod;
    empNombre = json['empNombre'];
    empID = json['empID'];
    empClasif = json['empClasif'];
    empTipo = json['empTipo'];
    useObject = json['Confg']['useObject'];
    useEjecutor = json['Confg']['useEjecutor'];
    useClass = json['Confg']['useClass'];
  }

  Empresa.fromJsonSession(Map<String, dynamic> json) {
    empCod = json['empCod'] ?? empCod;
    empNombre = json['empNombre'];
    empID = json['empID'];
    empClasif = json['empClasif'];
    empTipo = json['empTipo'];
    useObject = json['useObject'];
    useEjecutor = json['useEjecutor'];
    useClass = json['useClass'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'empCod': empCod,
      'empNombre': empNombre,
      'empID': empID,
      'empClasif': empClasif,
      'empTipo': empTipo,
      'useObject': useObject,
      'useEjecutor': useEjecutor,
      'useClass': useClass,
    };
  }
}

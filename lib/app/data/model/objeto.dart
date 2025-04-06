import 'package:isar/isar.dart';

part 'objeto.g.dart';

@Collection()
class Objeto {
  Id idObjetoDB = Isar.autoIncrement;
  String codigo = '';
  String denom = '';
  String objID = '';
  String empCodigo = '';
  String clientID = '';
  String solGestID = '';

  Objeto();

  Objeto.fromJson(Map<String, dynamic> json) {
    empCodigo = json['empCodigo'] ?? empCodigo;
    objID = json['objID'];
    codigo = json['objCod'] ?? codigo;
    denom = json['objDenom'] ?? denom;
    /* clientID = int.parse(json['clientID']) ?? clientID;
    solGestID = int.parse(json['solGestID']) ?? solGestID; */
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'empCodigo': empCodigo,
      'objID': objID,
      'objCod': codigo,
      'objDenom': denom,
    };
  }
}

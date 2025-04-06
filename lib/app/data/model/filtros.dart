import 'package:isar/isar.dart';

part 'filtros.g.dart';

@Collection()
class Filtros {
  Id idFiltroBD = Isar.autoIncrement;
  String? filtro;
  String? fecha;

  Filtros({
    this.filtro,
    this.fecha,
  });

  Filtros.fromJson(Map<String, dynamic> json) {
    filtro = json['filtro'];
    fecha = json['fecha'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'filtro': filtro,
      'fecha': fecha,
    };
  }
}

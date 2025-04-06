import 'package:isar/isar.dart';

part 'permisos.g.dart';

@Collection()
class Permisos {
  Id idPermisoBD = Isar.autoIncrement;
  String? descripcion;
  String? user;
  String? code;
  bool? deny;
  bool? read;
  bool? add;
  bool? update;
  bool? delete;
  bool? imp;
  bool? exec;

  Permisos({
    this.descripcion,
    this.user,
    this.code,
    this.deny,
    this.read,
    this.add,
    this.update,
    this.delete,
    this.imp,
    this.exec,
  });

  Permisos.fromJson(Map<String, dynamic> json) {
    descripcion = json['opcionDesc'];
    //user = json['user'];
    code = json['opcionCod'];
    deny = json['deny'];
    read = json['read'];
    add = json['add'];
    update = json['upd'];
    delete = json['del'];
    imp = json['imp'];
    exec = json['exec'];
  }

  /*  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'urlApi': urlApi,
    };
  } */
}

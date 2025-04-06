import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/permisos.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdPermisosController with ChangeNotifier {
  BdPermisosController();

  List<Permisos> permisos = [];

  /// Obtener todos los permisos
  Future<List<Permisos>> getPermisos() async {
    Isar? isar = await IsarCnx().connectIsar();

    final permisosCollection = isar?.permisos;
    permisos = (await permisosCollection?.where().findAll())!;
    List<Permisos> tmp = permisos.toList();
    notifyListeners();

    return tmp;
  }

  /// Obtener los permisos de un usuario
  Future<List<Permisos>> getPermisosUser(String user) async {
    Isar? isar = await IsarCnx().connectIsar();

    final permisosCollection = isar?.permisos;
    permisos =
        (await permisosCollection?.filter().userEqualTo(user).findAll())!;
    List<Permisos> tmp = permisos.toList();
    return tmp;
  }

  /// Adicionar un permiso
  Future<int> addPermiso(Permisos permiso) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.permisos.put(permiso);
    });
    permisos.add(permiso);
    notifyListeners();
    return id;
  }

  /// Adicionar una lista de permisos
  Future<void> addAllPermisos(List<Permisos> listPermisos) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      await isar.permisos.putAll(listPermisos);
    });
    permisos.addAll(listPermisos);
    notifyListeners();
  }

  /// Eliminar un permiso
  void deletePermiso(Permisos permiso) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted = await isar.permisos.delete(permiso.idPermisoBD);
      if (deleted) permisos.remove(permiso);
      notifyListeners();
    });
  }

  /// Eliminar una lista de permisos
  Future<int> deleteAllPermisos(List<int> listPermisos) async {
    Isar? isar = await IsarCnx().connectIsar();
    int count = 0;
    await isar?.writeTxn(() async {
      count = await isar.permisos.deleteAll(listPermisos);
      //if (deleted > 0) solicitudes.removeAll(solicitud);
      notifyListeners();
    });
    return count;
  }
}

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/clasificacion.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdClasificacionController with ChangeNotifier {
  List<Clasificacion> clasificaciones = [];

  BdClasificacionController();

  ///Obtener todos las clasificaciones
  Future<List<Clasificacion>> getClasificaciones() async {
    Isar? isar = await IsarCnx().connectIsar();

    final clasificacionesCollection = isar?.clasificacions;
    clasificaciones = (await clasificacionesCollection?.where().findAll())!;
    List<Clasificacion> tmp = clasificaciones.toList();
    notifyListeners();
    return tmp;
  }

  /// Adicionar una clasificacion
  Future<int> addClasificacion(Clasificacion clasificacion) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.clasificacions.put(clasificacion);
    });
    clasificaciones.add(clasificacion);
    notifyListeners();
    return id;
  }

  /// Adicionar una lista de clasificaciones
  Future<void> addAllClasificaciones(
      List<Clasificacion> listClasificaciones) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      await isar.clasificacions.putAll(listClasificaciones);
    });
    clasificaciones.addAll(listClasificaciones);
    notifyListeners();
  }

  /// Eliminar una clasificacion
  void deleteClasificacion(Clasificacion clasificacion) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted =
          await isar.clasificacions.delete(clasificacion.idClasificacionBD);
      if (deleted) clasificaciones.remove(clasificacion);
      notifyListeners();
    });
  }

  /// Eliminar una lista de clasificaciones
  Future<int> deleteAllClasificaciones(List<int> listClasificaciones) async {
    Isar? isar = await IsarCnx().connectIsar();
    int count = 0;
    await isar?.writeTxn(() async {
      count = await isar.clasificacions.deleteAll(listClasificaciones);
      //if (deleted > 0) solicitudes.removeAll(solicitud);
      notifyListeners();
    });
    return count;
  }
}

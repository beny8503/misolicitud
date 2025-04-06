import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/ejecutor.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdEjecutorController with ChangeNotifier {
  List<Ejecutor> ejecutores = [];

  BdEjecutorController();

  ///Obtener todos los ejecutores
  Future<List<Ejecutor>> getEjecutores() async {
    Isar? isar = await IsarCnx().connectIsar();

    final ejecutoresCollection = isar?.ejecutors;
    ejecutores = (await ejecutoresCollection?.where().findAll())!;
    List<Ejecutor> tmp = ejecutores.toList();
    notifyListeners();
    return tmp;
  }

  /// Adicionar un ejecutor
  Future<int> addEjecutor(Ejecutor ejecutor) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.ejecutors.put(ejecutor);
    });
    ejecutores.add(ejecutor);
    notifyListeners();
    return id;
  }

  /// Adicionar una lista de ejecutores
  Future<void> addAllEjecutores(List<Ejecutor> listEjecutores) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      await isar.ejecutors.putAll(listEjecutores);
    });
    ejecutores.addAll(listEjecutores);
    notifyListeners();
  }

  /// Obtener un ejecutor dado el id de una solicitud
  Future<List<Ejecutor>> getEjecutorSolicitud(int idSolicitud) async {
    Isar? isar = await IsarCnx().connectIsar();

    final ejecutoresCollection = isar?.ejecutors;
    ejecutores = (await ejecutoresCollection
        ?.filter()
        .solGestIDEqualTo(idSolicitud)
        .findAll())!;
    List<Ejecutor> tmp = ejecutores.toList();
    return tmp;
  }

  // Obtener un ejecutor dado el id de un cliente
  Future<List<Ejecutor>> getEjecutorCliente(String idCliente) async {
    Isar? isar = await IsarCnx().connectIsar();

    final ejecutoresCollection = isar?.ejecutors;
    ejecutores = (await ejecutoresCollection
        ?.filter()
        .clientIDEqualTo(idCliente)
        .findAll())!;
    List<Ejecutor> tmp = ejecutores.toList();
    //Objeto objeto = tmp[0];
    return tmp;
  }

  /// Eliminar un ejecutor
  void deleteEjecutor(Ejecutor ejecutor) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted = await isar.ejecutors.delete(ejecutor.idEjecutorBD);
      if (deleted) ejecutores.remove(ejecutor);
      notifyListeners();
    });
  }

  /// Eliminar una lista de ejecutores
  Future<int> deleteAllEjecutores(List<int> listEjecutores) async {
    Isar? isar = await IsarCnx().connectIsar();
    int count = 0;
    await isar?.writeTxn(() async {
      count = await isar.ejecutors.deleteAll(listEjecutores);
      //if (deleted > 0) solicitudes.removeAll(solicitud);
      notifyListeners();
    });
    return count;
  }
}

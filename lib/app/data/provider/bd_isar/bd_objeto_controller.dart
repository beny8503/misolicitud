import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/objeto.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdObjetoController with ChangeNotifier {
  BdObjetoController();

  List<Objeto> _objetos = [];

  List<Objeto> get objetos => _objetos;

  /// Obtener todos los objetos
  Future<List<Objeto>> getObjetos() async {
    Isar? isar = await IsarCnx().connectIsar();

    final objetosCollection = isar?.objetos;
    _objetos = (await objetosCollection?.where().findAll())!;
    List<Objeto> tmp = _objetos.toList();
    notifyListeners();

    return tmp;
  }

  /// Obtener un objeto dado el id del objeto
  Future<Objeto> getObjetoId(int id) async {
    Isar? isar = await IsarCnx().connectIsar();

    final objetosCollection = isar?.objetos;
    _objetos =
        (await objetosCollection?.filter().idObjetoDBEqualTo(id).findAll())!;
    List<Objeto> tmp = _objetos.toList();
    Objeto objeto = tmp[0];
    return objeto;
  }

  /// Obtener un objeto dado el id de una solicitud
  Future<List<Objeto>> getObjetoSolicitud(String idSolicitud) async {
    Isar? isar = await IsarCnx().connectIsar();

    final objetosCollection = isar?.objetos;
    _objetos = (await objetosCollection
        ?.filter()
        .solGestIDEqualTo(idSolicitud)
        .findAll())!;
    List<Objeto> tmp = _objetos.toList();
    //Objeto objeto = tmp[0];
    return tmp;
  }

  // Obtener un objeto dado el id de un cliente
  Future<List<Objeto>> getObjetoCliente(String idCliente) async {
    Isar? isar = await IsarCnx().connectIsar();

    final objetosCollection = isar?.objetos;
    _objetos = (await objetosCollection
        ?.filter()
        .clientIDEqualTo(idCliente)
        .findAll())!;
    List<Objeto> tmp = _objetos.toList();
    //Objeto objeto = tmp[0];
    return tmp;
  }

  /// Adicionar un objeto
  Future<int> addObjeto(Objeto objeto) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.objetos.put(objeto);
    });
    _objetos.add(objeto);
    notifyListeners();
    return id;
  }

  /// Adicionar una lista de objetos
  Future<void> addAllObjetos(List<Objeto> listObjetos) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      await isar.objetos.putAll(listObjetos);
    });
    _objetos.addAll(listObjetos);
    notifyListeners();
  }

  /// Eliminar un objeto
  void deleteObjeto(Objeto objeto) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted = await isar.objetos.delete(objeto.idObjetoDB);
      if (deleted) _objetos.remove(objeto);
      notifyListeners();
    });
  }

  /// Eliminar una lista de objeto
  Future<int> deleteAllObjeto(List<int> listObjeto) async {
    Isar? isar = await IsarCnx().connectIsar();
    int count = 0;
    await isar?.writeTxn(() async {
      count = await isar.objetos.deleteAll(listObjeto);
      //if (deleted > 0) solicitudes.removeAll(solicitud);
      notifyListeners();
    });
    return count;
  }

  ///Actualizar un objeto
  void updateObjeto(Objeto objectUpdate) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      Objeto? objeto = await isar.objetos.get(objectUpdate.idObjetoDB);
      objeto?.clientID = objectUpdate.clientID;
      objeto?.solGestID = objectUpdate.solGestID;
      await isar.objetos.put(objeto!);
      notifyListeners();
    });
  }
}

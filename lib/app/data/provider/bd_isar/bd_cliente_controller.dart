import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/cliente.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdClienteController with ChangeNotifier {
  List<Cliente> clientes = [];

  BdClienteController();

  ///Obtener todos los clientes
  Future<List<Cliente>> getClientes() async {
    Isar? isar = await IsarCnx().connectIsar();

    final clientesCollection = isar?.clientes;
    clientes = (await clientesCollection?.where().findAll())!;
    List<Cliente> tmp = clientes.toList();
    notifyListeners();
    return tmp;
  }

  /// Adicionar un cliente
  Future<int> addCliente(Cliente cliente) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.clientes.put(cliente);
    });
    clientes.add(cliente);
    notifyListeners();
    return id;
  }

  /// Adicionar una lista de clientes
  Future<void> addAllClientes(List<Cliente> listClientes) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      await isar.clientes.putAll(listClientes);
    });
    clientes.addAll(listClientes);
    notifyListeners();
  }

  /// Eliminar un cliente
  void deleteCliente(Cliente cliente) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted = await isar.clientes.delete(cliente.idClienteDB);
      if (deleted) clientes.remove(cliente);
      notifyListeners();
    });
  }

  /// Eliminar una lista de clientes
  Future<int> deleteAllClientes(List<int> listClientes) async {
    Isar? isar = await IsarCnx().connectIsar();
    int count = 0;
    await isar?.writeTxn(() async {
      count = await isar.clientes.deleteAll(listClientes);
      //if (deleted > 0) solicitudes.removeAll(solicitud);
      notifyListeners();
    });
    return count;
  }
}

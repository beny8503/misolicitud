import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/filtros.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdFiltroController with ChangeNotifier {
  BdFiltroController();

  List<Filtros> _filtros = [];

  List<Filtros> get filtros => _filtros;

  /// Obtener todos los filtros
  Future<List<Filtros>> getFiltros() async {
    Isar? isar = await IsarCnx().connectIsar();

    final filtrosCollection = isar?.filtros;
    _filtros = (await filtrosCollection?.where().findAll())!;
    List<Filtros> tmp = _filtros.toList();
    notifyListeners();

    return tmp;
  }

  /// Adicionar un filtro
  Future<int> addFiltro(Filtros filtro) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.filtros.put(filtro);
    });
    _filtros.add(filtro);
    notifyListeners();
    return id;
  }

  /// Adicionar una lista de filtros
  Future<void> addAllFiltros(List<Filtros> listFiltros) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      await isar.filtros.putAll(listFiltros);
    });
    filtros.addAll(listFiltros);
    notifyListeners();
  }

  /// Eliminar un filtro
  void deleteFiltro(Filtros filtro) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted = await isar.filtros.delete(filtro.idFiltroBD);
      if (deleted) _filtros.remove(filtro);
      notifyListeners();
    });
  }

  /// Eliminar una lista de filtros
  Future<int> deleteAllFiltros(List<int> listFiltros) async {
    Isar? isar = await IsarCnx().connectIsar();
    int count = 0;
    await isar?.writeTxn(() async {
      count = await isar.filtros.deleteAll(listFiltros);
      //if (deleted > 0) solicitudes.removeAll(solicitud);
      notifyListeners();
    });
    return count;
  }
}

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/empresa.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdEmpresaController with ChangeNotifier {
  //late Isar isar;

  BdEmpresaController() {
    //init();
  }

  List<Empresa> _empresas = [];

  List<Empresa> get users => _empresas;

  /// Obtener todas los empresas
  Future<List<Empresa>> getEmpresas() async {
    Isar? isar = await IsarCnx().connectIsar();

    final empresasCollection = isar?.empresas;
    _empresas = (await empresasCollection?.where().findAll())!;
    List<Empresa> tmp = _empresas.toList();
    notifyListeners();

    return tmp;
  }

  /// Obtener una empresa dado el id
  Future<Empresa?> getEmpresaId(String id) async {
    Isar? isar = await IsarCnx().connectIsar();

    final empresasCollection = isar?.empresas;
    _empresas =
        (await empresasCollection?.filter().empIDEqualTo(id).findAll())!;
    List<Empresa> tmp = _empresas.toList();
    Empresa? empresa = tmp.isNotEmpty ? tmp[0] : null;
    return empresa;
  }

  /// Adicionar una empresa
  Future<int> addEmpresa(Empresa empresa) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.empresas.put(empresa);
    });
    _empresas.add(empresa);
    notifyListeners();
    return id;
  }

  /// Adicionar una lista de empresas
  Future<void> addAllEmpresas(List<Empresa> listEmpresas) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      await isar.empresas.putAll(listEmpresas);
    });
    _empresas.addAll(listEmpresas);
    notifyListeners();
  }

  /// Eliminar una empresa
  void deleteEmpresa(Empresa empresa) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted = await isar.empresas.delete(empresa.idEmpresaDB);
      if (deleted) _empresas.remove(empresa);
      notifyListeners();
    });
  }

  ///Actualizar una empreza
  void updateEmpresa(Empresa empresaUpdate) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      Empresa? emp = await isar.empresas.get(empresaUpdate.idEmpresaDB);
      emp?.useClass = empresaUpdate.useClass;
      emp?.useEjecutor = empresaUpdate.useEjecutor;
      emp?.useObject = empresaUpdate.useObject;
      await isar.empresas.put(emp!);
      notifyListeners();
    });
  }

  /// Eliminar una lista de empresas
  Future<int> deleteAllEmpresas(List<int> listEmpresas) async {
    Isar? isar = await IsarCnx().connectIsar();
    int count = 0;
    await isar?.writeTxn(() async {
      count = await isar.empresas.deleteAll(listEmpresas);
      //if (deleted > 0) solicitudes.removeAll(solicitud);
      notifyListeners();
    });
    return count;
  }
}

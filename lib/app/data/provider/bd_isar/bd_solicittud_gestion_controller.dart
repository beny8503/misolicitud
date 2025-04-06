import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_gestion.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdSolicitudGestionController with ChangeNotifier {
  List<SolicitudGestion> solicitudes = [];

  BdSolicitudGestionController();

  ///Obtener todas las solicitudes filtradas
  Future<List<SolicitudGestion>> getSolicitudesFiltradas() async {
    Isar? isar = await IsarCnx().connectIsar();

    final solicitudesCollection = isar?.solicitudGestions;
    solicitudes = (await solicitudesCollection?.where().findAll())!;
    List<SolicitudGestion> tmp = solicitudes.toList();
    notifyListeners();
    return tmp;
  }

  /// Adicionar una solicitud
  Future<int> addSolicitud(SolicitudGestion solicitud) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.solicitudGestions.put(solicitud);
    });
    solicitudes.add(solicitud);
    notifyListeners();
    return id;
  }

  /// Adicionar una lista de solicitudes
  Future<void> addAllSolicitudes(List<SolicitudGestion> listSolicitudes) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      await isar.solicitudGestions.putAll(listSolicitudes);
    });
    solicitudes.addAll(listSolicitudes);
    notifyListeners();
  }

  /// Eliminar una solicitud
  void deleteSolicitud(SolicitudGestion solicitud) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted =
          await isar.solicitudGestions.delete(solicitud.idSolicitudGestionBD);
      if (deleted) solicitudes.remove(solicitud);
      notifyListeners();
    });
  }

  /// Eliminar una lista de solicitud
  Future<int> deleteAllSolicitud(List<int> listSolicitud) async {
    Isar? isar = await IsarCnx().connectIsar();
    int count = 0;
    await isar?.writeTxn(() async {
      count = await isar.solicitudGestions.deleteAll(listSolicitud);
      //if (deleted > 0) solicitudes.removeAll(solicitud);
      notifyListeners();
    });
    return count;
  }

  ///Actualizar una solicitud
  void updateSolicitud(SolicitudGestion solicitudUpdate) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      SolicitudGestion? solicitud = await isar.solicitudGestions
          .get(solicitudUpdate.idSolicitudGestionBD);
      solicitud?.solEstado = solicitudUpdate.solEstado;
      await isar.solicitudGestions.put(solicitud!);
      notifyListeners();
    });
  }
}

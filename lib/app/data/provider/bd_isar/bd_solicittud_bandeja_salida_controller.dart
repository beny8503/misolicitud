import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_bandeja_salida.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdSolicitudBandejaSalidaController with ChangeNotifier {
  List<SolicitudBandejaSalida> solicitudes = [];

  BdSolicitudBandejaSalidaController();

  ///Obtener todas las solicitudes pendientes
  Future<List<SolicitudBandejaSalida>> getSolicitudes() async {
    Isar? isar = await IsarCnx().connectIsar();

    final solicitudesCollection = isar?.solicitudBandejaSalidas;
    solicitudes = (await solicitudesCollection?.where().findAll())!;
    List<SolicitudBandejaSalida> tmp = solicitudes.toList();
    notifyListeners();
    return tmp;
  }

  /// Obtener una solicitud dado el id
  Future<SolicitudBandejaSalida> getSolicitudId(int id) async {
    Isar? isar = await IsarCnx().connectIsar();

    final solicitudesCollection = isar?.solicitudBandejaSalidas;
    solicitudes = (await solicitudesCollection
        ?.filter()
        .idSolicitudBDEqualTo(id)
        .findAll())!;
    List<SolicitudBandejaSalida> tmp = solicitudes.toList();
    SolicitudBandejaSalida solicitud = tmp[0];
    return solicitud;
  }

  /// Obtener un solicitud dado varios datos
  Future<SolicitudBandejaSalida?> getSolicitudPendiente(
      String descripcion, int clienteID) async {
    Isar? isar = await IsarCnx().connectIsar();

    final solicitudesCollection = isar?.solicitudBandejaSalidas;
    solicitudes = (await solicitudesCollection
        ?.filter()
        .descripcionEqualTo(descripcion)
        .clientIDEqualTo(clienteID)
        .findAll())!;
    List<SolicitudBandejaSalida> tmp = solicitudes.toList();
    SolicitudBandejaSalida? solicitudFind = tmp.isNotEmpty ? tmp[0] : null;
    return solicitudFind;
  }

  /// Adicionar una solicitud
  Future<int> addSolicitud(SolicitudBandejaSalida solicitud) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.solicitudBandejaSalidas.put(solicitud);
    });
    solicitudes.add(solicitud);
    notifyListeners();
    return id;
  }

  /// Eliminar una solicitud
  void deleteSolicitud(SolicitudBandejaSalida solicitud) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted =
          await isar.solicitudBandejaSalidas.delete(solicitud.idSolicitudBD);
      if (deleted) solicitudes.remove(solicitud);
      notifyListeners();
    });
  }

  /// Eliminar una lista de solicitudes
  Future<int> deleteAllSolicitudes(List<int> listSolicitudes) async {
    Isar? isar = await IsarCnx().connectIsar();
    int count = 0;
    await isar?.writeTxn(() async {
      count = await isar.solicitudBandejaSalidas.deleteAll(listSolicitudes);
      notifyListeners();
    });
    return count;
  }

  ///Actualizar una solicitud
  void updateSolicitud(SolicitudBandejaSalida solicitudUpdate) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      SolicitudBandejaSalida? solicitud =
          await isar.solicitudBandejaSalidas.get(solicitudUpdate.idSolicitudBD);
      // user?.access_token = userUpdate.access_token;
      await isar.solicitudBandejaSalidas.put(solicitud!);
      notifyListeners();
    });
  }
}

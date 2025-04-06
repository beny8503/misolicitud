import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/clasificacion.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/cliente.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/permisos.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/ejecutor.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/empresa.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/filtros.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/objeto.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_bandeja_salida.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_gestion.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/user.dart';

class IsarCnx {
  Future<Isar?> connectIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = Isar.instanceNames.isEmpty
        ? await Isar.open(
            [
              UserSchema,
              SolicitudBandejaSalidaSchema,
              EmpresaSchema,
              ObjetoSchema,
              SolicitudGestionSchema,
              FiltrosSchema,
              ClienteSchema,
              ClasificacionSchema,
              EjecutorSchema,
              UrlApiSchema,
              PermisosSchema,
            ],
            directory: dir.path,
            inspector: true,
          )
        : Isar.getInstance();
    return isar;
  }
}

import 'package:get/get.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/permisos.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/user.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_permisos_controller.dart';

class DashboardController extends GetxController {
  //observables
  final userName = "".obs;
  final empresaName = "".obs;
  final user = "".obs;
  final addSolicitud = true.obs;
  final readSolicitud = true.obs;
  final updateSolicitud = true.obs;
  final deleteSolicitud = true.obs;

  DashboardController() {
    getDataSession();
  }

  void getDataSession() async {
    User userLogin = User.fromJson(await SessionManager().get("userLogin"));
    userName.value = userLogin.username ?? '';
    empresaName.value = await SessionManager().get("empresaLogin");
    user.value = userLogin.user;
    loadPermisos();
  }

  void loadPermisos() async {
    List<Permisos> permisosBD =
        await BdPermisosController().getPermisosUser(user.value);
    Permisos permisoSolicitud = permisosBD
        .firstWhere((element) => element.descripcion == 'Solicitudes');
    addSolicitud.value = permisoSolicitud.add == true ? true : false;
    readSolicitud.value = permisoSolicitud.read == true ? true : false;
    updateSolicitud.value = permisoSolicitud.update == true ? true : false;
    deleteSolicitud.value = permisoSolicitud.delete == true ? true : false;
  }

  void setEmpresaName(){
    if(empresaName.value.length > 30){
      var temp = empresaName.value.split(' ');
    }
  }
}

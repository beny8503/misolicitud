import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/solicitud_controller.dart';

class SolicitudBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SolicitudController());
  }
}

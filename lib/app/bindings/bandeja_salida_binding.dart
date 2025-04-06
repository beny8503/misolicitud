import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/bandeja_salida_controller.dart';

class BandejaSalidaBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BandejaSalidaController());
  }
}

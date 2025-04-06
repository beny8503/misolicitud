import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/config_cnx_controller.dart';

class ConfigCnxBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigCnxController());
  }
}

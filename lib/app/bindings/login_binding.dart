import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}

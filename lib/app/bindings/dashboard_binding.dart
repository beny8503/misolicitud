import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/dashboard_controller.dart';

class DashboardBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}

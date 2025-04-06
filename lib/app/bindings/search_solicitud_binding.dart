import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/search_solicitud_controller.dart';

class SearchSolicitudBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchSolicitudController());
  }
}

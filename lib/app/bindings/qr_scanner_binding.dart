import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/qr_scanner_controller.dart';

class QRScannerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QRScannerController());
  }
}

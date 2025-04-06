import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/bindings/bandeja_salida_binding.dart';
import 'package:solicitudes_multiempresa_apk/app/bindings/config_cnx_binding.dart';
import 'package:solicitudes_multiempresa_apk/app/bindings/dashboard_binding.dart';
import 'package:solicitudes_multiempresa_apk/app/bindings/login_binding.dart';
import 'package:solicitudes_multiempresa_apk/app/bindings/qr_scanner_binding.dart';
import 'package:solicitudes_multiempresa_apk/app/bindings/search_solicitud_binding.dart';
import 'package:solicitudes_multiempresa_apk/app/bindings/solicitud_binding.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/pages/dashboard/dashboard_page.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/pages/login/config_cnx_page.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/pages/login/login_page.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/pages/solicitud/bandeja_salida_page.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/pages/solicitud/qr_scanner_page.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/pages/solicitud/search_solicitud_page.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/pages/solicitud/solicitud_page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => LoginPage(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => DashboardPage(),
      binding: DashboardBindings(),
    ),
    GetPage(
      name: Routes.solcitud,
      page: () => SolicitudPage(),
      binding: SolicitudBindings(),
    ),
    GetPage(
      name: Routes.gestionSolicitud,
      page: () => SearchSolicitudPage(),
      binding: SearchSolicitudBinding(),
    ),
    GetPage(
      name: Routes.listaSolicitud,
      page: () => BandejaSalidaPage(),
      binding: BandejaSalidaBindings(),
    ),
    GetPage(
      name: Routes.qrScanner,
      page: () => QRScannerPage(),
      binding: QRScannerBindings(),
    ),
    GetPage(
      name: Routes.configCnx,
      page: () => ConfigCnxPage(),
      binding: ConfigCnxBindings(),
    ),
  ];
}

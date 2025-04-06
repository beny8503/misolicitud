import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/dashboard_controller.dart';
import 'package:intl/intl.dart';

class Header extends StatelessWidget {
  Header({
    super.key,
  });
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = "es_ES";
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: const Color(0xFF1f7f9c),
        margin: const EdgeInsets.all(0),
        elevation: 4.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Obx(
            () => Column(
              children: [
                Text(
                  'Bienvenido, ${controller.userName}!',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  '${DateFormat("EEEE, dd").format(DateTime.now())} de ${DateFormat("MMMM").format(DateTime.now())} del ${DateFormat("yyyy").format(DateTime.now())}\n',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  controller.empresaName + '\n',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/dashboard_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/utils/ui.dart';

class Body extends StatelessWidget {
  Body({
    super.key,
  });
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
            child: Wrap(
              spacing: 20,
              runSpacing: 20.0,
              children: [
                ...[
                  for (var elem in UI.listDrawer[1]['children'])
                    if ((elem['title'] == 'Crear Solicitud' &&
                            controller.addSolicitud.value) ||
                        (elem['title'] == 'Gestión Solicitudes' &&
                            controller.readSolicitud.value) ||
                        (elem['title'] == 'Bandeja de Salida' &&
                            controller.addSolicitud.value &&
                            controller.updateSolicitud.value &&
                            controller.deleteSolicitud.value))
                      SizedBox(
                        //width: 300.0,
                        height: 80.0,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(elem['route']);
                          },
                          child: Card(
                            color: Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width: 80.0,
                                        height: 80.0,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Icon(
                                            elem['icon'],
                                            color: const Color(0xFF1f7f9c),
                                            size: 35.0,
                                          ),
                                        )),
                                    const VerticalDivider(
                                      color:
                                          Color(0xFF1f7f9c), //color of divider
                                      width: 10, //width space of divider
                                      thickness: 3, //thickness of divier line
                                      indent:
                                          10, //Spacing at the top of divider.
                                      endIndent:
                                          10, //Spacing at the bottom of divider.
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        elem['title'],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                ]
              ],
            ),
          )
        ],
      ),
    );
  }
}

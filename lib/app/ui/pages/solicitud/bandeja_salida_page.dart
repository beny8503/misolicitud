import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/drawer.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/bandeja_salida/body_accordion.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/bandeja_salida/header_accordion.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/bandeja_salida_controller.dart';

class BandejaSalidaPage extends StatelessWidget {
  BandejaSalidaPage({super.key});
  final BandejaSalidaController controller = Get.put(BandejaSalidaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bandeja de Salida"),
        backgroundColor: const Color(0xFF1f7f9c),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.cached),
            onPressed: () {
              controller.sincronizarSolicitudesBulk();
            },
          ),
        ],
      ),
      drawer: const Drawer(
        child: GetDrawer(),
      ),
      body: Container(
        color: const Color(0xFFEEEEEE),
        child: SingleChildScrollView(
          child: Obx(
                () {
              if (controller.listSolicitudesBD.isNotEmpty) {
                return Column(
                  children: [
                    ...controller.listSolicitudesBD.map(
                          (solicitud) => Container(
                        padding: const EdgeInsets.all(3.0),
                        child: GFAccordion(
                          margin: const EdgeInsets.all(0),
                          titleChild: HeaderAccordion(solicitud),
                          contentChild: BodyAccordion(solicitud),
                          contentPadding: const EdgeInsets.only(
                            bottom: 0.0,
                            left: 6.0,
                            right: 7.0,
                            top: 6.0,
                          ),
                          collapsedTitleBackgroundColor: Colors.grey.shade200,
                          expandedTitleBackgroundColor: const Color(0xFFE0E0E0),
                          titleBorder:
                          Border.all(color: Colors.blueGrey, width: 1.5),
                          titleBorderRadius:
                          const BorderRadius.all(Radius.circular(1.0)),
                          contentBackgroundColor: Colors.grey.shade200,
                          contentBorder:
                          Border.all(color: Colors.blueGrey, width: 1.5),
                          contentBorderRadius:
                          const BorderRadius.all(Radius.circular(1.0)),
                          collapsedIcon: const Icon(
                            Icons.expand_more_outlined,
                            color: Colors.blueGrey,
                          ),
                          expandedIcon: const Icon(
                            Icons.expand_less_outlined,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Align(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'No existen solicitudes pendientes a sincronizar',
                      style: TextStyle(
                        color: Colors.blueGrey.shade800,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
      /*
      * Stack(
          children: [
            GestureDetector(
              onVerticalDragDown: (DragDownDetails details) {
                controller.sincronizarSolicitudesBulk();
              },
              child:Container(
                color: const Color(0xFFEEEEEE),
                child: SingleChildScrollView(
                  child: Obx(
                        () {
                      if (controller.listSolicitudesBD.isNotEmpty) {
                        return Column(
                          children: [
                            ...controller.listSolicitudesBD.map(
                                  (solicitud) => Container(
                                padding: const EdgeInsets.all(3.0),
                                child: GFAccordion(
                                  margin: const EdgeInsets.all(0),
                                  titleChild: HeaderAccordion(solicitud),
                                  contentChild: BodyAccordion(solicitud),
                                  contentPadding: const EdgeInsets.only(
                                    bottom: 0.0,
                                    left: 6.0,
                                    right: 7.0,
                                    top: 6.0,
                                  ),
                                  collapsedTitleBackgroundColor: Colors.grey.shade200,
                                  expandedTitleBackgroundColor: const Color(0xFFE0E0E0),
                                  titleBorder:
                                  Border.all(color: Colors.blueGrey, width: 1.5),
                                  titleBorderRadius:
                                  const BorderRadius.all(Radius.circular(1.0)),
                                  contentBackgroundColor: Colors.grey.shade200,
                                  contentBorder:
                                  Border.all(color: Colors.blueGrey, width: 1.5),
                                  contentBorderRadius:
                                  const BorderRadius.all(Radius.circular(1.0)),
                                  collapsedIcon: const Icon(
                                    Icons.expand_more_outlined,
                                    color: Colors.blueGrey,
                                  ),
                                  expandedIcon: const Icon(
                                    Icons.expand_less_outlined,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Align(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'No existen solicitudes pendientes a sincronizar',
                              style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      * */
    );
  }
}

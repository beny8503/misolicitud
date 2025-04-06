import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/search_solicitud_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/search_solicitud/body_accordion.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/search_solicitud/bottom_sheet.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/drawer.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/search_solicitud/header_accordion.dart';

class SearchSolicitudPage extends StatelessWidget {
  SearchSolicitudPage({super.key});
  final SearchSolicitudController controller =
      Get.put(SearchSolicitudController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestión de Solicitudes"),
        backgroundColor: const Color(0xFF1f7f9c),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {
              GetBottomSheet().openBootomSheet(controller, context);
            },
          ),
        ],
      ),
      drawer: const Drawer(
        child: GetDrawer(),
      ),
      body: /*Stack(
        children: [
          GestureDetector(
            onVerticalDragDown: (DragDownDetails details) {
              controller.ejecFiltrosSwipe();
            },
            child: Container(
              color: const Color(0xFFEEEEEE),
              child: Obx(() {
                if (controller.loadInit.value) {
                  return const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: GFLoader(
                        type: GFLoaderType.ios,
                        size: GFSize.LARGE,
                      ),
                    ),
                  );
                } else {
                  return SingleChildScrollView(
                    child: Obx(
                          () {
                        if (controller.listSolGest.value.isNotEmpty) {
                          return Obx(
                                () => Column(
                              children: [
                                ...controller.listSolGest.value.map(
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
                                      collapsedTitleBackgroundColor:
                                      Colors.grey.shade200,
                                      expandedTitleBackgroundColor:
                                      const Color(0xFFE0E0E0),
                                      titleBorder: Border.all(
                                          color: Colors.blueGrey, width: 1.5),
                                      titleBorderRadius: const BorderRadius.all(
                                          Radius.circular(1.0)),
                                      contentBackgroundColor: Colors.grey.shade200,
                                      contentBorder: Border.all(
                                          color: Colors.blueGrey, width: 1.5),
                                      contentBorderRadius: const BorderRadius.all(
                                          Radius.circular(1.0)),
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
                            ),
                          );
                        } else {
                          return Align(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'No hay solicitudes filtradas',
                                style: TextStyle(
                                  color: Colors.blueGrey.shade800,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  );
                }
              }),
              /*  */
            ),
          ),

        ]
      ),*/
      Container(
        color: const Color(0xFFEEEEEE),
        child: Obx(() {
          if (controller.loadInit.value) {
            return const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: GFLoader(
                  type: GFLoaderType.ios,
                  size: GFSize.LARGE,
                ),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Obx(
                () {
                  if (controller.listSolGest.value.isNotEmpty) {
                    return Obx(
                      () => Column(
                        children: [
                          ...controller.listSolGest.value.map(
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
                                collapsedTitleBackgroundColor:
                                    Colors.grey.shade200,
                                expandedTitleBackgroundColor:
                                    const Color(0xFFE0E0E0),
                                titleBorder: Border.all(
                                    color: Colors.blueGrey, width: 1.5),
                                titleBorderRadius: const BorderRadius.all(
                                    Radius.circular(1.0)),
                                contentBackgroundColor: Colors.grey.shade200,
                                contentBorder: Border.all(
                                    color: Colors.blueGrey, width: 1.5),
                                contentBorderRadius: const BorderRadius.all(
                                    Radius.circular(1.0)),
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
                      ),
                    );
                  } else {
                    return Align(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'No hay solicitudes filtradas',
                          style: TextStyle(
                            color: Colors.blueGrey.shade800,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            );
          }
        }),
        /*  */
      ),
    );
  }
}

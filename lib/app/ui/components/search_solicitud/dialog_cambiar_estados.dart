import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/search_solicitud_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_gestion.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/style_input.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/solicitud/style_label.dart';

class DialogCambiarEstado {
  final SearchSolicitudController controller =
      Get.put(SearchSolicitudController());
  void openDialog(SolicitudGestion solicitud) {
    Get.dialog(
      barrierDismissible: false,
      Obx(
        () => Align(
          alignment: controller.positionDialog.value,
          child: Container(
            padding: const EdgeInsets.all(0.0),
            width: 350,
            height: 370,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const GFCard(
                  title: GFListTile(
                    padding: EdgeInsets.all(0.0),
                    margin:
                        EdgeInsets.symmetric(horizontal: 3.0, vertical: 11.0),
                    title: Text(
                      "Cambiar Estado",
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  color: Color(0xFF1f7f9c),
                  height: 50.0,
                  padding: EdgeInsets.all(0.0),
                  margin: EdgeInsets.all(0.0),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero)),
                  elevation: 3.0,
                ),
                Card(
                  color: Colors.white,
                  elevation: 0.0,
                  borderOnForeground: false,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Estado Actual: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade800,
                                fontSize: 16.0,
                              ),
                              children: [
                                TextSpan(
                                  text: solicitud.solEstado,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blueGrey.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 0.0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Nuevo Estado: ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blueGrey.shade800,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6.0, horizontal: 30.0),
                              child: Row(
                                children: [
                                  Obx(
                                    () => GFRadio(
                                      size: 15,
                                      value: 1,
                                      groupValue: controller.groupValue.value,
                                      onChanged: (value) {
                                        controller.setGroupValue(value);
                                      },
                                      inactiveIcon: null,
                                      activeBorderColor: GFColors.SUCCESS,
                                      radioColor: GFColors.SUCCESS,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Obx(
                                      () => Text(
                                        controller.newEstado.value,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.blueGrey.shade800,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (solicitud.solEstado == 'Sin Atender')
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 30.0),
                                child: Row(
                                  children: [
                                    Obx(
                                      () => GFRadio(
                                        size: 15,
                                        value: 2,
                                        groupValue: controller.groupValue.value,
                                        onChanged: (value) {
                                          controller.setGroupValue(value);
                                        },
                                        inactiveIcon: null,
                                        activeBorderColor: GFColors.SUCCESS,
                                        radioColor: GFColors.SUCCESS,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Text(
                                        "Cancelada",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.blueGrey.shade800,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 10.0),
                          child: StyleLabel().inputLabel('Observación'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 10.0),
                          child: Scrollbar(
                            controller: controller.scrollController,
                            thumbVisibility: true,
                            child: Obx(
                              () => TextFormField(
                                scrollController: controller.scrollController,
                                controller: controller.observacion.value,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                decoration: StyleInput().decorationField(
                                    '', null, null, null, null, null),
                                onTap: () {
                                  controller.positionDialog.value =
                                      Alignment.topCenter;
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  left: 3,
                                  right: 3,
                                ),
                                child: GFButton(
                                  onPressed: () {
                                    controller.closeDialogCambiarEstado();
                                  },
                                  text: "Cancelar",
                                  type: GFButtonType.solid,
                                  size: GFSize.SMALL,
                                  color: Colors.red.shade900,
                                  textStyle: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  left: 3,
                                  right: 3,
                                ),
                                child: GFButton(
                                  onPressed: () {
                                    //Get.back();
                                    controller.cambiarEstado(solicitud);
                                  },
                                  text: "Aceptar",
                                  type: GFButtonType.solid,
                                  size: GFSize.SMALL,
                                  color: Colors.green.shade900,
                                  textStyle: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //child: SingleChildScrollView(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/search_solicitud_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_gestion.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/search_solicitud/dialog_cambiar_estados.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class BodyAccordion extends StatelessWidget {
  final SearchSolicitudController controller =
      Get.put(SearchSolicitudController());
  SolicitudGestion solicitud;
  BodyAccordion(this.solicitud, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Solicitud: ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey.shade900,
                  fontSize: 16.0,
                ),
              ),
              Expanded(
                child: ReadMoreText(
                  solicitud.solDescripcion?.trim()??'',
                  trimMode: TrimMode.Line,
                  trimLines: 2,
                  colorClickableText: const Color(0xFF1f7f9c),
                  trimCollapsedText: ' [Leer más]',
                  trimExpandedText: ' [Leer menos]',
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          Text.rich(
            TextSpan(
              text: 'Cliente: ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey.shade900,
                fontSize: 16.0,
              ),
              children: [
                TextSpan(
                  text: solicitud.clienteDenom,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          if (solicitud.objetos != '')
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Objeto: ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey.shade900,
                    fontSize: 16.0,
                  ),
                ),
                Expanded(
                  child: ReadMoreText(
                    solicitud.objetos??'',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText: const Color(0xFF1f7f9c),
                    trimCollapsedText: ' [Leer más]',
                    trimExpandedText: ' [Leer menos]',
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          Text.rich(
            TextSpan(
              text: 'Estado: ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey.shade900,
                fontSize: 16.0,
              ),
              children: [
                TextSpan(
                  text: solicitud.solEstado,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              text: 'Creado por: ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey.shade900,
                fontSize: 16.0,
              ),
              children: [
                TextSpan(
                  text: solicitud.solicitado,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Obx(
                      () {
                    if (controller.updateSolicitud.value && solicitud.solEstado == 'Sin Atender') {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3.0, vertical: 0.0),
                        child: GFButton(
                          onPressed: () {
                            controller.editSolicitud(solicitud);
                          },
                          text: "Modificar",
                          type: GFButtonType.solid,
                          size: GFSize.SMALL,
                          color: Colors.yellow.shade900,
                          textStyle: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox(
                        height: 0,
                        width: 0,
                      );
                    }
                  },
                ),
                if (solicitud.solEstado == 'Cerrada' ||
                    solicitud.solEstado == 'Iniciada' ||
                    solicitud.solEstado == 'Cancelada' ||
                    (solicitud.solEstado == 'Atendida' &&
                        !controller.permisoAtendida.value) /*||
                      (solicitud.solEstado == 'Pendiente' &&
                          !controller.permisoPendiente.value)*/)
                  const SizedBox(
                    height: 0,
                    width: 0,
                  )
                else
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 3.0, vertical: 0.0),
                    child: GFButton(
                      onPressed: () {
                        switch (solicitud.solEstado) {
                          case 'Sin Atender':
                            controller.newEstado.value = 'Pendiente';
                          case 'Atendida':
                            controller.newEstado.value = 'Cancelada';
                          case 'Pendiente':
                            controller.newEstado.value = 'Sin Atender';
                          case 'Terminada':
                            controller.newEstado.value = 'Cerrada';
                        }
                        DialogCambiarEstado().openDialog(solicitud);
                      },
                      text: "Cambiar Estado",
                      type: GFButtonType.solid,
                      size: GFSize.SMALL,
                      color: Colors.green.shade900,
                      disabledColor: Colors.green.shade100,
                      textStyle: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                Obx(
                      () {
                    if (controller.deleteSolicitud.value && solicitud.solEstado == 'Sin Atender') {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3.0, vertical: 0.0),
                        child: GFButton(
                          onPressed: () {
                            Get.defaultDialog(
                              title: 'Atención',
                              titleStyle: TextStyle(
                                color: Colors.red.shade900,
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                              titlePadding: const EdgeInsets.only(top: 15.0),
                              middleText:
                              '¿Está seguro que desea eliminar la solicitud?',
                              middleTextStyle: TextStyle(
                                color: Colors.red.shade900,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                              contentPadding: const EdgeInsets.all(10.0),
                              radius: 10.0,
                              backgroundColor: Colors.red.shade50,
                              buttonColor: Colors.red.shade900,
                              confirmTextColor: Colors.white,
                              cancelTextColor: Colors.red.shade900,
                              textCancel: 'Cancelar',
                              textConfirm: 'Aceptar',
                              barrierDismissible: false,
                              onCancel: () {
                                //Get.back();
                              },
                              onConfirm: () {
                                Get.back();
                                controller.eliminarSolicitud(solicitud);
                              },
                            );
                          },
                          text: "Eliminar",
                          type: GFButtonType.solid,
                          size: GFSize.SMALL,
                          color: Colors.red.shade900,
                          textStyle: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox(
                        height: 0,
                        width: 0,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

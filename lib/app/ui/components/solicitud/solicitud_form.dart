// ignore: unnecessary_import
//import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/solicitud_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/routes/app_pages.dart';
//import 'package:solicitudes_multiempresa_apk/app/routes/app_pages.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/form_search.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/style_input.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/solicitud/style_label.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/solicitud/upload_img.dart';

// ignore: must_be_immutable
class SolicitudForm extends StatelessWidget {
  GlobalKey<FormState> solicitudFormKey;
  SolicitudForm(this.solicitudFormKey, {super.key});
  final SolicitudController controller = Get.put(SolicitudController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              const Text(
                'Fecha: ',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                controller.fecha,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
          child: Column(
            children: [
              StyleLabel().inputLabel('Solicitud'),
              Obx(
                () => TextFormField(
                  controller: controller.solicitud.value,
                  maxLines: null,
                  decoration: StyleInput().decorationField(
                      'Indique la descripción', null, null, null, null, null),
                  onFieldSubmitted: (value) {
                    controller.setDescripSolicitud(value);
                  },
                  validator: (value) {
                    return (value == null || value.isEmpty)
                        ? 'Por favor introduzca la descripción'
                        : null;
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: Column(
            children: [
              StyleLabel().inputLabel('Cliente'),
              Obx(
                () => FormSearch(
                  hintText: 'Seleccione el cliente',
                  errorText: 'Por favor seleccione un cliente',
                  items: controller.listClienteDescripcion.value.isEmpty
                      ? ['']
                      : controller.listClienteDescripcion.value,
                  controller: controller.cliente.value,
                  absorbing: false,
                  onChanged: (value) {
                    /* if (controller.useObject.value) {
                      controller.getListObjetoDescripcion(value);
                    } */
                    controller.getListObjetoDescripcion(value);
                    if (controller.useEjecutor.value) {
                      controller.getListEjecDescripcion(value);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        Obx(
          () {
            if (controller.useEjecutor.value) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                child: Column(
                  children: [
                    StyleLabel().inputLabel('Ejecutor'),
                    Obx(
                      () => FormSearch(
                        hintText: controller.hintTextEjecutor.value,
                        errorText: 'Por favor seleccione un ejecutor',
                        items: controller.listEjecutorDescripcion.value.isEmpty
                            ? ['']
                            : controller.listEjecutorDescripcion.value,
                        controller: controller.ejecutor.value,
                        absorbing: controller.inactiveEjec.value,
                      ),
                    ),
                  ],
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
        Obx(
              () {
            if (controller.useClass.value) {
              return Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                child: Column(
                  children: [
                    StyleLabel().inputLabel('Clasificación'),
                    Obx(
                          () => FormSearch(
                        hintText: 'Seleccione la clasificación',
                        errorText: 'Por favor seleccione una clasificación',
                        items: controller
                            .listClasificacionDescripcion.value.isEmpty
                            ? ['']
                            : controller.listClasificacionDescripcion.value,
                        controller: controller.clasificacion.value,
                        absorbing: false,
                      ),
                    ),
                  ],
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  if (controller.useObject.value) {
                    return StyleLabel().inputLabel('Objetos');
                  } else {
                    return const Text(
                      'Objetos: ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  }
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GFButton(
                      onPressed: () {
                        controller.setVisibleCodeObj();
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      text: "Indicar código",
                      textStyle: const TextStyle(color: Color(0xFF1f7f9c)),
                      type: GFButtonType.solid,
                      color: const Color.fromARGB(255, 218, 241, 247),
                      splashColor: const Color.fromARGB(255, 218, 241, 247),
                      highlightColor: const Color.fromARGB(255, 218, 241, 247),
                      focusColor: const Color.fromARGB(255, 218, 241, 247),
                      hoverColor: const Color.fromARGB(255, 218, 241, 247),
                    ),
                    GFButton(
                      onPressed: () {
                        controller.setVisibleSelectObj();
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      text: "Seleccionar objeto",
                      textStyle: const TextStyle(color: Color(0xFF1f7f9c)),
                      type: GFButtonType.solid,
                      color: const Color.fromARGB(255, 218, 241, 247),
                      splashColor: const Color.fromARGB(255, 218, 241, 247),
                      highlightColor: const Color.fromARGB(255, 218, 241, 247),
                      focusColor: const Color.fromARGB(255, 218, 241, 247),
                      hoverColor: const Color.fromARGB(255, 218, 241, 247),
                    ),
                    GFIconButton(
                          onPressed: () async {
                            //controller.loadQR('ARE-GTECMTTO');
                            Get.toNamed(Routes.qrScanner);
                          },
                          padding: const EdgeInsets.all(4.0),
                          icon: const Icon(
                            Icons.qr_code_scanner,
                            color: Color(0xFF1f7f9c),
                          ),
                          type: GFButtonType.solid,
                          color: const Color.fromARGB(255, 218, 241, 247),
                          splashColor: const Color.fromARGB(255, 218, 241, 247),
                          highlightColor: const Color.fromARGB(255, 218, 241, 247),
                          focusColor: const Color.fromARGB(255, 218, 241, 247),
                          hoverColor: const Color.fromARGB(255, 218, 241, 247),
                        ),
                  ],
                ),
                Obx(
                  () {
                    if (controller.showSelectObj.value) {
                      return FormSearch(
                        hintText: controller.hintTextObject.value,
                        errorText: 'Por favor seleccione un objeto',
                        items: controller.listObjetosDescripcion.value.isEmpty
                            ? ['']
                            : controller.listObjetosDescripcion.value,
                        controller: controller.objetoSelect.value,
                        absorbing: controller.inactiveObject.value,
                        onChanged: (value) {
                          controller.setObjetoSelect(value);
                        },
                      );
                    } else {
                      return const SizedBox(
                        height: 0,
                        width: 0,
                      );
                    }
                  },
                ),
                Obx(
                  () {
                    if (controller.showCodeObj.value) {
                      return TextFormField(
                        controller: controller.codigoObjeto.value,
                        maxLines: null,
                        decoration: StyleInput().decorationField(
                            'Indicar el código', null, null, null, null, null),
                        onFieldSubmitted: (value) {
                          controller.setCodigoObjeto(value);
                        },
                        validator: (value) {
                          return (value == null || value.isEmpty)
                              ? 'Por favor indique el código del objeto'
                              : controller.validateCodigo(value) != ''
                                  ? controller.validateCodigo(value)
                                  : null;
                        },
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: UploadImg(controller: controller),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Obx(
              () => ElevatedButton(
                onPressed: () async {
                   controller.saveSolicitud(solicitudFormKey);
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color(0xFF1f7f9c),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                        color: Color(0xFF1f7f9c),
                      ),
                    ),
                  ),
                ),
                child: controller.loading.value
                    ? const GFLoader(
                        androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      )
                    : const Text(
                        'Confirmar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

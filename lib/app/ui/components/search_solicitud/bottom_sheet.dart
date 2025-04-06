//import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/search_solicitud_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/form_search.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/style_input.dart';
import 'package:solicitudes_multiempresa_apk/app/utils/ui.dart';

class GetBottomSheet {
  void openBootomSheet(
      SearchSolicitudController controller, BuildContext context) {
    Get.bottomSheet(
      SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
              top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
          decoration: const BoxDecoration(
            color: Color(0xFFEEEEEE),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Filtros",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.blueGrey.shade700,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            GFIconButton(
                              icon: const Icon(Icons.close),
                              type: GFButtonType.transparent,
                              color: Colors.red.shade900,
                              size: GFSize.SMALL,
                              shape: GFIconButtonShape.circle,
                              onPressed: () {
                                Get.back();
                              },
                            ),
                          ],
                        ),
                        Form(
                          key: controller.filtrosFormKey,
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: FormSearch(
                                      hintText: 'Seleccionar Filtro',
                                      errorText:
                                          'Por favor seleccione un filtro',
                                      items: UI.listFiltros,
                                      controller: controller.filter,
                                      absorbing: false,
                                      onChanged: (value) =>
                                          controller.setSelectedFilter(value),
                                    ),
                                  ),
                                  Obx(
                                    () {
                                      switch (controller.selectedFilter.value) {
                                        case 'Estado':
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: FormSearch(
                                              hintText: 'Seleccionar Estado',
                                              errorText:
                                                  'Por favor seleccione un estado',
                                              items: UI.listEstados
                                                  .map((elem) =>
                                                      elem['descripcion']
                                                          as String)
                                                  .toList(),
                                              controller:
                                                  controller.filterEstado,
                                              absorbing: false,
                                            ),
                                          );
                                        case 'Código':
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: TextFormField(
                                              controller:
                                                  controller.filterCodigo,
                                              validator: (value) {
                                                return (value == null ||
                                                        value.isEmpty)
                                                    ? 'Por favor introduzca el código'
                                                    : null;
                                              },
                                              decoration:
                                                  StyleInput().decorationField(
                                                'Indique el código',
                                                null,
                                                null,
                                                null,
                                                null,null,
                                              ),
                                            ),
                                          );
                                        case 'Fecha':
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: Column(
                                              children: [
                                                TextFormField(
                                                  focusNode:
                                                      AlwaysDisabledFocusNode(),
                                                  controller: controller
                                                      .filterFechaInicio,
                                                  onTap: () {
                                                    controller.selectDateFilter(
                                                        controller
                                                            .selectedDateInicio,
                                                        controller
                                                            .filterFechaInicio,
                                                        context);
                                                  },
                                                  validator: (value) {
                                                    return (value == null ||
                                                            value.isEmpty)
                                                        ? 'Por favor indique la fecha de inicio'
                                                        : null;
                                                  },
                                                  decoration: StyleInput()
                                                      .decorationField(
                                                    'Fecha inicio',
                                                    null,
                                                    null,
                                                    null,
                                                    null,null,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                TextFormField(
                                                  focusNode:
                                                      AlwaysDisabledFocusNode(),
                                                  controller:
                                                      controller.filterFechaFin,
                                                  onTap: () {
                                                    controller.selectDateFilter(
                                                        controller
                                                            .selectedDateFin,
                                                        controller
                                                            .filterFechaFin,
                                                        context);
                                                  },
                                                  validator: (value) {
                                                    return (value == null ||
                                                            value.isEmpty)
                                                        ? 'Por favor indique la fecha fin'
                                                        : null;
                                                  },
                                                  decoration: StyleInput()
                                                      .decorationField(
                                                    'Fecha fin',
                                                    null,
                                                    null,
                                                    null,
                                                    null,null,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        default:
                                          return const SizedBox(
                                            width: 0,
                                            height: 0,
                                          );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: GFButton(
                                  onPressed: () {
                                    controller.addFiltros();
                                  },
                                  text: "Adicionar Filtro",
                                  type: GFButtonType.solid,
                                  size: GFSize.SMALL,
                                  color: Colors.green,
                                  textStyle: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Filtros Seleccionados",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.blueGrey.shade700,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2.0, vertical: 5.0),
                          child: Obx(
                            () {
                              if (controller.listFiltrosMostrar.isNotEmpty) {
                                return Wrap(
                                  spacing: 5.0,
                                  children: [
                                    ...controller.listFiltrosMostrar.map(
                                      (filtro) => InputChip(
                                        labelPadding: const EdgeInsets.all(0.0),
                                        label: RichText(
                                          text: TextSpan(
                                            text: filtro,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey.shade900,
                                            ),
                                          ),
                                        ),
                                        backgroundColor:
                                            Colors.lightBlue.shade50,
                                        deleteIconColor: Colors.red.shade900,
                                        onDeleted: () {
                                          controller.deleteFiltro(filtro);
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              } else {
                                return Align(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'No hay filtros seleccionados',
                                      style: TextStyle(
                                          color: Colors.blueGrey.shade700,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => GFButton(
                      onPressed: () async {
                        controller.ejecFiltros();
                        /* controller.loading.value = true;
                        if (!await ConnectivityWrapper.instance.isConnected) {
                          Get.defaultDialog(
                            title: 'Información',
                            titleStyle: TextStyle(
                              color: Colors.yellow.shade900,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                            ),
                            titlePadding: const EdgeInsets.only(top: 15.0),
                            middleText:
                                'En estos momentos no tiene conexión con el servidor.'
                                'La interacción con la app dependerá de los datos almacenados en el dispositivo.'
                                '¿Desea continuar?',
                            middleTextStyle: TextStyle(
                              color: Colors.yellow.shade900,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                            contentPadding: const EdgeInsets.all(10.0),
                            radius: 10.0,
                            backgroundColor: Colors.yellow.shade50,
                            buttonColor: Colors.yellow.shade900,
                            confirmTextColor: Colors.white,
                            cancelTextColor: Colors.yellow.shade900,
                            textCancel: 'Cancelar',
                            textConfirm: 'Aceptar',
                            barrierDismissible: false,
                            onCancel: () {
                              Get.back();
                              controller.loading.value = false;
                            },
                            onConfirm: () {
                              Get.back();
                              controller.ejecFiltrosOffline();
                            },
                          );
                        } else {
                          controller.ejecFiltrosOnline();
                        }
                        Get.back(); */
                      },
                      shape: GFButtonShape.pills,
                      type: GFButtonType.solid,
                      size: GFSize.LARGE,
                      fullWidthButton: true,
                      color: const Color(0xFF1f7f9c),
                      textStyle: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                      child: controller.loading.value
                          ? const GFLoader(
                            androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          )
                          : const Text(
                              'Filtrar',
                              style: TextStyle(
                                // color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      isScrollControlled: false,
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

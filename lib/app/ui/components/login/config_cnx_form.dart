// ignore: unnecessary_import
//import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/config_cnx_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/style_input.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/solicitud/style_label.dart';

// ignore: must_be_immutable
class ConfigCnxForm extends StatelessWidget {
  GlobalKey<FormState> loginFormKey;
  final ConfigCnxController controller = Get.put(ConfigCnxController());
  ConfigCnxForm(this.loginFormKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Configuración de Conexión',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: 1,
              color: Color(0xFF1f7f9c),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 26, right: 20, top: 10, bottom: 0),
          child: StyleLabel().inputLabel('URL:'),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 10),
          child: TextFormField(
            controller: controller.url,
            keyboardType: TextInputType.url,
            autofocus: true,
            decoration: StyleInput().decorationField(
              'nombre_servidor',
              null,
              null,
              null,
              null,
              'https://'
            ),
            validator: (value) {
              return (value == null || value.isEmpty)
                  ? 'Por favor introduzca una url válida'
                  : null;
            },
          ),
        ),
        /* Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 20, top: 0, bottom: 0),
          child: Text(
            'https://nombre_servidor',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
        ), */
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Obx(
              () => ElevatedButton(
                onPressed: () async {
                  if (controller.loadInit.value) {
                    null;
                  } else {
                    if (loginFormKey.currentState!.validate()) {
                      controller.testCnx();
                    }
                  }
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    controller.loadInit.value
                        ? Colors.blueGrey.shade400
                        : const Color(0xFF1f7f9c),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: controller.loadInit.value
                            ? Colors.blueGrey.shade400
                            : const Color(0xFF1f7f9c),
                      ),
                    ),
                  ),
                ),
                child: controller.loading.value
                    ? const GFLoader(
                        androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    )
                    : const Text(
                        'Conectar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

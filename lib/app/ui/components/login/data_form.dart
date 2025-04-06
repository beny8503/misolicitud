// ignore: unnecessary_import
//import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/login_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/form_search.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/style_input.dart';
import 'package:solicitudes_multiempresa_apk/app/utils/test.dart';

// ignore: must_be_immutable
class DataForm extends StatelessWidget {
  GlobalKey<FormState> loginFormKey;
  final LoginController controller = Get.put(LoginController());
  DataForm(this.loginFormKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'MiSolicitud',
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            controller: controller.user,
            decoration: StyleInput().decorationField(
              'Usuario',
              Icons.person,
              null,
              null,
              null,
              null,
            ),
            validator: (value) {
              return (value == null || value.isEmpty)
                  ? 'Por favor introduzca el usuario'
                  : null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Obx(
            () => TextFormField(
              controller: controller.pass,
              obscureText: controller.isObscure.value,
              decoration: StyleInput().decorationField(
                'Contraseña',
                Icons.visibility,
                Icons.visibility_off,
                controller.setVisiblePass,
                controller.isObscure.value,
                null,
              ),
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              validator: (value) {
                return (value == null || value.isEmpty)
                    ? 'Por favor introduzca la contraseña'
                    : null;
              },
            ),
          ),
        ),
        /*Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            controller: controller.empresa,
            decoration: StyleInput().decorationField(
              'Empresa',
              null,
              null,
              null,
              null,
            ),
            readOnly: true,
          ),
        ),*/
        Obx(
            () {
              if (controller.listEmpresa.length > 1){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Obx(
                        () => FormSearch(
                      hintText: 'Seleccione la empresa',
                      errorText: 'Por favor seleccione una empresa',
                      items: controller.listEmpresaDescripcion.value.isEmpty
                          ? ['']
                          : controller.listEmpresaDescripcion.value,
                      controller: controller.empresa.value,
                      absorbing: false,
                    ),
                  ),
                );
              } else {
                return const SizedBox(
                  height: 0,
                  width: 0,
                );
              }
            }
        ),
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
                      controller.loginApp();
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
                    : controller.loadInit.value
                        ? const Text(
                            'Cargando...',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )
                        : const Text(
                            'Aceptar',
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

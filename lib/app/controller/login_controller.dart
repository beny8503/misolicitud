//import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/empresa.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/permisos.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/user.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/functions/api_login.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_empresa_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_permisos_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_url_api_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_user_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/routes/app_pages.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/snackbar.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/config_cnx_controller.dart';

class LoginController extends GetxController {
  late TextEditingController user;
  late TextEditingController pass;
  //late TextEditingController empresa;

  //observables
  Rx<Empresa> empresaUser = Empresa().obs;
  Rx<TextEditingController> empresa = TextEditingController().obs;
  RxList<Empresa> listEmpresa = RxList();
  RxList<String> listEmpresaDescripcion = RxList();
  RxBool isObscure = true.obs;
  RxBool loading = false.obs;
  RxBool loadInit = false.obs;

  @override
  void onInit() async {
    loadCnxUrl();
    //loadEmpresaConfig();
    user = TextEditingController();
    pass = TextEditingController();
    //empresa = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    user.dispose();
    pass.dispose();
    //empresa.dispose();
    super.onClose();
  }

  // ignore: slash_for_doc_comments
  /** Funciones para cargar la configuracion inicial para el proceso del login
   *  Cargar la configuracion de la Empresa (Funcion: loadEmpresaConfig())
   *  Configuracion para el proceso de autenticacion de forma Online (Funcion: loadInitOnline())
   *  Configuracion para el proceso de autenticacion de forma Offline (Funcion: loadInitOffline())
  */
  void loadCnxUrl() async {
    loadInit.value = true;
    List<UrlApi> urls = await BdUrlApiController().getUrlApi();
    if (urls.isEmpty) {
      Get.defaultDialog(
        title: 'Información',
        titleStyle: TextStyle(
          color: Colors.yellow.shade900,
          fontWeight: FontWeight.w600,
          fontSize: 22.0,
        ),
        titlePadding: const EdgeInsets.only(top: 15.0),
        middleText: 'Debe configurar la conexión con el servidor.'
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
        },
        onConfirm: () {
          Get.back();
          Get.offNamed(Routes.configCnx);
        },
      );
    } else {
      //loadEmpresaConfig();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      try {
        String urlTest = 'https://$url/api';
        var resultTest = await ApiLogin.testCnx(urlTest);
        if (resultTest['statusCode'] == 200) {
          List<Empresa> listEmpresa = resultTest['listEmpresas'];
          int? result = await ConfigCnxController.loadEmpConfig(listEmpresa);
          if(result == 200){
            loadInitOnline();
          }
        }
      } catch (e) {
        loading.value = false;
        loadInitOffline();

        /* Snackbar().getSnackbar(
          'Configuración de conexión',
          'Revise su conexión o verifique la URL.',
          'error',
        ); */
      }
    }
  }

  /* void loadEmpresaConfig() async {
    try {
      loadInit.value = true;
      if (await ConnectivityWrapper.instance.isConnected) {
        await loadInitOnline();
      } else {
        await loadInitOffline();
      }
      loadInit.value = false;
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Login',
        e.toString(),
        'error',
      );
    }
  } */

  /*Future<void> loadInitOnlineOld() async {
    try {
      User initLogin = await ApiLogin.loginInit(
        'gamma',
        'Sg3stman',
      );
      var sessionManager = SessionManager();
      await sessionManager.set("userToken", initLogin.access_token);
      //cargar empresa predeterminada del api
      empresaUser.value = await ApiLogin.loadConfig();
      empresa.text = empresaUser.value.empNombre!;

      //guardo la configuracion de la empresa en la sesion
      await sessionManager.set("configLogin", empresaUser.value);

      //buscar empresa en la bd
      Empresa? empresaFindBD =
          await BdEmpresaController().getEmpresaId(empresaUser.value.empID);

      //si la empresa ya esta en la bd, lo actualizo, sino lo inserto
      if (empresaFindBD == null) {
        int idEmpresaBD =
            await BdEmpresaController().addEmpresa(empresaUser.value);
        empresaUser.value.idEmpresaDB = idEmpresaBD;
      } else {
        empresaUser.value.idEmpresaDB = empresaFindBD.idEmpresaDB;
        BdEmpresaController().updateEmpresa(empresaUser.value);
      }
      loadInit.value = false;
    } on Exception catch (e) {
      loadInit.value = false;
      Snackbar().getSnackbar(
        'Login',
        e.toString(),
        'error',
      );
    }
  }*/

  /*Future<void> loadInitOfflineOld() async {
    try {
      //buscar empresa en la bd
      List<Empresa>? empresasdBD = await BdEmpresaController().getEmpresas();

      if (empresasdBD.isNotEmpty) {
        Get.defaultDialog(
          title: 'Información',
          titleStyle: TextStyle(
            color: Colors.yellow.shade900,
            fontWeight: FontWeight.w600,
            fontSize: 22.0,
          ),
          titlePadding: const EdgeInsets.only(top: 15.0),
          middleText: 'En estos momentos no tiene conexión con el servidor.'
              'La interacción con la app dependerá de los datos almacenados en el dispositivo.'
              '¿Desea Continuar? o ¿Verificar la conexión al servidor?',
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
          textCancel: 'Verificar conexión',
          textConfirm: 'Continuar sin conexión',
          barrierDismissible: false,
          onCancel: () {
            Get.back();
            Get.offNamed(Routes.configCnx);
          },
          onConfirm: () {
            Get.back();
            //cargar empresa predeterminada
            empresa.text = empresasdBD[0].empNombre!;
            loadInit.value = false;
          },
        );
        //empresa.text = empresasdBD[0].empNombre!;
      } else {
        Snackbar().getSnackbar(
          'Login',
          'Debe conectarse con el servidor para obtener la información de la(s) empresa(s).',
          'error',
        );
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Login',
        e.toString(),
        'error',
      );
    }
  }*/

  Future<void> loadInitOnline() async {
    try{
      //Cargo las empresas de la BD
      listEmpresa.value = await BdEmpresaController().getEmpresas();
      if (listEmpresa.length > 1){
        //Cargar el listado de las empresas en el comboBox
        listEmpresaDescripcion.value = listEmpresa.value
            .map((empresa) => empresa.empNombre as String)
            .toList();
      }
      loadInit.value = false;
    } on Exception catch (e) {
      loadInit.value = false;
      Snackbar().getSnackbar(
        'Login',
        e.toString(),
        'error',
      );
    }
  }

  Future<void> loadInitOffline() async {
    try {
      //Cargo las empresas de la BD
      List<Empresa> listEmpresasBD = await BdEmpresaController().getEmpresas();

      if (listEmpresasBD.isNotEmpty) {
        Get.defaultDialog(
          title: 'Información',
          titleStyle: TextStyle(
            color: Colors.yellow.shade900,
            fontWeight: FontWeight.w600,
            fontSize: 22.0,
          ),
          titlePadding: const EdgeInsets.only(top: 15.0),
          middleText: 'En estos momentos no tiene conexión con el servidor.'
              'La interacción con la app dependerá de los datos almacenados en el dispositivo.'
              '¿Desea Continuar? o ¿Verificar la conexión al servidor?',
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
          textCancel: 'Verificar conexión',
          textConfirm: 'Continuar sin conexión',
          barrierDismissible: false,
          onCancel: () {
            Get.back();
            Get.offNamed(Routes.configCnx);
          },
          onConfirm: () async{
            Get.back();
            //Cargo las empresas de la BD
            listEmpresa.value = listEmpresasBD;
            if (listEmpresa.length > 1){
            //Cargar el listado de las empresas en el comboBox
            listEmpresaDescripcion.value = listEmpresa.value
                .map((empresa) => empresa.empNombre as String)
                .toList();
            }
            loadInit.value = false;
          },
        );
        //empresa.text = empresasdBD[0].empNombre!;
      } else {
        Snackbar().getSnackbar(
          'Login',
          'Debe conectarse con el servidor para obtener la información de la(s) empresa(s).',
          'error',
        );
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Login',
        e.toString(),
        'error',
      );
    }
  }

  // ignore: slash_for_doc_comments
  /** Funciones para realizar el proceso del login
   *  Proceso de autenticacion de forma Online (Funcion: loginOnline())
   *  Proceso de autenticacion de forma Offline (Funcion: loadInitOffline())
  */
  void loginApp() async {
    loading.value = true;
    List<UrlApi> urls = await BdUrlApiController().getUrlApi();
    UrlApi urlCnx = urls[0];
    String url = urlCnx.urlApi;
    try {
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        loginOnline();
      }
    } catch (e) {
      loginOffline();
    }
  }

  void loginOnline() async {
    try {
      //login en la Api
      Empresa selectEmp;
      if(listEmpresa.length == 1){
        selectEmp = listEmpresa[0];
      } else{
        selectEmp = listEmpresa
            .firstWhere((element) => element.empNombre == empresa.value.text);
      }
      Map<String, Object> loginApp = await ApiLogin.loginApp(
        user.text,
        pass.text,
        selectEmp.empCod,
        1,
      );
      User? userLogin = loginApp['user'] as User;
      userLogin.user = user.text;
      userLogin.password = pass.text;

      //cargar los permisos de "userLogin"
      List<Permisos> listPermisos = loginApp['permisos'] as List<Permisos>;

      Permisos permisoSolicitud = listPermisos
          .firstWhere((element) => element.descripcion == 'Solicitudes');

      if (permisoSolicitud.deny == true) {
        Snackbar().getSnackbar(
          'Login',
          'El usuario no tiene permiso a acceder a la aplicación',
          'success',
        );
        loading.value = false;
        cleanData();
      } else {
        //buscar usuario en la bd
        User? userFindBD =
            await BdUserController().getUserLogin(userLogin.user);
        //si el usuario ya esta en la bd, lo actualizo, sino lo inserto
        if (userFindBD != null) {
          userLogin.idUserBD = userFindBD.idUserBD;
          BdUserController().updateUser(userLogin);
        } else {
          int idUserBD = await BdUserController().addUser(userLogin);
          userLogin.idUserBD = idUserBD;
        }

        //busco los permisos de user logueado en la bd, si esta lo actualizo, sino los inserto
        for (var element in listPermisos) {
          element.user = userLogin.user;
        }
        List<Permisos> permisosBD =
            await BdPermisosController().getPermisosUser(userLogin.user);

        if (permisosBD.isNotEmpty) {
          List<int> ids = permisosBD.map((item) => item.idPermisoBD).toList();
          BdPermisosController().deleteAllPermisos(ids);
        }
        BdPermisosController().addAllPermisos(listPermisos);

        //guardo el user logueado y los datos de la empresa en la session
        var sessionManager = SessionManager();
        await sessionManager.set("userLogin", userLogin);
        await sessionManager.set("configLogin", selectEmp);
        await sessionManager.set("empresaLogin", selectEmp.empNombre);
        await sessionManager.set("userToken", userLogin.access_token);

        await Future.delayed(const Duration(seconds: 1));
        loading.value = false;
        Get.offNamed(Routes.dashboard);
      }
    } catch (e) {
      loading.value = false;
      Snackbar().getSnackbar(
        'Login',
        e.toString(),
        'error',
      );
    }
  }

  void loginOffline() async {
    try {
      //Cragar datos empresa
      Empresa selectEmp;
      if(listEmpresa.length == 1){
        selectEmp = listEmpresa[0];
      } else{
        selectEmp = listEmpresa
            .firstWhere((element) => element.empNombre == empresa.value.text);
      }
      //buscar usuario en la bd
      User? userFindBD = await BdUserController().getUserLogin(user.text);

      //si el usuario ya esta en la bd, actualizo session
      if (userFindBD != null) {
        var sessionManager = SessionManager();
        await sessionManager.set("userLogin", userFindBD);
        await sessionManager.set("configLogin", selectEmp);
        await sessionManager.set("empresaLogin", selectEmp.empNombre);

        loading.value = false;
        cleanData();

        /* Snackbar().getSnackbar(
          'Login',
          'Usuario logueado satisfactoriamente',
          'success',
        ); */

        await Future.delayed(const Duration(seconds: 1));
        Get.toNamed(Routes.dashboard);
      } else {
        Snackbar().getSnackbar(
          'Login',
          'Usuario incorrecto, debe conectarse con el servidor para loguearse satisfactoriamente',
          'error',
        );
        loading.value = false;
      }
    } catch (e) {
      loading.value = false;
      Snackbar().getSnackbar(
        'Login',
        e.toString(),
        'error',
      );
    }
  }

  // ignore: slash_for_doc_comments
  /** Funciones auxiliares
   *  Mostrar la contrasenia (Funcion: setVisiblePass())
   *  Limpiar los campos (Funcion: cleanData())
  */
  void setVisiblePass() {
    isObscure.value = !isObscure.value;
  }

  void cleanData() {
    user.text = '';
    pass.text = '';
    empresa.value.text = '';
  }
}

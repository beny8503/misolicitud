import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/clasificacion.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/cliente.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/ejecutor.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/empresa.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/objeto.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_bandeja_salida.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/functions/api_login.dart';

import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/functions/api_solicitud.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_clasificacion_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_cliente_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_ejecutor_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_objeto_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_solicittud_bandeja_salida_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_url_api_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/snackbar.dart';

class SolicitudController extends GetxController {
  late String fecha;
  /*late TextEditingController ejecutor;
  late TextEditingController clasificacion;
  late TextEditingController cliente;
  late TextEditingController objetoSelect;
  late TextEditingController codigoObjeto;


  late List<Ejecutor> listEjecutor;
  late List<Cliente> listCliente;
  late List<Clasificacion> listClasificacion;
  late List<Objeto> listObjeto;*/

  final ImagePicker picker = ImagePicker();

  //datos observables
  Rx<TextEditingController> ejecutor = TextEditingController().obs;
  Rx<TextEditingController> clasificacion = TextEditingController().obs;
  Rx<TextEditingController> cliente = TextEditingController().obs;
  Rx<TextEditingController> objetoSelect = TextEditingController().obs;
  Rx<TextEditingController> codigoObjeto = TextEditingController().obs;

  RxList<Ejecutor> listEjecutor = RxList();
  RxList<Cliente> listCliente = RxList();
  RxList<Clasificacion> listClasificacion = RxList();
  RxList<Objeto> listObjeto = RxList();

  final formImg = Rx<XFile?>(null);
  final imgEdit = Rx<Uint8List?>(null);
  RxString imgUrl = ''.obs;
  RxList<String> listEjecutorDescripcion = RxList();
  RxList<String> listClienteDescripcion = RxList();
  RxList<String> listClasificacionDescripcion = RxList();
  RxList<String> listObjetosDescripcion = RxList();
  Rx<TextEditingController> solicitud = TextEditingController().obs;
  Rx<Empresa> empresaLogin = Empresa().obs;
  RxString hintTextObject = 'Seleccionar el objeto'.obs;
  RxString hintTextEjecutor = 'Seleccionar el ejecutor'.obs;
  RxString title = 'Crear Solicitud'.obs;
  RxString objeto = ''.obs;
  RxBool useObject = false.obs;
  RxBool useClass = false.obs;
  RxBool useEjecutor = false.obs;
  RxBool inactiveObject = false.obs;
  RxBool inactiveEjec = false.obs;
  RxBool showShimmer = false.obs;
  RxBool showSelectObj = false.obs;
  RxBool showCodeObj = false.obs;
  RxBool loading = false.obs;

  SolicitudController() {
    setFechaInit('');
  }

  @override
  void onInit() async {
    /*ejecutor = TextEditingController();
    clasificacion = TextEditingController();
    cliente = TextEditingController();
    objetoSelect = TextEditingController();
    codigoObjeto = TextEditingController()*/
    cleanData();
    loadInitConfig();
    super.onInit();
  }

  @override
  void onClose() {
    cleanData();
    /*cliente.dispose();
    clasificacion.dispose();
    ejecutor.dispose();
    objetoSelect.dispose();
    codigoObjeto.dispose();*/
    super.onClose();
  }

  // ignore: slash_for_doc_comments
  /** Funciones para cargar la configuracion inicial para el proceso de insertar/editar solicitud
   *  Cargar la configuracion y los datos inciales de la vista
  */

  void loadInitConfig() async {
    try {
      EasyLoading.instance
        ..loadingStyle = EasyLoadingStyle.custom
        ..maskType = EasyLoadingMaskType.black
        ..backgroundColor = const Color(0xFF1f7f9c)
        ..indicatorColor = Colors.white
        ..textColor = Colors.white
        ..dismissOnTap = false
        ..userInteractions = false;
      EasyLoading.show(status: 'Cargando...');
      title.value =
          Get.arguments != null ? 'Editar Solicitud' : 'Crear Solicitud';

      //Cargar la configuracion del sistema
      empresaLogin.value =
          Empresa.fromJsonSession(await SessionManager().get("configLogin"));
      useObject.value = empresaLogin.value.useObject!;
      useClass.value = empresaLogin.value.useClass!;
      useEjecutor.value = empresaLogin.value.useEjecutor!;

      //Cargar el listado de los clientes
      getListClienteDescripcion();

      //Cargar el listado de clasificaciones segun configuracion
      if (useClass.value) {
        getListClasifDescripcion();
      }

      //Cargar los datos de la solicitud a editar si fuera el caso
      await Future.delayed(const Duration(seconds: 3));
      if (Get.arguments != null) {
        loadSolicitudEdit();
      } else {
        EasyLoading.dismiss();
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Solicitud',
        e.toString(),
        'error',
      );
    }
  }

  //Cargar el listado de los clientes
  void getListClienteDescripcion() async {
    try {
      //if (await ConnectivityWrapper.instance.isConnected) {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        //Cargar los clientes del api y mostrarlos
        listCliente.value = await ApiSolicitud.getCliente();
        listClienteDescripcion.value = listCliente.value
            .map((cliente) => cliente.descripcion as String)
            .toList();

        //Cargar los clientes de la BD, si existen los elimino e inserto los nuevos
        List<Cliente> listClientesBD =
            await BdClienteController().getClientes();
        if (listClientesBD.isNotEmpty) {
          List<int> ids =
              listClientesBD.map((item) => item.idClienteDB).toList();
          BdClienteController().deleteAllClientes(ids);
        }
        BdClienteController().addAllClientes(listCliente.value);
        // } else {
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Solicitud',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      //Cargar el listado de clientes de la BD
      List<Cliente> listClientesBD = await BdClienteController().getClientes();
      if (listClientesBD.isNotEmpty) {
        listCliente.value = listClientesBD;
        listClienteDescripcion.value = listCliente
            .map((cliente) => cliente.descripcion as String)
            .toList();
      } else {
        Snackbar().getSnackbar(
          'Solicitud',
          'Debe conectarse con el servidor para obtener el listado de los clientes.',
          'error',
        );
      }
    }
  }

  //Cargar el listado de ejecutores
  void getListEjecDescripcion(value) async {
    inactiveEjec.value = true;
    ejecutor.value.text = '';
    hintTextEjecutor.value = 'Cargando...';
    Cliente cli =
        listCliente.firstWhere((element) => element.descripcion == value);
    try {
      // if (await ConnectivityWrapper.instance.isConnected) {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        //Cargar los ejecutores del api y mostrarlos
        listEjecutor.value =
            await ApiSolicitud.getEjecutoresCliente(cli.clientId!);
        listEjecutorDescripcion.value = listEjecutor
            .map((ejecutor) => ejecutor.descripcion as String)
            .toList();

        //asignarle a cada ejecutor de la lista el id del cliente seleccionado
        for (var element in listEjecutor) {
          element.clientID = cli.clientId!;
        }

        //Cargar los ejecutores de la BD, si existen los elimino e inserto los nuevos
        List<Ejecutor> listEjecutoresBD =
            await BdEjecutorController().getEjecutorCliente(cli.clientId!);
        if (listEjecutoresBD.isNotEmpty) {
          List<int> ids =
              listEjecutoresBD.map((item) => item.idEjecutorBD).toList();
          BdEjecutorController().deleteAllEjecutores(ids);
        }
        BdEjecutorController().addAllEjecutores(listEjecutor);
      }
      inactiveEjec.value = false;
      hintTextEjecutor.value = 'Seleccionar el ejecutor';
      //else {

      // }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Solicitud',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      //Cargar los ejecutores de la BD, segun el cliente seleccionado
      List<Ejecutor> listEjecutoresBD =
          await BdEjecutorController().getEjecutorCliente(cli.clientId!);
      if (listEjecutoresBD.isNotEmpty) {
        listEjecutor.value = listEjecutoresBD;
        listEjecutorDescripcion.value = listEjecutor
            .map((ejecutor) => ejecutor.descripcion as String)
            .toList();
      } else {
        Snackbar().getSnackbar(
          'Solicitud',
          'Debe conectarse con el servidor para obtener el listado de los ejecutores.',
          'error',
        );
      }
      inactiveEjec.value = false;
      hintTextEjecutor.value = 'Seleccionar el ejecutor';
    }
  }

  //Cargar el listado de clasificaciones
  void getListClasifDescripcion() async {
    try {
      // if (await ConnectivityWrapper.instance.isConnected) {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        //Cargar las clasificaciones del api y mostrarlos
        listClasificacion.value = await ApiSolicitud.getClasificacion();
        listClasificacionDescripcion.value = listClasificacion.value
            .map((clasificacion) => clasificacion.descripcion as String)
            .toList();

        //Cargar las clasificaciones de la BD, si existen las elimino e inserto las nuevas
        List<Clasificacion> listClasificacionesBD =
            await BdClasificacionController().getClasificaciones();
        if (listClasificacionesBD.isNotEmpty) {
          List<int> ids = listClasificacionesBD
              .map((item) => item.idClasificacionBD)
              .toList();
          BdClasificacionController().deleteAllClasificaciones(ids);
        }
        BdClasificacionController()
            .addAllClasificaciones(listClasificacion.value);
      } //else {

      //  }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Solicitud',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      //Cargar el listado de clasificaciones de la BD
      List<Clasificacion> listClasificacionesBD =
          await BdClasificacionController().getClasificaciones();
      if (listClasificacionesBD.isNotEmpty) {
        listClasificacion.value = listClasificacionesBD;
        listClasificacionDescripcion.value = listClasificacion
            .map((clasificacion) => clasificacion.descripcion as String)
            .toList();
      } else {
        Snackbar().getSnackbar(
          'Solicitud',
          'Debe conectarse con el servidor para obtener el listado de clasificaciones.',
          'error',
        );
      }
    }
  }

  //Cargar los datos de la solicitud a editar
  void loadSolicitudEdit() async {
    Cliente cli;
    // obtener los datos del parametro que viene por la ruta
    var argument = Get.arguments;
    try {
      /// mostrar los datos del parametro
      setFechaInit(argument['solFecha']);
      solicitud.value.text = argument['descripcion'];
      cliente.value.text = argument['clienteDenom'];

      if (useClass.value) {
        clasificacion.value.text = argument['clasificacionDenom'];
      }
      String origen = argument['origen'];
      if (origen == 'gestionSolicitud') {
        imgUrl.value = argument['foto'];
      } else {
        var decoded = base64Url.decode(argument['foto']);
        imgEdit.value = decoded;
        print(decoded);
      }

      //if (await ConnectivityWrapper.instance.isConnected) {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        //Cargar clientes del api
        listCliente.value = await ApiSolicitud.getCliente();
        listClienteDescripcion.value = listCliente
            .map((cliente) => cliente.descripcion as String)
            .toList();

        //buscar el cliente seleccionado
        cli = listCliente.firstWhere(
            (element) => element.descripcion == argument['clienteDenom']);

        //Cargar los clientes de la BD, si existen los elimino e inserto los nuevos
        List<Cliente> listClientesBD =
            await BdClienteController().getClientes();
        if (listClientesBD.isNotEmpty) {
          List<int> ids =
              listClientesBD.map((item) => item.idClienteDB).toList();
          BdClienteController().deleteAllClientes(ids);
        }
        BdClienteController().addAllClientes(listCliente);

        if (useEjecutor.value) {
          ejecutor.value.text = argument['ejecutorDenom'];

          //Cargar los ejecutores del api y mostrarlos
          listEjecutor.value =
              await ApiSolicitud.getEjecutoresCliente(cli.clientId!);
          listEjecutorDescripcion.value = listEjecutor
              .map((ejecutor) => ejecutor.descripcion as String)
              .toList();

          //asignarle a cada ejecutor de la lista el id del cliente seleccionado
          for (var element in listEjecutor) {
            element.clientID = cli.clientId!;
          }

          //Cargar los ejecutores de la BD, si existen los elimino e inserto los nuevos
          List<Ejecutor> listEjecutoresBD =
              await BdEjecutorController().getEjecutorCliente(cli.clientId!);
          if (listEjecutoresBD.isNotEmpty) {
            List<int> ids =
                listEjecutoresBD.map((item) => item.idEjecutorBD).toList();
            BdEjecutorController().deleteAllEjecutores(ids);
          }
          BdEjecutorController().addAllEjecutores(listEjecutor);
        }

        //if (useObject.value) {
        String origen = argument['origen'];
        if (origen == 'gestionSolicitud') {
          Objeto temp = argument['objetos'][0];
          objeto.value = temp.codigo;
          objetoSelect.value.text = '${temp.codigo} - ${temp.denom}';
          codigoObjeto.value.text = temp.codigo;
        } else {
          objeto.value = argument['objetoDescripcion'];
        }
        showCodeObj.value = true;

        //cargar los objetos segun el cliente seleccionado
        listObjeto.value =
            await ApiSolicitud.getObjetos({'objClientCod': cli.codigo});
        listObjetosDescripcion.value = listObjeto
            .map((objeto) => ('${objeto.codigo} - ${objeto.denom}'))
            .toList();

        //asignarle a cada objeto de la lista el id del cliente seleccionado
        for (var element in listObjeto) {
          element.clientID = cli.clientId!;
        }

        //Cargar los objetos de la BD, segun el cliente seleccionado, si existen los elimino e inserto los nuevos
        List<Objeto> listObjetosBD =
            await BdObjetoController().getObjetoCliente(cli.clientId!);
        if (listObjetosBD.isNotEmpty) {
          List<int> ids = listObjetosBD.map((item) => item.idObjetoDB).toList();
          BdObjetoController().deleteAllObjeto(ids);
        }
        BdObjetoController().addAllObjetos(listObjeto.value);

        if (listObjeto.isNotEmpty) EasyLoading.dismiss();
        // }
      } //else {

      // }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Solicitud',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      //Cargar el listado de clientes de la BD
      List<Cliente> listClientesBD = await BdClienteController().getClientes();
      if (listClientesBD.isNotEmpty) {
        listCliente.value = listClientesBD;
        listClienteDescripcion.value = listCliente
            .map((cliente) => cliente.descripcion as String)
            .toList();

        //buscar el cliente seleccionado
        cli = listCliente.firstWhere(
            (element) => element.descripcion == argument['clienteDenom']);

        if (useEjecutor.value) {
          ejecutor.value.text = argument['ejecutorDenom'];
          //Cargar los ejecutores de la BD, segun el cliente seleccionado
          List<Ejecutor> listEjecutoresBD =
              await BdEjecutorController().getEjecutorCliente(cli.clientId!);
          if (listEjecutoresBD.isNotEmpty) {
            listEjecutor.value = listEjecutoresBD;
            listEjecutorDescripcion.value = listEjecutor
                .map((ejecutor) => ejecutor.descripcion as String)
                .toList();
          } else {
            listEjecutor.value = [];
            listEjecutorDescripcion.value.add(ejecutor.value.text);
          }
        }

        //if (useObject.value) {
        String origen = argument['origen'];
        if (origen == 'gestionSolicitud') {
          Objeto temp = argument['objetos'][0];
          objeto.value = temp.codigo;
          objetoSelect.value.text = '${temp.codigo} - ${temp.denom}';
          codigoObjeto.value.text = temp.codigo;
        } else {
          objeto.value = argument['objetoDescripcion'];
          // objetoSelect.text = '${temp.codigo} - ${temp.denom}';
          codigoObjeto.value.text = argument['objetoDescripcion'];
        }
        showCodeObj.value = true;

        //Cargar los objetos de la BD, segun el cliente seleccionado
        List<Objeto> listObjetosBD =
            await BdObjetoController().getObjetoCliente(cli.clientId!);

        if (listObjetosBD.isNotEmpty) {
          listObjeto.value = listObjetosBD;
          listObjetosDescripcion.value = listObjeto
              .map((objeto) => ('${objeto.codigo} - ${objeto.denom}'))
              .toList();
        } else {
          listObjeto.value = [];
          listObjetosDescripcion.value.add(objeto.value);
        }
        // }
      } else {
        Snackbar().getSnackbar(
          'Solicitud',
          'Debe conectarse con el servidor para obtener el listado de los clientes.',
          'error',
        );
      }
    }
    EasyLoading.dismiss();
  }

  // ignore: slash_for_doc_comments
  /** Funciones relacionadas con la seleccion de los objetos
   *  Obtener los objetos segun el cliente seleccionado.
   *  Mostrar el campo selccionado para indicar el objeto
  */
  void getListObjetoDescripcion(value) async {
    Cliente cli =
        listCliente.firstWhere((element) => element.descripcion == value);
    try {
      inactiveObject.value = true;
      objeto.value = '';
      objetoSelect.value.text = '';
      hintTextObject.value = 'Cargando...';

      //if (await ConnectivityWrapper.instance.isConnected) {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        //cargar los objetos del api, segun cliente seleccionado y mostrarlos
        listObjeto.value =
            await ApiSolicitud.getObjetos({'objClientCod': cli.codigo});
        listObjetosDescripcion.value = listObjeto
            .map((objeto) => ('${objeto.codigo} - ${objeto.denom}'))
            .toList();

        //asignarle a cada objeto de la lista el id del cliente seleccionado
        for (var element in listObjeto) {
          element.clientID = cli.clientId!;
        }

        //Cargar los objetos de la BD, segun el cliente seleccionado, si existen los elimino e inserto los nuevos
        List<Objeto> listObjetosBD =
            await BdObjetoController().getObjetoCliente(cli.clientId!);
        if (listObjetosBD.isNotEmpty) {
          List<int> ids = listObjetosBD.map((item) => item.idObjetoDB).toList();
          BdObjetoController().deleteAllObjeto(ids);
        }
        BdObjetoController().addAllObjetos(listObjeto);
      }
      inactiveObject.value = false;
      hintTextObject.value = 'Seleccionar el objeto'; //else {
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Solicitud',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      //Cargar los objetos de la BD, segun el cliente seleccionado
      List<Objeto> listObjetosBD =
          await BdObjetoController().getObjetoCliente(cli.clientId!);
      if (listObjetosBD.isNotEmpty) {
        listObjeto.value = listObjetosBD;
        listObjetosDescripcion.value = listObjeto
            .map((objeto) => ('${objeto.codigo} - ${objeto.denom}'))
            .toList();
      } else {
        Snackbar().getSnackbar(
          'Solicitud',
          'Debe conectarse con el servidor para obtener el listado de los objetos.',
          'error',
        );
      }
      // }
      inactiveObject.value = false;
      hintTextObject.value = 'Seleccionar el objeto';
    }
  }

  void setVisibleSelectObj() {
    if (codigoObjeto.value.text.isNotEmpty) {
      String result = validateCodigo(codigoObjeto.value.text);
      if (result == '') {
        String code = codigoObjeto.value.text.toUpperCase();
        Objeto temp =
            listObjeto.firstWhere((element) => element.codigo == code);
        objetoSelect.value.text = '${temp.codigo} - ${temp.denom}';
      }
    }
    showSelectObj.value = true;
    showCodeObj.value = false;
  }

  void setVisibleCodeObj() {
    if (objetoSelect.value.text.isNotEmpty) {
      codigoObjeto.value.text = objetoSelect.value.text.split(' - ')[0];
    }
    showSelectObj.value = false;
    showCodeObj.value = true;
  }

  void setObjetoSelect(value) {
    objeto.value = value.split(' - ')[0];
  }

  void setCodigoObjeto(value) {
    objeto.value = value;
  }

  String validateCodigo(value) {
    String code = value.toString().toUpperCase();
    List<String> listCodes =
        listObjeto.map((objeto) => (objeto.codigo)).toList();
    String result = listCodes.firstWhere((element) => element == code,
        orElse: () => 'Código incorrecto');
    return result == 'Código incorrecto' ? result : '';
  }

// ignore: slash_for_doc_comments
  /** Funciones relacionadas con la seleccion de la imagen   
  */
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    var sizeImg = await File(img!.path).length();
    var kb = sizeImg / 1024;
    var imgPath = img!.path;
    XFile? compressedImage = img;
    while (kb > 200) {
      final lastIndex = imgPath.lastIndexOf('.');
      final splitted = imgPath.substring(0, (lastIndex));
      final outPath = "${splitted}_out${imgPath.substring(lastIndex)}";
      compressedImage = await FlutterImageCompress.compressAndGetFile(
          imgPath, outPath,
          minWidth: 1000, minHeight: 1000, quality: 25);
      var size = await compressedImage!.length();
      kb = size / 1024;
      imgPath = compressedImage!.path;
    }
    formImg.value = compressedImage;
    print('test');
  }

  void changeBtn() {
    formImg.value = null;
    imgEdit.value = null;
    imgUrl.value = '';
  }

  // ignore: slash_for_doc_comments
  /** Funciones relacionadas con el proceso de insertar/editar solicitud
   *  Insertar/Editar solicitud online
   *  Insertar/Editar solicitud offline
   *  Obtener los datos de la solicitud a insertar/editar
  */
  //Funcion para obtener los datos de la solicitud a insertar/editar
  getData() async {
    var clienteID = listCliente
        .firstWhere((element) => element.descripcion == cliente.value.text);
    Objeto? objetoID;
    if (useObject.value && objeto.value == '') {
      Snackbar().getSnackbar(
        'Solicitud',
        'Debe indicar el objeto.',
        'error',
      );
      return null;
    } else if (objeto.value != '') {
      objetoID =
          listObjeto.firstWhere((element) => element.codigo == objeto.value);
      /* objetoID = listObjeto.firstWhere(
          (element) => element.denom == objeto.text.split(' - ')[1]); */
    }
    Ejecutor? ejecutorID;
    if (useEjecutor.value) {
      ejecutorID = listEjecutor
          .firstWhere((element) => element.descripcion == ejecutor.value.text);
    }
    Clasificacion? clasificacionID;
    if (useClass.value) {
      clasificacionID = listClasificacion.firstWhere(
          (element) => element.descripcion == clasificacion.value.text);
    }

    var data = {
      'descripcion': solicitud.value.text,
      'solFecha': DateTime.now().toIso8601String(),
      'solClienteCod': clienteID.codigo,
      'solEjecutorCod': ejecutorID?.codigo,
      'solClasifica': clasificacionID?.descripcion,
      //'empCodigo': empresaLogin.value.empCod,
      'Objetos': objetoID != null
          ? [
              {"objpatCodigo": objetoID.codigo}
            ]
          : [],
      'foto': formImg.value != null ? File(formImg.value!.path) : null,
    };
    /*var temp = await File(formImg.value!.path).length();
    var kb = temp / 1024;
    print(kb);*/

    return data;
  }

  void saveSolicitud(solicitudFormKey) async {
    loading.value = true;
    List<UrlApi> urls = await BdUrlApiController().getUrlApi();
    UrlApi urlCnx = urls[0];
    String url = urlCnx.urlApi;
    try {
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        saveOnline(solicitudFormKey);
      }
    } catch (e) {
      saveOffline(solicitudFormKey);
    }
  }

  //Funcion para Insertar/Editar solicitud online
  void saveOnline(solicitudFormKey) async {
    if (solicitudFormKey.currentState!.validate()) {
      try {
        var tmp = await getData();
        if (tmp == null) {
          loading.value = false;
          return;
        }

        String base64Image = '';
        if (tmp['foto'] != null) {
          final bytes = File(tmp['foto']!.path).readAsBytesSync();
          //base64Image = "data:image/png;base64,${base64Encode(bytes)}";
          base64Image = base64Encode(bytes);
        }

        var data = {
          'descripcion': tmp['descripcion'],
          'solClienteCod': tmp['solClienteCod'],
          'solEjecutorCod': tmp['solEjecutorCod'],
          'solClasifica': tmp['solClasifica'],
         // 'empCodigo': tmp['empCodigo'],
          'Objetos': tmp['Objetos'],
          'solFoto': base64Image,
          //'foto': '',
          //'refExterna': '',
        };
        //solicitud.value.text = base64Image;
        if (Get.arguments == null) {
          //insertar solicitud
          var result = await ApiSolicitud.insertSolicitud(data);

          //var resultMsj = result[0];
          if (result['Success']) {
            var objMsj = result['Mensajes'];
            var msj = objMsj[0]['Description'];
            Snackbar().getSnackbar(
              'Solicitud',
              msj,
              'success',
            );
          }
          cleanData();
        } else {
          //actualizo solicitud
          var argument = Get.arguments;
          var result =
              await ApiSolicitud.updateSolicitud(argument['solID'], data);

          var resultMsj = result[0];
          if (resultMsj['Success']) {
            var objMsj = resultMsj['Mensajes'];
            var msj = objMsj[0]['Description'];
            Snackbar().getSnackbar(
              'Solicitud',
              msj,
              'success',
            );
          }
          cleanData();
        }
      } catch (e) {
        Snackbar().getSnackbar(
          'Solicitud',
          e.toString(),
          'error',
        );
      }
    }
    loading.value = false;
    //solicitudFormKey.currentState?.reset();
  }

  //Funcion para Insertar/Editar solicitud offline
  void saveOffline(solicitudFormKey) async {
    if (solicitudFormKey.currentState!.validate()) {
      try {
        var data = await getData();
        String base64Image = '';
        if (data['foto'] != null) {
          final bytes = File(data['foto']!.path).readAsBytesSync();
          //base64Image = "data:image/png;base64,${base64Encode(bytes)}";
          base64Image = base64Encode(bytes);
        }
        SolicitudBandejaSalida newSolicitud = SolicitudBandejaSalida();
        newSolicitud.descripcion = data['descripcion'];
        newSolicitud.solFecha = data['solFecha'];
        //newSolicitud.empCodigo = data['empCodigo'];
        newSolicitud.solClasifica = data['solClasifica'];
        newSolicitud.solClienteCod = data['solClienteCod'];
        newSolicitud.solEjecutorCod = data['solEjecutorCod'];
        newSolicitud.ejecutorDescripcion = ejecutor.value.text;
        newSolicitud.clienteDescripcion = cliente.value.text;
        newSolicitud.clasificacionDescripcion = clasificacion.value.text;
        newSolicitud.objetoDescripcion = objeto.value;
        newSolicitud.solFoto = base64Image;

        if (Get.arguments == null) {
          newSolicitud.pendiente = 'Insertar Solicitud';
        } else {
          var argument = Get.arguments;
          newSolicitud.pendiente = 'Actualizar Solicitud';
          newSolicitud.solCodigo = argument['solCodigo'];
          newSolicitud.solEstado = argument['solEstado'];
          newSolicitud.solID = argument['solID'];
        }

        //buscar solicitud en la bd
        /* SolicitudBandejaSalida? solicitudFindBD =
            await BdSolicitudBandejaSalidaController()
                .getSolicitudPendiente(data['descripcion'], data['clienteID']); */

        //if (solicitudFindBD == null) {
        int idSolicitudBD = await BdSolicitudBandejaSalidaController()
            .addSolicitud(newSolicitud);
        Snackbar().getSnackbar(
          'Solicitud Pendiente a Insertar',
          'No tiene conexión con el servidor.\nLa solicitud fue envíada a la Bandeja de Salida.',
          'success',
        );
        //limpiar los campos mantenerme en la vista
        cleanData();
        /* } else {
          BdSolicitudBandejaSalidaController().updateSolicitud(newSolicitud);
          Snackbar().getSnackbar(
            'Solicitud',
            'Solicitud actualizada correctamente',
            'success',
          );
          //limpiar los campos mantenerme en la vista
          cleanData();
        } */
      } catch (e) {
        Snackbar().getSnackbar(
          'Solicitud',
          e.toString(),
          'error',
        );
      }
    }
    loading.value = false;
    //solicitudFormKey.currentState?.reset();
  }

  // ignore: slash_for_doc_comments
  /** Funciones auxiliares
   *  Mostrar fecha solicitud (Funcion: setFechaInit())
   *  Limpiar los campos (Funcion: cleanData())
   *  Mostrar descripcion de la solicitud (Funcion: setDescripSolicitud())
  */
  void cleanData() {
    setDescripSolicitud("");
    cliente.value.text = '';
    clasificacion.value.text = '';
    ejecutor.value.text = '';
    objeto.value = '';
    objetoSelect.value.text = '';
    codigoObjeto.value.text = '';
    formImg.value = null;
    imgEdit.value = null;
    imgUrl.value = '';
    showCodeObj.value = false;
    showSelectObj.value = false;
  }

  void setFechaInit(value) async {
    fecha = value == ''
        ? DateFormat("dd/MM/yyyy HH:mm").format(DateTime.now())
        : DateFormat("dd/MM/yyyy HH:mm").format(DateTime.parse(value));
  }

  void setDescripSolicitud(String value) {
    solicitud.value.text = value;
  }

  void loadQR(value) {
    var array = value.split('\r\n');
    var codigo = array[0].split(': ')[1];
    var cli = array[3].split(': ')[1];
    loadInfoQR(codigo, cli);
  }

  loadInfoQR(codigo, cli) {
    try {
      Cliente clienteQR =
          listCliente.firstWhere((element) => element.codigo == cli);
      cliente.value.text = listClienteDescripcion
          .firstWhere((element) => element == clienteQR.descripcion);
      getListObjetoDescripcion(cliente.value.text);
      if (useEjecutor.value) {
        getListEjecDescripcion(cliente.value.text);
      }
      codigoObjeto.value.text = codigo;
      objeto.value = codigo;
      showCodeObj.value = true;

      var currentRoute = Get.currentRoute;
      if (currentRoute == '/qrScanner') {
        print(currentRoute);
        Get.back();
      }
    } catch (e) {
      Get.back();
      Snackbar().getSnackbar(
        'Solicitud',
        'El cliente no existe o no está activo para este usuario.',
        'error',
      );
    }
  }
}

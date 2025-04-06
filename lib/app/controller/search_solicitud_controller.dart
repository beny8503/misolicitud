//import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/filtros.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/objeto.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/permisos.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_bandeja_salida.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_gestion.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/user.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/functions/api_login.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/functions/api_search_solicitud.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_filtro_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_objeto_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_permisos_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_solicittud_bandeja_salida_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_solicittud_gestion_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_url_api_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/routes/app_pages.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/snackbar.dart';
import 'package:solicitudes_multiempresa_apk/app/utils/ui.dart';

class SearchSolicitudController extends GetxController {
  final filtrosFormKey = GlobalKey<FormState>();
  late TextEditingController filter;
  late TextEditingController filterEstado;
  late TextEditingController filterCodigo;
  late TextEditingController filterFechaInicio;
  late TextEditingController filterFechaFin;
  ScrollController scrollController = ScrollController();
  DateTime selectedDateInicio = DateTime.now();
  DateTime selectedDateFin = DateTime.now();

  //datos observables
  Rx<AlignmentGeometry> positionDialog = Alignment.center.obs;
  RxList<String> listFiltrosMostrar = RxList();
  RxList<SolicitudGestion> listSolGest = RxList();
  Rx<TextEditingController> observacion = TextEditingController().obs;
  final selectedEstado = "".obs;
  final selectedFilter = ''.obs;
  final groupValue = 0.obs;
  final newEstado = ''.obs;
  final loading = false.obs;
  final solEstado = ''.obs;
  final loadInit = false.obs;
  final loadFilter = false.obs;

  final updateSolicitud = true.obs;
  final deleteSolicitud = true.obs;
  final permisoAtendida = true.obs;
  final permisoPendiente = true.obs;
  //final positionDialog = 'Alignment.topCenter'.obs;

  SearchSolicitudController();
  @override
  void onClose() {
    cleanData();
    super.onClose();
  }

  @override
  void onInit() async {
    filter = TextEditingController();
    filterEstado = TextEditingController();
    filterCodigo = TextEditingController();
    filterFechaInicio = TextEditingController();
    filterFechaFin = TextEditingController();
    loadPermisos();
    loadSoliInit();
    super.onInit();
  }

  void loadPermisos() async {
    User userLogin = User.fromJson(await SessionManager().get("userLogin"));
    List<Permisos> permisosBD =
        await BdPermisosController().getPermisosUser(userLogin.user);
    Permisos permisoSolicitud = permisosBD
        .firstWhere((element) => element.descripcion == 'Solicitudes');
    updateSolicitud.value = permisoSolicitud.update == true ? true : false;
    deleteSolicitud.value = permisoSolicitud.delete == true ? true : false;

    Permisos estadoAtendida = permisosBD.firstWhere(
        (element) => element.descripcion == 'Solicitudes Estado Atendida');
    permisoAtendida.value = estadoAtendida.deny == true ? true : false;

    Permisos estadoPendiente = permisosBD.firstWhere(
        (element) => element.descripcion == 'Solicitudes Estado Pendiente');
    permisoPendiente.value = estadoPendiente.deny == true ? true : false;
  }

  void loadSoliInit() async {
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

      List<Filtros> filtrosBD = await BdFiltroController().getFiltros();
      if (filtrosBD.isNotEmpty) {
        listFiltrosMostrar.value =
            filtrosBD.map((element) => element.filtro as String).toList();

        /* if (await ConnectivityWrapper.instance.isConnected) {
          ejecFiltrosOnline();
        } else {
          ejecFiltrosOffline();
        } */
        List<UrlApi> urls = await BdUrlApiController().getUrlApi();
        UrlApi urlCnx = urls[0];
        String url = urlCnx.urlApi;
        String urlTest = 'https://$url/api';
        var resultTest = await ApiLogin.testCnx(urlTest);
        if (resultTest['statusCode'] == 200) {
          ejecFiltrosOnline();
        }
      }
      EasyLoading.dismiss();
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud 1',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      ejecFiltrosOffline();
    }
  }

  void cleanData() {
    filter.dispose();
    filterEstado.dispose();
    filterCodigo.dispose();
    filterFechaInicio.dispose();
    filterFechaFin.dispose();
  }

  // ignore: slash_for_doc_comments
  /** Funciones para gestionar cada solicitud filtrada
   *  Editar una solicitud
   *  Cambiar el estado de una solicitud
   *  Eliminar una solicitud
  */
  /// Funcion para editar una solicitud filtrada
  void editSolicitud(SolicitudGestion solicitud) async {
    try {
      List<Objeto> objSolEdit =
          await BdObjetoController().getObjetoSolicitud(solicitud.solID);
      var solEdit = {
        'origen': 'gestionSolicitud',
        'descripcion': solicitud.solDescripcion,
        'solFecha': solicitud.solFecha,
        'empCodigo': solicitud.empCodigo,
        'objetos': objSolEdit,
        'clienteCodigo': solicitud.clienteCodigo,
        'clienteDenom': solicitud.clienteDenom,
        'ejecutorCodigo': solicitud.ejecutorCodigo,
        'ejecutorDenom': solicitud.ejecutorDenom,
        'clasificacionDenom': solicitud.clasificacionDenom,
        'solID': solicitud.solID,
        'foto': solicitud.fotourl,
      };
      Get.offNamed(
        Routes.solcitud,
        arguments: solEdit,
      );
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud 2',
        e.toString(),
        'error',
      );
    }
  }

  /// Funciones para cambiar el estado de una solicitud
  void cambiarEstado(SolicitudGestion solicitud) async {
    String textObservacion = '';
    String textNewEstado = '';
    if (observacion.value.text == '') {
      textObservacion = 'Debe indicar las observaciones.';
    }
    if (groupValue.value == 0) {
      textNewEstado = 'Debe seleccionar el nuevo estado.';
    }
    if (textObservacion == '' && textNewEstado == '') {
      Get.back();
      EasyLoading.instance
        ..loadingStyle = EasyLoadingStyle.custom
        ..maskType = EasyLoadingMaskType.black
        ..backgroundColor = const Color(0xFF1f7f9c)
        ..indicatorColor = Colors.white
        ..textColor = Colors.white
        ..dismissOnTap = false
        ..userInteractions = false;
      EasyLoading.show(status: 'Cargando...');
      var index = listSolGest.value.indexOf(solicitud);
      try {
        //if (await ConnectivityWrapper.instance.isConnected) {
        List<UrlApi> urls = await BdUrlApiController().getUrlApi();
        UrlApi urlCnx = urls[0];
        String url = urlCnx.urlApi;
        String urlTest = 'https://$url/api';
        var resultTest = await ApiLogin.testCnx(urlTest);
        if (resultTest['statusCode'] == 200) {
          /*var estado = UI.listEstados.firstWhere((element) =>
              element['descripcion'] == listSolGest.value[index].solEstado);*/
          var tempEstado = groupValue.value == 2 ? 'Cancelada' : newEstado.value;
          var estado = UI.listEstados.firstWhere((element) => element['descripcion'] == tempEstado);
          var result = await ApiSearchSolicitud.cambiarEstado(
              solicitud.solID, estado['code'], observacion.value.text);
          print(result);
          if (result['Success']) {
            listSolGest.value[index].solEstado =
                groupValue.value == 2 ? 'Cancelada' : newEstado.value;
            setEstado(listSolGest.value[index].solEstado);
            var objMsj = result['Mensajes'];
            var msj = objMsj[0]['Description'];
            Snackbar().getSnackbar(
              'Gestión Solicitud',
              msj,
              'success',
            );
          }
        }
        /* } else {
          Snackbar().getSnackbar(
          'Gestión Solicitud',
          'Solicitud con codigo ${solicitud.solCodigo} Actualizada Correctamente.',
          'success',
        );
        //inserto en la bandeja de salida listSolGest.value[index]
        SolicitudGestion solNewEstado = listSolGest.value[index];
        SolicitudBandejaSalida solBS = SolicitudBandejaSalida();
        solBS.descripcion = solNewEstado.solDescripcion;
        solBS.solFecha = solNewEstado.solFecha;
        solBS.empCodigo = solNewEstado.empCodigo;
        solBS.ejecutorDescripcion = solNewEstado.ejecutorDenom;
        solBS.clienteDescripcion = solNewEstado.clienteDenom;
        solBS.clasificacionDescripcion = solNewEstado.clasificacionDenom;
        solBS.solID = solNewEstado.solID;
        solBS.solEstado = solNewEstado.solEstado;
        solBS.solCodigo = solNewEstado.solCodigo;
        solBS.observacionEstado = observacion.value.text;
        solBS.pendiente = 'Cambiar Estado';
        BdSolicitudBandejaSalidaController().addSolicitud(solBS);
        } */
      } on Exception catch (e) {
        Snackbar().getSnackbar(
          'Gestión Solicitud',
          e.toString(),
          'error',
        );
        rethrow;
      } catch (e) {
        var tempMsj = e.toString().split('-');
        if (tempMsj[0] == '1') {
          //inserto en la bandeja de salida listSolGest.value[index]
          SolicitudGestion solNewEstado = listSolGest.value[index];
          SolicitudBandejaSalida solBS = SolicitudBandejaSalida();
          solBS.descripcion = solNewEstado.solDescripcion;
          solBS.solFecha = solNewEstado.solFecha;
          solBS.empCodigo = solNewEstado.empCodigo;
          solBS.ejecutorDescripcion = solNewEstado.ejecutorDenom;
          solBS.clienteDescripcion = solNewEstado.clienteDenom;
          solBS.clasificacionDescripcion = solNewEstado.clasificacionDenom;
          solBS.solID = solNewEstado.solID;
          solBS.solEstado = solNewEstado.solEstado;
          solBS.solCodigo = solNewEstado.solCodigo;
          solBS.observacionEstado = observacion.value.text;
          solBS.pendiente = 'Cambiar Estado';
          BdSolicitudBandejaSalidaController().addSolicitud(solBS);
          listSolGest.value[index].solEstado =
              groupValue.value == 2 ? 'Cancelada' : newEstado.value;
          setEstado(listSolGest.value[index].solEstado);
          Snackbar().getSnackbar(
            'Solicitud Pendiente a Cambiar Estado',
            'No tiene conexión con el servidor.\nLa solicitud fue envíada a la Bandeja de Salida.',
            'success',
          );
        } else {
          Snackbar().getSnackbar(
            'Gestión Solicitud',
            tempMsj[1],
            'error',
          );
        }
      }
      //actualizar en la bd
      BdSolicitudGestionController().updateSolicitud(listSolGest.value[index]);
      List<SolicitudGestion> tempList = listSolGest.value;
      listSolGest.value = [];
      listSolGest.value = tempList;
      EasyLoading.dismiss();
      positionDialog.value = Alignment.center;
      observacion.value.text = '';
      groupValue.value = 0;
    } else {
      Snackbar().getSnackbar(
        'Gestión Solicitud',
        '$textNewEstado\n$textObservacion',
        'error',
      );
    }
  }

  setEstado(value) {
    return value;
  }

  void setGroupValue(value) {
    groupValue.value = value;
  }

  void closeDialogCambiarEstado() {
    Get.back();
    positionDialog.value = Alignment.center;
    observacion.value.text = '';
    groupValue.value = 0;
  }

  /// Funcion para eliminar una solicitud
  void eliminarSolicitud(SolicitudGestion solicitud) async {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..maskType = EasyLoadingMaskType.black
      ..backgroundColor = const Color(0xFF1f7f9c)
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..dismissOnTap = false
      ..userInteractions = false;
    EasyLoading.show(status: 'Cargando...');

    try {
      listSolGest.value
          .removeWhere((element) => element.solID == solicitud.solID);
      //if (await ConnectivityWrapper.instance.isConnected) {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        var result = await ApiSearchSolicitud.deleteSolicitud(solicitud.solID);
        if (result['Success']) {
          var objMsj = result['Mensajes'];
          var msj = objMsj[0]['Description'];
          Snackbar().getSnackbar(
            'Gestión Solicitud',
            msj,
            'success',
          );
        }
      }
      /* } else {
        Snackbar().getSnackbar(
          'Gestión Solicitud',
          'Solicitud con codigo ${solicitud.solCodigo} Eliminada  Correctamente.',
          'success',
        );
        //inserto en la bandeja de salida
        SolicitudBandejaSalida solBS = SolicitudBandejaSalida();
        solBS.descripcion = solicitud.solDescripcion;
        solBS.solFecha = solicitud.solFecha;
        solBS.empCodigo = solicitud.empCodigo;
        solBS.ejecutorDescripcion = solicitud.ejecutorDenom;
        solBS.clienteDescripcion = solicitud.clienteDenom;
        solBS.clasificacionDescripcion = solicitud.clasificacionDenom;
        solBS.solID = solicitud.solID;
        solBS.solEstado = solicitud.solEstado;
        solBS.solCodigo = solicitud.solCodigo;
        solBS.pendiente = 'Eliminar Solicitud';
        BdSolicitudBandejaSalidaController().addSolicitud(solBS);
      } */
      //BdSolicitudGestionController().deleteSolicitud(solicitud);
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud',
        'Solicitud con codigo ${solicitud.solCodigo} Eliminada  Correctamente.',
        'success',
      );
      //inserto en la bandeja de salida
      SolicitudBandejaSalida solBS = SolicitudBandejaSalida();
      solBS.descripcion = solicitud.solDescripcion;
      solBS.solFecha = solicitud.solFecha;
      solBS.empCodigo = solicitud.empCodigo;
      solBS.ejecutorDescripcion = solicitud.ejecutorDenom;
      solBS.clienteDescripcion = solicitud.clienteDenom;
      solBS.clasificacionDescripcion = solicitud.clasificacionDenom;
      solBS.solID = solicitud.solID;
      solBS.solEstado = solicitud.solEstado;
      solBS.solCodigo = solicitud.solCodigo;
      solBS.pendiente = 'Eliminar Solicitud';
      BdSolicitudBandejaSalidaController().addSolicitud(solBS);
    }
    BdSolicitudGestionController().deleteSolicitud(solicitud);
    List<SolicitudGestion> tempList = listSolGest.value;
    listSolGest.value = [];
    listSolGest.value = tempList;
    EasyLoading.dismiss();
  }

  // ignore: slash_for_doc_comments
  /** Funciones para filtrar solicitudes
   *  Funciones principales y auxiliares para el proceso de seleccion de filtros
   *  Funciones principales y auxiliares para realizar la busqueda segun filtros seleccionados   
  */
  /// Funciones principales y auxiliares para el proceso de seleccion de filtros
  void addFiltros() {
    if (filtrosFormKey.currentState!.validate()) {
      String filtroMostrar = '';
      switch (filter.text) {
        case 'Estado':
          List<String> temp = listFiltrosMostrar
              .where((element) => element.contains('Estado'))
              .toList();
          if (temp.isNotEmpty) {
            listFiltrosMostrar.remove(temp[0]);
          }
          filtroMostrar = '${filter.text}: ${filterEstado.text}';
        case 'Código':
          List<String> temp = listFiltrosMostrar
              .where((element) => element.contains('Código'))
              .toList();
          if (temp.isNotEmpty) {
            listFiltrosMostrar.remove(temp[0]);
          }
          filtroMostrar = '${filter.text}: ${filterCodigo.text}';
        case 'Fecha':
          List<String> temp = listFiltrosMostrar
              .where((element) => element.contains('Fecha'))
              .toList();
          if (temp.isNotEmpty) {
            listFiltrosMostrar.remove(temp[0]);
          }
          filtroMostrar =
              '${filter.text}: ${filterFechaInicio.text} - ${filterFechaFin.text}';
        case 'Mis Solicitudes':
          List<String> temp = listFiltrosMostrar
              .where((element) => element.contains('Mis Solicitudes'))
              .toList();
          if (temp.isNotEmpty) {
            listFiltrosMostrar.remove(temp[0]);
          }
          filtroMostrar = filter.text;
      }
      listFiltrosMostrar.add(filtroMostrar);
      filter.text = '';
      setSelectedFilter('');
    } else {
      Snackbar().getSnackbar(
        'Filtros',
        'Debe indicar los filtros a aplicar',
        'error',
      );
    }
  }

  void deleteFiltro(filtro) {
    listFiltrosMostrar.remove(filtro);
  }

  void selectDateFilter(DateTime dateTime,
      TextEditingController textEditingController, BuildContext context) async {
    DateTime? newSelectedDate = await showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
      locale: const Locale('es'),
    );

    if (newSelectedDate != null) {
      dateTime = newSelectedDate;
      textEditingController
        ..text = DateFormat("yyyy-MM-dd").format(dateTime)
        ..selection = TextSelection.fromPosition(
          TextPosition(
              offset: textEditingController.text.length,
              affinity: TextAffinity.upstream),
        );
    }
  }

  void setSelectedFilter(value) {
    selectedFilter.value = value;
  }

  ///Funciones principales y auxiliares para realizar la busqueda segun filtros seleccionados
  void ejecFiltrosSwipe() async {
    loading.value = true;
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        ejecFiltrosOnline();
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud - Filtros',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
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
          loading.value = false;
        },
        onConfirm: () {
          Get.back();
          ejecFiltrosOffline();
        },
      );
    }
    //Get.back();
  }

  void ejecFiltros() async {
    loading.value = true;
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        ejecFiltrosOnline();
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud - Filtros',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
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
          loading.value = false;
        },
        onConfirm: () {
          Get.back();
          ejecFiltrosOffline();
        },
      );
    }
    Get.back();
  }

  void ejecFiltrosOffline() async {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..maskType = EasyLoadingMaskType.black
      ..backgroundColor = const Color(0xFF1f7f9c)
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..dismissOnTap = false
      ..userInteractions = false;
    EasyLoading.show(status: 'Cargando...');
    try {
      listSolGest.value = [];
      Map<String, dynamic> param = await getParamsFilter();

      List<SolicitudGestion> tempSearch =
          await BdSolicitudGestionController().getSolicitudesFiltradas();

      if (param.containsKey('solestado')) {
        var estado = UI.listEstados
            .firstWhere((element) => element['code'] == param['solestado']);

        tempSearch = tempSearch
            .where((element) => element.solEstado == estado['descripcion'])
            .toList();
      }
      if (param.containsKey('solicitadapor')) {
        tempSearch = tempSearch
            .where((element) => element.solicitado == param['solicitadapor'])
            .toList();
      }
      if (param.containsKey('solCodigo')) {
        tempSearch = tempSearch
            .where((element) => element.solCodigo!.contains(param['solCodigo']))
            .toList();
      }
      if (param.containsKey('fechadesde')) {
        var fechaDesde = DateTime.parse(param['fechadesde']);
        var fechaHasta = DateTime.parse(param['fechahasta']);
        tempSearch = tempSearch
            .where((element) =>
                DateTime.parse(element.solFecha ?? '').isAfter(fechaDesde) &&
                DateTime.parse(element.solFecha ?? '').isBefore(fechaHasta))
            .toList();
      }
      listSolGest.value = tempSearch;
      loading.value = false;
    } catch (e) {
      loading.value = false;
      Snackbar().getSnackbar(
        'Gestión Solicitud',
        e.toString(),
        'error',
      );
    }
    EasyLoading.dismiss();
  }

  void ejecFiltrosOnline() async {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..maskType = EasyLoadingMaskType.black
      ..backgroundColor = const Color(0xFF1f7f9c)
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..dismissOnTap = false
      ..userInteractions = false;
    EasyLoading.show(status: 'Cargando...');
    try {
      listSolGest.value = [];
      List<Map<String, dynamic>> objetosSolGest = [];
      Map<String, dynamic> param = await getParamsFilter();

      //Filtrar en la Api
      var result = await ApiSearchSolicitud.searchSolicitud(param);
      List<SolicitudGestion> listTemp = result['listSolGest'];
      listTemp.sort((a,b) => a.solFecha!.compareTo(b.solFecha!));
      listSolGest.value = listTemp.reversed.toList();

      objetosSolGest = result['objSolGest'];

      ///Guardar solicitudes filtradas en la BD
      await saveSolicitudBD();

      ///Guardar filtros en la BD
      await saveFiltersBD();

      ///Guardar los objetos de las solicitudes filtradas en la BD
      await saveObjectBD(objetosSolGest);

      loading.value = false;
    } catch (e) {
      loading.value = false;
      Snackbar().getSnackbar(
        'Gestión Solicitud',
        e.toString(),
        'error',
      );
    }
    EasyLoading.dismiss();
  }

  Future<Map<String, dynamic>> getParamsFilter() async {
    Map<String, dynamic> param = {};
    List<String> tempEstado = listFiltrosMostrar
        .where((element) => element.contains('Estado'))
        .toList();
    if (tempEstado.isNotEmpty) {
      var divider = tempEstado[0].split(':');
      String descripEstado = divider[1];
      var estado = UI.listEstados.firstWhere(
          (element) => element['descripcion'] == descripEstado.trim());
      param = {
        'solestado': estado['code'],
      };
    }
    List<String> tempCodigo = listFiltrosMostrar
        .where((element) => element.contains('Código'))
        .toList();
    if (tempCodigo.isNotEmpty) {
      var divider = tempCodigo[0].split(':');
      param = {
        ...param,
        'solCodigo': divider[1].trim(),
      };
    }
    List<String> tempFecha = listFiltrosMostrar
        .where((element) => element.contains('Fecha'))
        .toList();
    if (tempFecha.isNotEmpty) {
      var divider = tempFecha[0].split(':');
      var dividerFechas = divider[1].split(' - ');
      param = {
        ...param,
        'fechadesde': '${dividerFechas[0].trim()} 00:00',
        'fechahasta': '${dividerFechas[1].trim()} 23:59',
      };
    }
    List<String> tempSolicitadoPor = listFiltrosMostrar
        .where((element) => element.contains('Mis Solicitudes'))
        .toList();
    if (tempSolicitadoPor.isNotEmpty) {
      User userLogin = User.fromJson(await SessionManager().get("userLogin"));
      String userName = userLogin.username ?? '';

      if (userName.isNotEmpty) {
        param = {
          ...param,
          'solicitadapor': userName,
        };
      }
    }
    return param;
  }

  Future<void> saveFiltersBD() async {
    try {
      List<Filtros> listFiltrosBd = await BdFiltroController().getFiltros();
      if (listFiltrosBd.isNotEmpty) {
        List<int> fitrosDeleteBD =
            listFiltrosBd.map((element) => element.idFiltroBD).toList();
        int countDel =
            await BdFiltroController().deleteAllFiltros(fitrosDeleteBD);
        if (countDel == listFiltrosBd.length) {
          List<Filtros> filtrosBD = [];
          for (var item in listFiltrosMostrar) {
            Filtros tmp = Filtros();
            tmp.fecha = DateFormat("dd/MM/yyyy HH:mm").format(DateTime.now());
            tmp.filtro = item;
            filtrosBD.add(tmp);
          }
          BdFiltroController().addAllFiltros(filtrosBD);
        }
      } else {
        List<Filtros> filtrosBD = [];
        for (var item in listFiltrosMostrar) {
          Filtros tmp = Filtros();
          tmp.fecha = DateFormat("dd/MM/yyyy HH:mm").format(DateTime.now());
          tmp.filtro = item;
          filtrosBD.add(tmp);
        }
        BdFiltroController().addAllFiltros(filtrosBD);
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud',
        e.toString(),
        'error',
      );
    }
  }

  Future<void> saveObjectBD(List<Map<String, dynamic>> objetosSolGest) async {
    try {
      List<Objeto> listObjBd = await BdObjetoController().getObjetos();
      List<Objeto> listInsertObjBd = [];
      for (var item in objetosSolGest) {
        if (item['objetos'] != null) {
          String idObject = item['objetos'][0]['objetoID'];
          List<Objeto> listTempObj =
              listObjBd.where((element) => element.objID == idObject).toList();
          if (listTempObj.isNotEmpty) {
            //update en la bd
            Objeto tempObj = listTempObj[0];
            //tempObj.solGestID = int.parse(item['idSolGest']);
            tempObj.solGestID = item['idSolGest'];
            BdObjetoController().updateObjeto(tempObj);
          } else {
            //almaceno en la lista para insertar en la BD
            var param = {
              'objID': item['objetos'][0]['objetoID'],
              'codigo': item['objetos'][0]['objetoCodigo'],
              'denom': item['objetos'][0]['objetoDenom'],
              'empCodigo': item['empCodigo'],
            };
            Objeto insertObj = Objeto.fromJson(param);
            //insertObj.solGestID = int.parse(item['idSolGest']);
            insertObj.solGestID = item['idSolGest'];
            listInsertObjBd.add(insertObj);
          }
        }
      }
      if (listInsertObjBd.isNotEmpty) {
        //inserto objetos en la BD
        BdObjetoController().addAllObjetos(listInsertObjBd);
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud',
        e.toString(),
        'error',
      );
    }
  }

  Future<void> saveSolicitudBD() async {
    try {
      List<SolicitudGestion> listSolGestBd =
          await BdSolicitudGestionController().getSolicitudesFiltradas();
      if (listSolGestBd.isNotEmpty) {
        List<int> solDeleteBD = listSolGestBd
            .map((element) => element.idSolicitudGestionBD)
            .toList();
        int countDel = await BdSolicitudGestionController()
            .deleteAllSolicitud(solDeleteBD);
        if (countDel == listSolGestBd.length) {
          BdSolicitudGestionController().addAllSolicitudes(listSolGest.value);
        }
      } else {
        BdSolicitudGestionController().addAllSolicitudes(listSolGest.value);
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud',
        e.toString(),
        'error',
      );
    }
  }

  void testSwipe() {
    print('test');
    ejecFiltros();
  }
}

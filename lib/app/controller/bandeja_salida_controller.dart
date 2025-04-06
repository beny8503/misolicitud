//import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/empresa.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_bandeja_salida.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/functions/api_login.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/functions/api_search_solicitud.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/functions/api_solicitud.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_solicittud_bandeja_salida_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_url_api_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/routes/app_pages.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/snackbar.dart';
import 'package:solicitudes_multiempresa_apk/app/utils/ui.dart';

class BandejaSalidaController extends GetxController {
  RxList<SolicitudBandejaSalida> listSolicitudesBD = RxList();
  RxBool useObject = false.obs;
  RxBool useClass = false.obs;
  RxBool useEjecutor = false.obs;

  BandejaSalidaController();

  @override
  void onInit() async {
    loadConfig();
    setlistSolicitudesBD();
    super.onInit();
  }

  @override
  void onClose() {
    listSolicitudesBD = RxList();
    super.onClose();
  }

  void setlistSolicitudesBD() async {
    try {
      listSolicitudesBD.value =
          await BdSolicitudBandejaSalidaController().getSolicitudes();
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Bandeja de Salida',
        e.toString(),
        'error',
      );
    }
  }

  void sincronizarSolicitudesBulk() async {
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
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        var data = {
          'Data': [],
        };
        for (var element in listSolicitudesBD) {
          var solicitud = {
            'descripcion': element.descripcion,
            'refExterna': element.idSolicitudBD.toString(),
            'solFecha': element.solFecha,
            'solClienteCod': element.solClienteCod,
            'solEjecutorCod': element.solEjecutorCod,
            'solClasifica': element.solClasifica,
            //'empCodigo': element.empCodigo,
            'Objetos': element.objetoDescripcion != '' && element.objetoDescripcion != null
                ? [
                    {"objpatCodigo": element.objetoDescripcion!.split(' - ')[0]}
                  ]
                : [],
            'solFoto': element.solFoto,
          };
          data['Data']!.add(solicitud);
        }
        var result = await ApiSolicitud.sincronizarSolicitud(data);
        if(result == ''){
          Snackbar().getSnackbar(
            'Bandeja de Salida',
            'Elementos sincronizados satisfactoriamente',
            'success',
          );
          List<int> ids = listSolicitudesBD.value
              .map((item) => item.idSolicitudBD)
              .toList();
          BdSolicitudBandejaSalidaController().deleteAllSolicitudes(ids);
          listSolicitudesBD.value = [];
          EasyLoading.dismiss();
        }
        /*if (result.length == 1) {
          if (result[0]['Success']) {
            var resulMsj = result[0]['Mensajes'];
            Snackbar().getSnackbar(
              'Bandeja de Salida',
              resulMsj[0]['Description'],
              'success',
            );
          }
          List<int> ids = listSolicitudesBD.value
              .map((item) => item.idSolicitudBD)
              .toList();
          BdSolicitudBandejaSalidaController().deleteAllSolicitudes(ids);
          listSolicitudesBD.value = [];
          EasyLoading.dismiss();
        }
        else {
          if (result[0]['Success']) {
            var resulMsj = result[0]['Mensajes'];
            Snackbar().getSnackbar(
              'Bandeja de Salida',
              resulMsj[0]['Description'],
              'error',
            );
          }
          EasyLoading.dismiss();
        }*/
      }
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Bandeja de Salida',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      Snackbar().getSnackbar(
        'Bandeja de Salida',
        'En estos momentos no hay conexión con el servidor.'
            'Revise su conexión e intente de nuevo.',
        'info',
      );
    }
    EasyLoading.dismiss();
  }

  void sincronizarSolicitudes() async {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..maskType = EasyLoadingMaskType.black
      ..backgroundColor = const Color(0xFF1f7f9c)
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..dismissOnTap = false
      ..userInteractions = false;
    EasyLoading.show(status: 'Cargando...');

    //if (await ConnectivityWrapper.instance.isConnected) {
    try {
      List<UrlApi> urls = await BdUrlApiController().getUrlApi();
      UrlApi urlCnx = urls[0];
      String url = urlCnx.urlApi;
      String urlTest = 'https://$url/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      if (resultTest['statusCode'] == 200) {
        loadConfig();
        int count = 0;
        for (var element in listSolicitudesBD) {
          switch (element.pendiente) {
            case 'Eliminar Solicitud':
              String id = element.solID ?? '';
              if (id != -1) {
                ApiSearchSolicitud.deleteSolicitud(id);
                BdSolicitudBandejaSalidaController().deleteSolicitud(element);
              }
            case 'Cambiar Estado':
              var estado = UI.listEstados.firstWhere(
                  (item) => item['descripcion'] == element.solEstado);
              String id = element.solID ?? '';
              if (id != '') {
                ApiSearchSolicitud.cambiarEstado(
                    id, estado['code'], element.observacionEstado!);
                BdSolicitudBandejaSalidaController().deleteSolicitud(element);
              }
            case 'Insertar Solicitud':
              //Verificar la configuracion
              if ((useObject.value && element.objetoDescripcion == '') ||
                  (useClass.value && element.clasosID! <= 0) ||
                  (useEjecutor.value && element.ejecutorID! <= 0)) {
                count++;
              } else {
                //Si coincide la configuracion inserto la solicitud
                var data = {
                  'descripcion': element.descripcion,
                  //'solFecha': element.solFecha,
                  'clienteID': element.clientID,
                  'ejecutorID': element.ejecutorID,
                  'clasosID': element.clasosID,
                  'empCodigo': element.empCodigo,
                  'Objetos': element.objetoDescripcion != ''
                      ? [
                          {
                            "objpatCodigo":
                                element.objetoDescripcion!.split(' - ')[0]
                          }
                        ]
                      : '',
                  'foto': element.solFoto,
                };
                ApiSolicitud.insertSolicitud(data);
                BdSolicitudBandejaSalidaController().deleteSolicitud(element);
              }
            case 'Actualizar Solicitud':
              //Verificar la configuracion
              if ((useObject.value && element.objetoDescripcion == '') ||
                  (useClass.value && element.clasosID! <= 0) ||
                  (useEjecutor.value && element.ejecutorID! <= 0)) {
                count++;
              } else {
                //Si coincide la configuracion inserto la solicitud
                var data = {
                  'descripcion': element.descripcion,
                  'solFecha': element.solFecha,
                  'clienteID': element.clientID,
                  'ejecutorID': element.ejecutorID,
                  'clasosID': element.clasosID,
                  'empCodigo': element.empCodigo,
                  'Objetos': element.objetoDescripcion != ''
                      ? [
                          {
                            "objpatCodigo":
                                element.objetoDescripcion!.split(' - ')[0]
                          }
                        ]
                      : '',
                  'foto': element.solFoto,
                };
                ApiSolicitud.updateSolicitud(element.solID ?? '', data);
                BdSolicitudBandejaSalidaController().deleteSolicitud(element);
              }
          }
        }
        setlistSolicitudesBD();
        if (count > 0) {
          Snackbar().getSnackbar(
            'Bandeja de Salida',
            'Total de Solicitudes Pendientes a sincronizar: $count\n'
                'La configuración del sistema cambió, por favor verifique la información de las solicitudes pendientes.',
            'info',
          );
        } else {
          listSolicitudesBD.value = RxList();
          listSolicitudesBD.refresh();
          Snackbar().getSnackbar(
            'Bandeja de Salida',
            'Sincronización realizada con éxito',
            'success',
          );
        }
      }
    } /* else {
      //muestro mensaje de que no hay cnx con el server.
      Snackbar().getSnackbar(
        'Bandeja de Salida',
        'En estos momentos no hay conexión con el servidor.'
            'Revise su conexión e intente de nuevo.',
        'info',
      );
    } */
    on Exception catch (e) {
      Snackbar().getSnackbar(
        'Bandeja de Salida',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      Snackbar().getSnackbar(
        'Bandeja de Salida',
        'En estos momentos no hay conexión con el servidor.'
            'Revise su conexión e intente de nuevo.',
        'info',
      );
    }
    EasyLoading.dismiss();
  }

  void loadConfig() async {
    try {
      Empresa empresaConfig =
          Empresa.fromJsonSession(await SessionManager().get("configLogin"));
      useObject.value = empresaConfig.useObject!;
      useClass.value = empresaConfig.useClass!;
      useEjecutor.value = empresaConfig.useEjecutor!;
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Bandeja de Salida',
        e.toString(),
        'error',
      );
    }
  }

  void editSolicitud(SolicitudBandejaSalida solicitud) {
    try {
      var solEdit = {
        'origen': 'bandejaSalida',
        'descripcion': solicitud.descripcion,
        'solFecha': solicitud.solFecha,
        'empCodigo': solicitud.empCodigo,
        //'objetos': objSoldit,
        'clasosID': solicitud.clasosID,
        'clienteID': solicitud.clientID,
        'ejecutorID': solicitud.ejecutorID,
        'clienteDenom': solicitud.clienteDescripcion,
        'ejecutorDenom': solicitud.ejecutorDescripcion,
        'clasificacionDenom': solicitud.clasificacionDescripcion,
        'solID': solicitud.solID,
        'foto': solicitud.solFoto,
        'objetoDescripcion': solicitud.objetoDescripcion,
      };

      Get.offNamed(
        Routes.solcitud,
        arguments: solEdit,
      );
    } on Exception catch (e) {
      Snackbar().getSnackbar(
        'Gestión Solicitud',
        e.toString(),
        'error',
      );
    }
  }
}

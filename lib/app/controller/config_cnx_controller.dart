import 'dart:io';

import 'package:curl_converter/curl_converter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/empresa.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/api_dio/functions/api_login.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_empresa_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/bd_url_api_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/routes/app_pages.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/snackbar.dart';
import 'package:http/http.dart' as http;

class ConfigCnxController extends GetxController {
  late TextEditingController url;

  //observables
  RxBool loading = false.obs;
  RxBool loadInit = false.obs;

  @override
  void onInit() async {
    configInit();
    url = TextEditingController();
    super.onInit();
  }

  void configInit() async {
    List<UrlApi> urls = await BdUrlApiController().getUrlApi();
    if (urls.isNotEmpty) {
      UrlApi urlCnx = urls[0];
      url.text = urlCnx.urlApi;
    } else {
      url.text = '';
    }
  }

  void testCnx() async {
    loading.value = true;
    try {
      String urlTest = 'https://${url.text}/api';
      var resultTest = await ApiLogin.testCnx(urlTest);
      print(resultTest);
      if (resultTest['statusCode'] == 200) {
        //INSERTO LA CADENA DE CNX EN LA BD
        List<UrlApi> urls = await BdUrlApiController().getUrlApi();
        if (urls.isEmpty) {
          UrlApi urlInsert = UrlApi(urlApi: url.text);
          int index = await BdUrlApiController().addUrlApi(urlInsert);
          if (index == -1) {
            Snackbar().getSnackbar(
              'Configuración de conexión',
              'Ha ocurrido un error en el proceso de insertar la url de conexión.',
              'error',
            );
          }
        } else {
          UrlApi urlUpdate = urls[0];
          urlUpdate.urlApi = url.text;
          int index = await BdUrlApiController().updateCnxApi(urlUpdate);
          if (index == -1) {
            Snackbar().getSnackbar(
              'Configuración de conexión',
              'Ha ocurrido un error en el proceso de actualizar la url de conexión.',
              'error',
            );
          }
        }
        /*//Guardar configuracion de la empresa
        List<Empresa> listEmpresa = resultTest['listEmpresas'];
        //Cargar las empersas de la BD, si existen los elimino e inserto las nuevas
        List<Empresa> listEmpresasBD = await BdEmpresaController().getEmpresas();
        if (listEmpresasBD.isNotEmpty) {
          List<int> ids = listEmpresasBD.map((item) => item.idEmpresaDB).toList();
          BdEmpresaController().deleteAllEmpresas(ids);
        }
        BdEmpresaController().addAllEmpresas(listEmpresa);*/
        List<Empresa> listEmpresa = resultTest['listEmpresas'];
        int? result = await loadEmpConfig(listEmpresa);
        if (result == 200){
          Get.offNamed(Routes.initial);
        }

      }
      loading.value = false;
    } on Exception catch (e) {
      loading.value = false;
      Snackbar().getSnackbar(
        'Login',
        e.toString(),
        'error',
      );
      rethrow;
    } catch (e) {
      var test = e.runtimeType;
      String temp = test.toString();
      if (temp == "_AssertionError") {
        loading.value = false;
        Snackbar().getSnackbar(
          'Configuración de conexión',
          'El URL no es válido.',
          'error',
        );
      } else {
        loading.value = false;
        Snackbar().getSnackbar(
          'Configuración de conexión',
          'Revise su conexión o verifique la URL.',
          'error',
        );
      }
    }
  }

  static Future<int?> loadEmpConfig (List<Empresa> listEmpresa) async{
    try{
      //Cargar las empersas de la BD, si existen los elimino e inserto las nuevas
      List<Empresa> listEmpresasBD = await BdEmpresaController().getEmpresas();
      if (listEmpresasBD.isNotEmpty) {
        List<int> ids = listEmpresasBD.map((item) => item.idEmpresaDB).toList();
        BdEmpresaController().deleteAllEmpresas(ids);
      }
      BdEmpresaController().addAllEmpresas(listEmpresa);
      return 200;
    } catch (e){
      Snackbar().getSnackbar(
        'Obtener Empresas',
        e.toString(),
        'error',
      );
    }
  }
}

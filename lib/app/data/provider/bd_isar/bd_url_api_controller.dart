import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/url_api.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdUrlApiController with ChangeNotifier {
  BdUrlApiController();

  List<UrlApi> urls = [];

  /// Obtener la cadena de cnx
  Future<List<UrlApi>> getUrlApi() async {
    Isar? isar = await IsarCnx().connectIsar();

    final urlApiCollection = isar?.urlApis;
    urls = (await urlApiCollection?.where().findAll())!;
    List<UrlApi> tmp = urls.toList();
    notifyListeners();

    return tmp;
  }

  /// Adicionar una cadena de cnx
  Future<int> addUrlApi(UrlApi url) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.urlApis.put(url);
    });
    urls.add(url);
    notifyListeners();
    return id;
  }

  /// Eliminar una cadena de cnx
  void deleteCnxApi(UrlApi url) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted = await isar.urlApis.delete(url.idUrl);
      if (deleted) urls.remove(url);
      notifyListeners();
    });
  }

  ///Actualizar una cadena de cnx
  Future<int> updateCnxApi(UrlApi newUrl) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      UrlApi? tempUrl = await isar.urlApis.get(newUrl.idUrl);
      tempUrl?.urlApi = newUrl.urlApi;
      id = await isar.urlApis.put(tempUrl!);
    });
    notifyListeners();
    return id;
  }
}

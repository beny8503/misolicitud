import 'package:isar/isar.dart';

part 'url_api.g.dart';

@Collection()
class UrlApi {
  Id idUrl = Isar.autoIncrement;
  String urlApi = '';

  UrlApi({
    required this.urlApi,
  });

  UrlApi.fromJson(Map<String, dynamic> json) {
    urlApi = json['urlApi'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'urlApi': urlApi,
    };
  }
}

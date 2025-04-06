import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.initial,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale('en'), // Inglés
      Locale('es'), // Español
    ],
    title: 'SGestMan Solicitudes',
    builder: EasyLoading.init(),
  ));
}

// ignore: unused_import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/solicitud_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/drawer.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/solicitud/solicitud_form.dart';

// ignore: must_be_immutable
class SolicitudPage extends StatelessWidget {
  SolicitudPage({super.key});
  final SolicitudController controller = Get.put(SolicitudController());
  GlobalKey<FormState> solicitudFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(controller.title.value),
        ),
        backgroundColor: const Color(0xFF1f7f9c),
        foregroundColor: Colors.white,
      ),
      drawer: const Drawer(
        child: GetDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Form(
                key: solicitudFormKey,
                child: SolicitudForm(solicitudFormKey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

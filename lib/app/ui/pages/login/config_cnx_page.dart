// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/routes/app_pages.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/login/config_cnx_form.dart';

// ignore: must_be_immutable
class ConfigCnxPage extends StatelessWidget {
  ConfigCnxPage({super.key});
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.00, -1.00),
            child: Image.asset(
              'img/01_4.jpg',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 180, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15, 25, 15, 0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Form(
                                key: loginFormKey,
                                child: ConfigCnxForm(loginFormKey),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: IconButton(
              enableFeedback: false,
              onPressed: () {
                Get.offNamed(Routes.initial);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFF1f7f9c),
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/solicitud_controller.dart';

class UploadImg extends StatelessWidget {
  const UploadImg({
    super.key,
    required this.controller,
  });

  final SolicitudController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 100,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'Imagen',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              //width: 100,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.getImage(ImageSource.gallery);
                      },
                      icon: const Icon(
                        Icons.image,
                        size: 30.0,
                        color: Color(0xFF1f7f9c),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.getImage(ImageSource.camera);
                      },
                      icon: const Icon(
                        Icons.add_a_photo,
                        size: 30.0,
                        color: Color(0xFF1f7f9c),
                      ),
                    ),
                    Obx(
                      () => IconButton(
                        onPressed: controller.formImg.value != null ||
                                controller.imgEdit.value != null ||
                                controller.imgUrl.value != ''
                            ? () {
                                controller.changeBtn();
                              }
                            : null,
                        icon: Icon(
                          Icons.delete,
                          size: 30.0,
                          color: controller.formImg.value != null ||
                                  controller.imgEdit.value != null ||
                                  controller.imgUrl.value != ''
                              ? Colors.red.shade400
                              : null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Obx(
          () {
            if (controller.formImg.value != null) {
              return Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.file(
                        File(controller.formImg.value!.path),
                        fit: BoxFit.cover,
                        // width: MediaQuery.of(context).size.width,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              );
            } else if (controller.imgEdit.value != null) {
              return Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.memory(
                        controller.imgEdit.value!,
                        fit: BoxFit.cover,
                        // width: MediaQuery.of(context).size.width,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              );
            } else if (controller.imgUrl.value != '') {
              return Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.network(
                        controller.imgUrl.value,
                        fit: BoxFit.cover,
                        // width: MediaQuery.of(context).size.width,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}

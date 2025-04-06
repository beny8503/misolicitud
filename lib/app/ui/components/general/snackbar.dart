import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar {
  void getSnackbar(titulo, mensaje, tipo) {
    Get.snackbar(
      duration: const Duration(seconds: 5),
      titulo,
      '',
      messageText: Text(
        mensaje,
        style: TextStyle(
          color: tipo == 'success'
              ? Colors.green.shade900
              : tipo == 'error'
                  ? Colors.red.shade900
                  : Colors.yellow.shade900,
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),
      ),
      snackPosition: SnackPosition.BOTTOM,
      leftBarIndicatorColor: tipo == 'success'
          ? Colors.green.shade700
          : tipo == 'error'
              ? Colors.red.shade700
              : Colors.yellow.shade700,
      colorText: tipo == 'success'
          ? Colors.green.shade900
          : tipo == 'error'
              ? Colors.red.shade900
              : Colors.yellow.shade900,
      margin: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
      borderRadius: 0,
      backgroundColor: tipo == 'success'
          ? Colors.green.shade50
          : tipo == 'error'
              ? Colors.red.shade50
              : Colors.yellow.shade50,
    );
  }
}

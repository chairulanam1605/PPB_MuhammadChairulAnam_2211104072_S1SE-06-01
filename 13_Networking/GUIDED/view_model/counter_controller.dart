import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    counter--;
  }

  void getSnackbar() {
    Get.snackbar(
      'GetX Snackbar',
      'Ini Isi Snackbar',
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.blueAccent,
      colorText: Colors.white,
    );
  }

  void getBottomSheet() {
    Get.bottomSheet(Container(
      height: 200,
      color: Colors.blueAccent,
      child: const Center(
        child: Text(
          'Ini adalah Bottom Sheet',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
  }
}

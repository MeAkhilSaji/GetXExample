part of '../core.dart';

class CommonAlert {
  static alertfunction() {
    Get.defaultDialog(
      title: "GeeksforGeeks",
      middleText: "Hello world!",
      backgroundColor: Colors.green,
      titleStyle: const TextStyle(color: Colors.white),
      middleTextStyle: const TextStyle(color: Colors.white),
    );
  }
}

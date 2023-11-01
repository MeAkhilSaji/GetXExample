part of '../core.dart';

class CommonAlert {
  static alertfunction() {
    Get.defaultDialog(
      title: "GeeksforGeeks",
      middleText: "Hello world!",
      backgroundColor: Colors.green,
      titleStyle: TextStyle(color: Colors.white),
      middleTextStyle: TextStyle(color: Colors.white),
    );
  }
}

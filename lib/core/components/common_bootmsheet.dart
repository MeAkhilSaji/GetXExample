part of '../core.dart';

class CommonBottomsheet {
  static bottomsheet() {
    Get.bottomSheet(
      persistent: true,
      isDismissible: true,
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: const Column(
            children: [
              Text('Hii 1', textScaleFactor: 2),
              Text('Hii 2', textScaleFactor: 2),
              Text('Hii 3', textScaleFactor: 2),
              Text('Hii 4', textScaleFactor: 2),
            ],
          )),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}

import 'package:dummy/reactive_concepts/reactive_concepts.dart';
import 'package:get/get.dart';

class getxControllers extends GetxController {
  RxInt count = 0.obs;
  RxString name = "exaple".obs;
  RxList<Welcome> modelList = <Welcome>[
    Welcome(greeting: "greeting", data: 1),
    Welcome(greeting: "greeting 2", data: 2)
  ].obs;
  Rx<Welcome> customType = Welcome(greeting: "greeting 2", data: 2).obs;

  void increment() {
    count.value++;
  }

  void updateString(String val) {
    if (name.value == "new") {
      name.value = "exaple";
    } else {
      name.value = val;
    }
  }

  void updateModel() {
    modelList.add(Welcome(greeting: "greeting updates", data: 999));
    Get.snackbar('Updated', 'Store name has been updated ton ',
        snackPosition: SnackPosition.BOTTOM);
  }

  void removeModel() {
    if (modelList.isNotEmpty) {
      modelList.removeLast();
    }
  }

  void customTypeUpdate() {
    customType.value = Welcome(greeting: "greeting custom", data: 234);
  }
}

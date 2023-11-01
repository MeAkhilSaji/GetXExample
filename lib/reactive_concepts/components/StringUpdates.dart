part of '../reactive_concepts.dart';

class StringUpdates extends StatelessWidget {
  const StringUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    getxControllers controller = Get.put(getxControllers());

    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(children: [
          const Text("updates StringUpdates values"),
          Obx(() => Text('name : ${controller.name}')),
          ElevatedButton(
              onPressed: () {
                controller.updateString("new");
              },
              child: const Text('update name'))
        ]));
  }
}

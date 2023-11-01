part of '../reactive_concepts.dart';

class Numerical extends StatelessWidget {
  const Numerical({super.key});

  @override
  Widget build(BuildContext context) {
    getxControllers controller = Get.put(getxControllers());

    return Column(children: [
      const Text("updates numerical values"),
      Obx(() => Text('Count: ${controller.count}')),
      ElevatedButton(
          onPressed: controller.increment, child: const Text('Increment'))
    ]);
  }
}

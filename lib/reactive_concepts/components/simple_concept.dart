part of '../reactive_concepts.dart';

class SimpleConcept extends StatelessWidget {
  const SimpleConcept({super.key});

  @override
  Widget build(BuildContext context) {
    getxControllers controller = Get.put(getxControllers());

    return Column(children: [
      const Text("updates SimpleConcept values"),
      Obx(() => Text('Count: ${controller.count}')),
      ElevatedButton(
          onPressed: () {
            Get.to(Third());
          },
          child: const Text('Increment'))
    ]);
  }
}

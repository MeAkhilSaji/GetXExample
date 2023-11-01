part of '../reactive_concepts.dart';

class CustoType extends StatelessWidget {
  const CustoType({super.key});

  @override
  Widget build(BuildContext context) {
    getxControllers controller = Get.put(getxControllers());

    return Padding(
      padding: const EdgeInsets.only(top: 28.0, bottom: 25),
      child: Column(children: [
        const Text("updates CustoType values"),
        Obx(() => Text('CustoType: ${controller.customType.value.greeting}')),
        ElevatedButton(
            onPressed: () {
              controller.customTypeUpdate();
            },
            child: const Text('Customk Type'))
      ]),
    );
  }
}

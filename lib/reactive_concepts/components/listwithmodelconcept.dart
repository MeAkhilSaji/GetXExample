part of '../reactive_concepts.dart';

class ListWithModels extends StatelessWidget {
  const ListWithModels({super.key});

  @override
  Widget build(BuildContext context) {
    getxControllers controller = Get.put(getxControllers());
    return Center(
        child: Container(
            height: 150,
            padding: const EdgeInsets.only(top: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("updates ListWithModels values"),
                  Obx(() => Expanded(
                      child: ListView.builder(
                          itemCount: controller.modelList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Center(
                                child:
                                    Text(controller.modelList[index].greeting));
                          }))),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              controller.updateModel();
                            },
                            child: const Text('update array')),
                        const SizedBox(width: 30),
                        ElevatedButton(
                            onPressed: () {
                              controller.removeModel();
                            },
                            child: const Text('Remove array'))
                      ])
                ])));
  }
}

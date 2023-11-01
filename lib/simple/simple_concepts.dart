import 'package:dummy/reactive_concepts/getx/getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<getxControllers>(
      builder: (controller) {
        return Column(
          children: [
            Text('Count: ${controller.count}'),
            Expanded(
                child: ListView.builder(
                    itemCount: controller.modelList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                          child: Text(controller.modelList[index].greeting));
                    }))
          ],
        );
      },
    );
  }
}

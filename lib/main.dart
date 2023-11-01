import 'package:dummy/core/core.dart';
import 'package:dummy/reactive_concepts/reactive_concepts.dart';
import 'package:dummy/simple/simple_concepts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: First(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("example of get x"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                child: const Text("Go to Reactive state management"),
                onPressed: () {
                  //navigate to Second screen
                  Get.to(Second());
                }),
            ElevatedButton(
                child: const Text("Go to Simple state management"),
                onPressed: () {
                  //navigate to Second screen
                  Get.to(Third());
                }),
          ],
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("example of get x 2"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  child: const Text("alert function"),
                  onPressed: () {
                    CommonAlert.alertfunction();
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  child: const Text("bottom sheet"),
                  onPressed: () {
                    CommonBottomsheet.bottomsheet();
                  }),
            ),
            Container(
                padding: const EdgeInsets.only(top: 20),
                child: ReactiveConcepts())
          ],
        ),
      ),
    );
  }
}

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("example simple management"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: const Center(child: SimpleStateManagement()),
    );
  }
}




// Get.defaultDialog(
//               title: "GeeksforGeeks",
//               middleText: "Hello world!",
//               backgroundColor: Colors.green,
//               titleStyle: TextStyle(color: Colors.white),
//               middleTextStyle: TextStyle(color: Colors.white),

//             );
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statem/myController.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: Text("Obx Example"),
    //     ),
    //     body: Column(
    //       children: [
    //         Obx(
    //           () => Text("${myController.count}"),
    //         ),
    //         ElevatedButton(
    //           onPressed: () {
    //             myController.incrementCounter();
    //           },
    //           child: Text("increment"),
    //         ),
    //       ],
    //     ),
    //   );

    return Scaffold(
      appBar: AppBar(
        title: Text("Obx Example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX<MyController>(
            // init: MyController(),// you dont need to make a instance of the controller class
            //(var myController = Get.put(MyController());)

            builder: (mycontroller) => Text("${mycontroller.count}"),
          ),
          ElevatedButton(
            onPressed: () {
              myController.incrementCounter();
            },
            child: Text("increment"),
          ),
        ],
      ),
    );
  }
}

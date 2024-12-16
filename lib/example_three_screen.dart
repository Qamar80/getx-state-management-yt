import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/example_three_controller.dart';


class ExampleThreeScreen extends StatefulWidget {
  const ExampleThreeScreen({super.key});

  @override
  State<ExampleThreeScreen> createState() => _ExampleThreeScreenState();
}

class _ExampleThreeScreenState extends State<ExampleThreeScreen> {

  ExampleThreeController exampleThreeController=Get.put(ExampleThreeController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example three'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Notification'),
              Obx(()=>Switch(value: exampleThreeController.notification.value, onChanged: (value){
                exampleThreeController.setNotification(value);
              }))
            ],
          )
        ],
      ),
    );
  }
}

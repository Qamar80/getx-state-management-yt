import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:getx_state_management/example_two_controller.dart';

class ExampleTwoScreen extends StatefulWidget {
  const ExampleTwoScreen({super.key});

  @override
  State<ExampleTwoScreen> createState() => _ExampleTwoScreenState();
}

class _ExampleTwoScreenState extends State<ExampleTwoScreen> {

 ExampleTwoController exampleTwoController=Get.put(ExampleTwoController());


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Example Two'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [

          Obx(()=>  Container(
            height: 200,
            width: 200,
            color: Colors.red.withOpacity(exampleTwoController.opacity.value),
          ),),

          Obx(()=>   Slider(value: exampleTwoController.opacity.value, onChanged: (value){
            exampleTwoController.setOpacity(value);

          })),



        ],
      ),
    );
  }
}

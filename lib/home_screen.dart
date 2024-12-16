import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();




}

class _HomeScreenState extends State<HomeScreen> {

  final CounterController controller=Get.put(CounterController());



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
        centerTitle: true,
        backgroundColor:Colors.blue,
      ),
      body: Center(
        child: Obx((){

          return Text(controller.counter.toString(),style: const TextStyle(fontSize: 60));
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
          onPressed: (){

        controller.incrementCounter();

      }),
      );

  }
}

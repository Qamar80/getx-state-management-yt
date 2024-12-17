import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_state_management/api_controller.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  
  ApiController controller=Get.put(ApiController());
  
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Screen'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(
                hintText: 'Email'
              ),
            ), TextFormField(
              controller: controller.passwordController.value,
              decoration: const InputDecoration(
                hintText: 'Password'
              ),
            ),
            const SizedBox(height: 50,),
            
           Obx((){

             return  InkWell(
               onTap: (){
                 controller.loginApi();
               },
               child:controller.loading.value ?CircularProgressIndicator() : Container(
                 color: Colors.grey,
                 height: 50,
                 child: const Center(
                   child:
                   Text('Login'),
                 ),
               ),
             );
           })
          ],
        ),
      ),
    );
  }
}

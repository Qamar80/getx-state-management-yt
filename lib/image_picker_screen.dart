import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_state_management/imge_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {


  ImagePickerController controller=Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Pick'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue,
                //when imagePath is isNotEmpty then show else null
                backgroundImage: controller.imagePath.isNotEmpty ?
                   // convert file
                FileImage(File(controller.imagePath.toString())) :
                    null
              ),
            ),
            TextButton(onPressed: (){

              controller.getImage();
            }, child: Text('Pick Image'),)
          ],
        );
      })
    );
  }
}

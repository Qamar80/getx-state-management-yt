

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ApiController extends GetxController{

  final emailController=TextEditingController().obs;
  final passwordController=TextEditingController().obs;

  RxBool loading=false.obs;




  void loginApi()async{
     loading.value=true;
    try{


     /* Map newData={
        'email': emailController.value.text,
        'password': passwordController.value.text,
      };*/




      final response=await post(Uri.parse('https://reqres.in/api/login'),
     // final response=await put(Uri.parse('https://reqres.in/api/login'),
     // final response=await patch(Uri.parse('https://reqres.in/api/login'),
     // final response=await delete(Uri.parse('https://reqres.in/api/login'),
       /*body:{
        jsonEncode(newData)
       },*/
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text,
          },
        headers: {
        'Authoeria':'assce'
        }

      );

      var data=jsonDecode(response.body);
      print(response.statusCode.toString());
      print(data.toString());
      if(response.statusCode==200){
        loading.value=false;
        Get.snackbar('Login successful','congrations');

      }else{
        loading.value=false;
        Get.snackbar('Login Falid', data['error']);

      }
    }catch(e){
      loading.value=false;
      Get.snackbar('Exception', e.toString());

    }
    


  }

}
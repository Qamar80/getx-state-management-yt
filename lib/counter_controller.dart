import 'package:get/get.dart';



class CounterController extends GetxController{


  //getx have own datatype i.e RxInt, Rxbool etc.
  //obs it is observer class. it manage the diff things
  RxInt counter=1.obs;

  incrementCounter(){
    counter.value++;
    //print(counter.toString());
  }

}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_state_management/favourite_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  
  FavouriteController favouriteController=Get.put(FavouriteController());




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
      itemCount: favouriteController.fruitList.length,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
            onTap: (){
              if(favouriteController.tempFruitList.contains(favouriteController.fruitList[index].toString())){
                favouriteController.removeFromFavourite(favouriteController.fruitList[index].toString());
              }else{
                favouriteController.addToFavourite(favouriteController.fruitList[index].toString());
              }
             
            },
            title: Text(favouriteController.fruitList[index].toString()),
            trailing: Obx(()=>Icon(Icons.favorite,
              color: favouriteController. tempFruitList.contains(favouriteController.fruitList[index].toString()) ? Colors.red  : Colors.white,),)
          ),
        );
      }),
    );
  }
}

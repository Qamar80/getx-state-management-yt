

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
//store image path
  RxString imagePath=''.obs;


  Future getImage()async{
    //pick image from camera
    final ImagePicker _picker=ImagePicker();
    final image=await _picker.pickImage(source: ImageSource.camera);
   // final image=await _picker.pickImage(source: ImageSource.gallery);
    if(image !=null){
      imagePath.value=image.path.toString();
    }
  }


}
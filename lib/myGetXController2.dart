/////SIMPLE METHOD
import 'package:get/get.dart';

class MyController extends GetxController{
  var text = 'click';
  var count=0;

  void changeText(){
    text='clicked';
    update();
  }
  void incrementCount(){
    count+=1;
    update();
  }
}
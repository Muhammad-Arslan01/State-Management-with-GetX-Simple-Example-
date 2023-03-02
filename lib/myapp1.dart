import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'myGetXcontroller.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  MyController myController=Get.put(MyController());

    return  Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: (() {
                myController.text.value = 'clicked';                 
                myController.count.value+=1;
 
                }),
                child: Obx(
                  () => Text('${myController.text.value} ${myController.count.value}'),
                ))),
      );
 
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'myGetXcontroller2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 

    return  Scaffold(
        body: GetBuilder<MyController>(
          init: MyController(),
          builder: (controller) {
            return Center(
                child: ElevatedButton(
                    onPressed: (() {
                    controller.changeText();               
                    controller.incrementCount();
         
                    }),
                    child:  Text('${controller.text} ${controller.count}')
                    )
                    );
                     
          }
        ),
      );
 
  }
}

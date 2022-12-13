import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/home_controller.dart';
import 'package:getx_demo/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }

  HomeController homeController = Get.put(HomeController());
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<HomeController>(
            builder: (controller) {
              return Switch(
                value: controller.isSwitch,
                onChanged: (value) {
                  homeController.isToggle(value);
                },
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => SecondScreen());
            },
            child: Text('next'),
          ),
          Container(
            height: Get.height / 4,
            width: Get.height / 4,
            color: Colors.red,
          ),
          ElevatedButton(
            onPressed: () {
              Get.showSnackbar(GetSnackBar(
                title: 'ggdsfs',
                messageText: Text('fffff'),
                snackPosition: SnackPosition.TOP,
              ));
            },
            child: Text('SnackBar'),
          ),
          ElevatedButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              child: Text('THEME'))
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Back'),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}

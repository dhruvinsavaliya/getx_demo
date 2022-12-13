import 'package:get/get.dart';

class HomeController extends GetxController {
  bool isSwitch = true;

  void isToggle(bool value) {
    isSwitch = value;
    update();
  }
}

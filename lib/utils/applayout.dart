import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    //200
    double x = getScreenHeight() / pixels; //844/200 = 4.22
    return getScreenHeight() / x; //4.22 / 200 = 0.0211
  }

  static getWidth(double pixels) {
    //200
    double x = getScreenWidth() / pixels; //844/200 = 4.22
    return getScreenWidth() / x; //4.22 / 200 = 0.0211
  }
}

import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // 2.64 -> 844/320 (screenHeight / pageView)
  static double pageView = screenHeight / 2.64;
  // 3.84 -> 844/220 (screenHeight / pageViewHeight)
  static double pageViewContainer = screenHeight / 3.84;
  // 7.03 -> 844 / 120 (screenHeight / textHeight)
  static double pageViewTextContainer = screenHeight / 7.03;

  // 84.4 -> 844 / 10 (screenHeight / 10)
  static double height10 = screenHeight / 84.4;
  // 42.2 -> 844 / 20 (screenHeight / 20)
  static double height20 = screenHeight / 42.2;
  // 56.27 -> 844 / 15 (screenHeight / 15)
  static double height15 = screenHeight / 56.27;

  // 56.27 -> 844 / 20 (screenHeight / 20)
  static double font20 = screenHeight / 42.2;

  static double getSize(double size) {
    var scaleFactor = 844 / size;
    return screenHeight / scaleFactor;
  }

  static double getWidthSize(double size) {
    var scaleFactor = 390 / size;
    return screenWidth / scaleFactor;
  }
}
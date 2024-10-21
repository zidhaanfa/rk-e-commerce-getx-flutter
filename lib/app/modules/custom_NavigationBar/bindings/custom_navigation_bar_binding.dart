import 'package:get/get.dart';

import '../controllers/custom_navigation_bar_controller.dart';

class CustomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomNavigationBarController>(
      () => CustomNavigationBarController(),
    );
  }
}

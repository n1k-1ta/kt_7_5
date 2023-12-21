import 'package:get/get.dart';

import '../controllers/carPageController.dart';

class CarPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarPageController>(
      () => CarPageController(),
    );
  }
}

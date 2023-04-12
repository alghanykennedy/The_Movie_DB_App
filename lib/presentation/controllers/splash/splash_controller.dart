import 'package:get/get.dart';

import '../../navigation/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.WELCOME);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}

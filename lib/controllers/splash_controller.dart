import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () => Get.offNamed("/login"));
    super.onInit();
  }
}

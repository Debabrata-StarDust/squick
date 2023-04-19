import 'package:get/get.dart';
import 'package:squick/controllers/login_controller.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
//
// class SignUpBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<SignUpController>(() => SignUpController());
//   }
// }

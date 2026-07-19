import 'package:get/get.dart';
import 'package:getx_access_token_app/modules/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=> SplashController());
  }

}
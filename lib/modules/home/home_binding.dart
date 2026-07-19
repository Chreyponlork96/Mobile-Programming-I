import 'package:get/get.dart';
import 'package:getx_access_token_app/modules/home/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=> HomeController());
  }
}
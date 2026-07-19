import 'package:get/get.dart';
import 'package:getx_access_token_app/modules/login/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=> LoginController());
  }

}
import 'package:get/get.dart';
import 'package:getx_access_token_app/data/local/token_storage.dart';

import '../../constants/constants_route.dart';

class SplashController extends GetxController {
  var loading = true.obs;
  @override
  void onInit() {
    _checkToken();
    super.onInit();
  }

  void _checkToken() async {
    loading.value = true;
    await Future.delayed(Duration(seconds: 3));
    loading.value = false;
    if (TokenStorage.getToken().isEmpty) {
      Get.offNamed(ConstantRoute.login);
    } else {
      Get.offNamed(ConstantRoute.home);
    }
  }
}

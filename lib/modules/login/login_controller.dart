import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_access_token_app/constants/constants_route.dart';
import 'package:getx_access_token_app/core/models/login/LoginRequest.dart';
import 'package:getx_access_token_app/core/network/remote/api_service_impl.dart';
import 'package:getx_access_token_app/data/local/token_storage.dart';

class LoginController extends GetxController {
  var apiService = ApiServiceImpl();
  var usernameController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var onLoading = false.obs;

  Future<void> onLogin() async {
    var username = usernameController.value.text;
    var password = passwordController.value.text;
    if (username.isEmpty) {
      Get.snackbar("Error", "Username is required");
      return;
    }
    if (password.isEmpty) {
      Get.snackbar("Error", "Password is required");
      return;
    }
    onLoading.value = true;
    var loginResponse = await apiService.login(
      LoginRequest(
          phoneNumber: username.trim(),
          password: password.trim()),
    );
    if (loginResponse.accessToken == null) {
      Get.snackbar("Error", "Your uasername and password incorrent ");
      return;
    }
    onLoading.value = false;
    TokenStorage.setToken(loginResponse.accessToken!);
    TokenStorage.setRefreshToken(loginResponse.refreshToken!);
    Get.snackbar("Success", "Login Successfully");
    Get.offNamed(ConstantRoute.home);
  }
}

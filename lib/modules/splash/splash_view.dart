import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_access_token_app/modules/splash/splash_controller.dart';

class SplashView extends GetView<SplashController>{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: controller.loading.value
            ? CircularProgressIndicator(color: Colors.white)
            : Text(""),
      ),
    );
  }
}
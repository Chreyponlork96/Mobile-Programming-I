import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_access_token_app/constants/constants_route.dart';
import 'package:getx_access_token_app/data/local/token_storage.dart';
import 'package:getx_access_token_app/modules/home/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        actions: [IconButton(onPressed: () {
          TokenStorage.removeToken();
          Get.offNamed(ConstantRoute.splash);
        }, icon: Icon(Icons.logout))],
      ),
      backgroundColor: Colors.white,
      body: Center(child: Text("Home Page")),
    );
  }
}

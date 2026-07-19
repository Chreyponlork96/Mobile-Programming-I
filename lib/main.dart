import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_access_token_app/constants/constants_route.dart';
import 'package:getx_access_token_app/modules/home/home_binding.dart';
import 'package:getx_access_token_app/modules/home/home_view.dart';
import 'package:getx_access_token_app/modules/login/login_binding.dart';
import 'package:getx_access_token_app/modules/login/login_view.dart';
import 'package:getx_access_token_app/modules/splash/splash_binding.dart';
import 'package:getx_access_token_app/modules/splash/splash_view.dart';


Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Access Token',
      theme: ThemeData(
       colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: ConstantRoute.splash, page: ()=> SplashView(), binding: SplashBinding()),
        GetPage(name: ConstantRoute.home, page: ()=> HomeView(), binding: HomeBinding()),
        GetPage(name: ConstantRoute.login, page: ()=> LoginView(), binding: LoginBinding()),
      ],
    );
  }
}
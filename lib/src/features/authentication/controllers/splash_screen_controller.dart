import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_app/src/features/authentication/screens/Login/login_screen.dart';
import 'package:rent_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:rent_app/src/features/authentication/screens/welcome/welcome.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(login_screen());
  }
}

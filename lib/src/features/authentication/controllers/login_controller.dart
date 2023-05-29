import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_app/utils.dart';
import 'package:rent_app/src/constants/sizes.dart';
import 'package:rent_app/src/constants/text_strings.dart';
import 'package:rent_app/src/constants/image_strings.dart';
import 'package:rent_app/src/features/authentication/screens/Login/login_form_widget.dart';

import '../../../repository/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  var passwordVisible = false.obs;
  void LoginUser(String email, String password) {
    AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }
}

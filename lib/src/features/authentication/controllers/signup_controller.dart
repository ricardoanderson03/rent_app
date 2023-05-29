import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_app/src/repository/user_repository/user_repository.dart';
import 'package:rent_app/utils.dart';
import 'package:rent_app/src/constants/sizes.dart';
import 'package:rent_app/src/constants/text_strings.dart';
import 'package:rent_app/src/constants/image_strings.dart';
import 'package:rent_app/src/features/authentication/screens/Login/login_form_widget.dart';

import '../../../repository/authentication_repository.dart';
import '../models/user_model.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
  }

  void phoneAuthentication(String phoneNo) {
    Get.put(AuthenticationRepository()).phoneAuthentication(phoneNo);
  }
}

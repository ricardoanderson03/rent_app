import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_app/utils.dart';
import 'package:rent_app/src/constants/sizes.dart';
import 'package:rent_app/src/constants/text_strings.dart';
import 'package:rent_app/src/constants/image_strings.dart';
import 'package:rent_app/src/features/authentication/screens/Login/login_form_widget.dart';
import 'package:rent_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:rent_app/src/features/authentication/screens/forgot_password/forgot_password_options/forget_password_btn_widget.dart';
import 'package:rent_app/src/features/authentication/screens/forgot_password/forgot_password_options/forget_password_model_bottom_sheet.dart';
import 'package:rent_app/src/features/authentication/screens/forgot_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: tDefaultSize * 4),
            const SizedBox(height: tFormHeight),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("E-MAIL"),
                    hintText: "E-MaiL",
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const OTPScreen());
                    },
                    child: const Text("next"),
                  ),
                )
              ],
            )),
          ],
        ),
      )),
    );
  }
}

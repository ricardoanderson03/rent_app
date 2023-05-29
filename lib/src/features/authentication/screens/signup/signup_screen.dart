import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:rent_app/src/features/authentication/screens/Login/login_screen.dart';
import 'package:rent_app/src/features/authentication/screens/forgot_password/forget_password_otp/otp_screen.dart';
import 'package:rent_app/utils.dart';
import 'package:rent_app/src/constants/sizes.dart';
import 'package:rent_app/src/constants/text_strings.dart';
import 'package:rent_app/src/constants/image_strings.dart';
import 'package:rent_app/src/features/authentication/screens/Login/login_form_widget.dart';
import 'package:email_validator/email_validator.dart';
import '../../models/user_model.dart';

class signup_screen extends StatelessWidget {
  const signup_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    final _confirmPasswordController = TextEditingController();
    final size = MediaQuery.of(context).size;
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: const EdgeInsets.all(tDefaultSize),
      child: Column(children: [
        Text("Register"),
        Container(
          padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: controller.fullName,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      labelText: "Nama",
                      hintText: "Nama",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Nama harus diisi";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: controller.email,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Email",
                      hintText: "Email",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email harus diisi";
                      } else if (!EmailValidator.validate(value)) {
                        return "Email tidak valid";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: controller.phoneNo,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.numbers_outlined),
                      labelText: "Telepon",
                      hintText: "Telepon",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Nomor telepon harus diisi";
                      } else if (!RegExp(r"^[0-9]*$").hasMatch(value)) {
                        return "Nomor telepon harus berupa angka";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.fingerprint),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password harus diisi";
                      } else if (value.length < 6) {
                        return "Password minimal terdiri dari 6 karakter";
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: controller.password,
                    decoration: InputDecoration(
                      labelText: "Konfirmasi Password",
                      hintText: "Konfirmasi Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.fingerprint),
                    ),
                    validator: (value) {
                      if (value != _confirmPasswordController.text) {
                        return "Konfirmasi password tidak sesuai dengan password yang dimasukkan";
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            SignUpController.instance.registerUser(
                                controller.email.text.trim(),
                                _confirmPasswordController.text.trim());
                            // SignUpController.instance.phoneAuthentication(
                            //     controller.phoneNo.text.trim());
                            // final user = UserModel(
                            //   email: controller.email.text.trim(),
                            //   password: controller.password.text.trim(),
                            //   fullName: controller.fullName.text.trim(),
                            //   phoneNo: controller.phoneNo.text.trim(),
                            // );
                            // SignUpController.instance.createUser(user);
                            // Get.to(() => const OTPScreen());
                          }
                        },
                        child: const Text("Sign Up")),
                  )
                ],
              )),
        ),
        Column(
          children: [
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => login_screen()),
                );
              },
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Container(
          // socialmedialoginFT4 (1:1127)
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // orbG2 (1:1128)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle345v3Q (1:1130)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 8 * fem, 0 * fem),
                      width: 109 * fem,
                      height: 1 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x99d8d8d8),
                      ),
                    ),
                    Center(
                      // content3dp (1:1129)
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 7 * fem, 0 * fem),
                        child: Text(
                          'Or sign in with ',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5714285714 * ffem / fem,
                            color: Color(0xff121933),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // rectangle346MPc (1:1131)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                      width: 90 * fem,
                      height: 1 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x99d8d8d8),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupvuvi66J (9ggHVfR9f4U3FxTQhnvuVi)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.5 * fem, 0 * fem),
                width: double.infinity,
                height: 48 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // googleQ6z (1:1132)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 19.5 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          14.98 * fem, 12 * fem, 31.5 * fem, 12 * fem),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x33d8d8d8)),
                        color: Color(0x0cd8d8d8),
                        borderRadius: BorderRadius.circular(10 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0a000000),
                            offset: Offset(0 * fem, 8 * fem),
                            blurRadius: 15 * fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // socialmediagoogle3ve (I1:1132;0:3848)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 35 * fem, 0 * fem),
                            width: 18.02 * fem,
                            height: 18.38 * fem,
                            child: Image.asset(
                              'assets/page-1/images/social-media-google.png',
                              width: 18.02 * fem,
                              height: 18.38 * fem,
                            ),
                          ),
                          Center(
                            // contentAEa (I1:1132;0:3847)
                            child: Text(
                              'Google',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff121933),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // googleVXk (1:1133)
                      padding: EdgeInsets.fromLTRB(
                          12 * fem, 12 * fem, 21 * fem, 12 * fem),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x33d8d8d8)),
                        color: Color(0x0cd8d8d8),
                        borderRadius: BorderRadius.circular(10 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0a000000),
                            offset: Offset(0 * fem, 8 * fem),
                            blurRadius: 15 * fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // iconzjQ (I1:1133;0:3848)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 21.5 * fem, 0 * fem),
                            width: 24 * fem,
                            height: 24 * fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-3Lr.png',
                              width: 24 * fem,
                              height: 24 * fem,
                            ),
                          ),
                          Center(
                            // contentWxe (I1:1133;0:3847)
                            child: Text(
                              'Facebook',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff121933),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    )));
  }
}

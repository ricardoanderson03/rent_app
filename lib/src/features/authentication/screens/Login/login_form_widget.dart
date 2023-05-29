import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_app/utils.dart';
import 'package:rent_app/src/constants/sizes.dart';
import 'package:rent_app/src/constants/text_strings.dart';
import 'package:rent_app/src/constants/image_strings.dart';
import 'package:rent_app/src/features/authentication/screens/Login/login_form_widget.dart';
import 'package:rent_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:rent_app/src/features/authentication/screens/forgot_password/forgot_password_options/forget_password_btn_widget.dart';
import 'package:rent_app/src/features/authentication/screens/forgot_password/forgot_password_options/forget_password_model_bottom_sheet.dart';
import 'package:rent_app/src/features/authentication/controllers/login_controller.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final controller = Get.put(LoginController());
  bool _obscureText = true;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: "Email",
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: controller.password,
              obscureText: _obscureText,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText =
                          !_obscureText; // ubah status password ketika tombol ditekan
                    });
                  },
                  icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text("Forget Password?"),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
              width: double.infinity,
              height: 50 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10 * fem),
                gradient: LinearGradient(
                  begin: Alignment(-1.978, -0),
                  end: Alignment(-0, 1.977),
                  colors: <Color>[Color(0xff7474bf), Color(0xff348ac7)],
                  stops: <double>[0, 1],
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: controller.email.text.trim(),
                          password: controller.password.text.trim());
                      // Jika login berhasil, navigasikan ke halaman selanjutnya
                    } catch (e) {
                      // Jika terjadi error saat login, tampilkan pesan error
                      Get.snackbar("Error", "Email atau password salah");
                    }
                  },
                  child: Text(
                    'Log In',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.shade200,
          ),
          child: Row(
            children: [
              Icon(btnIcon, size: 60.0),
              const SizedBox(width: 10.0),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("E-Mail", style: Theme.of(context).textTheme.headline6),
                Text("Reset via E-Mail Verification",
                    style: Theme.of(context).textTheme.bodyText2),
              ])
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_app/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:rent_app/utils.dart';
import 'package:rent_app/src/constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  // SplashScreenController splashScreenController = SplashScreenController();
  SplashScreen({Key? key}) : super(key: key);
  final splashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();

    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // 8Lp (1:926)
        width: double.infinity,
        height: 812 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // bgyEx (1:927)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(15 * fem, 361 * fem, 0 * fem, 0 * fem),
                width: 678 * fem,
                height: 1024 * fem,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      frame928,
                    ),
                  ),
                ),
                child: Align(
                  // frame929Egg (1:930)
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 663 * fem,
                    height: 663 * fem,
                    child: Image.asset(
                      frame929,
                      width: 663 * fem,
                      height: 663 * fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // fulllogoYxG (1:932)
              left: 91.4375 * fem,
              top: 356 * fem,
              child: Align(
                child: SizedBox(
                  width: 192.93 * fem,
                  height: 74.75 * fem,
                  child: Image.asset(
                    logo,
                    width: 192.93 * fem,
                    height: 74.75 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // rentkueVW (1:933)
              left: 154 * fem,
              top: 434 * fem,
              child: Align(
                child: SizedBox(
                  width: 80 * fem,
                  height: 32 * fem,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Segoe Script',
                        fontSize: 25 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2575 * ffem / fem,
                        color: Color(0xff7474bf),
                      ),
                      children: [
                        TextSpan(
                          text: 'Rent',
                        ),
                        TextSpan(
                          text: 'Ku',
                          style: SafeGoogleFont(
                            'Segoe Script',
                            fontSize: 25 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575 * ffem / fem,
                            color: Color(0xff8e8efc),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

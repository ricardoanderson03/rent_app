import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_app/utils.dart';
import 'package:rent_app/src/constants/sizes.dart';
import 'package:rent_app/src/constants/text_strings.dart';
import 'package:rent_app/src/constants/image_strings.dart';
import 'package:rent_app/src/features/authentication/screens/Login/login_form_widget.dart';
import 'package:rent_app/src/features/authentication/screens/signup/signup_screen.dart';

class login_screen extends StatelessWidget {
  const login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding:
              EdgeInsets.fromLTRB(20 * fem, 152 * fem, 20 * fem, 115 * fem),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rentkuEDt (1:1134)
                    margin: EdgeInsets.fromLTRB(
                        12 * fem, 0 * fem, 0 * fem, 10 * fem),
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
                  Container(
                    // logindetailVZ8 (1:1118)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // logindetailsqcz (1:1119)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 30 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // autogroupjig8Lpe (9ggH9bAGGUCXGTeHDfJig8)
                                padding: EdgeInsets.fromLTRB(
                                    47 * fem, 0 * fem, 47 * fem, 30 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // alreadyhaveanaccountsignins3t (1:1123)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 1 * fem, 5 * fem),
                                        child: Text(
                                          'Welcome Back',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 20 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff121933),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // alreadyhaveanaccountsigninLiA (1:1124)
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 241 * fem,
                                        ),
                                        child: Text(
                                          'Log in to your account using email or social networks',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5714285714 * ffem / fem,
                                            color: Color(0xff808493),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              LoginForm(),
                              Center(
                                child: Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'First time here? ',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5714285714 * ffem / fem,
                                          color: Color(0xff121933),
                                        ),
                                      ),
                                      TextButton(
                                        style: ButtonStyle(
                                          textStyle: MaterialStateProperty.all<
                                              TextStyle>(
                                            SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5714285714 * ffem / fem,
                                              color: Color(0xff6578c0),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    signup_screen())),
                                          );
                                        },
                                        child: const Text('Sign up'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //pasdisisni
                        Container(
                          // socialmedialoginFT4 (1:1127)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // orbG2 (1:1128)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 20 * fem),
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
                                      width: 109 * fem,
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
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0.5 * fem, 0 * fem),
                                width: double.infinity,
                                height: 48 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // googleQ6z (1:1132)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 19.5 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(14.98 * fem,
                                          12 * fem, 31.5 * fem, 12 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0x33d8d8d8)),
                                        color: Color(0x0cd8d8d8),
                                        borderRadius:
                                            BorderRadius.circular(10 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x0a000000),
                                            offset: Offset(0 * fem, 8 * fem),
                                            blurRadius: 15 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // socialmediagoogle3ve (I1:1132;0:3848)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 35 * fem, 0 * fem),
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
                                      padding: EdgeInsets.fromLTRB(12 * fem,
                                          12 * fem, 21 * fem, 12 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0x33d8d8d8)),
                                        color: Color(0x0cd8d8d8),
                                        borderRadius:
                                            BorderRadius.circular(10 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x0a000000),
                                            offset: Offset(0 * fem, 8 * fem),
                                            blurRadius: 15 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // iconzjQ (I1:1133;0:3848)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 21.5 * fem, 0 * fem),
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
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

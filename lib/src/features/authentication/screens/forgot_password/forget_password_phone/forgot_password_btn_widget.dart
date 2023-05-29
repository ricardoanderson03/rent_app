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

Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Anda Lupa", style: Theme.of(context).textTheme.headline2),
              Text("Anda Lupa lagi?",
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(
                height: 30.0,
              ),
              ForgetPasswordBtnWidget(
                onTap: () {},
                title: "ganti password",
                subTitle: "kok bisa lupa kak",
                btnIcon: Icons.mail_outline_rounded,
              ),
              const SizedBox(height: 20.0),
              ForgetPasswordBtnWidget(
                onTap: () {},
                title: "ganti password",
                subTitle: "Ganti pake no hp",
                btnIcon: Icons.mobile_friendly_rounded,
              ),
            ],
          )));
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_app/src/features/authentication/screens/profile_screen/update_profile_screen.dart';
import 'package:rent_app/src/repository/authentication_repository.dart';
import 'package:rent_app/utils.dart';
import 'package:rent_app/src/constants/sizes.dart';
import 'package:rent_app/src/constants/text_strings.dart';
import 'package:rent_app/src/constants/image_strings.dart';
import 'package:rent_app/src/constants/colors.dart';
import 'package:rent_app/src/features/authentication/screens/Login/login_form_widget.dart';
import 'package:rent_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:rent_app/src/repository/authentication_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            "Profile",
            style: Theme.of(context).textTheme.headline4,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(LineAwesomeIcons.moon))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                          width: 120,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(image: AssetImage(logo)),
                          )),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: const Icon(
                            LineAwesomeIcons.alternate_pencil,
                            size: 18.0,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Your Name",
                      style: Theme.of(context).textTheme.headline4),
                  Text("Email", style: Theme.of(context).textTheme.bodyText2),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () =>
                          Get.to(() => const UpdateProfileScreen()),
                      child: const Text("Edit Profil",
                          style: TextStyle(color: Colors.black87)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: tPrimaryColor,
                        side: BorderSide.none,
                        shape: const StadiumBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  ListMenu(
                    title: "settings",
                    icon: LineAwesomeIcons.cog,
                    onPress: () {},
                  ),
                  ListMenu(
                    title: "User Management",
                    icon: LineAwesomeIcons.user_check,
                    onPress: () {},
                  ),
                  ListMenu(
                    title: "Information",
                    icon: LineAwesomeIcons.info,
                    onPress: () {},
                  ),
                  ListMenu(
                      title: "Logout",
                      icon: LineAwesomeIcons.alternate_sign_out,
                      textColor: Colors.red,
                      endIcon: false,
                      onPress: () {
                        AuthenticationRepository.instance.Logout();
                      }),
                ],
              )),
        ));
  }
}

class ListMenu extends StatelessWidget {
  const ListMenu({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: tAccentColor.withOpacity(0.1),
        ),
        child: const Icon(
          LineAwesomeIcons.cog,
          color: tAccentColor,
        ),
      ),
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.bodyText1?.apply(color: Colors.black),
      ),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const Icon(
                LineAwesomeIcons.angle_right,
                size: 18.0,
                color: Colors.grey,
              ),
            )
          : null,
    );
  }
}

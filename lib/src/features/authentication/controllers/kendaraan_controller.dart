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
import '../models/kendaraan_model.dart';

class KendaraanController extends GetxController {
  static KendaraanController get instance => Get.find();

  final _KendaraanRepo = Get.put(UserRepository());

  Future<List<KendaraanModel>> getKendaraan() async {
    return await _KendaraanRepo.allKendaraan();
  }
}

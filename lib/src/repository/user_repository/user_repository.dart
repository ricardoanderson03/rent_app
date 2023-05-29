import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../features/authentication/models/kendaraan_model.dart';
import '../../features/authentication/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) {
    _db.collection("Users").add(user.toJson()).whenComplete(
          () => Get.snackbar("Berhasil", "Akun jadi dengs"),
        );
  }

  Future<List<KendaraanModel>> allKendaraan() async {
    final snapshot = await _db.collection("Kendaraan").get();
    final kendaraan =
        snapshot.docs.map((e) => KendaraanModel.fromSnapshot(e)).toList();
    return kendaraan;
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class KendaraanModel {
  final String? id;
  final String NamaKendaraan;
  final String JenisKendaraan;
  final int HargaSewa;
  final String StatusKendaraan;
  final String gambar;

  const KendaraanModel({
    this.id,
    required this.NamaKendaraan,
    required this.JenisKendaraan,
    required this.HargaSewa,
    required this.StatusKendaraan,
    required this.gambar,
  });

  toJson() {
    return {
      "id": id,
      "NamaKendaraan": NamaKendaraan,
      "JenisKendaraan": JenisKendaraan,
      "HargaSewa": HargaSewa,
      "StatusKendaraan": StatusKendaraan,
      "gambar": gambar,
    };
  }

  factory KendaraanModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return KendaraanModel(
        id: document.id,
        NamaKendaraan: data["NamaKendaraan"],
        JenisKendaraan: data["JenisKendaraan"],
        HargaSewa: data["HargaSewa"],
        StatusKendaraan: data["StatusKendaraan"],
        gambar: data["gambar"]);
  }
}

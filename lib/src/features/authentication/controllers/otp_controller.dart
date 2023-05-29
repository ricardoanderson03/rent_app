import 'package:get/get.dart';
import 'package:rent_app/src/features/authentication/screens/Dashboard/dashboard.dart';
import 'package:rent_app/src/repository/authentication_repository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const DashboardScreen()) : Get.back();
  }
}

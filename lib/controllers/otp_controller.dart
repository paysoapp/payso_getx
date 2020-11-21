import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:payso/screens/MobileVerified/mobile_verified_screen.dart';

class OtpController extends GetxController {
  UserCredential user;
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> verifyOtp(String verificationId, String otp) async {
    try {
      var _credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otp);
      UserCredential result = await _auth.signInWithCredential(_credential);
      if (result != null) {
        Get.off(MobileVerifiedScreen());
      }
    } catch (e) {
      Get.snackbar(
        e.code,
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}

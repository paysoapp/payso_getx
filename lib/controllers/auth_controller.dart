import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/screens/MobileVerified/mobile_verified_screen.dart';
import 'package:payso/screens/Otp/otp_screen.dart';

class AuthController extends GetxController {
  UserCredential user;
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future registerUser(String mobile, BuildContext context) async {
    String phoneNumber = '+91' + mobile;
    _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: Duration(seconds: 0),
      verificationCompleted: (phoneAuthCredential) {},
      verificationFailed: (FirebaseAuthException authException) {
        print(authException.message);
      },
      codeSent: (String verificationId, [int forceResendingToken]) async {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => OtpScreen(
            mobileNumber: phoneNumber,
            verificationId: verificationId,
          ),
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        verificationId = verificationId;
        print(verificationId);
        print("Timeout");
      },
    );
  }

  verifyOtp(String verificationId, String otp) {
    var _credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otp.toString());
    _auth
        .signInWithCredential(_credential)
        .then((UserCredential result) => {
              Get.off(MobileVerifiedScreen()),
            })
        .catchError(
      (e) {
        print(e);
        Get.snackbar('Incorrect OTP', "You've entered wrong OTP");
      },
    );
  }
}

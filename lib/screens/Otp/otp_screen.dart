import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/components/back_button_widget.dart';
import 'package:payso/components/button_widget.dart';
import 'package:payso/components/pincode_widget.dart';
import 'package:payso/screens/Otp/components/component_widget.dart.dart';
import 'package:payso/screens/Otp/components/resend_otp_button.dart.dart';
import 'package:payso/screens/Passcode/passcode_screen.dart';

class OtpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: Get.height * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BackButtonWidget(),
                Container(
                  child: Image.asset(
                    'assets/images/verify_number.png',
                    width: Get.width * 0.7,
                  ),
                ),
                ContentWidget(),
                ResendOtpButton(),
                PincodeWidget(
                  boxCount: 6,
                ),
                ButtonWidget(
                  buttonText: 'otpVerifyButton',
                  onTapped: () {
                    Get.offAll(PasscodeScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

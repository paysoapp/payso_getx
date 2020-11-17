import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/components/button_widget.dart';
import 'package:payso/components/passcode_content_widget.dart';
import 'package:payso/components/pincode_widget.dart';
import 'package:payso/controllers/passcode_controller.dart';
import '../../components/passcode_digit_widget.dart';
import 'package:payso/screens/PasscodeVerified/passcode_verified_screen.dart';

class ConfirmPasscodeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  PasscodeController passcodeController = Get.put(PasscodeController());
  int confirmPasscode = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: Get.height * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ImageWidget(),
                    PasscodeContentWidget(
                      titleText: 'Confirm Mobile Passcode',
                      contentText:
                          'Re-Enter your digit passcode to secure your account',
                    ),
                    PasscodeDigitWidget(),
                    PincodeWidget(
                      boxCount: 4,
                      validator: (val) {
                        confirmPasscode = int.parse(val);
                        if (val.isEmpty || val.length != 4) {
                          return 'Please Enter Valid passcode';
                        } else if (passcodeController.matchPasscode(
                            passcodeController.firstScreenPasscode.value,
                            confirmPasscode)) {
                          return 'Passcode should same as Previous Screen';
                        }
                        return null;
                      },
                      onSubmitted: (val) {
                        confirmPasscode = int.parse(val);
                        if (_formKey.currentState.validate()) {
                          passcodeController
                              .setConfirmPasscode(confirmPasscode);
                          Get.off(PasscodeVerifiedScreen());
                        }
                      },
                    ),
                  ],
                ),
                ButtonWidget(
                  buttonText: 'setPasscodeButton',
                  onTapped: () {
                    if (_formKey.currentState.validate()) {
                      passcodeController.setConfirmPasscode(confirmPasscode);
                      Get.off(PasscodeVerifiedScreen());
                    }
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

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/passcode.png',
      ),
    );
  }
}

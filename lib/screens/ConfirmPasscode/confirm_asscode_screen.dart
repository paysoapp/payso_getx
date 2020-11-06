import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/components/button_widget.dart';
import 'package:payso/components/passcode_content_widget.dart';
import 'package:payso/components/pincode_widget.dart';
import '../../components/passcode_digit_widget.dart';

class ConfirmPasscodeScreen extends StatelessWidget {
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
                    ),
                  ],
                ),
                ButtonWidget(
                  buttonText: 'setPasscodeButton',
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

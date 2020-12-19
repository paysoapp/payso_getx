import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/Screens/CompleteProfile/complete_profile.dart';
import 'package:payso/components/back_button_widget.dart';
import 'package:payso/components/button_widget.dart';
import 'package:payso/constants.dart';
import 'package:payso/controllers/otp_controller.dart';
import 'package:payso/screens/Register/register_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String mobileNumber;
  final String verificationId;
  String otp;
  OtpScreen({this.mobileNumber, this.verificationId});
  OtpController controller = Get.put(OtpController());
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
                BackButtonWidget(
                  onTap: () => Get.to(RegisterScreen()),
                ),
                Container(
                  child: Image.asset(
                    'assets/images/verify_number.png',
                    width: Get.width * 0.7,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'verifyNumberTitle'.tr,
                        textAlign: TextAlign.center,
                        style: cHeadStyle,
                      ),
                      Text(
                        'Enter a 6 digit number sent to'.tr + '\n$mobileNumber',
                        textAlign: TextAlign.center,
                        style: cTextStyle,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: FlatButton(
                    onPressed: () {
                      print("Resend OTP");
                    },
                    child: Text(
                      'verifyResendCode'.tr,
                      style: TextStyle(
                        color: cPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: PinCodeTextField(
                    onChanged: (value) {
                      otp = value;
                    },
                    validator: (value) {
                      if (value.isEmpty || value.length != 6) {
                        return 'otpInvalid'.tr;
                      }
                      return null;
                    },
                    onSubmitted: (value) {
                      if (_formKey.currentState.validate()) {
                        print('$verificationId $otp');
                        controller.verifyOtp(verificationId, otp);
                      }
                    },
                    backgroundColor: cIntroSliderBg,
                    appContext: context,
                    length: 6,
                    obscureText: false,
                    pinTheme: PinTheme(
                      selectedFillColor: Colors.grey[300],
                      inactiveColor: Colors.grey[300],
                      activeColor: Colors.grey[300],
                      activeFillColor: Colors.grey[300],
                      inactiveFillColor: Colors.grey[300],
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                    ),
                    autoDismissKeyboard: true,
                    keyboardType: TextInputType.number,
                    enableActiveFill: true,
                  ),
                ),
                ButtonWidget(
                  buttonText: 'otpVerifyButton'.tr,
                  onTapped: () {
                    if (_formKey.currentState.validate()) {
                      controller.verifyOtp(verificationId, otp);
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

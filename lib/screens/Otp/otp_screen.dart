import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/Screens/CompleteProfile/complete_profile.dart';
import 'package:payso/components/back_button_widget.dart';
import 'package:payso/components/button_widget.dart';
import 'package:payso/constants.dart';
import 'package:payso/screens/Passcode/passcode_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Verify your number',
                        textAlign: TextAlign.center,
                        style: cHeadStyle,
                      ),
                      Text(
                        //TODO: mobile number will be added in this widget
                        'Enter a 6 digit number sent to \n +91 ',
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
                      'Re Send Code',
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
                    validator: (value) {
                      if (value.isEmpty || value.length != 6) {
                        return 'Please Enter Valid OTP';
                      }
                      return null;
                    },
                    onSubmitted: (value) {
                      //TODO: add action here
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
                    onCompleted: (value) {
                      //TODO: get otp from here
                    },
                    onChanged: (value) {
                      print("value" + value);
                    },
                  ),
                ),
                ButtonWidget(
                  buttonText: 'otpVerifyButton',
                  onTapped: () {
                    Get.offAll(CompleteProfile());
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

import 'package:flutter/material.dart';
import 'package:payso/Screens/Otp/otp_screen.dart';
import 'package:payso/components/button_widget.dart';
import 'package:payso/components/input_textfield_widget.dart';
import 'package:payso/constants.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  String phoneNumber = '';
  final _formKey = GlobalKey<FormState>();
  // RegisterUser registerUser = RegisterUser();
  // FirebaseAuth _auth = FirebaseAuth.instance;
  String phoneEmpty = ('phoneEmpty');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          // key: _formkey,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: Get.height * 0.1),
            child: Column(
              children: <Widget>[
                Container(
                  height: Get.height / 3,
                  width: Get.width,
                  child: Image.asset('./assets/images/register.png'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  height: Get.height / 6,
                  width: Get.width,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "registerationTitle",
                        style: cHeadStyle,
                      ),
                      Spacer(),
                      Text(
                        "Lorem Ipsum with falaaana and Dikaana. Mein hoon ek udta robot.. Dora e mon.",
                        style: cTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                InputTextFieldWidget(
                  phoneEmpty: phoneEmpty,
                  formKey: _formKey,
                  controller: phoneController,
                  hintText: 'phoneHint',
                  prefix: Container(
                    width: Get.width / 3.8,
                    child: Row(
                      children: [
                        Image.asset(
                          "./assets/icons/india.png",
                          width: 30.0,
                          height: 30.0,
                        ),
                        // Spacer(),
                        Text(
                          '+(91)',
                        ),
                        // Spacer(),
                      ],
                    ),
                  ),
                ),
                ButtonWidget(
                  buttonText: 'otpButton',
                  onTapped: () {
                    Get.to(OtpScreen());
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

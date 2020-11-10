import 'package:flutter/material.dart';
import 'package:payso/Screens/Otp/otp_screen.dart';
import 'package:payso/components/button_widget.dart';
import 'package:payso/components/input_number_widget.dart';
import 'package:get/get.dart';
import 'package:payso/controllers/auth_controller.dart';
import 'components/content_widget.dart';

// ignore: must_be_immutable
class RegisterScreen extends GetWidget<AuthController> {
  final _phoneController = TextEditingController();
  // TextEditingController phoneController = TextEditingController();

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
                  width: Get.width * 0.7,
                  child: Image.asset('./assets/images/register.png'),
                ),
                ContentWidget(),
                InputNumberWidget(
                  phoneEmpty: phoneEmpty,
                  formKey: _formKey,
                  controller: _phoneController,
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
                    controller.login(_phoneController.text);
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

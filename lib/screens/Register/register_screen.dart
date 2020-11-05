// import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:payso/constants.dart';
import 'package:get/get.dart';
// import 'package:payso/models/register_user.dart';
// import 'package:payso/widgets/change_lang_btn_widget.dart';

class RegisterScreen extends StatelessWidget {
  String phoneNumber = '';
  final _formKey = GlobalKey<FormState>();
  // RegisterUser registerUser = RegisterUser();
  // FirebaseAuth _auth = FirebaseAuth.instance;
  String phoneEmpty = ('phoneEmpty');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        // key: _formkey,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 40),
              // child: ChangedLangButton(),
            ),
            Container(
              height: Get.height / 3,
              width: Get.width,
              child: Image.asset('./assets/images/register.png'),
            ),
            // Spacer(),
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
            Spacer(),
            Container(
              width: Get.width / 1.1,
              child: TextFormField(
                onChanged: (value) {
                  phoneNumber = value;
                },
                validator: (value) {
                  if (value.isEmpty || value.length != 10) {
                    return phoneEmpty;
                  }
                  return null;
                },
                onFieldSubmitted: (Value) {
                  if (_formKey.currentState.validate()) {
                    // registerUser.registerUser(phoneNumber, context, _auth);
                  }
                },
                maxLength: 10,
                style: cFormFieldStyle,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'phoneHint',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                  ),
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
              ),
            ),
            // Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: InkWell(
                onTap: () {
                  if (_formKey.currentState.validate()) {
                    // registerUser.registerUser(phoneNumber, context, _auth);
                  }
                },
                child: Container(
                  height: 60,
                  width: Get.width / 1.1,
                  decoration: BoxDecoration(
                    color: cPrimaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "otpButton",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

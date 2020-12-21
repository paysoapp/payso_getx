import 'package:flutter/material.dart';
import 'package:payso/components/input_textfield_widget.dart';
import 'package:get/utils.dart';
import '../../../constants.dart';


class TextFields extends StatelessWidget {
  const TextFields({
    Key key,
    @required this.nameController,
    @required this.emailController,
    @required this.referralController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController referralController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputTextFieldWidget(
            validator: (value) {
              if (value == null) {
                return "Please Enter your name";
              }else if (value.length == 0) {
                return "Please Enter your name";
              }
              return null;
            },
            controller: nameController,
            textFieldIcon: Icon(
              Icons.person,
              color: cPrimaryColor,
            ),
            textFieldTitle: 'completeProfileName'.tr,
            textFieldType: TextInputType.name,
            hintText: "Enter Your Name",
          ),
          SizedBox(
            height: 20.0,
          ),
          InputTextFieldWidget(
            validator: (value) {
              if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                  .hasMatch(value)) {
                return "Please Enter Valid Email";
              }
              return null;
            },
            controller: emailController,
            textFieldIcon: Icon(
              Icons.email,
              color: cPrimaryColor,
            ),
            textFieldTitle: 'completeProfileEmail'.tr,
            hintText: 'Enter Your Email',
            textFieldType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 20.0,
          ),
          InputTextFieldWidget(
            controller: referralController,
            textFieldIcon: Icon(
              Icons.card_giftcard,
              color: cPrimaryColor,
            ),
            textFieldTitle: 'completeProfileReferral'.tr,
            textFieldSize: 8,
            hintText: 'Enter referral code',
          ),
        ],
      ),
    );
  }
}

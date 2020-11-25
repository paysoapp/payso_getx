import 'package:flutter/material.dart';
import 'package:payso/components/input_textfield_widget.dart';
import 'package:get/utils.dart';
import '../../../constants.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputTextFieldWidget(
            textFieldIcon: Icon(
              Icons.person,
              color: cPrimaryColor,
            ),
            textFieldTitle: 'completeProfileName'.tr,
            textFieldType: TextInputType.name,
          ),
          SizedBox(
            height: 30.0,
          ),
          InputTextFieldWidget(
            textFieldIcon: Icon(
              Icons.email,
              color: cPrimaryColor,
            ),
            textFieldTitle: 'completeProfileEmail'.tr,
            textFieldType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 30.0,
          ),
          InputTextFieldWidget(
            textFieldIcon: Icon(
              Icons.card_giftcard,
              color: cPrimaryColor,
            ),
            textFieldTitle: 'completeProfileReferral'.tr,
            textFieldSize: 8,
          ),
        ],
      ),
    );
  }
}

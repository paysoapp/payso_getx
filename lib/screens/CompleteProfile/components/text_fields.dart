import 'package:flutter/material.dart';
import 'package:payso/components/input_textfield_widget.dart';

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
            textFieldTitle: 'completeProfileName',
            textFieldType: TextInputType.name,
            // onChanged: (value) {},
            // onFieldSubmitted: (value) {},
          ),
          SizedBox(
            height: 30.0,
          ),
          InputTextFieldWidget(
            textFieldIcon: Icon(
              Icons.email,
              color: cPrimaryColor,
            ),
            textFieldTitle: 'completeProfileEmail',
            textFieldType: TextInputType.emailAddress,
            // onChanged: (value) {},
            // onFieldSubmitted: (value) {},
          ),
          SizedBox(
            height: 30.0,
          ),
          InputTextFieldWidget(
            textFieldIcon: Icon(
              Icons.card_giftcard,
              color: cPrimaryColor,
            ),
            textFieldTitle: 'completeProfileReferral',
            textFieldSize: 8,
            // onChanged: (value) {},
            // onFieldSubmitted: (value) {},
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class InputTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String phoneEmpty;
  final Icon textFieldIcon;
  final String textFieldTitle;
  final String hintText;
  final TextInputType textFieldType;
  final int textFieldSize;
  final Widget prefix;
  final Function onFieldSubmitted;
  final Function validator;

  InputTextFieldWidget({
    this.controller,
    this.textFieldIcon,
    this.textFieldTitle,
    this.phoneEmpty,
    this.textFieldType,
    this.hintText,
    this.prefix,
    this.textFieldSize,
    this.validator,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: Get.width / 1.1,
      child: TextFormField(
        controller: controller,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        maxLength: 10,
        style: cFormFieldStyle,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: hintText,
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
          prefix: prefix,
        ),
      ),
    );
  }
}

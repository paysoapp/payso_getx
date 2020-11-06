import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/constants.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function onTapped;
  ButtonWidget({this.buttonText, this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        onTap: onTapped,
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
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

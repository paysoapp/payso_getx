import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import '../../../constants.dart';

class ResendOtpButton extends StatelessWidget {
  const ResendOtpButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: FlatButton(
        onPressed: () {
          print("verifyResendCode".tr);
        },
        child: Text(
          "verifyResendCode".tr,
          style: TextStyle(
            color: cPrimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

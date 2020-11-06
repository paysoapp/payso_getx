import 'package:flutter/material.dart';

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
    );
  }
}

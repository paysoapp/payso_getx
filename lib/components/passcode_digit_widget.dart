import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class PasscodeDigitWidget extends StatelessWidget {
  const PasscodeDigitWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        'PasscodeDigitsOnly'.tr,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class SkipButtonWidget extends StatelessWidget {
  final Function onTap;
  final Color textColor;
  SkipButtonWidget({@required this.onTap, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: onTap,
            child: Row(
              children: [
                
                Text(
                  'skipButton'.tr,
                  style: TextStyle(
                    color: textColor == null ? cPrimaryColor : textColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: textColor == null ? cPrimaryColor : textColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

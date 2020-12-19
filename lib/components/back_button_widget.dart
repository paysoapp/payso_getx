import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class BackButtonWidget extends StatelessWidget {
  final Function onTap;
  final Color textColor;
  BackButtonWidget({@required this.onTap, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: onTap,
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: textColor == null ? cPrimaryColor : textColor,
                ),
                Text(
                  'backButton'.tr,
                  style: TextStyle(
                    color: textColor == null ? cPrimaryColor : textColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class BackButtonWidget extends StatelessWidget {
  final Function onTap;
  BackButtonWidget({@required this.onTap});

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
                  color: cPrimaryColor,
                ),
                Text(
                  'backButton'.tr,
                  style: TextStyle(
                    color: cPrimaryColor,
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

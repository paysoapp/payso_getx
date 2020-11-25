import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      height: Get.height / 6,
      width: Get.width,
      child: Column(
        children: <Widget>[
          Text(
            "registerationTitle".tr,
            style: cHeadStyle,
          ),
          Spacer(),
          Text(
            "registrationBody".tr,
            style: cTextStyle,
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}

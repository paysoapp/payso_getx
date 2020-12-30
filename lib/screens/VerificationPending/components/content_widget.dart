import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/constants.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Get.height*0.05),
            child: Image.asset(
              'assets/images/send.png',
              height: Get.width * 0.3,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Get.height*0.01),
            child: Text(
              'verificationPending'.tr,
              style: cHeadStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Get.height*0.01),
            child: Text(
              'verficationLinkText'.tr,
              style: cTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
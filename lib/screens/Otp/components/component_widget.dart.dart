import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import '../../../constants.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'verifyNumberTitle'.tr,
            textAlign: TextAlign.center,
            style: cHeadStyle,
          ),
          Text(
            'Enter a 6 digit number sent to'.tr + '\n +91 ',
            textAlign: TextAlign.center,
            style: cTextStyle,
          )
        ],
      ),
    );
  }
}

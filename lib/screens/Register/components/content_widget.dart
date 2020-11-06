import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      height: Get.height / 6,
      width: Get.width,
      child: Column(
        children: <Widget>[
          Text(
            "registerationTitle",
            style: cHeadStyle,
          ),
          Spacer(),
          Text(
            "Lorem Ipsum with falaaana and Dikaana. Mein hoon ek udta robot.. Dora e mon.",
            style: cTextStyle,
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}

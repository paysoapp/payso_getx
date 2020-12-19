import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cPrimaryColor,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.supervised_user_circle,
                size: Get.width / 6,
                color: Colors.white,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Naresh Khatri",
                style: cTextStyle.copyWith(color: Colors.white),
              ),
              Text(
                "Edit Profile and change settings >",
                style: cSmallTextStyle,
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.settings,
                size: Get.width / 16,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

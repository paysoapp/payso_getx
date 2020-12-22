import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/constants.dart';

class ProfileRowComponent extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  ProfileRowComponent({this.icon, this.content, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      width: Get.width,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 26.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: cPrimaryColor,
              size: Get.width / 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: cTextStyle.copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: Get.width / 1.3,
                    child: Text(
                      content,
                      style: cSmallTextStyle.copyWith(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

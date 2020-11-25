import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/constants.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: () {
              Get.back();
            },
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

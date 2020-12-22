import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class DashboardIconsRow1 extends StatelessWidget {
  final IconData icon;
  final String iconText;
  final Color iconColor;
  final Color circleColor;
  DashboardIconsRow1({this.icon, this.iconText, this.iconColor, this.circleColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration:
              BoxDecoration(color: circleColor, shape: BoxShape.circle),
          height: Get.height * 0.04,
          width: Get.height * 0.04,
          child: Icon(
            icon,
            color: iconColor,
            size: Get.width*0.07,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            iconText,
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}


class DashboardIconsRow2 extends StatelessWidget {
  final IconData icon;
  final String iconText;
  DashboardIconsRow2({this.icon, this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          decoration:
              BoxDecoration(color: cPrimaryColor, shape: BoxShape.circle),
          height: Get.height * 0.06,
          width: Get.height * 0.06,
          child: Icon(
            icon,
            color: Colors.white,
            size: Get.width*0.075,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            iconText,
            // style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}


class DashboardIconsRow3 extends StatelessWidget {
  final IconData icon;
  final String iconText;
  DashboardIconsRow3({this.icon, this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: Get.height * 0.09,
          width: Get.height * 0.09,
          child: Icon(
            icon,
            size: Get.width*0.1,
          ),
        ),
        Text(
          iconText,
          // style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

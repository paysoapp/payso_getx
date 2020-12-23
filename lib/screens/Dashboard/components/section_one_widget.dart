import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/screens/Dashboard/components/dashboard_icons.dart';

import '../../../constants.dart';

class SectionOneWidget extends StatelessWidget {
  const SectionOneWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      color: cPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Complete your payso profile",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DashboardIconsRow1(
                icon: Icons.check_circle,
                iconText: 'Mobile',
                iconColor: Colors.green,
                circleColor: Colors.white,
              ),
              DashboardIconsRow1(
                icon: Icons.check_circle,
                iconText: 'Email',
                iconColor: Colors.green,
                circleColor: Colors.white,
              ),
              DashboardIconsRow1(
                icon: Icons.fact_check,
                iconText: 'KYC',
                iconColor: Colors.white,
              ),
              DashboardIconsRow1(
                icon: Icons.account_balance,
                iconText: 'Mobile',
                iconColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
      height: Get.height * 0.17,
    );
  }
}

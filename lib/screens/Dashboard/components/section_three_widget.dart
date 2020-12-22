import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/screens/Dashboard/components/dashboard_icons.dart';

import '../../../constants.dart';

class SectionThreeWidget extends StatelessWidget {
  const SectionThreeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Recharge and pay bills",
              style: cHomeHeadStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DashboardIconsRow3(
                icon: Icons.smartphone_outlined,
                iconText: 'Mobile',
              ),
              DashboardIconsRow3(
                icon: Icons.bolt,
                iconText: 'Electricity',
              ),
              DashboardIconsRow3(
                icon: Icons.router_outlined,
                iconText: 'Internet',
              ),
              DashboardIconsRow3(
                icon: Icons.train_outlined,
                iconText: 'Train',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DashboardIconsRow3(
                icon: Icons.opacity_outlined,
                iconText: 'Water',
              ),
              DashboardIconsRow3(
                icon: Icons.directions_bus_outlined,
                iconText: 'Bus',
              ),
              DashboardIconsRow3(
                icon: Icons.flight,
                iconText: 'Flight',
              ),
              DashboardIconsRow3(
                icon: Icons.more_horiz_outlined,
                iconText: 'More',
              ),
            ],
          ),
        ],
      ),
      height: Get.height * 0.3,
    );
  }
}

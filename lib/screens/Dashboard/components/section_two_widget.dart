import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/screens/Dashboard/components/dashboard_icons.dart';

import '../../../constants.dart';

class SectionTwoWidget extends StatelessWidget {
  const SectionTwoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Your Payso",
              textAlign: TextAlign.start,
              style: cHomeHeadStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DashboardIconsRow2(
                icon: Icons.attach_money,
                iconText: 'Add Money',
              ),
              DashboardIconsRow2(
                icon: Icons.account_balance_wallet,
                iconText: 'Wallet',
              ),
              DashboardIconsRow2(
                icon: Icons.payments,
                iconText: 'Pay',
              ),
              DashboardIconsRow2(
                icon: Icons.pan_tool,
                iconText: 'Withdraw',
              ),
            ],
          )
        ],
      ),
      height: Get.height * 0.2,
    );
  }
}

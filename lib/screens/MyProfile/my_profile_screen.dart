import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/constants.dart';
import 'package:payso/controllers/routes_controller.dart';

import 'package:payso/screens/MyProfile/components/header.dart';
import 'package:payso/screens/MyProfile/components/profile_row_component.dart';

import 'components/profile_row.dart';

class MyProfileScreen extends StatelessWidget {
  RoutesController _routesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                ProfileRow(),
                ProfileRowComponent(
                  icon: Icons.payment,
                  title: 'Payment',
                  content: 'Save Card, Account, Wallet, Limits & Others',
                ),
                ProfileRowComponent(
                  icon: Icons.account_balance_wallet,
                  title: 'Payso Wallet',
                  content: '9454654846',
                ),
                ProfileRowComponent(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  content: 'lorem ipsum dummy text',
                ),
                ProfileRowComponent(
                  icon: Icons.outlet_rounded,
                  title: 'My Order',
                  content:
                      'Make a type specimen book. It has survived not only',
                ),
                ProfileRowComponent(
                  icon: Icons.help,
                  title: 'Help & Support',
                  content:
                      'Make a type specimen book. It has survived not only',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/components/back_button_widget.dart';
import 'package:payso/constants.dart';
import 'package:payso/controllers/routes_controller.dart';
import 'package:payso/screens/Dashboard/dashboard_screen.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RoutesController _routesController = Get.find();

    return Container(
      decoration: BoxDecoration(
        color: cPrimaryColor,
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackButtonWidget(
            textColor: Colors.white,
            onTap: () => Get.offAll(DashboardScreen()),
          ),
          InkWell(
            child: Text(
              'Logout',
              style: cTextStyle.copyWith(color: Colors.white),
            ),
            onTap: () => _routesController.logout(),
          )
        ],
      ),
    );
  }
}

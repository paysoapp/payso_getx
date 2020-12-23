import 'package:flutter/material.dart';
import 'package:payso/constants.dart';
import 'package:get/get.dart';
import 'package:payso/controllers/routes_controller.dart';
import 'package:payso/screens/Dashboard/components/advertisement_widget.dart';
import 'package:payso/screens/Dashboard/components/section_one_widget.dart';
import 'package:payso/screens/Dashboard/components/section_three_widget.dart';
import 'package:payso/screens/Dashboard/components/section_two_widget.dart';
import 'package:payso/screens/MyProfile/my_profile_screen.dart';
import '../../constants.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
  RoutesController routesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort),
        title: Text("Hi, User"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
            tooltip: 'notification icon',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            tooltip: 'settings icon',
            onPressed: () => Get.to(MyProfileScreen()),
          ),
        ],
        backgroundColor: cPrimaryColor,
        elevation: 30.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SectionOneWidget(),
            AdvertisementWidget(),
            SectionTwoWidget(),
            SectionThreeWidget(),
          ],
        ),
      ),
    );
  }
}

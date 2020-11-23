import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/controllers/routes_controller.dart';
import 'package:payso/screens/Register/register_screen.dart';

class DashboardScreen extends StatelessWidget {
  RoutesController routesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("This is dashboard"),
            FlatButton(
              child: Text('Logout'),
              onPressed: () {
                routesController.logout();
                Get.offAll(RegisterScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}

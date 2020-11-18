import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/constants.dart';
import 'package:payso/controllers/permission_controller.dart';
import 'package:payso/controllers/routes_controller.dart';

class PermissionScreen extends StatelessWidget {
  final PermissionGetxController permissionController =
      Get.put(PermissionGetxController());
  RoutesController routesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: Get.height / 10),
                height: Get.height / 3,
                width: Get.width,
                child: Image.asset('./assets/images/register.png'),
              ),
              Text(
                'Give Permissions',
                style: cHeadStyle,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Get.height / 3.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: permissionController.permissionItems,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      //TODO: Set SHared Preference
                      routesController.hasSeen('Permission');
                      permissionController.askForPermissions();
                      permissionController.isAllPermissionAllowed();
                    },
                    child: Container(
                      height: 60,
                      width: Get.width / 1.1,
                      decoration: BoxDecoration(
                        color: cPrimaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Allow",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

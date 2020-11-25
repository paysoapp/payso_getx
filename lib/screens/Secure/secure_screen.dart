import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:payso/constants.dart';
import 'package:payso/controllers/secure_controller.dart';

import 'package:payso/screens/Secure/components/secure_screen_tile.dart';

class SecureScreen extends StatelessWidget {
  final List<BiometricType> availableBiometrics;

  SecureScreen({this.availableBiometrics});

  SecureController localAuth = Get.put(SecureController());

  @override
  Widget build(BuildContext context) {
    bool isAuthenticated = localAuth.isAuthenticated.value;

    List<SecureScreenTile> iOSList = [
      SecureScreenTile(
        imagePath: availableBiometrics.contains(BiometricType.fingerprint)
            ? './assets/images/fingerprint.png'
            : './assets/images/face-unlock.png',
        onTap: () async {
          isAuthenticated = await localAuth.authenticate();
          if (isAuthenticated) {
            localAuth.navigateToNext();
          }
        },
      ),
    ];

    List<SecureScreenTile> androidList = [
      SecureScreenTile(
        imagePath: './assets/images/fingerprint.png',
        onTap: () async {
          isAuthenticated = await localAuth.authenticate();
          if (isAuthenticated) {
            localAuth.navigateToNext();
          }
        },
      ),
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15.0),
        color: cIntroSliderBg,
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset(
                './assets/images/app_logo.png',
                width: Get.width / 1.6,
              ),
            ),
            Container(
              height: Get.height / 5.5,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'secureTitle'.tr,
                    style: cHeadStyle,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra sollicitudin commodo. ",
                    style: cTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: Platform.isAndroid ? androidList : iOSList,
              ),
            ),
            InkWell(
              onTap: () async {
                isAuthenticated = await localAuth.authenticate();
                if (isAuthenticated) {
                  localAuth.navigateToNext();
                }
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: cPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                width: Get.width - 80,
                alignment: Alignment.center,
                child: Text(
                  "SecureButton".tr,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:payso/controllers/routes_controller.dart';
import 'package:payso/controllers/secure_controller.dart';
import 'package:payso/screens/IntroSlider/intro_slider.dart';
import 'package:payso/screens/Passcode/passcode_screen.dart';
import 'package:payso/screens/Permissions/permission_screen.dart';
import 'package:payso/screens/Register/register_screen.dart';
import 'package:payso/screens/Secure/secure_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  RoutesController routeController = Get.put(RoutesController());

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      if (!routeController.checkSeen('Permission')) {
        Get.offAll(PermissionScreen());
      } else if (!routeController.checkSeen('Intro')) {
        Get.offAll(IntroSlider());
      } else if (!routeController.checkSeen('Register')) {
        Get.offAll(RegisterScreen());
      } else if (!routeController.checkSeen('MobileVerified')) {
        Get.offAll(PasscodeScreen());
      } else if (!routeController.checkSeen('PasscodeVerified')) {
        SecureController secureController = Get.put(SecureController());
        List<BiometricType> availableBiometrics =
            await secureController.getAvailableBiometrics();
        Get.offAll(
          SecureScreen(
            availableBiometrics: availableBiometrics,
          ),
        );
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/app_logo.png',
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
    );
  }
}

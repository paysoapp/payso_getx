import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:payso/components/verrified_screen_widget.dart';
import 'package:payso/controllers/routes_controller.dart';
import 'package:payso/controllers/secure_controller.dart';
import 'package:payso/screens/Secure/secure_screen.dart';

class PasscodeVerifiedScreen extends StatefulWidget {
  @override
  _PasscodeVerifiedScreenState createState() => _PasscodeVerifiedScreenState();
}

class _PasscodeVerifiedScreenState extends State<PasscodeVerifiedScreen> {
  RoutesController routesController = Get.find();
  @override
  void initState() {
    super.initState();
    routesController.hasSeen('PasscodeVerified');
    Timer(
      Duration(seconds: 1),
      () async {
        SecureController secureController = Get.put(SecureController());
        List<BiometricType> availableBiometrics =
            await secureController.getAvailableBiometrics();
        Get.offAll(
          SecureScreen(
            availableBiometrics: availableBiometrics,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: VerifiedScreenWidget(
        desc: 'passcodeVerifedDesc'.tr,
      ),
    );
  }
}

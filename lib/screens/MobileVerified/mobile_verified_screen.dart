import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/components/verrified_screen_widget.dart';
import 'package:payso/screens/Passcode/passcode_screen.dart';

class MobileVerifiedScreen extends StatefulWidget {
  @override
  _MobileVerifiedScreenState createState() => _MobileVerifiedScreenState();
}

class _MobileVerifiedScreenState extends State<MobileVerifiedScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        Get.off(PasscodeScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: VerifiedScreenWidget(
        desc: 'mobileVerifiedDesc',
      ),
    );
  }
}

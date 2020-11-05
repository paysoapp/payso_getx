import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/Screens/IntroSlider/intro_slider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.offAll(IntroSlider());
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

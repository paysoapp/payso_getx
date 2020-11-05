import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/screens/IntroSlider/intro_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PaySo App',
      home: IntroSlider(),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/controllers/bindings/auth_binding.dart';
import 'package:payso/screens/Register/register_screen.dart';
import 'screens/Dashboard/dashboard_screen.dart';
import 'screens/Splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      debugShowCheckedModeBanner: false,
      title: 'PaySo App',
      home: DashboardScreen(),
    );
  }
}

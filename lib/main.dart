import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:payso/constants.dart';
import 'package:payso/controllers/routes_controller.dart';
import 'package:payso/screens/VerificationPending/verification_pending_screen.dart';
import 'package:payso/services/localization_service.dart';

import 'screens/Splash/splash_screen.dart';

void main() async {
  // This statement wil change the Color of Statusbar
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: cPrimaryColor),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  RoutesController _routesController = Get.put(RoutesController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: _routesController.getLanguage() == 'English'
          ? LocalizationService.engLocale
          : LocalizationService.filLocale,
      fallbackLocale: _routesController.getLanguage() == 'English'
          ? LocalizationService.engLocale
          : LocalizationService.filLocale,
      translations: LocalizationService(),
      debugShowCheckedModeBanner: false,
      title: 'PaySo App',
      home: VerificationPendingScreen(),
    );
  }
}

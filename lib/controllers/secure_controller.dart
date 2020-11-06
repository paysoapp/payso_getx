import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:payso/screens/Dashboard/dashboard_screen.dart';

class SecureController extends GetxController {
  @override
  void onInit() async {
    allAvailableBiometrics = await getAvailableBiometrics();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() async {
    availableBiometrics = allAvailableBiometrics.obs;
    super.onReady();
  }

  var allAvailableBiometrics, availableBiometrics;
  var isAuthenticated = false.obs;

  navigateToNext() {
    Get.offAll(DashboardScreen());
  }

  Future<bool> canCheckBiometrics() async {
    LocalAuthentication localAuth = LocalAuthentication();
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await localAuth.canCheckBiometrics;
      print(canCheckBiometrics);
      return canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }
    print(canCheckBiometrics);
    return false;
  }

  Future<List<BiometricType>> getAvailableBiometrics() async {
    LocalAuthentication localAuth = LocalAuthentication();

    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await localAuth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }
    return availableBiometrics;
  }

  Future<bool> authenticate() async {
    LocalAuthentication localAuth = LocalAuthentication();

    bool _authenticated = false;

    try {
      _authenticated = await localAuth.authenticateWithBiometrics(
        localizedReason: 'Scan your finger to authenticate',
        useErrorDialogs: true,
        stickyAuth: true,
      );
      print(_authenticated);
      return _authenticated;
    } on PlatformException catch (e) {
      print(e);
    }
    print(_authenticated);
    return _authenticated;
  }

  void cancelAuthentication() {
    LocalAuthentication _localAuth = LocalAuthentication();
    _localAuth.stopAuthentication();
  }
}

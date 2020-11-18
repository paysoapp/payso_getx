import 'package:get/get.dart';

class PasscodeController extends GetxController {
  var firstScreenPasscode = 0.obs;
  var secondScreenPasscode = 0.obs;

  setPasscode(int passcode) => firstScreenPasscode.value = passcode;

  setConfirmPasscode(int passcode) => secondScreenPasscode.value = passcode;

  matchPasscode(int firstScreenPasscode, int secondScreenPasscode) =>
      firstScreenPasscode == secondScreenPasscode ? true : false;
}

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:payso/screens/Register/register_screen.dart';

class RoutesController extends GetxController {
  setPasscode(int passcode) {
    var box = GetStorage();
    box.writeIfNull('passcode', passcode);
  }

  setLanguage(String lang) {
    var box = GetStorage();
    box.write('Lang', lang);
  }

  getLanguage() {
    var box = GetStorage();
    return box.read('Lang') ?? 'English';
  }

  hasSeen(String page) {
    var box = GetStorage();
    box.writeIfNull(page, true);
  }

  checkSeen(String page) {
    var box = GetStorage();
    return box.read(page) ?? false;
  }

  logout() {
    var box = GetStorage();
    box.erase();
    Get.offAll(RegisterScreen());
  }

  setMobile(String mobile) {
    var box = GetStorage();
    box.writeIfNull('userMobile', mobile);
  }

  getMobile() {
    var box = GetStorage();
    return box.read('userMobile');
  }
}

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RoutesController extends GetxController {
  setPasscode(int passcode) {
    var box = GetStorage();
    box.writeIfNull('passcode', passcode);
  }

  setLanguage(String lang) {
    var box = GetStorage();
    box.write('language', lang);
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
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> _firebaseUser = Rx<User>();

  String get user => _firebaseUser.value?.phoneNumber;

  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  // void createUser(String email, String password) async {
  //   try {
  //     await _auth.createUserWithEmailAndPassword(email: null, password: null);
  //   } catch (e) {
  //     Get.snackbar("Error creating account", e.message,
  //         snackPosition: SnackPosition.BOTTOM);
  //   }
  // }

  void login(String phoneNumber) async {
    try {
      await _auth.signInWithPhoneNumber(phoneNumber);
    } catch (e) {
      Get.snackbar("Error logging in", e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      Get.snackbar("Error Signing Out", e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}

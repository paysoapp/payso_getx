import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:payso/controllers/routes_controller.dart';
import 'package:payso/models/user_model.dart';

import '../screens/Passcode/passcode_screen.dart';

class ProfileController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  RoutesController _routesController = Get.find();
  var userProfile = List<UserModel>().obs;
  Rx<User> _user = Rx<User>();
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  String get user => _user.value?.email;
  String get userId => _user.value?.uid;

  void setProfile(UserModel userModel) {
    _firestore.collection('users').doc(userId).set({
      'userId': userModel.userId,
      'userName': userModel.userName,
      'userEmail': userModel.userEmail,
      'userMobile': userModel.userMobile,
      'userReferral': userModel.userReferral,
      'userPasscode': '0000',
    });
    print(userModel.userEmail);
    print(userModel.userMobile);
    print(userModel.userId);
    print(userModel.userName);
    print(userModel.userReferral);
    Get.offAll(PasscodeScreen());
  }
  Future<void> updatePasscode(String passcode, String id) {
    return users
      .doc(id)
      .update({'userPasscode': passcode})
      .then((value) => print("Passocde Updated"))
      .catchError((error) => print("Failed to update user: $error"));
  }
}

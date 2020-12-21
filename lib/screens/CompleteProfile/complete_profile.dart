import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/Screens/Secure/components/button_widget.dart';
import 'package:payso/controllers/auth_controller.dart';
import 'package:payso/controllers/profile_controller.dart';
import 'package:payso/controllers/routes_controller.dart';
import 'package:payso/models/user_model.dart';
import '../../constants.dart';
import 'components/text_fields.dart';

class CompleteProfile extends StatelessWidget {
  final ProfileController profileController = Get.find();
  final AuthController authController = Get.put(AuthController());
  final RoutesController routesController = Get.put(RoutesController());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController referralController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    print(routesController.getMobile());
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: Get.height * 0.18,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'completeProfileTitle'.tr,
                    style: cHeadStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra sollicitudin commodo.',
                    style: cTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: TextFields(
                      nameController: nameController,
                      emailController: emailController,
                      referralController: referralController),
                ),
                ButtonWidget(
                  buttonText: 'completeProfileNext'.tr,
                  onTapped: () async {
                    if (_formKey.currentState.validate()) {
                      profileController.setProfile(
                        UserModel(
                          userEmail: emailController.text,
                          userId: authController.auth.currentUser.uid,
                          userMobile: await routesController.getMobile(),
                          userName: nameController.text,
                          userReferral: referralController.text,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/Screens/Secure/components/button_widget.dart';
import '../../constants.dart';
import 'components/text_fields.dart';

class CompleteProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
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
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: TextFields(),
                ),
                ButtonWidget(
                  buttonText: 'completeProfileNext'.tr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

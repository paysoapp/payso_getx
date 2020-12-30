import 'package:flutter/material.dart';
import 'package:payso/screens/Secure/components/button_widget.dart';

import 'components/content_widget.dart';
import 'components/header.dart';
import 'components/verification_icon_widget.dart';

class VerificationPendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Header(),
          ContentWidget(),
          VerificationIconWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ButtonWidget(
              buttonText: 'Next',
              onTapped: null,
            ),
          ),
        ],
      ),
    );
  }
}

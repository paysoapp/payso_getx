import 'package:flutter/material.dart';

import '../constants.dart';

class PasscodeContentWidget extends StatelessWidget {
  final String titleText;
  final String contentText;
  PasscodeContentWidget({this.contentText, this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          Text(
            titleText,
            textAlign: TextAlign.center,
            style: cHeadStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            contentText,
            textAlign: TextAlign.center,
            style: cTextStyle,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Verify your number',
            textAlign: TextAlign.center,
            style: cHeadStyle,
          ),
          Text(
            //TODO: mobile number will be added in this widget
            'Enter a 6 digit number sent to \n +91 ',
            textAlign: TextAlign.center,
            style: cTextStyle,
          )
        ],
      ),
    );
  }
}

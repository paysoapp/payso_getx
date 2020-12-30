import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationIconWidget extends StatelessWidget {
  const VerificationIconWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Get.height*0.08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 40,
          ),
          Text('............'),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black12,
            ),
            child: Text('?'),
          ),
          Text('............'),
          Icon(
            Icons.fact_check,
            size: 35,
          ),
          Text('............'),
          Icon(
            Icons.account_balance,
            size: 35,
          ),
        ],
      ),
    );
  }
}
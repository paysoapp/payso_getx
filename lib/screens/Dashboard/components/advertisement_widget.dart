import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvertisementWidget extends StatelessWidget {
  const AdvertisementWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("A d v e r t i s e m e n t"),
      height: Get.height * 0.1,
      width: Get.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow),
      ),
    );
  }
}

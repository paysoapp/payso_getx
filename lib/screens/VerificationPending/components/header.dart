import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/components/back_button_widget.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          BackButtonWidget(
            onTap: () => Get.back(),
          ),
        ],
      ),
    );
  }
}

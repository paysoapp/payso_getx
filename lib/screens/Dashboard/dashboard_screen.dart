import 'package:flutter/material.dart';
import 'package:payso/constants.dart';
import 'package:get/get.dart';
import 'package:payso/controllers/routes_controller.dart';

import '../../constants.dart';

class DashboardScreen extends StatelessWidget {
  RoutesController routesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort),
        title: Text("Hi, User"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              tooltip: 'notification icon',
              onPressed: null),
          IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              tooltip: 'settings icon',
              onPressed: null),
        ],
        backgroundColor: cPrimaryColor,
        elevation: 30.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              color: cPrimaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Complete your payso profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            height: Get.height * 0.04,
                            width: Get.height * 0.04,
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Mobile",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            height: Get.height * 0.04,
                            width: Get.height * 0.04,
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Email",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            height: Get.height * 0.04,
                            width: Get.height * 0.04,
                            child: Icon(
                              Icons.fact_check,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "KYC",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            height: Get.height * 0.04,
                            width: Get.height * 0.04,
                            child: Icon(
                              Icons.account_balance,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Bank",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              height: Get.height * 0.17,
            ),
            Container(
              child: Text("A d v e r t i s e m e n t"),
              height: Get.height * 0.1,
              width: Get.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Your Payso",
                      textAlign: TextAlign.start,
                      style: cHomeHeadStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: cPrimaryColor, shape: BoxShape.circle),
                            height: Get.height * 0.05,
                            width: Get.height * 0.05,
                            child: Icon(
                              Icons.attach_money,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Add Money",
                              // style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: cPrimaryColor, shape: BoxShape.circle),
                            height: Get.height * 0.05,
                            width: Get.height * 0.05,
                            child: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Wallet",
                              // style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: cPrimaryColor, shape: BoxShape.circle),
                            height: Get.height * 0.05,
                            width: Get.height * 0.05,
                            child: Icon(
                              Icons.payments,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Pay",
                              // style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: cPrimaryColor, shape: BoxShape.circle),
                            height: Get.height * 0.05,
                            width: Get.height * 0.05,
                            child: Icon(
                              Icons.pan_tool,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Withdraw",
                              // style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              height: Get.height * 0.2,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Recharge and pay bills",
                      style: cHomeHeadStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: Get.height * 0.09,
                            width: Get.height * 0.09,
                            child: Icon(
                              Icons.smartphone_outlined,
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "Mobile",
                            // style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: Get.height * 0.09,
                            width: Get.height * 0.09,
                            child: Icon(
                              Icons.bolt,
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "Electicity",
                            // style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: Get.height * 0.09,
                            width: Get.height * 0.09,
                            child: Icon(
                              Icons.router_outlined,
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "Internet",
                            // style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: Get.height * 0.09,
                            width: Get.height * 0.09,
                            child: Icon(
                              Icons.train_outlined,
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "Train",
                            // style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: Get.height * 0.09,
                            width: Get.height * 0.09,
                            child: Icon(
                              Icons.opacity_outlined,
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "Water",
                            // style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: Get.height * 0.09,
                            width: Get.height * 0.09,
                            child: Icon(
                              Icons.directions_bus_outlined,
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "Bus",
                            // style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: Get.height * 0.09,
                            width: Get.height * 0.09,
                            child: Icon(
                              Icons.flight,
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "Flight",
                            // style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: Get.height * 0.09,
                            width: Get.height * 0.09,
                            child: Icon(
                              Icons.more_horiz_outlined,
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "more",
                            // style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              height: Get.height * 0.3,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: cPrimaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock,
              color: cPrimaryColor,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: cPrimaryColor,
              ),
              child: Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
                size: 40,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: cPrimaryColor,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.format_list_bulleted,
              color: cPrimaryColor,
            ),
            label: 'History',
          ),
        ],
      ),
    );
  }
}

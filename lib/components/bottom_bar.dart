import 'package:flutter/material.dart';
import 'package:payso/screens/Dashboard/dashboard_screen.dart';
import 'package:payso/screens/Store/store_screen.dart';
import 'package:payso/screens/QRCode/qr_code_screen.dart';
import 'package:payso/screens/Wallet/wallet_screen.dart';
import 'package:payso/screens/History/history_screen.dart';

import '../constants.dart';

class MyBottomBar extends StatefulWidget {
  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    DashboardScreen(),
    StoreScreen(),
    QRCodeScreen(),
    WalletScreen(),
    HistoryScreen(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: onTappedBar,
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
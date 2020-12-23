import 'package:flutter/material.dart';
import 'package:payso/constants.dart';
import 'package:get/get.dart';
import 'package:payso/controllers/routes_controller.dart';
<<<<<<< HEAD
import 'package:payso/screens/MyProfile/my_profile_screen.dart';

=======
import 'package:payso/screens/Dashboard/components/advertisement_widget.dart';
import 'package:payso/screens/Dashboard/components/section_one_widget.dart';
import 'package:payso/screens/Dashboard/components/section_three_widget.dart';
import 'package:payso/screens/Dashboard/components/section_two_widget.dart';
>>>>>>> 80fdc89bf14ed57f0676ea3cfdc86f6b56801208
import '../../constants.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
int index=0;
  RoutesController routesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort),
        title: Text("Hi, User"),
        actions: <Widget>[
          IconButton(
              icon:
                  Icon(Icons.notifications_none_outlined, color: Colors.white),
              tooltip: 'notification icon',
              onPressed: null),
          IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              tooltip: 'settings icon',
              onPressed: null),
        ],
        backgroundColor: cPrimaryColor,
        elevation: 30.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SectionOneWidget(),
            AdvertisementWidget(),
            SectionTwoWidget(),
            SectionThreeWidget(),
          ],
        ),
      ),
<<<<<<< HEAD
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        fixedColor: Colors.black,
        currentIndex: index,
        onTap: (int index){
          index=this.index;
          if(index==0)
            {
              Get.to(MyProfileScreen());
            }
        },
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
=======
>>>>>>> 80fdc89bf14ed57f0676ea3cfdc86f6b56801208
    );
  }
}
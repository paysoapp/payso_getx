import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payso/Screens/Register/register_screen.dart';
import 'package:payso/constants.dart';
import 'package:payso/controllers/routes_controller.dart';
import 'package:payso/models/intro_slider_model.dart';
import 'package:payso/screens/IntroSlider/components/slide_tile.dart';

class IntroSlider extends StatefulWidget {
  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;
  RoutesController routesController = Get.find();

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: isCurrentPage ? 16.0 : 10.0,
      width: isCurrentPage ? 16.0 : 10.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? cPrimaryColor : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
    routesController.hasSeen('Intro');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cIntroSliderBg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 180,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  slideIndex = index;
                });
              },
              children: <Widget>[
                SlideTile(
                  imagePath: mySLides[0].getImageAssetPath(),
                  title: mySLides[0].getTitle(),
                  desc: mySLides[0].getDesc(),
                ),
                SlideTile(
                  imagePath: mySLides[1].getImageAssetPath(),
                  title: mySLides[1].getTitle(),
                  desc: mySLides[1].getDesc(),
                ),
                SlideTile(
                  imagePath: mySLides[2].getImageAssetPath(),
                  title: mySLides[2].getTitle(),
                  desc: mySLides[2].getDesc(),
                ),
                SlideTile(
                  imagePath: mySLides[3].getImageAssetPath(),
                  title: mySLides[3].getTitle(),
                  desc: mySLides[3].getDesc(),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 4; i++)
                  i == slideIndex
                      ? _buildPageIndicator(true)
                      : _buildPageIndicator(false),
              ],
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          InkWell(
            onTap: () async {
              if (slideIndex != 3) {
                print("Get Started Now");
                controller.animateToPage(
                  slideIndex + 1,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.linear,
                );
              } else {
                Get.offAll(RegisterScreen());
              }
            },
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: cPrimaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              width: MediaQuery.of(context).size.width - 80,
              alignment: Alignment.center,
              child: Text(
                mySLides[slideIndex].getButtonTitle(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 20.0,
          // ),
          InkWell(
            onTap: () async {
              Get.to(RegisterScreen());
            },
            child: Text(
              "skipLogin",
              style: TextStyle(
                color: cPrimaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

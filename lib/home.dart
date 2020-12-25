import 'package:day2/screens/coupon/coupon_main_screen.dart';
import 'package:day2/screens/home__screen.dart';
import 'package:day2/screens/searchitem/searchitem_active_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:day2/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:day2/screens/homeab.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  var _pages = [
    HomeScreen(),
    SearchItemActive(),
    CouponMain(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.white,
          selectedItemBackgroundColor: kMainColor,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: '홈',
          ),
          FFNavigationBarItem(
            iconData: Icons.search_outlined,
            label: '공간검색',
          ),
          FFNavigationBarItem(
            iconData: FontAwesomeIcons.ticketAlt,
            label: '쿠폰',
          ),
          FFNavigationBarItem(
            iconData: Icons.note,
            label: 'Notes',
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'Settings',
          ),
        ],
      ),
      body: _pages[selectedIndex],
    );
  }
}

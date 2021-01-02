import 'package:day2/home.dart';
import 'package:day2/provider/NormalPaceSearch.dart';
import 'package:day2/provider/PlaceSearch.dart';
import 'package:day2/screens/coffingnote/coffingnote_iteminfo_screen.dart';
import 'package:day2/screens/coffingnote/coffingnote_main_screen.dart';
import 'package:day2/screens/coffingnote/coffingnote_rate_screen.dart';
import 'package:day2/screens/coupon/coupon_lists_screen.dart';
import 'package:day2/screens/home__screen.dart';
import 'package:day2/screens/login/login_active_screen.dart';
import 'package:day2/screens/login/login_mainpage_screen.dart';
import 'package:day2/screens/searchitem/searchitem_about_screen.dart';
import 'package:day2/screens/searchitem/searchitem_final_screen.dart';
import 'package:day2/screens/searchitem/searchitem_reserve_scree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:day2/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _imageList = ["asset"];
  bool pressed = true;
  Switch selectedSwitch;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PlaceSearch()),
        ChangeNotifierProvider.value(value: NormalPlaceSearch()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: kMainColor),
        home: Scaffold(
          // appBar: PreferredSize(
          //   preferredSize: Size(double.infinity, -5),
          //   child: AppBar(
          //     title: Column(
          //       children: [
          //         SizedBox(
          //           height: 5,
          //         ),
          //       ],
          //     ),
          //     backgroundColor: Colors.white,
          //     elevation: 0,
          //   ),
          // ),
          body: Home(),
        ),
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          SearchItemAbout.id: (context) => SearchItemAbout(),
          SearchItemReserved.id: (context) => SearchItemReserved(),
          SearchReservedDone.id: (context) => SearchReservedDone(),
          CouponLists.id: (context) => CouponLists(),
          CoffingNoteMain.id: (context) => CoffingNoteMain(),
          CoffingNoteItemInfo.id: (context) => CoffingNoteItemInfo(),
          CoffingNoteRate.id: (context) => CoffingNoteRate(),
          LoginMain.id: (context) => LoginMain(),
          LoginActivePage.id: (context) => LoginActivePage(),
        },
      ),
    );
  }
}

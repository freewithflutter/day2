import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:day2/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Switch { left, right }

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50.0),
          child: AppBar(
            title: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: klightGrayBlueColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: klightGrayBlueColor),
                          ),
                          hintText: '지역,지하철역으로 검색하세요',
                          hintStyle: TextStyle(color: kSearchTextColor),
                          suffixIcon: Icon(
                            Icons.search,
                            color: kMainColor,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.map_outlined,
                      color: kMainColor,
                    ),
                  ],
                ),
              ],
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 255,
                        child: new Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: new Image.asset(
                                  'assets/images/Group 123.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          },
                          itemCount: 10,
                          viewportFraction: 1,
                          pagination: new SwiperPagination(
                            margin: new EdgeInsets.all(5.0),
                          ),
                          indicatorLayout: PageIndicatorLayout.NONE,
                          scale: 0.9,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 0),
                        width: double.infinity,
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          primary: false,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            // return Container(
                            //   margin: EdgeInsets.only(right: 10),
                            //   width: 340,
                            //   child: Image.asset(
                            //     'assets/images/popup1.png',
                            //     fit: BoxFit.cover,
                            //     'assets/images/popup1.png',
                            //   ),
                            // );
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: new Image.asset(
                                  'assets/images/popup1.png',
                                  width: 340,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 12,
                  width: double.infinity,
                  color: ksizedBoxColor,
                ), //Section 1
                // TODO section 2 starts
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '플랜즈 커피 공간',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.questionCircle,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: DefaultTabController(
                          length: 2,
                          initialIndex: 0,
                          child: Column(
                            children: [
                              Container(
                                child: TabBar(
                                  indicatorColor: kMainColor,
                                  labelColor: kMainColor,
                                  labelStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  unselectedLabelColor: Color(0xFF4F4F4F),
                                  unselectedLabelStyle: TextStyle(
                                    fontWeight: FontWeight.w300,
                                  ),
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        '플랜즈 공간',
                                        style: TextStyle(
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        '일반공간',
                                        style: TextStyle(
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      width: 1,
                                      color: Color(0xFFDADADA),
                                    ),
                                    bottom: BorderSide(
                                      width: 1,
                                      color: Color(0xFFDADADA),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 200,
                                child: TabBarView(
                                  children: [
                                    Center(
                                      child: Text('your here a'),
                                    ),
                                    Center(
                                      child: Text('your her bb'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

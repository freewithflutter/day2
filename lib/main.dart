import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 85.0),
          child: AppBar(
            title: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 42,
                      width: 340,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          hintText: '지역,지하철역으로 검색하세요',
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.map_outlined),
                  ],
                ),
              ],
            ),
            backgroundColor: Colors.black,
            elevation: 0.0,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 300,
                          child: new Swiper(
                            containerWidth: 300,
                            containerHeight: 200,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
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
                          padding: EdgeInsets.only(left: 20),
                          width: double.infinity,
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            primary: false,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 300,
                                  child: Image.asset(
                                    'assets/images/popup1.png',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ));
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
                    height: 10,
                    width: double.infinity,
                    color: Colors.grey[100],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

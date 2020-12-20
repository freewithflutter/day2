import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:day2/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:day2/utill/item_lists.dart';

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
      theme: ThemeData(primaryColor: kMainColor),
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
                                  'assets/images/mainpopup.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          },
                          itemCount: 5,
                          viewportFraction: 1,
                          pagination: new SwiperPagination(
                            margin: new EdgeInsets.all(5.0),
                          ),
                          indicatorLayout: PageIndicatorLayout.NONE,
                          scale: 0.9,
                          control: SwiperControl(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 0),
                        width: double.infinity,
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          primary: false,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Popup(popup: popupLists[index]);
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
                // TODO section1 ends, 2 starts
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
                                height: 455,
                                width: double.infinity,
                                child: TabBarView(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GridView.builder(
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                mainAxisSpacing: 10,
                                                crossAxisSpacing: 10,
                                                childAspectRatio: 0.86,
                                              ),
                                              itemCount: 4,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.vertical,
                                              itemBuilder: (context, index) =>
                                                  FlanzItem(item: items[index]),
                                            ),
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.only(top: 10),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GridView.builder(
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                mainAxisSpacing: 10,
                                                crossAxisSpacing: 10,
                                                childAspectRatio: 0.86,
                                              ),
                                              itemCount: 4,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.vertical,
                                              itemBuilder: (context, index) =>
                                                  FlanzRightItem(
                                                      rightItem:
                                                          rightItems[index]),
                                            ),
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.only(top: 10),
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
                // TODO section2 ends, 3 starts
                Container(
                  height: 12,
                  color: ksizedBoxColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '기타',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/drink.png'),
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(width: 1, color: Colors.red),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '음료소개',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/thecondlogo.png'),
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(width: 1, color: kMainColor),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '회사소개',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/advice.png'),
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1, color: klightGrayBlueColor),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '개설상담',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Popup extends StatelessWidget {
  const Popup({
    Key key,
    this.popup,
  }) : super(key: key);
  final PopupLists popup;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: new Image.asset(
          popup.image,
          width: 340,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class FlanzItem extends StatelessWidget {
  const FlanzItem({
    Key key,
    this.item,
  }) : super(key: key);
  final ItemLists item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
            width: 200,
            height: 140,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              item.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: klightGrayBlueColor),
              Text(item.place)
            ],
          ),
          Container(
            width: 200,
            alignment: Alignment.bottomRight,
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: item.price,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                  ),
                  TextSpan(
                    text: '원/시간',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// GridView.builder(
// gridDelegate:
// SliverGridDelegateWithMaxCrossAxisExtent(
// crossAxisSpacing: 20,
// mainAxisSpacing: 20,
// maxCrossAxisExtent: 320,
// childAspectRatio: 1),
// scrollDirection: Axis.horizontal,
// itemCount: 4,
// itemBuilder: (context, index) =>
// Container(
// color: Colors.blue,
// ),
// ),
class FlanzRightItem extends StatelessWidget {
  const FlanzRightItem({
    Key key,
    this.rightItem,
  }) : super(key: key);
  final ItemRightLists rightItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              rightItem.image,
              fit: BoxFit.cover,
            ),
            width: 200,
            height: 140,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              rightItem.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: klightGrayBlueColor),
              Text(rightItem.place)
            ],
          ),
          Container(
            width: 200,
            alignment: Alignment.bottomRight,
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: rightItem.price,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

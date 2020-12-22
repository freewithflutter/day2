import 'package:flutter/material.dart';
import 'package:day2/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchItemActive extends StatefulWidget {
  @override
  _SearchItemActiveState createState() => _SearchItemActiveState();
}

class _SearchItemActiveState extends State<SearchItemActive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios),
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        hintText: '지역,지하철역으로 검색하세요',
                        hintStyle: TextStyle(color: kSearchTextColor),
                        suffixIcon: Icon(
                          FontAwesomeIcons.timesCircle,
                          color: kSearchDarkTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
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
                            children: [],
                          ),
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          child: Column(
                            children: [],
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
    );
  }
}
